install-swagger:
	brew update
	brew install aspell

check-aspell:
   ifeq (, $(shell which aspell))
		@make install-swagger
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
	