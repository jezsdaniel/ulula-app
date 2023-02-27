import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];

  String get message => '';
}

class UnauthorizedFailure extends Failure {
  @override
  List<Object> get props => [message];

  @override
  String get message => 'Usuario no autorizado';
}

class ServerFailure extends Failure {
  ServerFailure({required this.message});

  @override
  final String message;

  @override
  List<Object> get props => [message];
}

class CacheFailure extends Failure {}

class DioCancelRequestFailure extends Failure {}

class NetworkFailure extends Failure {
  @override
  List<Object> get props => [message];

  @override
  String get message => 'No se pudo conectar al servidor';
}

class OtherFailure extends Failure {
  @override
  List<Object> get props => [message];

  @override
  String get message => 'Ocurrió un error inesperado';
}
