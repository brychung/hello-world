all:
	@echo "Doing all"

deploy:
	@echo "Pushing to productcion"
	@git push https://github.com/MIDS-INFO-W18/Chung_Bryan.git

update:
	@echo "Makefile: Doing UPDATE stuff like grunt, gulp, rake,..."
	@whoami
	@pwd
