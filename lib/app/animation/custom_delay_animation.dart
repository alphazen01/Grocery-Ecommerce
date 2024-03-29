import 'dart:async';
import 'package:flutter/material.dart';

class CustomDelayedAnimation extends StatefulWidget {
  final Widget child;
  final int delay;
  final double dx, dy;

  const CustomDelayedAnimation(
      {super.key,
      required this.child,
      required this.delay,
      required this.dx,
      required this.dy});

  @override
  CustomDelayedAnimationState createState() => CustomDelayedAnimationState();
}

class CustomDelayedAnimationState extends State<CustomDelayedAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animOffset;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: _controller);
    _animOffset =
        Tween<Offset>(begin: Offset(widget.dx, widget.dy), end: Offset.zero)
            .animate(curve);

    Timer(Duration(milliseconds: widget.delay), () {
      if (mounted) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,
      ),
    );
  }
}
