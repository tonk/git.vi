#------------------------------------------------------------------------------#
# vi: set sw=4 ts=4 ai:                            ("set modeline" in ~/.exrc) #
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
#                    V e r s i o n   i n f o r m a t i o n                     #
#------------------------------------------------------------------------------#
# $Id:: Makefile 4 2011-07-08 13:00:19 tonk                                 $: #
# $Revision:: 4                                                             $: #
# $Author:: Ton Kersten <github@tonkersten.com>                             $: #
# $Date:: 2011-07-08 13:01:51 +0200 (Fri, 08 Jul 2011)                      $: #
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
	install -p -m 644 git.vi		/home/tonk/tonkersten/files/git.vi
	install -p -m 644 git.expand	/home/tonk/tonkersten/files/git.vi
	install -p -m 644 git.collapse	/home/tonk/tonkersten/files/git.vi
	install -p -m 644 git.vi.1		/home/tonk/tonkersten/files/git.vi
	install -p -m 644 README		/home/tonk/tonkersten/files/git.vi

git.vi.1: git.vi.but
	halibut --man=git.vi.1 git.vi.but
