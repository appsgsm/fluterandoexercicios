import 'package:flutter/material.dart';

class AnimationImplicit extends StatefulWidget {
  const AnimationImplicit({Key? key}) : super(key: key);

  @override
  State<AnimationImplicit> createState() => _AnimationImplicitState();
}

class _AnimationImplicitState extends State<AnimationImplicit> {
  bool selected = false;
  Color color = Colors.blueAccent;
  double borderRadius = 100;
  Alignment alignBall = Alignment.bottomRight;

  double? _updateAnimation() {
    setState(() {
      borderRadius = selected ? 150 : 0;
      alignBall = selected ? Alignment.topCenter : Alignment.bottomRight;
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 500,
      child: GestureDetector(
        onTap: _updateAnimation,
        child: Container(
          child: AnimatedContainer(
            alignment: Alignment.bottomRight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                color: Colors.blueAccent),
            duration: const Duration(seconds: 2),
            curve: Curves.ease,
            width: 50,
            height: 50,
          ),
        ),
      ),
    );
  }
}
