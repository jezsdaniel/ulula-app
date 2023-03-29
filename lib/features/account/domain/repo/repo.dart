import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:ulula/core/errors/failures.dart';
import 'package:ulula/features/account/data/models/models.dart';
import 'package:ulula/features/account/domain/entity/entity.dart';
import 'package:ulula/features/account/domain/entity/enums/enums.dart';

class AccountStatus extends Equatable {
  const AccountStatus({
    this.userProfile = UserProfile.empty,
    this.authStatus = AuthStatus.unknown,
  });

  final UserProfile userProfile;
  final AuthStatus authStatus;

  @override
  List<Object?> get props => [userProfile, authStatus];
}

abstract class AccountRepository {
  Stream<AccountStatus> get status;

  void dispose();

  Future<Either<Failure, SignInResponseModel>> signIn(
    SignInRequestModel request,
  );

  Future<Either<Failure, bool>> validateToken();

  Future<Either<Failure, bool>> logOut();
}
