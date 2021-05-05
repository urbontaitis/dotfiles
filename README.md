# dotfiles

Your dotfiles are how you personalize your system. These are mine.
It targets macOS systems and Linux is in progress.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## what's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser
above and see what components may mesh up with you.
[Fork it](https://github.com/urbontaitis/dotfiles/fork), remove what you don't
use, and build on what you do use.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## topics

Worth to check topics which are added:

- [Custom](custom/README.md) - allows you to add custom alias or environment configuration. What's inside this folder is ignored.
- [Mackup](mackup/README.md) - sync your personal / sensitive configuration outsite source control.
- [Kindle](kindle/README.md) - sync kindle My CLippings to your PC via cli!
- [Hammerspoon](hammerspoon/README.md) - automation tool which allows you to create window management, create customs shortcuts and etc
- [Homebrew](homebrew/README.md) - scans all project for looking "Brewfile" and combines them into one. Usefull then you have a different setup for your personal and work pc.

## install

Run this:

```sh
zsh -c "`curl -fsSL https://raw.githubusercontent.com/urbontaitis/dotfiles/master/remote-install.sh`"
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dotfiles` is a simple script that installs some dependencies, sets sane macOS
defaults, and so on. Tweak this script, and occasionally run `dotfiles` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## Post-install

- Mackup
  - Log in to OneDrive (and wait until synced)
  - `mackup restore` 
  - `dotfiles install` 
- `dotfiles dock` (set [Dock items](macos/dock.sh))
- `dotfiles macos` (set [MacOS defaults](macos/set-defaults))

## bugs

I want this to work for everyone; that means when you clone it down it should
work for you even though you may not have `rbenv` installed, for example. That
said, I do use this as _my_ dotfiles, so there's a good chance I may break
something if I forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please
[open an issue](https://github.com/urbontaitis/dotfiles/issues) on this repository
and I'd love to get it fixed for you!

## thanks

I forked [Zach Holman](http://github.com/holman)' excellent
[dotfiles](http://github.com/holman/dotfiles) 