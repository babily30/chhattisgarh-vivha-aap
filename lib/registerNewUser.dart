import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lms/edits.dart';
import 'package:lms/mainhouse.dart';
import 'package:lms/registerOlduser.dart';

class RegisterNewUser extends StatefulWidget {
  const RegisterNewUser({super.key});

  @override
  State<RegisterNewUser> createState() => _RegisterNewUserState();
}

class _RegisterNewUserState extends State<RegisterNewUser> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
              Edits.text_register_large('Register for Free'),
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
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Edits.text_register_small('Confirm Passward'),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 334,
                      height: 41,
                      child: TextField(
                        controller: confirmPasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                width: 334,
                height: 41,
                child: TextButton(
                  onPressed: () {
                    if (emailController.text.isNotEmpty) {
                      if (passwordController.text.isNotEmpty) {
                        if (passwordController.text ==
                            confirmPasswordController.text) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainHouse(),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Passwords do not match.')),
                          );
                        }
                      } else {
                        Fluttertoast.showToast(msg: 'Enter the Passward');
                      }
                    } else {
                      Fluttertoast.showToast(msg: 'Enter yor E-mail to Login');
                    }
                  },
                  style: TextButton.styleFrom(backgroundColor:Color(0xffEC0C0D)),
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
                  Image.asset(
                    'assets/icons/whatsapp.png',
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(width: 25),
                  Image.asset(
                    'assets/icons/twitter.png',
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(width: 25),
                  Image.asset(
                    'assets/icons/facebook.png',
                    height: 30,
                    width: 30,
                  ),
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
                          builder: (context) => RegisteOldUser(),
                        ),
                      );
                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: Color(0xffEC0C0D),
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
