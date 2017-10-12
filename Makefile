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

all: shellcheck fortune-vn
