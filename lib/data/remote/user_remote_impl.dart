import 'package:dio/dio.dart';
import 'package:education_system/data/remote/user_remote.dart';

import '../core/network/NetworkService.dart';

/// This calls implements the UserRemote logic
class UserRemoteImpl extends NetworkService implements UserRemote {
  final Dio dioClient;

  UserRemoteImpl(this.dioClient,);

}