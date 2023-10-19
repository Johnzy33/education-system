import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../data/remote/user_remote.dart';
import '../../data/remote/user_remote_impl.dart';
import '../../data/repository/user_repository.dart';
import '../../data/repository/user_repository_impl.dart';
import '../navigation_service.dart';

GetIt getIt = GetIt.I;

dependenciesInjectorSetup() async {
  ///initialize WidgetsFlutterBinding
  WidgetsFlutterBinding.ensureInitialized();
  //Interceptors configuration
  getIt.registerFactory(() {
    Dio dio = Dio();
    return dio;
  });

  ///View Model
  // getIt.registerFactory<AuthViewModel>(() => AuthViewModel(getIt()));

  /// Services
  getIt.registerLazySingleton<NavigationService>(() => NavigationService());

  getIt.registerFactory<UserRemote>(() => UserRemoteImpl(getIt<Dio>()));
  getIt.registerFactory<UserRepository>(
          () => UserRepositoryImpl(getIt<UserRemote>()));

}