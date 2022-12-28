import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voltage/ui/createprofile.dart';
import 'package:voltage/ui/loginscreen.dart';

import '../common/button.dart';
import '../common/inputbox.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  late bool _showPassword;
  late bool _showConfirmPassword;
  final _resetPasswordformKey = GlobalKey<FormState>();
  late String password,confirmPassword;

  @override
  void initState() {
    super.initState();
    _showPassword = true;
    _showConfirmPassword = true;
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Form(
              key: _resetPasswordformKey,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 15.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Reset Password",
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
                      "images/Reset_password.png",
                      fit: BoxFit.contain,
                      width: 200,
                    ),
                  ),
                  //const Spacer(flex: 2),
                  const SizedBox(height: 60),
                  InputBox(
                    controller: _passwordController,
                    hintText: "password",
                    boarderColor: Colors.green,
                    prefixIcon: Icons.lock,
                    sufixIcon: Icons.visibility_off,
                    sufixIconOnclick: Icons.visibility,
                    enaled: true,
                    readOnly: true,
                    isPassword: _showPassword,
                    suffix: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _showPassword ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ),
                    validator: (String? txt) {
                      password=txt!;
                      if (txt == null || txt.isEmpty) {
                        return "Invalid password!";
                      }
                      if (txt.length < 8) {
                        return "Password must has 8 characters";
                      }
                      if (!txt.contains(RegExp(r'[A-Z]'))) {
                        return "Password must has uppercase";
                      }
                      if (!txt.contains(RegExp(r'[0-9]'))) {
                        return "Password must has digits";
                      }
                      if (!txt.contains(RegExp(r'[a-z]'))) {
                        return "Password must has lowercase";
                      }
                      if (!txt.contains(RegExp(r'[#?!@$%^&*-]'))) {
                        return "Password must has special characters";
                      } else {}
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  InputBox(
                    controller: _confirmPasswordController,
                    hintText: "Confirm password",
                    boarderColor: Colors.green,
                    prefixIcon: Icons.lock,
                    sufixIcon: Icons.visibility_off,
                    sufixIconOnclick: Icons.visibility,
                    enaled: true,
                    readOnly: true,
                    isPassword: _showConfirmPassword,
                    suffix: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _showConfirmPassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          _showConfirmPassword = !_showConfirmPassword;
                        });
                      },
                    ),
                    validator: (String? txt) {
                      confirmPassword=txt!;
                      if (password!=confirmPassword) {
                        return "confirm password is not same";
                      } else {
                        return null;
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  CommonButton(
                    text: "Proceed",
                    onPress: () {
                      if (_resetPasswordformKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                       /* Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const LoginScreen();
                        }));*/
                      }
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return const CreateProfile();
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
      ),
    );
  }
}
