target = server
rm = rm
ifeq ($(OS), Windows_NT)
target = server.exe
rm = del
endif

$(target): server.go
	go build -o $@ $<

clean:
	-$(rm) $(target)

.PHONY: clean
