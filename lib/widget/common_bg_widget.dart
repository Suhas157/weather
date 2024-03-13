import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res.dart';
import '../values/colors.dart';

class CommonBgWidget extends StatefulWidget {
  Widget body;

  CommonBgWidget({required this.body, super.key});

  @override
  State<CommonBgWidget> createState() => _CommonBgWidgetState();
}

class _CommonBgWidgetState extends State<CommonBgWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          width: 1.sw,
          height: 1.sh,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
             AppColor.transparent,
              AppColor.transparent,
              AppColor.transparent,
            ],
          )),
          child: Stack(
            children: [
              Image(
                image: const AssetImage(Res.home_bg),
                alignment: Alignment.center,
                fit: BoxFit.fill,
                width: 1.sw,
                height: 1.sh,
              ),
              SizedBox(
                width: 1.sw,
                height: 1.sh,
                child: widget.body,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
