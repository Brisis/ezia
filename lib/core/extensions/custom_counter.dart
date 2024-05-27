String countFromValue(String name, int value) {
  if (value == 1) {
    return "$value $name";
  }

  return "$value ${name}s";
}
