#define _XOPEN_SOURCE 700
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>

int main()
{
	sigset_t set;
	int status;

	if (getpid() != 1) return 1;

	sigfillset(&set);
	sigprocmask(SIG_BLOCK, &set, 0);

	if (fork()) for (;;) wait(&status);

	sigprocmask(SIG_UNBLOCK, &set, 0);

	setsid();
	setpgid(0, 0);
	return execve("/etc/rc", (char *[]){ "rc", 0 }, (char *[]){ 0 });

	system("exec /bin/svcboot");
}
