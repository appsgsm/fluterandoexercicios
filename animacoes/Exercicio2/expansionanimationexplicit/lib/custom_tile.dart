import 'package:flutter/material.dart';

class CustomTile extends StatefulWidget {
  final String texto;

  const CustomTile({Key? key, required this.texto}) : super(key: key);

  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile>
    with SingleTickerProviderStateMixin {
  bool selected = false;

  late final AnimationController _controller;
  late final Animation<Offset> animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      upperBound: 0.5,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.10;
    double width = MediaQuery.of(context).size.width * 1.0;
    return Column(
      children: [
        Container(
          width: width,
          height: height,
          color: Colors.white,
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.texto),
                  RotationTransition(
                    turns: Tween(begin: 0.0, end: 2.0).animate(_controller),
                    child: IconButton(
                      icon: const Icon(Icons.expand_less),
                      onPressed: () {
                        setState(() {
                          selected = !selected;
                          if (selected) {
                            _controller.reverse(from: 0.0);
                          } else {
                            _controller.forward(from: 0.5);
                          }
                        });
                      },
                    ),
                  )
                ],
              ),
              const Divider(
                height: 2.0,
              )
            ],
          ),
        ),
        SizeTransition(
          sizeFactor: _controller,
          child: Container(
            color: Colors.white,
            width: width,
            height: 200,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/flutter-logo.png",
                      width: 50,
                      height: 50,
                    )
                  ],
                ),
                Row(
                  children: const [
                    Flexible(
                      child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
