# osx-setup

This is a way to get a shiny new mac set up to how I just like it.


```
             *
       *   *
     *    \* / *
       * --.:. *
      *   * :\ -
        .*  | \
       * *     \
     .  *       \
      ..        /\.
     *          |\)|
   .   *         \ |
  . . *           |/\   Install all the things!
     .* *         /  \
   *              \ / \
 *  .  *           \   \
    * .  
   *    *    
  .   *    *  

```

### What this does

- Clones this repo into the ~/.osx-setup directory
- Installs homebrew
- Installs all the packages I normally use (_and some others_)
- Installs and configures the [fish shell](http://fishshell.com/)
- Installs cask
- Installs some apps I normally use (_and some others_)
- Installs ruby and a few starter gems

### Installation

If you want to install my configuration (**AT YOUR OWN RISK!**) run:

```
curl -s https://raw.githubusercontent.com/willhall88/osx-setup/master/bootstrap.sh | bash
```

### Trouble?

Problems setting fish as the default shell? Check if `/usr/local/bin/fish` is included in the list of shells in `/etc/shells`. If not, open it in sublime: `sudo subl /etc/shells`, add it to the list, and then run: `chsh -s /usr/local/bin/fish`.


Full credit and thanks to @ecomba's [osx-setup](https://github.com/ecomba/osx-setup) project.
