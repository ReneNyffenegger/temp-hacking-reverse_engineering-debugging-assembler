//
// Helpful were:
//   github:        singlestepper.c
//   Eli Bendersky: How debuggers work
//
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/ptrace.h>
#include <errno.h>
#include <sys/user.h>
#include <stdint.h>

#ifndef WCOREDUMP
#define WCOREDUMP(x) ((x) & 0x80)
#endif

void print_wait_status(int status)
{
    if( WIFSTOPPED(status) ) {
        printf("Child stopped: %d\n", WSTOPSIG(status));
    }
    if( WIFEXITED(status) ) {
        printf("Child exited: %d\n", WEXITSTATUS(status));
    }
    if( WIFSIGNALED(status) ) {
        printf("Child signaled: %d\n", WTERMSIG(status));
    }
    if( WCOREDUMP(status) ) {
        printf("Core dumped.\n");
    }
}

// int ptrace_instruction_pointer(int pid, uint32_t *eip)
   int ptrace_instruction_pointer(int pid, uint64_t *rip)
{
    struct user_regs_struct regs;

//  if( ptrace(PTRACE_GETREGS, pid, NULL, (void*) &regs) ) {
    if( ptrace(PTRACE_GETREGS, pid, NULL,         &regs) ) {

        printf("Error fetching registers from child process: %s\n", strerror(errno));
        return -1;
    }




//  printf("sizeof regs.rip = %d, rip = %p\n", sizeof(regs.rip), regs.rip);
//  exit(0);

//  if( eip )
//      *eip = regs.eip;
    if( rip )
        *rip = regs.rip;
    return 0;
}

int singlestep(int pid)
{
    int retval, status;
    retval = ptrace(PTRACE_SINGLESTEP, pid, 0, 0);
    if( retval ) {
        return retval;
    }
    waitpid(pid, &status, 0);
    return status;
}

void run_debuggee(char *program, char **child_args, char **envp) {

   if (ptrace(
          PTRACE_TRACEME, // Trace Me: The process requests to be debugged by its parent.
          0, 0, 0)
     ) {
       printf("Error setting TRACEME: %s\n", strerror(errno));
       exit(-1);
   }
   execve(program, child_args, envp);
}

void run_debugger(pid_t pid_debuggee) {

//  uint32_t eip;
    uint64_t rip;

    int status;

    waitpid(pid_debuggee, &status, 0);
    print_wait_status(status);

    while( WIFSTOPPED(status) ) {
//      if( ptrace_instruction_pointer(pid_debuggee, &eip) ) {
        if( ptrace_instruction_pointer(pid_debuggee, &rip) ) {
            break;
        }
//      fprintf(stderr, "EIP: %p\n", (void*)eip);

//      struct user_regs_struct regs;
//      ptrace(PTRACE_GETREGS, pid_debuggee, 0, &regs);

//      long     int instr = ptrace(PTRACE_PEEKTEXT, pid_debuggee, rip, 0);
 //     unsigned int instr = ptrace(PTRACE_PEEKTEXT, pid_debuggee, rip, 0);
        long         instr = ptrace(PTRACE_PEEKTEXT, pid_debuggee, rip, 0);

        printf("RIP: %p, instr = 0x%016x\n", (void*)rip, instr);
//      printf("RIP:     instr = 0x%p   \n",             instr);

        status = singlestep(pid_debuggee);
    }
    print_wait_status(status);
    printf("Detaching\n");
    ptrace(PTRACE_DETACH, pid_debuggee, 0, 0);

}


int main(int argc, char ** argv, char **envp) {
    pid_t pid;
    char *program;

    if (argc < 2) {
        printf("Usage: %s elffile arg0 arg1 ...\n", argv[0]);
        exit(-1);
    }

    program = argv[1];
    char ** child_args = (char**) &argv[1];

 //
 // Start a new process
 //
    pid = fork();

    if( pid == -1 ) {
        printf("Error forking: %s\n", strerror(errno));
        exit(-1);
    }
    if( pid == 0 ) {
        // child

        run_debuggee(program, child_args, envp);

    } else {
        // parent

        run_debugger(pid);

    }

    return 0;
}
