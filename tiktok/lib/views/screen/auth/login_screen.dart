import 'package:flutter/material.dart';
import 'package:tiktok/constans.dart';
import 'package:tiktok/views/widget/text_input_filed.dart';

class LoginScreen extends StatelessWidget{
  final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
  

  LoginScreen({Key ? key}) : super(key : key);


  @override
  Widget build(BuildContext context) {
   return Scaffold(
body : Container(
  alignment : Alignment.center , 
  child: Column(
    children: [
      Text('Tiktok Clone' , style: TextStyle(fontSize: 35 , color: buttonColor, fontWeight: FontWeight.w900),
      ),
      const Text('Login', style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w700),
      ),
const SizedBox(height: 25,
),
Container(
  width: MediaQuery.of(context).size.width,
  margin: EdgeInsets.symmetric(horizontal: 20),
  child: TextInputFiled(controller: _emailController, labelText: 'Email', icon: Icons.email),
),
const SizedBox(height: 25,
),
Container(
  width: MediaQuery.of(context).size.width,
  margin: EdgeInsets.symmetric(horizontal: 20),
  child: TextInputFiled(controller: _passwordController, labelText: 'Password', icon: Icons.lock),
),
const SizedBox(height: 30,
),
Container(
  width: MediaQuery.of(context).size.width-40,
  height: 50,
  decoration: BoxDecoration(
    color: buttonColor,
    borderRadius: const BorderRadius.all(Radius.circular(5),
    ),
    
  ),
child: InkWell(
  onTap: () {
    print('Login user');
  },
  child:   const Center(
  
    child: const Text('Login' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w700),
  
    ),
  
  ),
),
)
    ],
  ),
  
)
   );
  }

}