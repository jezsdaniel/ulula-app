import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

import 'package:ulula/core/usecases/usecase.dart';
import 'package:ulula/core/utils/utils.dart';
import 'package:ulula/features/account/data/models/models.dart';
import 'package:ulula/features/account/domain/usecases/usecases.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(
    this._signInUseCase,
  ) : super(const SignInState()) {
    on<SignInUsernameChanged>(_onUsernameChanged);
    on<SignInUsernameUnfocused>(_onUsernameUnfocused);
    on<SignInPasswordChanged>(_onPasswordChanged);
    on<SignInPasswordUnfocused>(_onPasswordUnfocused);
    on<SignInFormSubmitted>(_onFormSubmitted);
  }

  final SignInUseCase _signInUseCase;

  void _onUsernameChanged(
    SignInUsernameChanged event,
    Emitter<SignInState> emit,
  ) {
    final username = SignInUsername.dirty(event.username);
    emit(
      state.copyWith(
        username: username.valid ? username : const SignInUsername.pure(),
        formStatus: Formz.validate([
          username,
          state.password,
        ]),
      ),
    );
  }

  void _onUsernameUnfocused(
    SignInUsernameUnfocused event,
    Emitter<SignInState> emit,
  ) {
    final username = SignInUsername.dirty(state.username.value);
    emit(
      state.copyWith(
        username: username,
        formStatus: Formz.validate([
          username,
          state.password,
        ]),
      ),
    );
  }

  void _onPasswordChanged(
    SignInPasswordChanged event,
    Emitter<SignInState> emit,
  ) {
    final password = SignInPassword.dirty(event.password);
    emit(
      state.copyWith(
        password: password.valid ? password : const SignInPassword.pure(),
        formStatus: Formz.validate([
          state.username,
          password,
        ]),
      ),
    );
  }

  void _onPasswordUnfocused(
    SignInPasswordUnfocused event,
    Emitter<SignInState> emit,
  ) {
    final password = SignInPassword.dirty(state.password.value);
    emit(
      state.copyWith(
        password: password,
        formStatus: Formz.validate([
          state.username,
          password,
        ]),
      ),
    );
  }

  Future<void> _onFormSubmitted(
    SignInFormSubmitted event,
    Emitter<SignInState> emit,
  ) async {
    final username = SignInUsername.dirty(state.username.value);
    final password = SignInPassword.dirty(state.password.value);

    emit(
      state.copyWith(
        username: username,
        password: password,
        formStatus: Formz.validate([
          username,
          password,
        ]),
      ),
    );

    if (state.formStatus.isValid) {
      emit(state.copyWith(formStatus: FormzStatus.submissionInProgress));
      final resp = await _signInUseCase(
        Params(
          SignInRequestModel(
            username: username.value,
            password: password.value,
          ),
        ),
      );
      emit(
        resp.fold((l) {
          AppAlerts.showErrorMessage(l.message);
          return state.copyWith(formStatus: FormzStatus.submissionFailure);
        }, (r) {
          return state.copyWith(formStatus: FormzStatus.submissionSuccess);
        }),
      );
    }
  }
}
