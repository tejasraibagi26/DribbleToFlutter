import 'package:bank/Screens/Home.dart';
import 'package:bank/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  child: Image.asset("images/logo.png"),
                ),
                TextField(
                    size: size,
                    prefixIcon: Icons.email_outlined,
                    suffixIcon: Icons.remove_red_eye_outlined,
                    title: "Email Address",
                    isObscured: false,
                    initialVal: "Username@gmail.com"),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  size: size,
                  prefixIcon: Icons.lock_outline,
                  suffixIcon: Icons.remove_red_eye_outlined,
                  title: "Password",
                  isObscured: true,
                  initialVal: "***********",
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        CupertinoPageRoute(builder: (context) => Home()));
                  },
                  child: Container(
                    height: 60,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "RedHat",
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextField extends StatelessWidget {
  const TextField({
    Key? key,
    required this.size,
    required this.title,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.isObscured,
    required this.initialVal,
  }) : super(key: key);

  final Size size;
  final String title;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final bool isObscured;
  final String initialVal;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              color: primaryColor.withOpacity(.1),
              blurRadius: 12,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
            TextFormField(
              obscureText: false,
              initialValue: initialVal,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "********",
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                prefixIcon: Icon(
                  prefixIcon,
                  color: Colors.black,
                ),
                suffixIcon: isObscured
                    ? Icon(
                        suffixIcon,
                        color: Colors.black,
                      )
                    : null,
              ),
            )
          ],
        ));
  }
}
