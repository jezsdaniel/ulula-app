import 'package:ulula/core/errors/errors.dart';
import 'package:ulula/core/network/network.dart';
import 'package:ulula/features/account/data/models/models.dart';

abstract class AccountRemoteApi {
  Future<SignInResponseModel> signIn(SignInRequestModel request);
}

class AccountRemoteApiImpl extends AccountRemoteApi {
  AccountRemoteApiImpl(this.networkHandler);

  final NetworkHandler networkHandler;

  @override
  Future<SignInResponseModel> signIn(SignInRequestModel request) async {
    try {
      final res = await networkHandler.signIn(
        endpoint: Endpoints.signIn,
        body: request.toJson(),
      );
      if (res.statusCode == 200 && res.data != null) {
        return SignInResponseModel.fromJson(
          res.data!,
        );
      } else {
        throw ServerException(
          message: res.data!['message'] as String,
        );
      }
    } catch (e) {
      rethrow;
    }
  }
}
