import 'package:flutter/material.dart';

class CustomTile extends StatefulWidget {
  final String texto;

  const CustomTile({Key? key, required this.texto}) : super(key: key);

  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  bool selected = false;

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
                  IconButton(
                    icon: selected
                        ? const Icon(Icons.expand_less)
                        : const Icon(Icons.expand_more),
                    onPressed: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                  )
                ],
              ),
              const Divider(
                height: 2.0,
              )
            ],
          ),
        ),
        AnimatedAlign(
          alignment: selected ? Alignment.center : Alignment.bottomCenter,
          heightFactor: selected ? 1.0 : 0.0,
          duration: const Duration(seconds: 1),
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 200),
            opacity: selected ? 1 : 0,
            child: Container(
              color: Colors.white,
              width: width,
              height: 150,
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
        ),
      ],
    );
  }
}
