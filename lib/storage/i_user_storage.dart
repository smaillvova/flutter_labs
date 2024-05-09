import '../models/user.dart';

abstract class IUserStorage {
  Future<void> saveUser(User user);
  Future<User?> getUser(String email);
  Future<void> clearUser(String email);
  Future<List<User>> getAllUsers();

  Future<void> saveCurrentUser(String email);
  Future<void> clearCurrentUser();
  Future<User?> getCurrentUser();
}