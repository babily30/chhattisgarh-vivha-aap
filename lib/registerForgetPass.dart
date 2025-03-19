import 'package:flutter/material.dart';
import 'package:lms/edits.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({super.key});

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  final TextEditingController emailController = TextEditingController();

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
              Edits.text_register_large('Forget Passward'),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 50,right: 50,top: 10),
                      child: Column(
                        children: [
                          Text(
                            'We will send you a message to set or reset',
                            style: TextStyle(fontSize: 13, color: Color(0xff757575),fontFamily: 'CustomSans'),
                            
                          ),
                          Text(
                            'your new passward',
                            style: TextStyle(fontSize: 13, color: Color(0xff757575),fontFamily: 'CustomSans'),
                           
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    SizedBox(
                      width: 334,
                      height: 41,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(backgroundColor: Color(0xffEC0C0D)),
                        child: Text(
                          'Submit',
                          style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: 'CustomSans'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
