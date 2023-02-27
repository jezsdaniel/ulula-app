import 'package:get_it/get_it.dart';

import 'package:ulula/features/account/data/sources/remote_api.dart';

void registerApiLayer(GetIt sl) {
  sl.registerLazySingleton<AccountRemoteApi>(
    () => AccountRemoteApiImpl(
      sl(),
    ),
  );
}
