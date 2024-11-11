
GROUP 13 - ASSIGNMENT-1 - Storage Manager - 09/12/2024 



## Description
---------------------------------------------------------------

A basic implementation of Storage Manager that reads/writes operations on blocks back and forth from a file into the memory.


## How to Run
---------------------------------------------------------------

1. Clone the BitBucket.
2. Open the terminal.
3. Navigate to "assign1_storage_manager".
4. For executing we will execute the MakeFile, type "make" and press enter.



## Solution Description
----------------------------------------------------------------

    --------------------FILE PAGE RELATED METHODS---------------------

    # createPageFile

        -> Check for the file’s existence. If the file exists, display an error message indicating that the file is already present

        -> Otherwise, it creates a new file, allocates the first page with '\0' bytes, and reserves space at the start of the file for the HeaderPage to store metadata, such as the total number of pages in the file

    # openPageFile

        -> This method opens the specified page file using the given file name

        -> If the file doesn't exist, it throws an error message otherwise, it opens the file, reads, and stores the file's metadata

        -> Sets the totalNumPages from headerPage

    # closePageFile

        -> Closes an open page file

    # destroyPageFile

        -> Deletes a page file

    ----------------------READING BLOCK METHODS----------------------

    # readBlock

        -> Checks for valid pageNum and reads the content of pageNum to memory

        -> Returns RC_OK upon successful operation, else returns RC_READ_NON_EXISTING_PAGE

    # getBlockPos

        -> Returns the position of page pointed currently

    # readFirstBlock

        -> The method reads the first page into memory

        -> Uses readBlock method to read the page

        -> Returns RC_OK upon success else, returns RC_READ_NON_EXISTING_PAGE

    # readPreviousBlock

        -> The method reads the page just before currently pointed page, to the memory

        -> Uses readBlock method to read the page

        -> Returns RC_OK upon success else, returns RC_READ_NON_EXISTING_PAGE

    # readCurrentBlock

        -> The method reads the currently pointed page into memory

        -> Uses readBlock method to read the page

        -> Returns RC_OK upon success else, returns RC_READ_NON_EXISTING_PAGE

    # readNextBlock

        -> The method reads the page just after currently pointed page, to the memory

        -> Uses readBlock method to read the page

        -> Returns RC_OK upon success else, returns RC_READ_NON_EXISTING_PAGE

    # readLastBlock

        -> The method reads the last page to the memory

        -> Uses readBlock method to read the page

        -> Returns RC_OK upon success else, returns RC_READ_NON_EXISTING_PAGE        

    ----------------------WRITING BLOCKS METHODS----------------------

    # writeBLock

        -> The function writes a specific page with pageNum to the memory

        -> Returns RC_OK on successful write else returns RC_WRITE_FAILED  


    # writeCurrentBlock

        -> The function writes the current page into the memory

        -> Returns RC_OK on successful write else returns RC_WRITE_FAILED  

    # appendEmptyBlock

        -> Creates an empty page files with '\0' bytes and appends it to pageFile

        -> Writes the updated file attributes to the page and updates the value for total pages in the header page

        -> Returns RC_OK on successful updation of file attributes else returns RC_WRITE_FAILED

    # ensureCapacity

        -> The method adds the number of pages required to ensure the size specified by numberOfPages

        -> Uses appendEmptyBlock to add new pages to the file


## Group Members
---------------------------------------------------------------

- Aditya Savaliya
- Manasvi Lambore
- Meet Saini


