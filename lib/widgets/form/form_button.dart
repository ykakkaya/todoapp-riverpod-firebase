// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  final String buttonText;
  final Color backgroundColor;
  final Color textColor;
  VoidCallback? onPressed;
   FormButton({
    Key? key,
    required this.buttonText,
    required this.backgroundColor,
    required this.textColor,
    this.onPressed,
  }) : super(key: key);

 


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    
      onPressed:onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
