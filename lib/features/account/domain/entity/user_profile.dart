import 'dart:convert';

import 'package:equatable/equatable.dart';

UserProfile userProfileFromJson(String str) =>
    UserProfile.fromJson(json.decode(str) as Map<String, dynamic>);

class UserProfile extends Equatable {
  const UserProfile({
    required this.id,
    required this.name,
    required this.email,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
    required this.accessLevel,
    required this.isActive,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) => UserProfile(
        id: json['id'] as int,
        name: json['name'] as String,
        email: json['email'] as String,
        emailVerifiedAt: json['email_verified_at'],
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        accessLevel: json['access_level'] as int,
        isActive: json['is_active'] as int,
      );

  final int id;
  final String name;
  final String email;
  final dynamic emailVerifiedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int accessLevel;
  final int isActive;

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        emailVerifiedAt,
        createdAt,
        updatedAt,
        accessLevel,
        isActive,
      ];

  static const empty = UserProfile(
    id: -1,
    name: '',
    email: '',
    emailVerifiedAt: '',
    accessLevel: -1,
    isActive: -1,
  );

  UserProfile copyWith({
    int? id,
    String? name,
    String? email,
    dynamic emailVerifiedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? accessLevel,
    int? isActive,
  }) =>
      UserProfile(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        accessLevel: accessLevel ?? this.accessLevel,
        isActive: isActive ?? this.isActive,
      );
}
