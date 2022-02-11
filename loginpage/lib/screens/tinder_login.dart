import 'package:flutter/material.dart';

class TinderLogin extends StatelessWidget {
  const TinderLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
                  0.1,
                  0.4,
                  0.6,
                  0.9,
                ],
                colors: [
                  Color(0xFFfe5b61),
                  Color(0xFFfe5b61),
                  Color(0xFFfe3d71),
                  Color(0xFFfe3d71),
                ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo_tinder.png",
                      width: 250,
                      height: 250,
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          children: [
                            TextSpan(
                                text:
                                    "By tapping Create Account or Sign In, you agree to our Terms. Learn how we process your data in our ",
                                style: TextStyle(
                                    wordSpacing: 1.0, letterSpacing: 0.5)),
                            WidgetSpan(
                                alignment: PlaceholderAlignment.baseline,
                                baseline: TextBaseline.alphabetic,
                                child: SizedBox(width: 2)),
                            TextSpan(
                                text: "Privacy Police",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    wordSpacing: 1.0,
                                    letterSpacing: 0.5)),
                            WidgetSpan(
                                alignment: PlaceholderAlignment.baseline,
                                baseline: TextBaseline.alphabetic,
                                child: SizedBox(width: 4)),
                            TextSpan(
                              text: "and",
                            ),
                            WidgetSpan(
                                alignment: PlaceholderAlignment.baseline,
                                baseline: TextBaseline.alphabetic,
                                child: SizedBox(width: 4)),
                            TextSpan(
                                text: "Cookies Police.",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    wordSpacing: 1.0,
                                    letterSpacing: 0.5))
                          ]))
                  /*  Text(
                  ,
                  textAlign: TextAlign.center,
                 
                ), */
                  ),
              const SizedBox(
                height: 20,
              ),
              LogoButton(
                size: size,
                iconPath: 'assets/images/icon-apple.png',
                textButton: 'SIGN IN WITH APPLE',
              ),
              const SizedBox(
                height: 20,
              ),
              LogoButton(
                size: size,
                iconPath: 'assets/images/icon-facebook.png',
                textButton: 'SIGN IN WITH FACEBOOK',
              ),
              const SizedBox(
                height: 20,
              ),
              LogoButton(
                size: size,
                iconPath: 'assets/images/icon-speech.png',
                textButton: 'SIGN IN WITH PHONE NUMBER',
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Trouble Signing In",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LogoButton extends StatelessWidget {
  const LogoButton({
    Key? key,
    required this.size,
    required this.iconPath,
    required this.textButton,
  }) : super(key: key);

  final Size size;
  final String textButton;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(width: 2.0, color: Colors.white),
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                iconPath,
                width: 20,
                height: 20,
              ),
              Text(
                textButton,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
