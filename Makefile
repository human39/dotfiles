DIFFOPTS = -upw

all:

install: 
	install -p -m 0644 dot-vimrc $(HOME)/.vimrc
	install -p -m 0644 dot-bash_profile $(HOME)/.bash_profile
	install -p -m 0644 dot-bashrc $(HOME)/.bashrc

diff:
	diff $(DIFFOPTS) $(HOME)/.vimrc dot-vimrc || true
	diff $(DIFFOPTS) $(HOME)/.bash_profile dot-bash_profile || true
	diff $(DIFFOPTS) $(HOME)/.bashrc dot-bashrc || true
