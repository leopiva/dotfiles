#!/usr/bin/env bash

if [ $# -ne 1 ]; then
    echo -e "Number of parameters does not match\nUsage: $0 <lock_path>"
    exit 1
fi

lock_path="$1"

waylogout \
	--hide-cancel \
	--screenshots \
    --rows=1 \
    --fade-in 0.25 \
	--font="Nunito SemiBold" \
	--fa-font="Font Awesome 6 Free" \
	--effect-blur=7x5 \
	--indicator-thickness=15 \
    --indicator-separation=120 \
	--ring-color=888888aa \
	--inside-color=88888866 \
	--text-color=eaeaeaaa \
	--line-color=00000000 \
	--ring-selection-color=33cc33aa \
	--inside-selection-color=46704766 \
	--text-selection-color=eaeaeaaa \
	--line-selection-color=00000000 \
    --logout-label="Logout" \
	--logout-command="swaymsg exit" \
    --suspend-label="Suspend" \
	--suspend-command="systemctl suspend-then-hibernate" \
    --poweroff-label="Poweroff" \
	--poweroff-command="systemctl poweroff" \
    --reboot-label="Reboot" \
	--reboot-command="systemctl reboot" \
	--selection-label