import 'package:flutter/material.dart';
import 'package:gradient1/widgets/info_buttons.dart';
import 'package:gradient1/widgets/buttons_auth.dart';

class Login extends StatelessWidget {
  static final id = "Login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: RadialGradient(
          center: Alignment.center,
          radius: 1,
          colors: [Colors.deepOrange, Colors.pink],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Image(
                image: AssetImage('assets/images/fingerprint.png'),
              ),
            ),
            AuthButton(
                type: "name",
                ktype: TextInputType.name,
                iconData: Icons.person,
                onpress: (name) {
                  print(name);
                }),
            AuthButton(
              type: "email",
              ktype: TextInputType.emailAddress,
              iconData: Icons.email,
              onpress: (ename) {
                print(ename);
              },
            ),
            AuthButton(
              type: "password",
              ktype: TextInputType.visiblePassword,
              iconData: Icons.lock,
              onpress: (pass) {
                print(pass);
              },
            ),
            SiginLoginButton(
              action: "Sign Up",
              onpress: () {},
            )
          ],
        ),
      ),
    );
  }
}
