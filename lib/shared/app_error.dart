class AppError {
  final String message;
  final String? title;
  final int? code;
  final Object? exception;
  final AppErrorType type;

  const AppError({
    required this.message,
    this.title,
    this.code,
    this.exception,
    this.type = AppErrorType.unknown,
  });
}

enum AppErrorType {
  /// The error is related to network issues.
  network,

  /// The error is related to the server (e.g., HTTP 500).
  server,

  /// The error is related to the Database
  local,

  /// This may be used within the app, database etc
  unknown,
}
