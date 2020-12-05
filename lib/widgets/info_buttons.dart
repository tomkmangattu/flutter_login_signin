import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String type;
  final TextInputType ktype;
  final IconData iconData;
  final Function onpress;
  AuthButton({this.type, this.ktype, this.onpress, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        onChanged: onpress,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            labelText: "Enter $type ..",
            labelStyle: TextStyle(
                color: Colors.pinkAccent[100],
                fontSize: 12,
                shadows: [
                  Shadow(
                      offset: Offset(1, 1),
                      blurRadius: 2,
                      color: Colors.black45)
                ]),
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.white, width: 4),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white54, width: 2),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white70, width: 2.5),
                borderRadius: BorderRadius.circular(12)),
            prefixIcon: Icon(
              iconData,
              color: Colors.white54,
            )),
        keyboardType: ktype,
        validator: (val) {
          if (val.length == 0) return "Cannot be empty";
          return null;
        },
      ),
    );
  }
}
