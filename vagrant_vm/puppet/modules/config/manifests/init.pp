class config($id) {
  class { 'config::vim': id => $id }
}
