#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#define UNLOCKED 0
#define LOCKED 1
#define MAX_LEN 256
#define CHUNK_SIZE 128

typedef struct head{
    struct head* next;
    struct head* prev;
    char* name;
}HEAD;

typedef struct secure_house{
    char* owner_name;
    char* user_name;
    HEAD* resident;
    char** keys;
    char* inserted_key;
    int lock_state;
    int num_key;
} SECURE_HOUSE;

SECURE_HOUSE secure_house;
char *cmd_list[6] = {"INSERT KEY", "TURN KEY", "ENTER HOUSE", "WHO'S INSIDE?", "CHANGE LOCKS", "LEAVE HOUSE"};

int check_format(char* cmd_line){
    char format[] = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_-";

    // Validate each character in the input
    for(int i = 0; i < strlen(cmd_line); i++) {
        if (strchr(format, cmd_line[i]) == NULL)  // Character not allowed
            return 0;        
    }

    return 1;
}

void enqueue(HEAD* head, char* name){
    while(head->next){
        head = head->next;
    }
    if(!(head->next = (HEAD*)malloc(sizeof(HEAD)))){
        printf("ERROR\n");
        return;
    }
    head->next->next = 0;
    head->next->prev = head;
    if(!(head->next->name = (char*)malloc(strlen(name)*sizeof(char)))){
        printf("ERROR\n");
        return;
    }
    strcpy(head->next->name, name);
}

void dequeue(HEAD* head){

    if(head){
        if(head->prev)
            head->prev->next = head->next;
        if(head->next)    
            head->next->prev = head->prev;
        if(head->name)
            free(head->name);
        free(head);
        head = 0;
    }

}

void init_house(int argc, char** argv){
    if(!(secure_house.owner_name = (char*)malloc(strlen(argv[1])*sizeof(char)))){
        printf("ERROR\n");
        return;
    }
    if(!(secure_house.keys = (char**)malloc((argc)*sizeof(char*)))){
        printf("ERROR\n");
        return;
    }
    strcpy(secure_house.owner_name, argv[1]);
    secure_house.num_key = argc-2;

    for(int i=0; i<secure_house.num_key; i++){
        if(!(secure_house.keys[i] = (char*)malloc(strlen(argv[i+2])*sizeof(char)))){
            printf("ERROR\n");
            return;
        }
        strcpy(secure_house.keys[i], argv[i+2]);
    }
    
    if(!(secure_house.resident = (HEAD*)malloc(sizeof(HEAD)))){
        printf("ERROR\n");
        return;
    }
    memset(secure_house.resident, 0, sizeof(HEAD));
    secure_house.lock_state = LOCKED;
}

void insert_key(int argc, char** argv){

    if(argc!=2){
        printf("ERROR\n");
        return;
    }

    for(int i=0; i<argc; i++){
        if(!check_format(argv[i])){
            printf("ERROR\n");
            return;
        }
    }

    /* Reset the Lock State*/
    secure_house.lock_state = LOCKED;

    if(secure_house.user_name)
        free(secure_house.user_name);
    if(!(secure_house.user_name = (char*)malloc(strlen(argv[0])*sizeof(char)))){
        printf("ERROR\n");
        return;
    }
    strcpy(secure_house.user_name, argv[0]);

    /* Replace the already inserted key*/
    if(secure_house.inserted_key)
        free(secure_house.inserted_key);
    if(!(secure_house.inserted_key = (char*)malloc(strlen(argv[1])*sizeof(char)))){
        printf("ERROR\n");
        return;
    }
    strcpy(secure_house.inserted_key, argv[1]);

    printf("KEY %s INSERTED BY %s\n", secure_house.inserted_key, secure_house.user_name);

}

