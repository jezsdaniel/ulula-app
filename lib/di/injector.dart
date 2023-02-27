import 'package:get_it/get_it.dart';

import 'package:ulula/core/entities/entities.dart';
import 'package:ulula/core/network/network.dart';
import 'package:ulula/di/di.dart';

class Injector {
  Injector._init() {
    registerCommonImpl(sl);
    registerApiLayer(sl);
    registerBlocs(sl);
    registerUseCaseLayer(sl);
    registerRepositoryLayer(sl);
  }

  static Injector? instance;

  final sl = GetIt.instance;

  ///API base url
  static late String apiBaseUrl;

  ///Environment
  static late FlavorEnum environment;

  ///Init the injector with Prod configurations
  static void initProd() {
    apiBaseUrl = Endpoints.apiBaseUrlProd;
    environment = FlavorEnum.production;

    instance ??= Injector._init();
  }

  static void initStaging() {
    apiBaseUrl = Endpoints.apiBaseUrlStg;
    environment = FlavorEnum.staging;

    instance ??= Injector._init();
  }

  static void initDev() {
    apiBaseUrl = Endpoints.apiBaseUrlDev;
    environment = FlavorEnum.development;

    instance ??= Injector._init();
  }

  T getDependency<T extends Object>() => sl.get();
}
