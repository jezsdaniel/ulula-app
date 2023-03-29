import 'dart:async';

import 'package:dartz/dartz.dart';

import 'package:ulula/core/errors/errors.dart';
import 'package:ulula/core/network/network.dart';
import 'package:ulula/core/platform/platform.dart';
import 'package:ulula/features/account/data/models/models.dart';
import 'package:ulula/features/account/data/sources/remote_api.dart';
import 'package:ulula/features/account/domain/entity/enums/enums.dart';
import 'package:ulula/features/account/domain/repo/repo.dart';

class AccountRepositoryImpl implements AccountRepository {
  AccountRepositoryImpl(
    this._api,
    this.sharedPreferencesManager,
    this.connectivityService,
  );

  final AccountRemoteApi _api;
  final SharedPreferencesManager sharedPreferencesManager;
  final ConnectivityService connectivityService;

  final _statusController = StreamController<AccountStatus>();

  @override
  void dispose() => _statusController.close();

  @override
  Stream<AccountStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield const AccountStatus();
    yield* _statusController.stream;
  }

  @override
  Future<Either<Failure, SignInResponseModel>> signIn(
    SignInRequestModel request,
  ) async {
    try {
      if (connectivityService.connectionStatus == ConnectionStatus.offline) {
        return Left(NetworkFailure());
      }

      final res = await _api.signIn(request);

      _statusController.add(
        AccountStatus(
          authStatus: AuthStatus.authenticated,
          userProfile: res.user,
        ),
      );

      await sharedPreferencesManager.setAccessToken(res.token);

      return Right(res);
    } catch (ex) {
      if (ex is ServerException) {
        return Left(ServerFailure(message: ex.message));
      } else if (ex is UnauthorizedException) {
        return Left(UnauthorizedFailure());
      } else {
        return Left(OtherFailure());
      }
    }
  }

  @override
  Future<Either<Failure, bool>> validateToken() async {
    _statusController.add(
      const AccountStatus(
        authStatus: AuthStatus.unauthenticated,
      ),
    );
    return Left(UnauthorizedFailure());
  }
}
