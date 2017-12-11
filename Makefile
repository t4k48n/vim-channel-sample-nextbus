target := server-linux
rm := rm
ifeq ($(shell uname -s),Darwin)
target := server-mac
endif
ifeq ($(OS),Windows_NT)
target := server-windows.exe
rm := del
endif

$(target): server.go
	go build -o $@ $<

clean:
	-$(rm) $(target)

.PHONY: clean
