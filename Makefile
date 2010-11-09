#------------------------------------------------------------------------------#
# vi: set sw=4 ts=4 ai:                            ("set modeline" in ~/.exrc) #
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
#                    V e r s i o n   i n f o r m a t i o n                     #
#------------------------------------------------------------------------------#
# $Id:: Makefile 2 2010-11-09 11:09:18 tonk                                 $: #
# $Revision:: 2                                                             $: #
# $Author:: Ton Kersten <tonk@tonkersten.com>                               $: #
# $Date:: 2010-11-09 11:09:33 +0100 (Tue, 09 Nov 2010)                      $: #
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

git.vi.1: git.vi.but
	halibut --man=git.vi.1 git.vi.but
