import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(24.4, 42.0, 24.4, 42.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Image(image: AssetImage('assets/back.png')),
                  Text("Skip")
                ],
              ),
            ),
            Container(
                margin:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 34.0),
                constraints: const BoxConstraints.expand(height: 300.0),
                width: MediaQuery.of(context).size.width * 0.65,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/girl.png"),
                        fit: BoxFit.cover))),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              width: MediaQuery.of(context).size.width * 0.60,
              child: const FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    "Visisble changes in 3 weeks",
                    style: TextStyle(fontSize: 38.0),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(_colorFromHex('#A75DB4')),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Colors.transparent))),
                ),
                onPressed: () {},
                child: Text(
                  "Get my plan".toUpperCase(),
                  style: const TextStyle(fontSize: 14, fontFamily: "Poppins"),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                "Sign in",
                style: TextStyle(
                    color: _colorFromHex('#737CA4'),
                    fontSize: 18.0,
                    fontFamily: "Poppins"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}