void turn_key(int argc, char** argv){

    if(argc!=1){
        printf("ERROR\n");
        return;
    }

    for(int i=0; i<argc; i++){
        if(!check_format(argv[i])){
            printf("ERROR\n");
            return;
        }
    }

    if(secure_house.user_name)
        free(secure_house.user_name);
    if(!(secure_house.user_name = (char*)malloc(strlen(argv[0])*sizeof(char)))){
        printf("ERROR\n");
        return;
    }
    strcpy(secure_house.user_name, argv[0]);

    /* Turn key occurs only when there is inserted key */
    if(secure_house.inserted_key){
        
        if(!strcmp(secure_house.inserted_key, "FIREFIGHTER_SECRET_KEY")){
            secure_house.lock_state = UNLOCKED;
            printf("SUCCESS %s TURNS KEY %s\n", secure_house.user_name, secure_house.inserted_key);
            return;
        }
        
        for(int i = 0; i < secure_house.num_key; i++){
            if(!strcmp(secure_house.inserted_key, secure_house.keys[i])){
                secure_house.lock_state = UNLOCKED;
                printf("SUCCESS %s TURNS KEY %s\n", secure_house.user_name, secure_house.inserted_key);
                return;
            }
        }
        
        printf("FAILURE %s HAD INVALID KEY %s INSERTED\n", secure_house.user_name, secure_house.inserted_key);
    
    }

    else{
        printf("FAILURE %s HAD NO KEY INSERTED\n", secure_house.user_name);
    }


}

void enter_house(int argc, char** argv){
    
    if(argc!=1){
        printf("ERROR\n");
        return;
    }

    for(int i=0; i<argc; i++){
        if(!check_format(argv[i])){
            printf("ERROR\n");
            return;
        }
    }
    
    HEAD* head = secure_house.resident;
    while(1){

        if(head->next){
            if(!strcmp(argv[0], head->next->name)){
                printf("ERROR\n");
                return;
            }
               
            head = head->next;
        }

        else if(!head->next)
            break;
            
    }

    if(secure_house.lock_state==UNLOCKED){
        printf("ACCESS ALLOWED\n");
        enqueue(secure_house.resident, argv[0]);
        // if(secure_house.inserted_key)
        //     free(secure_house.inserted_key);
        // secure_house.inserted_key = 0;

        /* Entering House reset the lock state */
        secure_house.lock_state = LOCKED;

    }
    else{
        printf("ACCESS DENIED\n");
    }

}

void change_locks(int argc, char** argv){
    
    /*CHANGE LOCKS without valid key is possible.(e.g. CHANGE LOCKS {user_name})*/
    if(argc < 1){
        printf("ERROR\n");
        return;
    }

    for(int i=0; i<argc; i++){
        if(!check_format(argv[i])){
            printf("ERROR\n");
            return;
        }
    }
    
    if(!strcmp(argv[0], secure_house.owner_name)){
        HEAD* head = secure_house.resident;
        while(1){
            if(head->next){
                if(!strcmp(argv[0], head->next->name))
                    goto SUCCESS;
                head = head->next;
            }

            else if(!head->next)
                goto FAIL;
            
        }
    }

    else{
        goto FAIL;
    }

    SUCCESS:
        printf("LOCK CHANGED\n");
        secure_house.lock_state = LOCKED;
        for(int i = 0; i<secure_house.num_key; i++){
            free(secure_house.keys[i]);
        }
        free(secure_house.keys);

        secure_house.num_key = argc-1;
        
        if(!(secure_house.keys = (char**)malloc(secure_house.num_key*sizeof(char*)))){
            printf("ERROR\n");
            return;
        }

        for(int i=0;i<secure_house.num_key; i++){
            if(!(secure_house.keys[i] = (char*)malloc(strlen(argv[i+1])*sizeof(char)))){
                printf("ERROR\n");
                return;
            }
            strcpy(secure_house.keys[i], argv[i+1]);
        }
        return;
    FAIL:
        printf("LOCK CHANGE DENIED\n");


}

void leave_house(int argc, char** argv){

    if(argc!=1){
        printf("ERROR\n");
        return;
    }

    for(int i=0; i<argc; i++){
        if(!check_format(argv[i])){
            printf("ERROR\n");
            return;
        }
    }

    HEAD* tmp = secure_house.resident;

    while(1){
        if(tmp->next){
            if(!strcmp(tmp->next->name, argv[0])){
                printf("%s LEFT\n", argv[0]);
                dequeue(tmp->next);
                break;
            }
            tmp = tmp->next;
        }
        else{
            printf("%s NOT HERE\n", argv[0]);
            break;
        }
        
    }
}

