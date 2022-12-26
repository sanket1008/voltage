import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/button.dart';
import 'loginscreen.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/bg.png"),
            fit: BoxFit.cover,
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Spacer(
                flex: 3,
              ),
              Image.asset(
                'images/logo.png',
                fit: BoxFit.contain,
                width: 200,
              ),
              const SizedBox(height: 10.00),
              const Text(
                "Let's Impact world with Power",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.00,
                    fontWeight: FontWeight.normal),
              ),
              const Spacer(
                flex: 2,
              ),
              const Text(
                "Technology is very simple tool to interlock your decision of ownership beware of everything",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.00,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                height: 30.00,
              ),
              CommonButton(
                text: "Get Started",
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
                textColor: Color(0xFF108768),
                backGroundColor: Colors.white,
              ),
              const Spacer(
                flex: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
