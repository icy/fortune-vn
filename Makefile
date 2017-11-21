default:
	@echo "fortune-vn     Compile fortune data. Useful for developers/testers"
	@echo "fortune-vn.dat Compile fortune-data binary file for fortune program"

.PHONY: shellcheck
shellcheck:
	@echo >&2 ":: Running shellcheck against bin/*.sh"
	@shellcheck bin/*.sh

.PHONY: clean
clean:
	@rm -fv fortune-vn fortune-vn.dat bin/fortune-vn

fortune-vn: bin/fortune.sh data/*.txt
	@./bin/fortune.sh

fortune-vn.dat: fortune-vn
	@strfile -c "%" $<
	@echo "The file $(@) is now ready. Use them as below"
	@echo "  fortune $(<)"

.PHONY: random-quote
random-quote:
	@( \
		{	fortune fortune-vn || /usr/games/fortune fortune-vn ; } \
		| { if which cowsay >/dev/null; then cowsay; else cat; fi; } \
	)

./bin/fortune-vn: fortune-vn
	@dub build -b release

all: shellcheck fortune-vn.dat random-quote
