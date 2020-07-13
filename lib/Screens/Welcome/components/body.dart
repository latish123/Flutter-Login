import 'package:flutter/material.dart';
import 'package:login/Screens/Login/login_screen.dart';
import 'package:login/Screens/Signup/signup_screen.dart';
import 'package:login/components/rounded_button.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Text(
                  "WELCOME TO NOTES PICKUP!",
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman',
                  fontSize: 15),
                ),
              ),
            ),
            SizedBox(height: 50,),
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/companylogo.png',),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 50,),
            RoundedButton(
              color: Colors.grey,
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: Colors.grey,
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
