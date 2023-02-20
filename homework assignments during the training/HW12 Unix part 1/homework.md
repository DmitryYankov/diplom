1. Create 1 VM and Configure Rsync server there
2. Fill it with some files and folders (small and big)
3. Create 1 Client instance
4. Sync files on the client from the server
5. Join all items above in one Vagrantfile
6. Create a bash script which should:
    * a. Create a file in the home directory
    * b. Add three strings in the file using echo command:
        * 1 - "<current date and time>"
        * 2 - '<current date and time>'
        * 3 - `<current date and time>`
    * c. Define three different variables:
        * string
        * command
        * math expression
    * d. Echo variables' values (one per line) using ONE ECHO command