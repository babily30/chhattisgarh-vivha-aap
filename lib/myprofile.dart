import 'package:flutter/material.dart';
import 'package:lms/edits.dart';
import 'package:lms/mainhouse.dart';
import 'package:lms/myprofile2.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  int detailsIndex = 0;

  List pages = [MyProfileReligious(initialPageIndex: 0)];

  List<String> detailsTitles = ['Basic Details', 'Religious Details'];

  String selectedGender = '';

  int? _currentIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Color(0xffEC0C0D),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainHouse()),
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
        backgroundColor: Colors.white,
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
                                value: 0.2,
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
                                  '1',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(255, 255, 5, 5),
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
                            Text(
                              detailsTitles[0],
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'CustomSans',
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Next Step: ${detailsTitles[1]}',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 143, 139, 139),
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

              // Expanded(child: pages[detailsIndex]),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Please Provide your Basic Details:',
                  style: TextStyle(
                    fontSize: 22,
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
                    Edits.text_profile_small('Name:'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Edits.text_profile_small('Date of Birth::'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Edits.text_profile_small('Age:'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Edits.text_profile_small('Gender:'),
                    SizedBox(height: 10),
                    Container(
                      height: 40,
                      child: ToggleButtons(
                        isSelected: [_currentIndex == 0, _currentIndex == 1],
                        onPressed: (index) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        borderRadius: BorderRadius.circular(30),
                        borderColor: Colors.grey,
                        selectedBorderColor: Color(0xffEC0C0D),
                        color: Colors.black,
                        selectedColor: Colors.white,
                        fillColor: Color(0xffEC0C0D),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('       Male       ',style: TextStyle(fontSize: 18),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(child: Text('     Female     ',style: TextStyle(fontSize: 18),)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: SizedBox(
                        width: 350,
                        height: 45,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> MyProfileReligious(initialPageIndex: 0,)));
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xffEC0C0D)
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
