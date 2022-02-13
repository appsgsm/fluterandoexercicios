import 'package:flutter/material.dart';

class AnimaBotao extends StatefulWidget {
  const AnimaBotao({Key? key}) : super(key: key);

  @override
  _AnimaBotaoState createState() => _AnimaBotaoState();
}

class _AnimaBotaoState extends State<AnimaBotao> {
  double _width = 200;
  double _height = 200;

  bool selected = false;

  late Color color;
  late double borderRadius = 150;
  late double margin;

  @override
  initState() {
    super.initState();
    color = Colors.blueAccent;
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
    double _height = MediaQuery.of(context).size.height * 0.10;
    double _width = MediaQuery.of(context).size.width * 1.0;

    return Container(
      width: _width,
      height: _height,
      child: GestureDetector(
        onTap: _updateAnimation,
        child: AnimatedAlign(
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
