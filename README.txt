~/.* Penzur's dotfiles

-=[ Requirements ]=-

	- Ruby with Rake (they come pre-installed on MacOS)
	- Python (also comes pre-installed with MacOS)
	- Go (1.12 or higher is better)
	- Node with Yarn
	- Vim / NeoVim
	- Git
	- Gpg
	- Ack / Ag (I prefer the latter)

	// Note: Use homebrew to install these tools


-=[ Setup ]=-

	Run initial setup first with the following command.

		$ ./setup.sh

	And then do:

		$ ./start.sh


-=[ Customization ]=-

	You add your own PATH and EXPORTS without touching the `.exports` file by creating
	`.exports.after` file in your home dir.

	For `.vimrc`. Just create a `.vimrc.extra` file in your home dir and add all your
	custom vim configs there.


Cheers,

Elizar
