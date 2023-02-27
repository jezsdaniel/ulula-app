import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:ulula/features/account/domain/entity/entity.dart';
import 'package:ulula/features/account/domain/entity/enums/enums.dart';
import 'package:ulula/features/account/domain/repo/repo.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    AccountRepository accountRepository,
  )   : _accountRepository = accountRepository,
        super(const AuthState.unknown()) {
    on<AuthStatusChanged>(_onAuthStatusChanged);
    on<AuthUpdateUser>(_onAuthUpdateUser);
    on<AuthLogoutRequested>(_onAuthLogoutRequested);
    _accountStatusSubscription =
        _accountRepository.status.listen(
      (status) => add(
        AuthStatusChanged(
          status: status.authStatus,
          user: status.userProfile,
        ),
      ),
    );
  }

  final AccountRepository _accountRepository;
  late StreamSubscription<AccountStatus>
      _accountStatusSubscription;

  @override
  Future<void> close() {
    _accountStatusSubscription.cancel();
    _accountRepository.dispose();
    return super.close();
  }

  Future<void> _onAuthStatusChanged(
    AuthStatusChanged event,
    Emitter<AuthState> emit,
  ) async {
    switch (event.status) {
      case AuthStatus.unauthenticated:
        return emit(const AuthState.unauthenticated());
      case AuthStatus.authenticated:
        final user = event.user;
        if (user == UserProfile.empty) {
          return emit(const AuthState.unauthenticated());
        }
        emit(AuthState.authenticated(user));
        return;
      case AuthStatus.unknown:
        return emit(const AuthState.unknown());
    }
  }

  void _onAuthUpdateUser(
    AuthUpdateUser event,
    Emitter<AuthState> emit,
  ) {
    final user = event.user;
    return emit(
      user == UserProfile.empty
          ? const AuthState.unauthenticated()
          : AuthState.authenticated(user),
    );
  }

  void _onAuthLogoutRequested(
    AuthLogoutRequested event,
    Emitter<AuthState> emit,
  ) {}
}
