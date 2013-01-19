DIFFOPTS = -upw

all:

install: 
	install -p -m 0644 dot-vimrc $(HOME)/.vimrc

diff:
	diff $(DIFFOPTS) $(HOME)/.vimrc dot-vimrc || true
