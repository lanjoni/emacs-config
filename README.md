# Personal GNU Emacs config files

Configuration files for my personal use.

> Note: inside the `.emacs.d` directory there is a directory named `plugins` that receives all external plugins.

## How can I use it

Just run:

```sh
git clone https://github.com/lanjoni/emacs-config.git && cp -r ./emacs-config/*.el ~/.emacs.d/ && rm -rf emacs-config
```

External plugins:
- [Awesome tab](https://github.com/manateelazycat/awesome-tab)

To install any external plugin you have the path to clone just run:

```sh
mkdir ~/.emacs.d/plugins && git clone link.git && cp -r ./link/*el ~/.emacs.d/plugins/ && rm -rf link
```

Have a great day and try using [GNU Emacs](https://www.gnu.org/software/emacs/) 🍺