void house_info(int argc, char** argv){
    HEAD* tmp;

    if(argc!=0){
        printf("ERROR\n");
        return;
    }

    if(secure_house.resident->next){
        tmp = (secure_house.resident);
        while(1){
            if(tmp->next){
                if(tmp->name)
                    printf("%s, ", tmp->name);
            }

            else{
                printf("%s\n", tmp->name);
                break;
            }
            tmp = tmp->next;
        }
    }
    else{
        printf("NOBODY HOME\n");
    }
}

void final_house(){
    if(secure_house.owner_name)
        free(secure_house.owner_name);

    if(secure_house.user_name)
        free(secure_house.user_name);

    if(secure_house.inserted_key)
        free(secure_house.inserted_key);

    for(int i = 0; i<secure_house.num_key; i++)
        free(secure_house.keys[i]);
    free(secure_house.keys);

    while((secure_house.resident->next)){
        dequeue(secure_house.resident->next);
    }

}


void handle_cmd(char* cmd_line){
    int c;
    int i =0;
    int len;
    int argc = 0;
    char** argv;
    char* tmp;

    for (c=0; c<6; c++){
        if(!strncmp(cmd_line, cmd_list[c], strlen(cmd_list[c])))
            break;
    }

    cmd_line += strlen(cmd_list[c]);

    /* Remove leading trail */
    while(cmd_line[0]==' ')
        cmd_line++;
    len = strlen(cmd_line);
    /* Trimming */
    while(len > 0 && (cmd_line[len-1]==' ' || cmd_line[len-1]=='\t'))
        len--;
    cmd_line[len] = '\0';

    /* Parsing */
    if(!(tmp = (char*)malloc(strlen(cmd_line)*sizeof(char)))){
        printf("ERROR\n");
        return;
    }
    strcpy(tmp, cmd_line);
    
    while(1){
        if(!argc){
            if(strtok(tmp, " "))
                argc++;
            else
                break;
        }
        else{
            if(strtok(NULL," "))
                argc++;
            else
                break;
        }
    }

    if(!tmp)
        free(tmp);

    if(argc!=0){
        i = 0;
        if(!(argv = (char**)malloc(argc * sizeof(char*)))){
            printf("ERROR\n");
            return;
        }
        char* arg = strtok(cmd_line, " ");
        while(arg){
            if(!(argv[i] = (char*)malloc(strlen(arg)*sizeof(char)))){
                printf("ERROR\n");
                return;
            }
            strcpy(argv[i], arg);
            i++;
            arg = strtok(NULL, " ");
        }
    }
    
    switch(c){
        case 0:
            insert_key(argc, argv);
            break;
        case 1:
            turn_key(argc, argv);
            break;
        case 2:
            enter_house(argc, argv);
            break;
        case 3: 
            house_info(argc, argv);
            break;
        case 4:
            change_locks(argc, argv);
            break;
        case 5:
            leave_house(argc, argv);
            break;
        default:
            printf("ERROR\n");
            break;
        
    }

    if(!argv){
        for(i=0;i<argc;i++){
            if(!argv[i])
                free(argv[i]);
        }
        free(argv);
    }


}



int main(int argc, char** argv){

    int currentSize = MAX_LEN;
    char* cmd_line = (char*)malloc(currentSize*sizeof(char));


    if(argc<3){
        printf("ERROR\n");
        return 1;
    }

    for(int i=1; i<argc; i++){
        if(!check_format(argv[i])){
            printf("ERROR\n");
            return 1;
        }
    }

    /*Initialize secure_house*/
    init_house(argc, argv);

    /*Dynamically adjust the size of input buffer*/
    while(1){
        int currentPosition = 0;
        while (1) {
            // Check if more memory required
            if (currentPosition >= currentSize - 1) {
                currentSize += CHUNK_SIZE;
                cmd_line = realloc(cmd_line, currentSize);
                if (cmd_line == NULL) {
                    printf("ERROR\n");
                    return 1;  
                }
            }

            if (fgets(cmd_line + currentPosition, CHUNK_SIZE, stdin) == NULL) {
                break; 
            }

            currentPosition = strlen(cmd_line);  
            if (cmd_line[currentPosition - 1] == '\n') {
                cmd_line[currentPosition - 1] = '\0';  
                break;  
            }
        }

        if (*cmd_line==0){
            free(cmd_line);
            final_house();
            break;
        }
        handle_cmd(cmd_line);
    }
    

    return 0;
}