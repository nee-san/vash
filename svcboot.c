#include <stdio.h>
#include <stdlib.h>

int main() {
	system("/var/svc/*/run start");
	return 1;
}
