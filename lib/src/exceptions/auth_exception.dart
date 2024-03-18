sealed class AuthException implements Exception {
  final String message;

  const AuthException({required this.message});
}

final class AuthError extends AuthException {
  const AuthError({required super.message});
}

final class AuthUnauthorizedException extends AuthException {
  const AuthUnauthorizedException({super.message = ''});
}
