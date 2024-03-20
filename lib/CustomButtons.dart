import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      style: ButtonStyle(
        elevation: MaterialStatePropertyAll(4.0),
        backgroundColor: MaterialStatePropertyAll(Color(0xff1DAA61)),    //Color(0xff1DAA61)
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
        minimumSize: MaterialStatePropertyAll(
          Size(MediaQuery.of(context).size.shortestSide * 0.55, 45.0),
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SecondaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Color(0xff1DAA61)),    //
      ),
      style: ButtonStyle(
        elevation: MaterialStatePropertyAll(2.0),
        backgroundColor: MaterialStatePropertyAll(Color(0xff2C2C2C)),
        shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
        side: MaterialStatePropertyAll(BorderSide(width: 1.0, color: Color(0xff1DAA61))),
        minimumSize: MaterialStatePropertyAll(
          Size(MediaQuery.of(context).size.shortestSide * 0.55, 45.0),
        ),
      ),
    );
  }
}
