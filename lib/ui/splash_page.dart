import 'package:demo_dec/api/repo/home_repository.dart';
import 'package:demo_dec/ui/store/login_store.dart';
import 'package:demo_dec/values/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/locator.dart';
import '../res.dart';
import '../router/app_router.dart';
import '../values/colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double t_opacity = 0.0;
  bool _visible = false;

  @override
  initState()  {
    super.initState();
  //  getweather();
    FlutterNativeSplash.remove();
    changeOpacity();

    _visible = true;
    /* Future.delayed(const Duration(milliseconds: 1000), () {
      locator<AppRouter>().replaceAll([const HomeRoute()]);
    });*/
  }

 getweather() async {
    await authStore.weather(23.2156, 72.647781);
 print("response.........${authStore.weatherResponse!.weather![0].description.toString()}");

  }

  changeOpacity() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        t_opacity = t_opacity == 0.0 ? 1.0 : 0.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Image(
                image: AssetImage(Res.splash_bg),
                alignment: Alignment.center,
                fit: BoxFit.fill,
                width: 1.sw,
                height: 1.sh,
              ),
              SizedBox(
                width: 1.sw,
                height: 1.sh,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(Res.ic_icon),
                    20.verticalSpace,
                    Text(
                      "Weather",
                      style: textBold.copyWith(
                          fontSize: 50.sp,
                          fontFamily: "santral",
                          color: AppColor.white.withOpacity(0.6)),
                    ),
                    Text(
                      "ForeCasts",
                      style: textBold.copyWith(
                          fontSize: 50.sp,
                          fontFamily: "santral",
                          color: AppColor.white.withOpacity(t_opacity)),
                    ),
                    20.verticalSpace,
                    AnimatedOpacity(
                        // If the widget is visible, animate to 0.0 (invisible).
                        // If the widget is hidden, animate to 1.0 (fully visible).
                        opacity: t_opacity,
                        duration: const Duration(milliseconds: 1000),
                        // The green box must be a child of the AnimatedOpacity widget.
                        child: TextButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: AppColor.white.withOpacity(0.3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                          ),
                          onPressed: () {
                            locator<AppRouter>()
                                .replaceAll([const HomeRoute()]);
                          },
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40.w, vertical: 10.h),
                              child: Text(
                                'Get Start',
                                style: textRegular.copyWith(fontSize: 24.sp),
                              )),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
