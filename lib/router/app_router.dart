import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../ui/home_page.dart';
import '../ui/splash_page.dart';


part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage,initial: true),
   CustomRoute(page: HomePage, transitionsBuilder: TransitionsBuilders.fadeIn,durationInMilliseconds: 400),

  ],
)
class AppRouter extends _$AppRouter {

}
