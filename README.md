# Odroid C4 Dotfiles
This is a dotfiles repo for Odroid C4 on [ALARM](https://archdroid.org/en/images/odroidc4/) with all of the GUI stuff removed.

## Audio Server Configuration
### Dependencies
```
sudo pacman -Syu pipewire pipewire-alsa pipewire-pulse pipewire-zeroconf wireplumber pulsemixer
```

After installing pipewire, enabling user services is required:
```
# NOTE: Enable linger for `alarm` user to let it start pipewire without a session
# https://wiki.archlinux.org/title/Systemd/User#Automatic_start-up_of_systemd_user_instances
sudo loginctl enable-linger alarm

systemctl --user enable --now pipewire wireplumber pipewire-pulse
```


### Configuration
- `~/.config/pipewire/pipewire-pulse.conf.d/50-listen-tcp.conf` - Enables TCP Audio server with Zeroconf
- `~/.config/pipewire/pipewire.conf.d/50-reversed-channels-sink.conf` - Creates a sink that reverses channels
- `~/.config/wireplumber/main.lua.d/99-device-rename.lua` - Renames the default HDMI output
