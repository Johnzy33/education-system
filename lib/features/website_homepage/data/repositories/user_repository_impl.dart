import 'user_repository.dart';

import '../datasources/remote/user_remote.dart';

class UserRepositoryImpl extends UserRepository {
  final UserRemote userRemote;

  UserRepositoryImpl(
      this.userRemote,
      );

}