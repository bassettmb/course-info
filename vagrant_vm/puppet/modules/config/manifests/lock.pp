class config::power($path) {
  exec { 'disableLock':
    command => "gsettings set org.gnome.desktop.lockdown disable-lock-screen 'true'",
    path => $path
  }
}
