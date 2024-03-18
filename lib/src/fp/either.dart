sealed class Either<L extends Exception, R> {
  const Either();
}

final class Left<L extends Exception, R> extends Either<L, R> {
  final L value;

  const Left(this.value);
}

final class Right<L extends Exception, R> extends Either<L, R> {
  final R value;

  const Right(this.value);
}
