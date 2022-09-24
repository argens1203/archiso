all = oh-my-zsh-git libinput-gestures ly pfetch spotify sublime-text-4 yay zoom

.PHONY: download install uninstall clear repo

repo: download install

download: $(all)

install: $(all)
	for pkg in $(all); do \
		sudo repo-add ../custom.db.tar.gz $$pkg/*.pkg.tar.zst; \
	done

uninstall:
	for pkg in $(all); do \
		sudo repo-remove ../custom.db.tar.gz $$pkg; \
	done

clear:
	for pkg in $(all); do \
		rm -rf $$pkg; \
	done

%:
	rm -rf $@
	git clone https://aur.archlinux.org/$@.git
	cd $@ && makepkg -c
