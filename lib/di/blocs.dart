import 'package:get_it/get_it.dart';

import 'package:ulula/features/account/ui/bloc/auth/auth_bloc.dart';
import 'package:ulula/features/account/ui/bloc/sign_in/sign_in_bloc.dart';
import 'package:ulula/features/account/ui/bloc/splash/splash_bloc.dart';

void registerBlocs(GetIt sl) {
  sl
    ..registerFactory(
      () => AuthBloc(
        sl.get(),
      ),
    )
    ..registerFactory(() => SignInBloc(sl.get()))
    ..registerFactory(() => SplashBloc(sl.get()));
}
