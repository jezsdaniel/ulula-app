import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:ulula/core/network/network.dart';
import 'package:ulula/core/platform/platform.dart';
import 'package:ulula/core/utils/utils.dart';

void registerCommonImpl(GetIt sl) {
  sl
    ..registerSingleton<Logger>(LoggerImpl())
    ..registerSingleton(Dio())
    ..registerSingleton(DioClient(sl.get(), sl.get()))
    ..registerSingleton<SharedPreferencesManager>(
      SharedPreferencesManagerImpl(),
    )
    ..registerSingleton(NetworkHandler(sl.get(), sl.get(), sl.get()))
    ..registerSingleton(ConnectivityService());
}
