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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
               SizedBox(height: MediaQuery.of(context).size.height * 0.20,),
                Image.asset(
                  'images/logo.png',
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width * 0.65,
                ),
                const SizedBox(height: 10.00),
                const Text(
                  "Let's Impact world with Power",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.00,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.15,),
                const Text(
                  "Technology is very simple tool to interlock your decision of ownership beware of everything",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.00,
                    fontWeight: FontWeight.normal,
                  ),
                ),
            SizedBox(height: MediaQuery.of(context).size.height*0.06,),
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
                SizedBox(height: MediaQuery.of(context).size.height*0.15,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
