import 'package:bloc/bloc.dart';
import '../../data/models/user.dart';
import '../../data/repository/auth_repository.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepository;

  AuthCubit(this.authRepository) : super(AuthInitial());

  void logIn(String email, String password) {
    authRepository.logIn(email, password);
  }

  void register(User user) {
    authRepository.register(user);
  }
}
