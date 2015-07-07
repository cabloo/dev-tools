# Install atom
atom_tmp="/tmp/atom.deb"
atom_url="https://atom.io/download/deb"
curl -L "$atom_url" -o "$atom_tmp"
sudo dpkg -i "$atom_tmp"
sudo apt-get -f install # Force install atom (with dependencies)
rm "$atom_tmp"

# Install packages
packages=(
    # packages
    merge-conflicts
    minimap
    vim-mode

    # linter
    linter
    linter-phpmd
    linter-js-standard

    # theme
    seti-syntax seti-ui
)

apm install ${packages[*]}
