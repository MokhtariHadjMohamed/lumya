import 'package:flutter_test/flutter_test.dart';
import 'package:lumya/data/models/user.dart';
import 'package:lumya/data/services/auth_services.dart';

void main() {
  group('RegisterAndLogInTest', () {
    late AuthServices authServices;
    late String token;

    setUp(() {
      authServices = AuthServices();
    });

    test('successful register returns a user', () async {
      final user = await authServices.register(
        User(
          email: "user1@gmail.com",
          username: "MokhtariHadjMohamed",
          firstName: "hadj",
          lastName: "mokhtari",
          password: "Admin_1234",
          passwordConfirm: "Admin_1234",
        ),
      );

      expect(user, isNotNull);
      expect(user, isNotEmpty);
      expect(user["message"], equals("User registered successfully"));
    });

    test("successful logIn return a user", () async {
      final user = await authServices.logIn("user1@gmail.com", "Admin_1234");

      expect(user, isNotNull);
      expect(user, isNotEmpty);
      expect(user["message"], equals("Login successful"));

      token = user["token"];
      expect(token, isNotNull);
    });
  });

  group("LogInAndLogOutTest", () {
    late AuthServices authServices;
    late String token;

    setUp(() {
      authServices = AuthServices();
    });
    test("successful logIn return a user", () async {
      final user = await authServices.logIn("user1@gmail.com", "Admin_1234");

      expect(user, isNotNull);
      expect(user, isNotEmpty);
      expect(user["message"], equals("Login successful"));

      token = user["token"];
      expect(token, isNotNull);
    });

    test("successful logOut return nothing", () async {
      expect(token, isNotNull);

      await authServices.logout(token);
    });
  });
}
