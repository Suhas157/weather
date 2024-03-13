import 'package:demo_dec/router/app_router.dart';
import 'package:demo_dec/ui/model/user_profile_response.dart';
import 'package:demo_dec/values/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'core/locator.dart';
import 'generated/l10n.dart';

final navigatorKey = GlobalKey<NavigatorState>();
Future<void>  main() async {

  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive
    ..init(appDocumentDir.path)
    ..registerAdapter(UserDataAdapter());

  await setupLocator();


  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp( MyApp());
}



class MyApp extends StatelessWidget {
  final _appRouter = locator<AppRouter>();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp.router(

        theme: appTheme,
        debugShowCheckedModeBanner: false,
        builder: (BuildContext context, child) {
          child = ScrollConfiguration(
            behavior: MyBehavior(),
            child: child!,
          );
          child = MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaleFactor: 1.0, boldText: false),
            child: child,
          );
          return child;
        },
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        localizationsDelegates: const [
          S.delegate,
        ],
        supportedLocales: [
          ...S.delegate.supportedLocales,
        ],
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}