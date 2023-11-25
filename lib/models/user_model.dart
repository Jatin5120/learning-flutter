import 'dart:convert';

class UserModel {

  const UserModel({
    required this.name,
    required this.email,
    required this.password,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(
      name: map['name'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
    );

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
  final String name;
  final String email;
  final String password;

  UserModel copyWith({
    String? name,
    String? email,
    String? password,
  }) => UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
    );

  Map<String, dynamic> toMap() => <String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
    };

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      'UserModel(name: $name, email: $email, password: $password)';

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.email == email &&
        other.password == password;
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode ^ password.hashCode;
}
