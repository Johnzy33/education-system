import 'package:education_system/data/repository/user_repository.dart';

import '../remote/user_remote.dart';

class UserRepositoryImpl extends UserRepository {
  final UserRemote userRemote;

  UserRepositoryImpl(
      this.userRemote,
      );

}