gitpr
=======
When run, `gitpr` creates a pull request in the first non-origin remote for the current git repository.

Setup:
=======
- Run `install.sh`
- Optional: install pyperclip with `sudo pip install pyperclip`. If pyperclip is installed, a link to the pull request will automatically be copied to your clipboard.

Usage:
=======
- Fork a repository on GitHub
- Clone your fork
- cd to cloned repo directory
- Add remote for original repository
- Make changes and commit
- run "gitpr"

It will push your changes to your fork, then submit a pull request from your fork to the original repository.

ex. Fork https://github.com/atom/atom
```shell
git clone git@github.com:Cabloo/atom.git
cd atom
git remote add original_repo git@github.com:atom/atom.git
touch testfile.txt
git add testfile.txt
git commit -m 'This will be the commit message and the title of the pull request'
gitpr
```
