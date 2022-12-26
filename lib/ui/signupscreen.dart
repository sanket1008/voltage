import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/button.dart';
import '../common/inputbox.dart';
import '../common/linktext.dart';
import 'loginscreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController _emailController,_nameController,_passwordController,_confirmPasswordController;
  late bool _showPassword,_showConfirmPassword;
  final _loginformKey = GlobalKey<FormState>();
  late String password,confirmPassword;
  @override
  void initState() {
    super.initState();
    _showPassword = true;
    _showConfirmPassword = true;
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _nameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _loginformKey,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, top: 15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Sign Up",
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
                      "Create your Account",
                      style: TextStyle(
                        color: Color(0xFFA1A7AC),
                        fontSize: 18.00,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                  child: Image.asset(
                    "images/Sign_up_cuate.png",
                    fit: BoxFit.contain,
                    width: 200,
                  ),
                ),
                //const Spacer(flex: 2),
                const SizedBox(height: 40),
                InputBox(
                  controller: _nameController,
                  hintText: "Name",
                  boarderColor: Colors.white,
                  prefixIcon: Icons.person,
                  enaled: true,
                  readOnly: true,
                  isPassword: false,
                  validator: (value) {
                    print("$value");
                    if (value == null || value.isEmpty) {
                      return "password is empty";
                    } else {}
                    return null;
                  },
                ),
                InputBox(
                  controller: _emailController,
                  hintText: "Email Address",
                  boarderColor: Colors.white,
                  prefixIcon: Icons.email,
                  enaled: true,
                  readOnly: true,
                  isPassword: false,
                  validator: (value) {
                    print("$value");
                    if (value == null || value.isEmpty) {
                      return "password is empty";
                    } else {}
                    return null;
                  },
                ),
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
                    } else
                      return null;
                  },
                ),
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
                    }
                    if (password!=confirmPassword) {
                      return "confirm password is not same";
                    } else
                      return null;
                  },
                ),
                CommonButton(
                  text: "Sign Up",
                  onPress: () {
                    if (_loginformKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                    /* Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const LoginScreen();
                    }));*/
                  },
                  textColor: Colors.white,
                  backGroundColor: const Color(0xFF108768),
                ),
                SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have an account?"),
                    Container(
                      alignment: Alignment.centerRight,
                      child: LinkText(
                        text: 'Log in now',
                        color: const Color(0xFF108768),
                        onPress: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const LoginScreen();
                          }));
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
