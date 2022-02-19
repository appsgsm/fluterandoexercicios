import 'package:flutter/material.dart';

class AnimaBotao extends StatefulWidget {
  const AnimaBotao({Key? key}) : super(key: key);

  @override
  _AnimaBotaoState createState() => _AnimaBotaoState();
}

class _AnimaBotaoState extends State<AnimaBotao> {
  bool selected = false;
  Color color = Colors.blueAccent;
  double borderRadius = 150;

  @override
  initState() {
    super.initState();
    borderRadius = 150;
  }

  double? _updateAnimation() {
    setState(() {
      borderRadius = selected ? 150 : 0;
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height * 0.10;
    double screenWidth = MediaQuery.of(context).size.width * 1.0;

    return Container(
      width: screenWidth,
      height: screenHeight,
      child: GestureDetector(
        onTap: _updateAnimation,
        child: AnimatedContainer(
          alignment: selected ? Alignment.topCenter : Alignment.bottomRight,
          curve: Curves.ease,
          duration: const Duration(seconds: 2),
          child: Container(
            width: selected ? 150 : 50,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
      ),
    );
  }
}
