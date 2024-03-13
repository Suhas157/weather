import 'package:demo_dec/core/di/api/http_client.dart';
import 'package:get_it/get_it.dart';

import '../api/repo/home_repository.dart';
import '../router/app_router.dart';
import '../ui/store/login_store.dart';
import 'db/appdb.dart';
import 'di/api/service/uthentication_services.dart';

GetIt locator = GetIt.instance;

setupLocator() async {
  locator.registerSingleton(AppRouter());

  locator.registerSingleton(HttpClient());
  locator.registerSingletonAsync<AppDB>(() => AppDB.getInstance());
  locator.registerLazySingleton<UserAuthService>(() => UserAuthService());
  locator.registerSingleton<LoginStore>(LoginStore());
  locator.registerLazySingleton<UserHomeRepository>(() => UserHomeRepository());
}
