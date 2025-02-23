import 'dart:convert';

class Credential {
  final String email;
  final String password;

  Credential({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
    };
  }

  factory Credential.fromMap(Map<String, dynamic> map) {
    return Credential(
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Credential.fromJson(String source) =>
      Credential.fromMap(json.decode(source) as Map<String, dynamic>);
}
