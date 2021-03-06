from typing import List  # noqa: F401

from libqtile import bar, layout, widget, hook
from libqtile.config import Click, Drag, Group, Key, Screen
from libqtile.lazy import lazy

import os
import subprocess

@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~')
    subprocess.call([home + '/.config/qtile/autostart.sh'])

mod = "mod4"
terminal = "alacritty"

keys = [
    # Switch between windows in current stack pane
    Key([mod], "k", lazy.layout.up(),
        desc="Move focus up in stack pane"),
    Key([mod], "j", lazy.layout.down(),
        desc="Move focus down in stack pane"),
       
    Key([mod], "h", lazy.layout.shrink_main(),
        desc="Shrink master window"),
    Key([mod], "l", lazy.layout.grow_main(),
        desc="Grow master window"),

    # Move windows up or down in current stack
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(),
        desc="Move window up in current stack "),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(),
        desc="Move window down in current stack "),

    # Switch window focus to other pane(s) of stack
    Key([mod], "space", lazy.layout.next(),
        desc="Switch window focus to other pane(s) of stack"),

    # Swap panes of split stack
    Key([mod, "shift"], "Return", lazy.layout.swap_main(),
        desc="Swap panes of split stack"),

    Key([mod, "shift"], "space", lazy.window.toggle_floating(),
        desc="Toggle floating"),

    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack"),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),

    Key([mod, "shift"], "r", lazy.restart(), desc="Restart qtile"),
    Key([mod, "shift"], "q", lazy.shutdown(), desc="Shutdown qtile"),
    Key([mod], "d", lazy.spawn("rofi -show drun"),
        desc="summon rofi"),
]

groups = [Group(i) for i in "123456789"]

for i in groups:
    keys.extend([
        # mod1 + letter of group = switch to group
        Key([mod], i.name, lazy.group[i.name].toscreen(toggle = False),
            desc="Switch to group {}".format(i.name)),

        # mod1 + shift + letter of group = switch to & move focused window to group
        #Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True),
        #    desc="Switch to & move focused window to group {}".format(i.name)),
        # Or, use below if you prefer not to switch to that group.
        # # mod1 + shift + letter of group = move focused window to group
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
            desc="move focused window to group {}".format(i.name)),
    ])

layouts = [
    layout.MonadTall(
        margin = 8,
        border_focus = "#bd93f9",
        border_normal = "#282a36",
        single_border_width = 0,
        single_margin = 0
        ),
    layout.Max(),
    # layout.Stack(num_stacks=2),
    # Try more layouts by unleashing below layouts.
    # layout.Bsp(),
    # layout.Columns(),
    # layout.Matrix(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

widget_defaults = dict(
    font = 'Cica',
    foreground = 'f8f8f2',
    fontsize = 18,
    padding = 6,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(
                    this_current_screen_border = 'bd93f9',
                    active = 'f8f8f2',
                    inactive = '44475a',
                    highlight_method = 'text',
                    ),
                widget.CurrentLayoutIcon(
                    scale = 0.6,
                    ),
                widget.Prompt(),
                widget.WindowName(
                    ),
                widget.CheckUpdates(
                    display_format = ' {updates}',
                    distro = 'Arch',
                    ),
                widget.Mpris2(
                    name='spotify',
                    objname = 'org.mpris.MediaPlayer2.spotify',
                    display_metadata = ['xesam:title', 'xesam:artist'],
                    ),
                widget.Wlan(
                    format = ' {essid}',
                    interface = 'wlp3s0',
                    ),
                widget.Net(
                    format = '{down} {up}',
                    ),
                widget.Battery(
                    format = '{char} {percent:2.0%}',
                    charge_char = '󿖃',
                    discharge_char = '󿕸',
                    full_char = '󿕸',
                    unknown_char = '󿕸',
                    battery = 'BAT0',
                    ),
                widget.Battery(
                    format = '{char} {percent:2.0%}',
                    charge_char = '󿖃',
                    discharge_char = '󿕸',
                    full_char = '󿕸',
                    unknown_char = '󿕸',
                    battery = 'BAT1',
                    ),
                widget.Chord(
                    chords_colors={
                        'launch': ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                widget.Clock(
                    format = '%H:%M ',
                    ),
            ],
            28,
            background = '#282a36',
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
main = None  # WARNING: this is deprecated and will be removed soon
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    {'wmclass': 'confirm'},
    {'wmclass': 'dialog'},
    {'wmclass': 'download'},
    {'wmclass': 'error'},
    {'wmclass': 'file_progress'},
    {'wmclass': 'notification'},
    {'wmclass': 'splash'},
    {'wmclass': 'toolbar'},
    {'wmclass': 'confirmreset'},  # gitk
    {'wmclass': 'makebranch'},  # gitk
    {'wmclass': 'maketag'},  # gitk
    {'wname': 'branchdialog'},  # gitk
    {'wname': 'pinentry'},  # GPG key password entry
    {'wmclass': 'ssh-askpass'},  # ssh-askpass
],  border_focus = "#bd93f9",
    border_normal = "#282a36",
    border_width = 2,
 )
auto_fullscreen = True
focus_on_window_activation = "smart"

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
