import 'package:flutter/material.dart';
import 'package:gradient1/widgets/info_buttons.dart';
import 'package:gradient1/widgets/buttons_auth.dart';
import 'login_screen.dart';

class Home extends StatelessWidget {
  static final id = "home_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.purple[600], Colors.red[600]],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(child: Image(image: AssetImage("assets/images/user.png"))),
            AuthButton(
              type: "name",
              ktype: TextInputType.name,
              iconData: Icons.person,
              onpress: (name) {
                print(name);
              },
            ),
            AuthButton(
              type: "password",
              ktype: TextInputType.visiblePassword,
              iconData: Icons.lock,
            ),
            SiginLoginButton(
              action: "Sign In",
            ),
            ButtonAuth(
              action: 'Sign Up',
              onpress: () {
                Navigator.pushNamed(context, Login.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
