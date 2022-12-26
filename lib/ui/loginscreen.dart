import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voltage/common/button.dart';
import 'package:voltage/common/inputbox.dart';
import 'package:voltage/common/linktext.dart';
import 'package:voltage/ui/createprofile.dart';
import 'package:voltage/ui/forgotpasswordscreen.dart';
import 'package:voltage/ui/signupscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late bool _showPass;
  final _loginformKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _showPass = true;
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            MaterialStateColor.resolveWith((states) => Color(0xFFFFFFFF)),
        body: SingleChildScrollView(
          child: Form(
            key: _loginformKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(15.00),
                  child: Text(
                    "Log In",
                    style: TextStyle(
                        color: Color(0xFF108768),
                        fontSize: 25.00,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                //const Spacer(flex: 2),
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
                  header: const Text(
                    "Email Adress",
                    style: TextStyle(fontSize: 15.0),
                  ),
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
                    }else{

                    }
                    return null;
                  },
                ),
                InputBox(
                  controller: _passwordController,
                  hintText: "Password",
                  boarderColor: Colors.green,
                  prefixIcon: Icons.lock,
                  sufixIcon: Icons.visibility_off,
                  sufixIconOnclick: Icons.visibility,
                  enaled: true,
                  readOnly: true,
                  suffix: IconButton(
                    icon: Icon(
                      // Based on passwordVisible state choose the icon
                      _showPass ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      // Update the state i.e. toogle the state of passwordVisible variable
                      setState(() {
                        _showPass = !_showPass;
                      });
                    },
                  ),
                  isPassword: _showPass,
                  onPressEye: () {
                    setState(() {
                      _showPass = !_showPass;
                    });
                  },
                  validator: (String? txt) {
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

                Container(
                  alignment: Alignment.centerRight,
                  child: LinkText(
                    text: 'forgot Password?',
                    color: const Color(0xFF108768),
                    onPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ForgotPasswordScreen();
                      }));
                    },
                  ),
                ),
                CommonButton(
                    text: "Log In",
                    onPress: () {
                      if (_loginformKey.currentState!.validate()) {

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return const CreateProfile();
                          }));
                    },
                    textColor: Colors.white,
                    backGroundColor: const Color(0xFF108768)),
                //const Spacer(flex: 4),
                SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text("don't have an account?"),
                    Container(
                      alignment: Alignment.centerRight,
                      child: LinkText(
                        text: 'Sign Up',
                        color: const Color(0xFF108768),
                        onPress: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SignUpScreen();
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
