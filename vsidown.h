#include <stdio.h>
#include <stdlib.h>

int sysdown(void) {
	system("svcdown");
	system("/etc/shutdown");
}
