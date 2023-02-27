import 'package:get_it/get_it.dart';
import 'package:ulula/features/account/domain/usecases/sign_in.dart';

void registerUseCaseLayer(GetIt sl) {
  sl.registerFactory(() => SignInUseCase(sl.get()));
}
