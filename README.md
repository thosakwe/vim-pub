# vim-pub
Vim commands for Pub.

## Installation
`vim-pub` can be installed with any Vim plugin manager.

```vim
Plug 'thosakwe/vim-pub'
```

## Usage
`vim-pub` adds the following commands:
* `:PubGet`
* `:PubUpgrade
* `:PubRun`
* `:PubTest`

For documentation, run `:h pub-commands`.

By default, the following key mappings are also added in
`pubspec.yaml` files:
* `<localleader>pg` -> `:PubGet`
* `<localleader>pu` -> `:PubUpgrade`

## Options

```vim
" Disable keybindings
let g:pub_bind_keys=0

" Use a different pakcage manager
let g:pub_command="my_pub_variant"
```
