#/usr/bin/bash
read -p "Backup current config? [y/N] " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
    mv ~/.config/nvim ~/.config/nvim.old || :
fi
rm -rf ~/.config/nvim
cp -Rv . ~/.config/nvim
echo "Config saved successfully"
