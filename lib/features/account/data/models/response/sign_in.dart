import 'package:equatable/equatable.dart';

import 'package:ulula/features/account/domain/entity/entity.dart';

class SignInResponseModel extends Equatable {
  const SignInResponseModel({
    required this.user,
    required this.token,
  });

  factory SignInResponseModel.fromJson(Map<String, dynamic> json) =>
      SignInResponseModel(
        user: UserProfile.fromJson(json),
        token: json['token'] as String,
      );

  final UserProfile user;
  final String token;

  @override
  List<Object?> get props => [
        user,
        token,
      ];
}
