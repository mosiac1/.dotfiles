# .dotfiles

This is a repository of my personal setup for the terminal and related utilities.

Note: These configs are only tested on WSL2.

## Requirements

* [Tmux](https://github.com/tmux/tmux)
* [Oh-My-Zsh](https://ohmyz.sh/)
* [PowerLevel10k](https://github.com/romkatv/powerlevel10k)
* [Neovim](https://github.com/neovim/neovim)

## Applying .dotfiles

This setup is derived from [this tutorial](https://www.atlassian.com/git/tutorials/dotfiles) by Atlassian, which covers installation. 

The [install](./install) script wraps the end-to-end process. Simply copy it to your `$HOME` directory and run it.

## Extras

### Live Tex Editing

Requirements:

* Relevant latex libraries (e.g., `texlive-latex-extra` for Ubuntu)
* [latexmk](https://mg.readthedocs.io/latexmk.html)
* [Sumatra PDF](https://www.sumatrapdfreader.org/free-pdf-reader) (or any other PDF viewer)

### PowerLevel10k Font

PowerLevel10k PowerLine for Tmux require a custom font: [MesloGS](https://github.com/romkatv/powerlevel10k/blob/master/font.md).
