# CISC 5595 Assignment 1

## Introduction

This programming assignment focuses on interacting with Github Classroom, and writing a simple program to validate your development configuration.

This assignment will be graded out of 25 points.

## Instructions
### Configure your development environment
Follow the guidelines in the [Programming Assignment Setup](https://docs.google.com/document/d/1lHtKhu-f2EiWcJhHt3aGLr5e0bN1lyeKXfYha4J3WK8/edit?usp=sharing) document to configure your development environment.
### Accept the assignment
Click on the [Assignment Link](https://classroom.github.com/a/uGNX4Eu-) to accept the first assignment. This will create a git repository containing the following files:
* `README.md` - this README file
* `Makefile` - the Makefile that will be used to build the program
* `hello_world.cpp` - the starter C++ file that will contain your code
* `.vscode` - A directory containing VSCode configuration files appropriate to the assignment, including
  *  `tasks.json` - Defines the rule used to build the program using the Makefile
  *  `launch.json` - Configuration allowing you to run the program from VSCode

Your github repository will be found at http://github.com/skamens-fordham-org/assignment-1-intro-<your_github_username>.
### Clone the github repository to your Linux environment
Log in to the Linux system you will use for development - this could be `erdos` or the WSL installation of Linux on your Windows 10 machine.

Use the following command to clone your repository to your local environment:

`git clone http://github.com/skamens-fordham-org/assignment-1-intro-<your_github_username>`
### (VSCode Users Only) Add the folder to VSCode
If you are using VSCode to perform your development, run VSCode, enable Remote-WSL access, and choose "File -> Open Folder", selecting your cloned assignment folder.

### Write your program
Follow the instructions in `hello_world.cpp` to write a simple "Hello, World!" program.

### Build your program
#### Direct shell access
If you are running on `erdos` or working directly in your WSL instance, build the program by changing to your local source directory and typing "make". 

You should see the following output:
```
skamens@Sam$ make
g++  -g -I.  -c -o hello_world.o hello_world.cpp
g++ -o hello_world hello_world.o
```
#### VSCode
If you are using VSCode, you can execute the build task by typing `Ctrl-Shift-B` (which maps to "Run Default Build Task"). 

You will see the build output above in the TERMINAL output tab.

### Run your program
Run your program to verify that it prints "Hello, World!" as expected. 
#### Direct shell access
```
skamens@Sam:~/test-assignment-starter$ ./hello_world
Hello, World!
```
#### VSCode
Run the program by entering "Ctrl-F5" (which maps to "Run -> Run Without Debugging"). Note that the configuration needed to run the program is found in the `.vscode/launch.json` file included in this repository.

You will see the output from the run in the TERMINAL output tab.

### Debugging
You may wish to experiment with the debugger, if you haven't used it before. For command-line users, the debugger is "gdb". In VSCode you can start the debugger using Run -> Debug (F5). 

### Commit your code in git

```
skamens@Sam:~/test-assignment-skamens-fordham$ git add hello_world.cpp
skamens@Sam:~/test-assignment-skamens-fordham$ git commit
[master 460b567] test
 1 file changed, 1 deletion(-)
```

### Push your code to Github Classroom

```
skamens@Sam:~/test-assignment-skamens-fordham$ git push
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 279 bytes | 279.00 KiB/s, done.
Total 3 (delta 2), reused 0 (delta 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/skamens-fordham-org/test-assignment-skamens-fordham
   1a6667e..460b567  master -> master
```
In VSCode you can use the build-in git tools to commit and push without using the command line.

##



