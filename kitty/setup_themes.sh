#First clone the kitty-themes repository
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes


#Check if theme was given else choose gruvbox

if [ $# -eq 0]
	then
		theme="gruvbox"
	else
		theme=$1
fi

ln -s ./kitty-themes/themes/$theme.conf ~/.config/kitty/theme.conf

echo "Add this line to your kitty.conf file"
echo "include ./theme.conf"


