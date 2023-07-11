import 'package:flutter/material.dart';

import '../../../constans.dart';
import '../../widget/text_input_filed.dart';
class SignupScreen extends StatelessWidget {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
     final TextEditingController _usernameController = TextEditingController();
   SignupScreen({Key ? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body : Container(
  alignment : Alignment.center , 
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Tiktok Clone' , style: TextStyle(fontSize: 35 , color: buttonColor, fontWeight: FontWeight.w900),
      ),
      const Text('Sign up', style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w700),
      ),
      const SizedBox(height: 25,
),
Stack(
children: [
  const CircleAvatar(
radius: 64,
backgroundImage: NetworkImage('https://th.bing.com/th/id/R.009dd309bc56f440abecb00dc25ac197?rik=rmqDzfwhIo1oow&pid=ImgRaw&r=0'),
backgroundColor: Colors.black,
  ),
  Positioned(
    bottom: -10,
    left: 80,
    child: IconButton(
      onPressed: () {
       print('add photo') ;
      },
      icon: const Icon(Icons.add_a_photo),
      
      ),
  )
],
),
const SizedBox(height: 25,),
Container(
  width: MediaQuery.of(context).size.width,
  margin: EdgeInsets.symmetric(horizontal: 20),
  child: TextInputFiled(controller: _usernameController, labelText: 'User name', icon: Icons.person),
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
    print('Register user');
  },
  child:   const Center(
  
    child: const Text('Sign up' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w700),
  
    ),
  
  ),
),
),
const SizedBox(height: 15,
),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
  const Text('Already have an account' , style: TextStyle(fontSize: 20,
  ),
  ),
  InkWell(
    onTap: () {
      print('login user');
    },
    child: Text('Login', style: TextStyle(fontSize: 20 , color: buttonColor),)),
],
),
    ],
  ),
  
)
   );
  }
}