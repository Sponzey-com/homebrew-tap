# Sponzey Homebrew Tap

Homebrew formulae for Sponzey tools.

## DevEnv

Install DevEnv:

```sh
brew install sponzey-com/tap/devenv
devenv init zsh --write
exec zsh -l
```

When Bash is the login shell, run `devenv init bash --write` followed by
`exec bash -l` instead.

After the tap has been added, DevEnv can be managed by its short formula name:

```sh
brew upgrade devenv
brew uninstall devenv
```

DevEnv documentation and source code are available at
[Sponzey-com/DevEnv](https://github.com/Sponzey-com/DevEnv).
