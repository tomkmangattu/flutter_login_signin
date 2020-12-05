import 'package:flutter/material.dart';

class ButtonAuth extends StatelessWidget {
  final String action;
  final Function onpress;
  ButtonAuth({this.action, this.onpress});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'Or',
              style: TextStyle(color: Colors.white54),
            ),
          ),
        ),
        SiginLoginButton(
          action: action,
          onpress: onpress,
        ),
      ],
    );
  }
}

class SiginLoginButton extends StatelessWidget {
  SiginLoginButton({this.action, this.onpress});

  final String action;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        onPressed: onpress,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 2,
                  focalRadius: 12,
                  colors: [Colors.red, Colors.pink]),
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "$action",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
