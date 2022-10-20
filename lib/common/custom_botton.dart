import 'package:flutter/material.dart';


class CutomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CutomButton({Key? key,required this.onTap , required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed:onTap,
      style: ElevatedButton.styleFrom(
        minimumSize:  const Size(double.infinity, 50)


      ),
    );
  }
}