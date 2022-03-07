import 'package:flutter/material.dart';

class AnimationImplicit extends StatefulWidget {
  const AnimationImplicit({Key? key}) : super(key: key);

  @override
  State<AnimationImplicit> createState() => _AnimationImplicitState();
}

class _AnimationImplicitState extends State<AnimationImplicit> {
  bool selected = false;
  Color ballColor = Colors.blueAccent;
  double borderRadius = 150;
  double ballWidth = 50;
  double ballHeight = 50;
  Alignment alignBall = Alignment.bottomRight;
  Duration durationAnimation = const Duration(seconds: 2);

  void _updateAnimation() {
    setState(() {
      selected = !selected;
      borderRadius = selected ? 0 : 150;
      ballWidth = selected ? 150 : 50;
      alignBall = selected ? Alignment.topCenter : Alignment.bottomRight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _updateAnimation,
      child: AnimatedAlign(
        alignment: alignBall,
        duration: durationAnimation,
        child: AnimatedContainer(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: ballColor),
          duration: durationAnimation,
          curve: Curves.ease,
          width: ballWidth,
          height: ballHeight,
        ),
      ),
    );
  }
}
