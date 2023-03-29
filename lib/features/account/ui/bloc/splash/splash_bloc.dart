import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:ulula/features/account/domain/repo/repo.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc(
    this._accountManagementRepository,
  ) : super(const SplashState()) {
    on<SplashValidateToken>(_onSplashValidateToken);
  }

  final AccountRepository _accountManagementRepository;

  void _onSplashValidateToken(
    SplashValidateToken event,
    Emitter<SplashState> emit,
  ) {
    _accountManagementRepository.validateToken();
  }
}
