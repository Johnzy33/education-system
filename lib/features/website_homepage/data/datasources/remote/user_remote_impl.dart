import 'package:dio/dio.dart';

import '../../../../../config/network/NetworkService.dart';
import 'user_remote.dart';

/// This calls implements the UserRemote logic
class UserRemoteImpl extends NetworkService implements UserRemote {
  final Dio dioClient;

  UserRemoteImpl(this.dioClient,);

}