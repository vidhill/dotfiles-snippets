
default:
	@printf "Make targets\n\n";
	@grep '^[^#[:space:]].*:' Makefile

install-aspell:
	brew update
	brew install aspell

check-aspell:
   ifeq (, $(shell which aspell))
		@make install-aspell
   endif

create-local-bin:
	mkdir -p ~/bin

install-aspell-helper-script:
	chmod +x git-hooks/aspell-add-word.sh 
	cp git-hooks/aspell-add-word.sh ~/bin/

setup-aspell: check-aspell create-local-bin
	mkdir -p ~/.config/git
	cp git-hooks/.dict.en.pws ~/.config/git/.dict.en.pws
	@make install-aspell-helper-script
	
lint-bash-scripts:
	shfmt -l -w bash/*.sh

format-md:
	npx prettier -w .

