import 'package:demo_dec/core/db/appdb.dart';
import 'package:demo_dec/values/style.dart';
import 'package:demo_dec/widget/common_bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../generated/l10n.dart';
import '../../values/colors.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  var value = 0;
  var windValue = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (appDB.isCelsius) {
      value = 0;
    } else {
      value = 1;
    }

    if (appDB.isKm) {
      windValue = 1;
    }
    if (appDB.isMs) {
      windValue = 0;
    }
    if (appDB.isMph) {
      windValue = 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CommonBgWidget(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.verticalSpace,
            Text(
              "Settings ",
              textAlign: TextAlign.start,
              style: textBold.copyWith(
                color: AppColor.white,
                fontSize: 28.sp,
                fontFamily: S.of(context).sfpro,
              ),
            ),
            20.verticalSpace,
            Text(
              "Change Temperature unit",
              style: textRegular.copyWith(),
            ),
            20.verticalSpace,
            ToggleSwitch(
              minWidth: 90.0,
              initialLabelIndex: value,
              cornerRadius: 20.0,
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              totalSwitches: 2,
              labels: ['Celsius ', 'Fahrenheit '],
              activeBgColors: [
                [AppColor.primaryColorDark],
                [AppColor.primaryColorDark]
              ],
              onToggle: (index) {
                if (index == 0) {
                  appDB.isCelsius = true;
                }
                if (index == 1) {
                  appDB.isCelsius = false;
                }

                print('switched to: $index');
              },
            ),
            50.verticalSpace,
            Text(
              "Change Wind Speed Unit",
              style: textRegular.copyWith(),
            ),
            20.verticalSpace,
            ToggleSwitch(
              minWidth: 90.0,
              minHeight: 50.0,
              fontSize: 16.0,
              initialLabelIndex: windValue,
              activeBgColor: [AppColor.primaryColorDark],
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.grey[900],
              totalSwitches: 3,
              labels: ['m/s ', 'Km/h', 'mph'],
              onToggle: (index) {
                print('switched to: $index');
                if (index == 0) {
                  appDB.isMs = true;
                  appDB.isKm = false;
                  appDB.isMph = false;
                }
                if (index == 1) {
                  appDB.isMs = false;
                  appDB.isKm = true;
                  appDB.isMph = false;
                }
                if (index == 2) {
                  appDB.isMs = false;
                  appDB.isKm = false;
                  appDB.isMph = true;
                }
              },
            ),
          ],
        ),
      ),
    ));
  }
}
