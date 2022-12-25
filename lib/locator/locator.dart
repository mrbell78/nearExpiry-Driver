import 'package:get_it/get_it.dart';
import 'package:near_expiry_driver/http-service/http-service.dart';
import 'package:near_expiry_driver/profile/profile-repository.dart';
import 'package:near_expiry_driver/registration/login-repository.dart';


GetIt locator = GetIt.instance;

Future<void> setupLocator() async {

  locator.registerLazySingleton<HttpService>(() => HttpService());
  locator.registerLazySingleton<ProfileRepository>(() => ProfileRepository());
  locator.registerLazySingleton<LoginRepository>(() => LoginRepository());


}