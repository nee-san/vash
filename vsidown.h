#include <stdio.h>
#include <stdlib.h>

int sysdown(void) {
	system("/etc/shutdown");
}
