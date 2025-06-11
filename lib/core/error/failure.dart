abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  const ServerFailure(String message) : super(message);
}

class NetworkFailure extends Failure {
  const NetworkFailure() : super("No internet connection");
}

class UnexpectedFailure extends Failure {
  const UnexpectedFailure([String message = "Unexpected error"])
    : super(message);
}
