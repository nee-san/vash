PREFIX :=
DESTDIR :=
BINDIR := $(DESTDIR)$(PREFIX)/bin

all: build

build:
	$(CC) -I. $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) poweroff.c -o poweroff
	$(CC) -I. $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) reboot.c -o reboot
	$(CC) -I. $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) halt.c -o halt
	$(CC) -I. $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) suspend.c -o suspend
	$(CC) -I. $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) init.c -o init
	$(CC) -I. $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) svcboot.c -o svcboot
	$(CC) -I. $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) svcdown.c -o svcdown

install:
	install -D -m755 poweroff $(BINDIR)/poweroff
	install -D -m755 reboot $(BINDIR)/reboot
	install -D -m755 halt $(BINDIR)/halt
	install -D -m755 suspend $(BINDIR)/suspend
	install -D -m755 init $(BINDIR)/init
	install -D -m755 svcboot $(BINDIR)/svcboot
	install -D -m755 svcdown $(BINDIR)/svcdown

clean:
	@rm -rf poweroff reboot halt suspend init svcboot svcdown
