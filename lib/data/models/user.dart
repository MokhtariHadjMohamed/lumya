class User {
  late String email;
  late String username;
  late String firstName;
  late String lastName;
  late String password;
  late String passwordConfirm;

  User({
    required this.email,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.passwordConfirm,
  });

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    username = json['username'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    password = json['password'];
    passwordConfirm = json['password_confirm'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {
      'email': email,
      'username': username,
      'first_name': firstName,
      'last_name': lastName,
      'password': password,
      'password_confirm': passwordConfirm,
    };
    return data;
  }
}
