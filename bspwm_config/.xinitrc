PANEL_FIFO=/tmp/panel-fifo
PANEL_HEIGHT=24
PANEL_FONT="xft:Hack"
PANEL_WM_NAME=bspwm_panel
export PANEL_FIFO PANEL_HEIGHT PANEL_FONT PANEL_WM_NAME

export _JAVA_AWT_WM_NONREPARENTING=1
export PATH=$PATH:/home/taehwan/Downloads/bspwm/bar_scripts

xrdb -merge ~/.Xresources
xsetroot -solid "#1d2021"

sxhkd &
exec bspwm
