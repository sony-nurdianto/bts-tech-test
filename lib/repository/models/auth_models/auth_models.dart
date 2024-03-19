class AuthModels {
  final String? email;
  final String username;
  final String password;

  AuthModels({
    this.email,
    required this.username,
    required this.password,
  });

  factory AuthModels.fromJson(Map<String, dynamic> json) {
    return AuthModels(
      email: json['email'],
      username: json['username'],
      password: json['password'],
    );
  }

    Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['email'] = email;
    data["username"] = username;
    data["password"] = password;
    
    return data;
  }
}
