import '../entities/user.dart';

abstract class UserRepository {
  Future<User> signUp(String name, String email, String password);
  Future<User> signIn(String email, String password);
  Future<void> signOut();
}
