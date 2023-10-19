import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../features/website_homepage/data/datasources/remote/user_remote.dart';
import '../../features/website_homepage/data/datasources/remote/user_remote_impl.dart';
import '../../features/website_homepage/data/repositories/user_repository.dart';
import '../../features/website_homepage/data/repositories/user_repository_impl.dart';
import 'navigation.dart';

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
