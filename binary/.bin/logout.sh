#!/run/sw/current-system/bin/sh

case "$(printf "lock\\nsuspend\\nhibernate\\nlogout\\nreboot\\npoweroff" | dmenu -nb '#000000' -sf '#f8f8f2' -sb '#6272a4' -nf '#f8f8f2' -fn  -h 34-i -p "⏻ ")" in
	lock) xscreensaver-command -lock ;;
	suspend) systemctl suspend ;;
	hibernate) systemctl hibernate ;;
	logout) bspc quit ;;
	reboot) systemctl reboot ;;
	poweroff) systemctl poweroff ;;
esac
