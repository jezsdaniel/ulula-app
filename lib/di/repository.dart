import 'package:get_it/get_it.dart';

import 'package:ulula/features/account/data/repo/repo.dart';
import 'package:ulula/features/account/domain/repo/repo.dart';

void registerRepositoryLayer(GetIt sl) {
  sl.registerLazySingleton<AccountRepository>(
    () => AccountRepositoryImpl(
      sl(),
      sl(),
      sl(),
    ),
  );
}
