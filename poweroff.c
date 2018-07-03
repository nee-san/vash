#include <stdio.h>
#include <stdlib.h>
#include <vsidown.h>
#include <unistd.h>
#include <sys/reboot.h>

int main() {
	sysdown();
	sync();
	reboot(RB_POWER_OFF);
}
