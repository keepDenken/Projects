# 1. High Level Describtion

cryp is command line tool that supports safe message encryption based on AES-256-CBC and HMAC-SHA256.

## A. Mechanism

### a. Symmetric Encryption - AES-256-CBC 

AES-256-CBC is used for encrypting the plain text. 
This will guarantee the plain text confidential.
For the convenience, initialization vector, IV is set constant.
In practical usage, IV must be random and unique.

### b. MAC - HMAC-SHA256 is used.

HMAC-SHA256 is used for generating MAC(message authentication code). 
This will guarantee the authenticity and integrity of the plain text.
MAC is computed based on public key and plain text(message).

## B. Sender/Reciever - enc/dec

Sender executes cryp with enc argument to encrypt the plain text message.
It creates cipher text and HMAC corresponding to key and plain text.

Receiver executes cryp with dec argument to decrypt the ciphertext.
First it decrypt ciphertext. This is intermediate data, which not stored as file directly.
Instead, it computes HMAC and compare with received HMAC. 
If they match, it means the authenticity and integrity are guaranteed.
Then, intermediate decrypted text will be stored as file.
Else, it produce verification error.

# 2. Implementation

## A. Flow

1. Check Argument: Check the given argument, and initialize the struct HMAC_SHA256 for proceed.

2. Encryption/Decryption: According to given argument, it queries the request.

3. Authenticate: According to given argument, it computes HMAC or (and) compare it with tag.

4. Write Result: If the sender is authenticated and correctly encrypt/decrypted, it write results as files.

5. Finalize: Finalize all the dynamically allocated varable.

## B. Specific Implmentation

### a. encrypt()

1. Create and Initialize Cipher Context
2. Encrypt message per Block until ends of the input file and write to file.
3. Padding if it is needed.

### b. decrypt()

1. Create and Initialize Cipher Context
2. Decrypt cipher text per Block until ends of the cipher text and store it in buffer.
3. Padding - optional(according to argument)

### c. query_request()

1. Encrypt if mode is enc.
2. Decrypt if mode is dec: It tries two times. First, with padding and second without padding. It is because whether padding is done or not should be matched between encryption and decryption. Default is using padding.
3. Return 0 if successful, 1 if encryption/decryption failed and 2 if any other errors like malloc failed occur.

### d. compute_hmac()

Compute hmac value using HMAC() api.

### e. authenticate()

1. Compute HMAC if mode is enc.
2. Compute HMAC and compare to tag is mode is dec.