import 'package:demo_dec/widget/loading_animation.dart';
import 'package:flutter/material.dart';

import '../values/colors.dart';

class Loading extends StatefulWidget {
  final bool? backgroundTransparent;
  final String? message;
  final bool status;
  final Widget child;

  const Loading(
      {required this.status,
      required this.child,
      super.key,
      this.message,
      this.backgroundTransparent});

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Align(alignment: Alignment.bottomCenter, child: widget.child),
      _loading(widget.status)
    ]);
  }

  Widget _loading(bool loading) {
    return loading == true
        ? Stack(
            children: [
              Container(
                alignment: Alignment.center,
                color: widget.backgroundTransparent == true
                    ? Colors.transparent
                    : AppColor.black.withOpacity(0.8),
              ),
              LoadingAnimationWidget(),
            ],
          )
        : Container();
  }
}
