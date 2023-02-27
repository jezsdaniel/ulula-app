import 'package:dartz/dartz.dart';

import 'package:ulula/core/errors/errors.dart';
import 'package:ulula/core/usecases/usecase.dart';
import 'package:ulula/features/account/data/models/models.dart';
import 'package:ulula/features/account/domain/repo/repo.dart';

class SignInUseCase
    implements UseCase<SignInResponseModel, Params<SignInRequestModel>> {
  SignInUseCase(this.repository);

  final AccountRepository repository;

  @override
  Future<Either<Failure, SignInResponseModel>> call(
    Params<SignInRequestModel> params,
  ) async {
    return repository.signIn(params.request);
  }
}
