import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lms/edits.dart';
import 'package:lms/mainhouse.dart';
import 'package:lms/registerForgetPass.dart';
import 'package:lms/registerNewUser.dart';

class RegisteOldUser extends StatefulWidget {
  const RegisteOldUser({super.key});

  @override
  State<RegisteOldUser> createState() => _RegisteOldUserState();
}

class _RegisteOldUserState extends State<RegisteOldUser> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/image/Register.png',
                fit: BoxFit.fitWidth,
                width: 410,
                height: 290,
              ),
              SizedBox(height: 30),
              Edits.text_register_large('Welcome Back !'),
              SizedBox(height:5,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Edits.text_register_small('Email'),
                      SizedBox(height: 5),
                      SizedBox(
                      width: 334,
                      height: 41,
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Edits.text_register_small('Passward'),
                      SizedBox(height: 10),
                      SizedBox(
                      width: 334,
                      height: 41,
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(left: 230.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => ForgetPass()),);
                        },
                        child: Text('Forget Passward?',
                          style: TextStyle(color: Color(0xffEC0C0D),fontSize: 12, fontFamily: 'CustomSans',),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                      width: 334,
                      height: 41,
                child: TextButton(
                  onPressed: () {
                    if (emailController.text.isNotEmpty) {
                      if (passwordController.text.isNotEmpty) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainHouse()),
                        );
                      } else {
                        Fluttertoast.showToast(msg: 'Enter your Passward');
                      }
                    } else {
                      Fluttertoast.showToast(msg: 'Enter your E-Mail');
                    }
                  },
                  style: TextButton.styleFrom(backgroundColor: Color(0xffEC0C0D)),
                  child: Text(
                    'Register Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'CustomSans',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 40, right: 10),
                      height: 2,
                      color: Colors.grey,
                    ),
                  ),
                  Text('OR USE', style: TextStyle(fontFamily: 'CustomSans')),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 40),
                      height: 2,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/whatsapp.png', height: 33, width: 33),
                  SizedBox(width: 25),
                  Image.asset('assets/icons/twitter.png', height: 33, width: 33),
                  SizedBox(width: 25),
                  Image.asset('assets/icons/facebook.png', height: 33, width: 33),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'CustomSans',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterNewUser(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Customsans',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
