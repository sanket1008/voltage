import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voltage/ui/forgotpasswordotpscreen.dart';

import '../common/button.dart';
import '../common/inputbox.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  late TextEditingController _emailController;

 @override
  void initState() {

    super.initState();
    _emailController=TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, top: 15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Color(0xFF108768),
                        fontSize: 23.00,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Lorem ipsum is placeholder text commonly used in the graphic",
                      style: TextStyle(
                        color: Color(0xFFA1A7AC),
                        fontSize: 15.00,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Center(
                  child: Image.asset(
                    "images/Forgot_password_cuate.png",
                    fit: BoxFit.contain,
                    width: 200,
                  ),
                ),
                //const Spacer(flex: 2),
                const SizedBox(height: 60),
                InputBox(
                    controller: _emailController,
                    hintText: "Email address",
                    boarderColor: Colors.white,
                    prefixIcon: Icons.email,
                    enaled: true,
                    readOnly: true,
                    isPassword: false),
                SizedBox(
                  height: 20,
                ),
                CommonButton(
                  text: "Proceed",
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ForgotPasswordOTP();
                    }));
                  },
                  textColor: Colors.white,
                  backGroundColor: const Color(0xFF108768),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
