class config::lock($user, $path) {

  # Note: we need to launch dbus because gsettings inexplicably requires an
  # X-session in order to make changes to the configuration. Without a dbus
  # session, it fails, but indicates via return value *that it succeeded*.
  # But wait, there's more! gsettings provides no way to do global
  # configuration and settings are always user-specific. Additionally, we
  # have no way of reliably manipulating the raw settings since gsettings
  # uses some unspecified backing store and provides no way to access it
  # directly. Ugh.

  exec { 'disableLock':
    command => "dbus-launch --exit-with-session gsettings set org.gnome.desktop.lockdown disable-lock-screen true",
    path => $path,
    user => $user
  }

  exec { 'disableIdle':
    command => "dbus-launch --exit-with-session gsettings set org.gnome.desktop.session idle-delay 0",
    path => $path,
    user => $user
  }

}
