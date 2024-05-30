// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AuthUserModel {
  final String email;
  final String userType;
  final String userCountry;
  AuthUserModel({
    required this.email,
    required this.userType,
    required this.userCountry,
  });

  AuthUserModel copyWith({
    String? email,
    String? userType,
    String? userCountry,
  }) {
    return AuthUserModel(
      email: email ?? this.email,
      userType: userType ?? this.userType,
      userCountry: userCountry ?? this.userCountry,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'userType': userType,
      'userCountry': userCountry,
    };
  }

  factory AuthUserModel.fromMap(Map<String, dynamic> map) {
    return AuthUserModel(
      email: map['email'] as String,
      userType: map['userType'] as String,
      userCountry: map['userCountry'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthUserModel.fromJson(String source) =>
      AuthUserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'AuthUserModel(email: $email, userType: $userType, userCountry: $userCountry)';

  @override
  bool operator ==(covariant AuthUserModel other) {
    if (identical(this, other)) return true;

    return other.email == email &&
        other.userType == userType &&
        other.userCountry == userCountry;
  }

  @override
  int get hashCode => email.hashCode ^ userType.hashCode ^ userCountry.hashCode;
}
