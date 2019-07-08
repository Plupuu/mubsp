#!/bin/bash
for gif in "$@"
do
    echo "$gif" | awk '{ system("killall xwinwrap "\
	    "; xwinwrap -g 1360x768 -ni -s -nf -b -un -argb -fdt --  gifview -w WID -a "$0 "& wal -i  " $0\
	    ";sed -i '124s/8px/0px/g' /home/plup/.cache/wal/colors-rofi-dark.rasi"\
	    ";sed -i '37s/0/8/g'  /home/plup/.cache/wal/colors-rofi-dark.rasi"\
	    ";sed -i '33s/2.5/0.2/g' /home/plup/.cache/wal/colors-rofi-dark.rasi"\
	    ";sed -i '31s/\@background/\@foreground/g' /home/plup/.cache/wal/colors-rofi-dark.rasi"\
	    "; echo xwinwrap -g 1360x768 -ni -s -nf -b -un -argb -fdt --  gifview -w WID -a" $0 " " $0 "| sed 's///'"\
	    "; echo convert -strip " $0 "[0]" " " $0 "| sed 's/...$/png/'"\
	    " | sh;" "echo "$0 " | sed 's/...$/png/' | "\
	    "xargs -i betterlockscreen -u {}")}' ;

	sed -i '65d' /home/plup/.config/bspwm/bspwmrc ;

    echo xwinwrap -g 1360x768 -ni -s -nf -b -un -argb -fdt --  gifview -w WID -a | sed -i "65i exec xwinwrap -g 1360x768 -ni -s -nf -b -un -argb -fdt --  gifview -a -w WID /home/DiV/New/$gif &"    /home/plup/.config/bspwm/bspwmrc

    done
