class AppException implements Exception {
  final String? _message;
  final String _prefix;

  AppException([this._message, this._prefix = "Error"]);

  @override
  String toString() {
    return '$_prefix: $_message';
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, "Error during communication");

  @override
  String toString() {
    return 'FetchDataException: $_prefix$_message';
  }
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, "Invalid request");

  @override
  String toString() {
    return 'BadRequestException: $_prefix$_message';
  }
}

class UnauthorizedException extends AppException {
  UnauthorizedException([String? message])
      : super(message, "Unauthorized request");

  @override
  String toString() {
    return 'UnauthorizedException: $_prefix$_message';
  }
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, "Invalid Input");

  @override
  String toString() {
    return 'InvalidInputException: $_prefix$_message';
  }
}
