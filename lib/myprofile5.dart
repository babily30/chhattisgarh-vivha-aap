import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lms/edits.dart';
import 'package:lms/mainhouse.dart';
import 'package:lms/myprofile4.dart';

class MyAboutYourself extends StatefulWidget {
  const MyAboutYourself({super.key});

  @override
  State<MyAboutYourself> createState() => _MyAboutYourselfState();
}

class _MyAboutYourselfState extends State<MyAboutYourself> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Color(0xffEC0C0D),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyProfileProfessional(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
            title: Text(
              'My Profile',
              style: TextStyle(
                fontFamily: 'CustomSans',
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 130,
                width: 400,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height: 80,
                              width: 80,
                              child: CircularProgressIndicator(
                                value: 1.0,
                                strokeWidth: 4,
                                backgroundColor: Colors.grey,
                                valueColor: AlwaysStoppedAnimation(
                                  Colors.yellow,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '5',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffEC0C0D),
                                  ),
                                ),
                                Text(
                                  ' of 5',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Professional Details',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'CustomSans',
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Next Step: About Yourself',
                              style: TextStyle(
                                color: Color.fromARGB(255, 105, 105, 105),
                                fontSize: 15,
                                fontFamily: 'CustomSans',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Please Provide Your About Yourself:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'CustomSans',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Edits.text_profile_small('Highest Education'),
                    SizedBox(height: 10),
                    Container(
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'CustomSans',
                            wordSpacing: 2,
                            color: Color(0xff757575),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Edits.text_profile_small('Upload Image (Min. 3 images):'),
                    SizedBox(height: 10),
                    DottedBorder(
                      dashPattern: [10, 5],
                      radius: Radius.circular(10),
                      color: Colors.grey,
                      borderType: BorderType.RRect,
                      child: Container(
                        width: 400,
                        decoration: BoxDecoration(),
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Image.asset('assets/icons/upload.png'),
                            SizedBox(height: 20),
                            Text(
                              'Drag & Drop files here',
                              style: TextStyle(
                                fontFamily: 'CustomSans',
                                color: Color(0xff757575),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '(or)',
                              style: TextStyle(
                                fontFamily: 'CustomSans',
                                color: Color(0xff757575),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              height: 40,
                              width: 140,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Color(0xffF6E20F),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  textStyle: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'CustomSans',
                                  ),
                                ),
                                child: Text('Browse'),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: SizedBox(
                        width: 350,
                        height: 45,
                        child: TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder:
                                  (BuildContext context) => AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    titlePadding: EdgeInsets.all(0),
                                    title: Container(
                                      height: 50,
                                      width: 330,
                                      decoration: BoxDecoration(
                                        color: Color(0xffEC0C0D),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Profile Completed',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'CustomSans',
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                    actions: [
                                      Center(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 50),
                                            Stack(
                                              children: [
                                                Image.asset(
                                                  'assets/icons/correct.png',
                                                  width: 90,
                                                  height: 90,
                                                ),
                                                Positioned(
                                                  child: Image.asset(
                                                    'assets/icons/blink.png',
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 60,
                                                  left: 60,
                                                  child: Image.asset(
                                                    'assets/icons/blink.png',
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                              'Success',
                                              style: TextStyle(
                                                fontFamily: 'CustomSans',
                                                fontSize: 30,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 40),
                                            Text(
                                              'You Successfully Updated         Your Profile',
                                              style: TextStyle(
                                                fontFamily: 'CustomSans',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(height: 40),
                                            Center(
                                              child: SizedBox(
                                                width: 130,
                                                height: 40,
                                                child: TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder:
                                                            (context) => MainHouse(),
                                                      ),
                                                    );
                                                  },
                                                  style: TextButton.styleFrom(
                                                    backgroundColor: Color(
                                                      0xffEC0C0D,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Go To Home',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontFamily: 'CustomSans',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                            );
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xffEC0C0D),
                          ),
                          child: Text(
                            'Continue',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'CustomSans',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
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
