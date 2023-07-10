import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tiktok/constans.dart';
class TextInputFiled extends StatelessWidget{
   final TextEditingController controller;
  final String labelText;
  final bool isObscure;
  final IconData icon;
  const TextInputFiled({Key ? key, required this.controller,
    required this.labelText,
    this.isObscure = false,
    required this.icon,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller :controller,
      decoration: InputDecoration(
        labelText: labelText , 
        prefixIcon: Icon(icon),
        labelStyle: const TextStyle(fontSize: 25,),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: borderColor,
        ),
        )
      ),
      obscureText: isObscure,
    );
  }

}