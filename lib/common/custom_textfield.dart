//common folder is for a reuseable widget  such as Formss below

import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String hintText;

  final TextEditingController controller;

  const CustomTextField({Key? key,required this.controller,required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration:  InputDecoration(
        hintText: hintText,
        border:const OutlineInputBorder(
          borderSide: BorderSide(
            color:  Colors.black54,
          )  
        ),
        enabledBorder:const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black54,
          )
      ),
    ),
    validator: (val) {
      if(val == null || val.isEmpty){
        return 'Enter Your $hintText';
      }
      //no error -> successfull
      return  null;
    
    }
    );
  }
}