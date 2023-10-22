# Dotfiles Repository

This repository houses my personal system configurations, commonly known as "dotfiles". These have been tailored and optimized for use on Debian systems.

## Dependencies

- **Essential**: 
  - `git`: Needed for cloning and managing the dotfiles.

- **Recommended**:
  - `tree`: Visualizes directory structures in a tree format.
  - `bat`: An alternative to `cat` with syntax highlighting.
  - `fzf`: General-purpose command-line fuzzy finder.

While the core functionalities will work with just the essential dependency, the full feature set requires the recommended packages.

## Setup

To deploy these dotfiles on your system, run:

```bash
git clone --bare https://github.com/tdemarcy/dotfiles.git $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout
```

**Caution**: If you've custom configurations that could be overridden by this setup, ensure you back them up before proceeding.

## Dotfile Management

The approach used in this repository is based on the "bare repository and alias method" popularized on [Ask Hacker News: What do you use to manage your dotfiles?](https://news.ycombinator.com/item?id=11071754).

You can manage your dotfiles with the provided `config` command, which acts as a wrapper around `git` commands.

Examples:

```bash
config status
config add .vimrc
config commit -m "Add .vimrc"
```
