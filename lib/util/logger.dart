typedef LogGenerator = String? Function();

void logDebug(LogGenerator callback) {
  assert(() {
    print("[Debug] ${callback()}");
    return true;
  }());
}

void logInfo(String message) {
  print("[Info] $message");
}

void logWarn(String message) {
  print("[Warn] $message");
}

void logError(String message) {
  print("[Error] $message");
}