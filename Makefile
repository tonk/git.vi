#------------------------------------------------------------------------------#
# vi: set sw=4 ts=4 ai:                            ("set modeline" in ~/.exrc) #
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
#                    V e r s i o n   i n f o r m a t i o n                     #
#------------------------------------------------------------------------------#
# $Id:: Makefile 3 2011-03-09 11:45:21 tonk                                 $: #
# $Revision:: 3                                                             $: #
# $Author:: Ton Kersten <tonk@tonkersten.com>                               $: #
# $Date:: 2011-03-09 12:59:30 +0100 (Wed, 09 Mar 2011)                      $: #
# $Hash::                                                                   $: #
#------------------------------------------------------------------------------#
#             E n d   o f   v e r s i o n   i n f o r m a t i o n              #
#------------------------------------------------------------------------------#

.PHONY: default
default: git.vi.1

install: git.vi.1
	install -p -m 755 git.vi		/home/tonk/bin/git
	install -p -m 755 git.expand	/home/tonk/bin/git
	install -p -m 755 git.collapse	/home/tonk/bin/git
	install -p -m 755 git.vi.1		/home/tonk/bin/git
	#
	install -p -m 644 git.vi		/data/vhosts/blog/html/files/git.vi
	install -p -m 644 git.expand	/data/vhosts/blog/html/files/git.vi
	install -p -m 644 git.collapse	/data/vhosts/blog/html/files/git.vi
	install -p -m 644 git.vi.1		/data/vhosts/blog/html/files/git.vi
	install -p -m 644 README		/data/vhosts/blog/html/files/git.vi
	#
	install -p -m 644 git.vi		/home/tonk/tonkersten/files/git.vi
	install -p -m 644 git.expand	/home/tonk/tonkersten/files/git.vi
	install -p -m 644 git.collapse	/home/tonk/tonkersten/files/git.vi
	install -p -m 644 git.vi.1		/home/tonk/tonkersten/files/git.vi
	install -p -m 644 README		/home/tonk/tonkersten/files/git.vi

git.vi.1: git.vi.but
	halibut --man=git.vi.1 git.vi.but
