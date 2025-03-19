import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:lms/edits.dart';
import 'package:lms/myprofile.dart';
import 'package:lms/myprofile3.dart';

class MyProfileReligious extends StatefulWidget {
  const MyProfileReligious({super.key, required int initialPageIndex});

  @override
  State<MyProfileReligious> createState() => _MyProfileReligiousState();
}

class _MyProfileReligiousState extends State<MyProfileReligious> {
  bool? value = false;
  final dropDownKeyReligion = GlobalKey();
  final dropDownKeyCaste = GlobalKey();
  final dropDownKeyZodiac = GlobalKey();

  String? selectDropDownReligion;
  String? selectDropDownCaste;
  String? selectDropDownZodiac;

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
                  MaterialPageRoute(builder: (context) => Myprofile()),
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
                                value: 0.4,
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
                                  '2',
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
                              'Religion Details',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'CustomSans',
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Next Step: Personal Details',
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
                  'Please Provide your Religious Details:',
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
                    Edits.text_profile_small('Religion'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      width: 400,
                      child: DropdownSearch<String>(
                        selectedItem: selectDropDownReligion,
                        key: dropDownKeyReligion,
                        items:
                            (filter, InfiniteScrollProps) => [
                              'Christianity',
                              'Islam',
                              'Judaism',
                              'Hinduism',
                              'Buddhism',
                              'Sikhism',
                              'Other',
                            ],
                        onChanged: (value) {
                          setState(() {
                            selectDropDownReligion = value;
                          });
                        },
                        decoratorProps: DropDownDecoratorProps(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        popupProps: PopupProps.menu(showSearchBox: true),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Checkbox(
                          value: value,
                          onChanged: (bool? newValue) {
                            setState(() {
                              value = newValue!;
                            });
                          },
                          shape: CircleBorder(),
                          activeColor: Color(0xffEC0C0D),
                        ),
                        const Text(
                          'Willing to marry from other caste also',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CustomSans',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Edits.text_profile_small('Caste'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      width: 400,
                      child: DropdownSearch<String>(
                        selectedItem: selectDropDownCaste,
                        key: dropDownKeyCaste,
                        items:
                            (filter, InfiniteScrollProps) => [
                              'Brahmin',
                              'Kshatriya',
                              'Vaishyas',
                              'Shudras',
                            ],
                        onChanged: (value) {
                          setState(() {
                            selectDropDownCaste = value;
                          });
                        },
                        decoratorProps: DropDownDecoratorProps(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        popupProps: const PopupProps.menu(showSearchBox: true),
                      ),
                    ),
                    SizedBox(height: 20),
                    Edits.text_profile_small('Zodiac'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      width: 400,
                      child: DropdownSearch<String>(
                        selectedItem: selectDropDownZodiac,
                        key: dropDownKeyZodiac,
                        items:
                            (filter, InfiniteScrollProps) => [
                              'Aries',
                              'Cancer',
                              'Libra',
                              'Taurus',
                              'Leo',
                              'Scorpio',
                              'Gemini',
                              'Virgo',
                              'Sagittarius',
                              'Capricon',
                              'Aquarius',
                              'Pisces',
                            ],
                        onChanged: (value) {
                          setState(() {
                            selectDropDownZodiac = value;
                          });
                        },
                        decoratorProps: DropDownDecoratorProps(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        popupProps: const PopupProps.menu(showSearchBox: true),
                      ),
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: SizedBox(
                        width: 350,
                        height: 45,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> MyProfilePersonal()));
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
