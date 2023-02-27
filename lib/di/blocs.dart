import 'package:get_it/get_it.dart';

import 'package:ulula/features/account/ui/bloc/auth/auth_bloc.dart';

void registerBlocs(GetIt sl) {
  sl.registerFactory(
    () => AuthBloc(
      sl.get(),
    ),
  );
}
