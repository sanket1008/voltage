
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:voltage/ui/resetpassword.dart';

import '../common/button.dart';
import '../common/linktext.dart';
import 'loginscreen.dart';

class ForgotPasswordOTP extends StatefulWidget {
  const ForgotPasswordOTP({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordOTP> createState() => _ForgotPasswordOTPState();
}

class _ForgotPasswordOTPState extends State<ForgotPasswordOTP> {
  late bool _enableButton;
  late bool _enableResendOtpButton;

  @override
  void initState() {
    startTimeout();
    _enableButton = false;
    _enableResendOtpButton=false;
    super.initState();
    
  }

  final interval = const Duration(seconds: 1);

  final int timerMaxSeconds = 60;

  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  startTimeout([int? milliseconds]) {
    var duration = interval;
    Timer.periodic(duration, (timer) {
      setState(() {
        print(timer.tick);
        currentSeconds = timer.tick;
        if (timer.tick >= timerMaxSeconds) timer.cancel();
        //_enableResendOtpButton=true;
        if(currentSeconds==59)  _enableResendOtpButton=true;

      });
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                      "A 6 digit verification code is sent to your email address",
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
                    "images/Enter_Otp.png",
                    fit: BoxFit.contain,
                    width: 200,
                  ),
                ),
                //const Spacer(flex: 2),
                const SizedBox(height: 60),

                OtpTextField(
                  numberOfFields: 6,
                  borderColor: Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                    _enableButton = true;
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    setState(() {
                      _enableButton = true;
                    });
                    /*showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Verification Code"),
                            content: Text('Code entered is $verificationCode'),
                          );
                        }
                    );*/
                  }, // end onSubmit
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "Did't receive code?",
                  style: TextStyle(
                    color: Color(0xFFA1A7AC),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Container(
                      alignment: Alignment.centerRight,
                      child: LinkText(
                        text: 'Resend Code!!',
                        color: const Color(0xFF000000),
                        onPress:_enableResendOtpButton? () {

                          startTimeout(60);
                          _enableResendOtpButton=false;
                        }:null,
                      ),
                    ),
                    Text("($timerText)",style: const TextStyle(
                      color: Color(0xFF108768),
                    ),)

                  ],
                ),

                CommonButton(
                  text: "Proceed",
                  textColor: Colors.white,
                  backGroundColor: const Color(0xFF108768),
                  onPress: _enableButton
                      ? () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ResetPassword();
                          }));
                        }
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

