== FIRST: If you liked my talk, you'll probably dig my screencast: Vim for Rails Developers
=== Check it out here: http://www.codeulatescreencasts.com/products/vim-for-rails-developers

== SECOND: If you're in or near Boston, I'm giving a vim training on June 25th
=== Check it out here: https://training.thoughtbot.com/courses/12-vim-for-rubyists/registrations/new

== FINALLY: check out the notes below (and thanks for coming to the talk!)

-------------------------------------------------- 

Fundamental techniques for mastering vim:

First: Reading the freakin' manual
  vim is the best-documented open source tool I've ever used
  a ton of effort has gone into the help
  the ROI is high
  two problems:
    it takes some practice
    you're gonna forget what you read

Second: Keep a cheat sheet on your desk
  learning vim is a process of accretion
  gradually increase by the steady addition of smaller parts
  the only way to become an expert is by steadily learning commands
  the best way to learn lots of commands is by focusing on a few at a time
  keep your eyes open for chances to use the command
  to build muscle memory, you must use it in practice
  i'll back up

Third: Keep a tool sharpening list
  annoyances and inefficiencies
  :Q bound to :q example (question, show of hands)
  slowly sanding down the rough edges in your environment
  Don't break your flow, come back to it
  Put it on the back of your cheat sheet

Fourth: Learn all the single-letter commands
  Pareto or 80/20
  quiz yourself: what does t do? capital t? semicolon?
  graphical cheat sheet: http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html

Bonus: stay on the home row
  don't use the arrow keys -- quit cold turkey; it's my one wish
  don't use escape (can use C-[)

If you do these five fundamental things, you are well on your way to vim mastery.
IF you fall asleep now, you'll have already seen the most-important stuff.
After these, the rest of what I'm going to show you is just gravy.  
But sometimes the gravy is the best part, so let's dig in.

Total noob?  Use vimtutor.

Discuss the layout of the rest of the talk.

RTFM
  two most-important commands
  :h buffers
  recommend Editing Effectively
  what if you don't know what you want? tab complete and C-d
  #vim on freenode
  vimtips wiki: http://vim.wikia.com/wiki/Vim_Tips_Wiki
  life, the universe, and everything = 42

Grab-bag 
  Registers   
    named with " and a letter/number
    1-9 hold last 9 deletes
    Unnamed register is default target for yanks, deletes. default source for puts
    Named registers
      "% - useful for sourcing vimrc 
      "0 last yank
  Macros
    macros are related to registers
    macro is just a recording of keystrokes into a register
    tips for reusability
      move the cursor by searching
      pay attention to the start and end points
  Marks
    A-Z are global
    0-9 where you exited vim
  Text states (think branches of undo tree): 
    g-, g+, 
    :earlier, :later
  Bind lots of leaders
    mine my dotfiles for ideas: http://github.com/r00k/dotfiles
  :set number so you can jump to lines (holdng j or k is a vim smell)
  gi (go to last insert)
  caw
  Change/delete inside ( { " '
  c-o for undoing jumps
  C-s

Tags
  setup: install exuberant ctags, 
         run ctags -R in rails dir (after vendoring rails so it can pick up tags)
  C-] on identifiers, or :tag <identifier>
  :ts[elect] <identifier> for tags with mult. matches

Rails.vim       
  :help rails to learn all commands
  Rcontroller  --> jump to controller
  RVcontroller --> "    "  "          in vertical split
  RScontroller --> "    "  "          in horizontal split
  Rmigration   --> jump to latest migration
  Rinvert      --> writes the self.down of a migration for you!
  Rake in a fileruns tests or migrations
  Rextract will extract a partial highlighted in visual mode

FuzzyFinder
  installation instructions on my blog: 
    http://codeulate.com/2010/02/installing-fuzzyfinder_textmate-textmates-cmdt-in-vim/ 

(surround.vim) 
    cs = change surroundings
    ex: cs'"  <-- change surrounding single quotes to double-quotes
    ds = delete surroundings
    ysw' <-- surround this w(ord) with single quotes

=====================================================================================================

Bonus material:

Snipmate
  def
  defp
  deft
  each
  ed
  cla (multi-choice AND calls out to vim)
  easy to write your own

