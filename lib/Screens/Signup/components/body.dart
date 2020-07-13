import 'package:flutter/material.dart';
import 'package:login/Screens/Login/login_screen.dart';
import 'package:login/Screens/Signup/components/or_divider.dart';
import 'package:login/Screens/Signup/components/social_icon.dart';
import 'package:login/components/already_have_an_account_acheck.dart';
import 'package:login/components/rounded_button.dart';
import 'package:login/components/rounded_input_field.dart';
import 'package:login/components/rounded_password_field.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
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
          RoundedInputField(
            icon: Icons.person,
            hintText: "Your Name",
            onChanged: (value) {},
          ),
          RoundedInputField(
            icon: Icons.email,
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedInputField(
            icon: Icons.phone,
            hintText: "Your Mobile Number",
            onChanged: (value) {},
          ),
          RoundedInputField(
            icon: Icons.subject,
            hintText: "Your Course",
            onChanged: (value) {},
          ),
          RoundedButton(
            color: Colors.grey,
            text: "SIGNUP",
            press: () {},
          ),
          AlreadyHaveAnAccountCheck(
            login: false,
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
          OrDivider(),
          Padding(
            padding: const EdgeInsets.only(bottom : 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
