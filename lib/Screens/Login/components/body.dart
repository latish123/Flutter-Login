import 'package:flutter/material.dart';
import 'package:login/Screens/Signup/signup_screen.dart';
import 'package:login/components/already_have_an_account_acheck.dart';
import 'package:login/components/rounded_button.dart';
import 'package:login/components/rounded_input_field.dart';
import 'package:login/components/rounded_password_field.dart';


class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          SizedBox(height: 120,),
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
            icon: Icons.email,
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          SizedBox(height: 20),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            color: Colors.grey,
            text: "LOGIN",
            press: () {},
          ),
         SizedBox(height: 30,),
          AlreadyHaveAnAccountCheck(
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
    );
  }
}
