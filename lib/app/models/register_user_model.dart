import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class RegisterUserModel {
  final String name;
  final String email;
  final String password;
  final String passwordConfirmation;
  
  RegisterUserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.passwordConfirmation,
  });

  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': passwordConfirmation,
    };
  }

  factory RegisterUserModel.fromMap(Map<String, dynamic> map) {
    return RegisterUserModel(
      name: map['name'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      passwordConfirmation: map['password_confirmation'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterUserModel.fromJson(String source) => RegisterUserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
