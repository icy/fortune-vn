default:
	@echo "fortune-vn  Compile fortune data"

.PHONY: shellcheck
shellcheck:
	@echo >&2 ":: Running shellcheck against bin/*.sh"
	@shellcheck bin/*.sh

.PHONY: clean
clean:
	@rm -fv fortune-vn fortune-vn.dat

fortune-vn: bin/fortune.sh data/*.txt
	@./bin/fortune.sh

.PHONY: random-quote
random-quote:
	@fortune fortune-vn || /usr/games/fortune fortune-vn

all: shellcheck fortune-vn random-quote
