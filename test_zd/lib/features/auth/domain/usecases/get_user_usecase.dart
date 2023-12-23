import 'package:test_zd/models/user_model.dart';
import 'package:test_zd/features/auth/domain/repository/user_repository.dart';

class GetUserUseCase {
  final UserRepository repository;

  GetUserUseCase({required this.repository});

  Future<UserModel> call() async {
    return await repository.getUser();
  }
}
