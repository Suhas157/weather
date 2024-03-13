import 'package:flutter/material.dart';
import 'dart:math' as math show sin, pi;

import '../values/colors.dart';



class LoadingAnimationWidget extends StatefulWidget {
   LoadingAnimationWidget({
    super.key,
    this.color= Colors.transparent,
    this.size = 60.0,
    this.itemBuilder,
    this.duration = const Duration(milliseconds: 1200),
    this.controller,
  })  : assert(!(itemBuilder is IndexedWidgetBuilder && color is Color) && !(itemBuilder == null && color == null),
  'You should specify either a itemBuilder or a color');

  final Color? color;
  final double size;
  final IndexedWidgetBuilder? itemBuilder;
  final Duration duration;
  final AnimationController? controller;

  @override
  State<LoadingAnimationWidget> createState() => _SpinKitDancingSquareState();
}

class _SpinKitDancingSquareState extends State<LoadingAnimationWidget> with SingleTickerProviderStateMixin {
  static const _itemCount = 12;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = (widget.controller ?? AnimationController(vsync: this, duration: widget.duration))..repeat();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.fromSize(
        size: Size.square(widget.size),
        child: Stack(
          children: List.generate(_itemCount, (index) {
            final position = widget.size * .5;
            final delay = index / _itemCount;
            return Stack(
              children: [
                Positioned.fill(
                  left: position,
                  top: position,
                  child: Transform(
                    transform: Matrix4.rotationX(30.0 * index * 0.0174533),
                    child: Align(
                      alignment: Alignment.center,
                      child: ScaleTransition(
                        scale: DelayTween(begin: 0.0, end: 1.0, delay: delay).animate(_controller),
                        child: SizedBox.fromSize(
                          size: Size.square(widget.size * 0.15),
                          child: _itemBuilder(index),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  left: position,
                  top: -1 * position,
                  child: Transform(
                    transform: Matrix4.rotationY(30.0 * index * 0.0174533),
                    child: Align(
                      alignment: Alignment.center,
                      child: ScaleTransition(
                        scale: DelayTween(begin: 0.0, end: 1.0, delay: delay).animate(_controller),
                        child: SizedBox.fromSize(
                          size: Size.square(widget.size * 0.15),
                          child: _itemBuilder(index),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  left: -1 * position,
                  top: position,
                  child: Transform(
                    transform: Matrix4.rotationX(30.0 * index * 0.0174533),
                    child: Align(
                      alignment: Alignment.center,
                      child: ScaleTransition(
                        scale: DelayTween(begin: 0.0, end: 1.0, delay: delay).animate(_controller),
                        child: SizedBox.fromSize(
                          size: Size.square(widget.size * 0.15),
                          child: _itemBuilder(index),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  left: position,
                  top: position,
                  child: Transform(
                    transform: Matrix4.rotationY(30.0 * index * 0.0174533),
                    child: Align(
                      alignment: Alignment.center,
                      child: ScaleTransition(
                        scale: DelayTween(begin: 0.0, end: 1.0, delay: delay).animate(_controller),
                        child: SizedBox.fromSize(
                          size: Size.square(widget.size * 0.15),
                          child: _itemBuilder(index),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }

  Widget _itemBuilder(int index) => widget.itemBuilder != null
      ? widget.itemBuilder!(context, index)
      :  DecoratedBox(
    decoration: BoxDecoration( gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        AppColor.secondaryColor,
        AppColor.primaryColor,
      ],
    ), shape: BoxShape.rectangle),
  );
}

class DelayTween extends Tween<double> {
  DelayTween({required this.delay,super.begin, super.end});

  final double delay;

  @override
  double lerp(double t) => super.lerp((math.sin((t - delay) * 2 * math.pi) + 1) / 2);

  @override
  double evaluate(Animation<double> animation) => lerp(animation.value);
}