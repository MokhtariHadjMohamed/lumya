import '../models/user.dart';
import '../services/auth_services.dart';

class AuthRepository {
  final AuthServices authServices;

  AuthRepository(this.authServices);

  Future logIn(String email, String password) async {
    authServices.logIn(email, password);
  }

  Future register(User user) async {
    authServices.register(user);
  }
}
