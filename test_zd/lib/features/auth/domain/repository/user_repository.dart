import 'package:test_zd/models/user_model.dart';

abstract class UserRepository {
  Future<UserModel> getUser();
}
