#include <stdio.h>
#include <stdlib.h>

int sysdown(void) {
	system("/bin/svcdown");
	system("/etc/shutdown");
}
