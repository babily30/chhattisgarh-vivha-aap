import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:lms/edits.dart';
import 'package:lms/myprofile3.dart';
import 'package:lms/myprofile5.dart';

class MyProfileProfessional extends StatefulWidget {
  const MyProfileProfessional({super.key});

  @override
  State<MyProfileProfessional> createState() => _MyProfileProfessionalState();
}

class _MyProfileProfessionalState extends State<MyProfileProfessional> {

  final dropDownHighestEdu = GlobalKey();
  final dropDownEmployed = GlobalKey();
  final dropDownOccupation = GlobalKey();
  final dropDownAnualIncome = GlobalKey();
  final dropDownWorkLocation = GlobalKey();
  final dropDownState = GlobalKey();
  final dropDownCity = GlobalKey();


  String? selectDropDownHighestEdu;
  String? selecteDropDownEmployed;
  String? selectDropDownOccupation;
  String? selectDropDownAnualIncome;
  String? selectDropDownWorkLocation;
  String? selectDropDownState;
  String? selectDropDownCity;


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
                    builder:
                        (context) => MyProfilePersonal(),
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
                                value: 0.8,
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
                                  '4',
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
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Please Provide your Professional Details:',
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
                    SizedBox(
                      height: 45,
                      width: 400,
                      child: DropdownSearch<String>(
                        selectedItem: selectDropDownHighestEdu,
                        key: dropDownHighestEdu,
                        items:
                            (filter, InfiniteScrollProps) => [
                              'BCA',"B.tech","M.tech","P.hd","MCA","Bsc"
                            ],
                        onChanged: (value) {
                          setState(() {
                            selectDropDownHighestEdu = value;
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
                    Edits.text_profile_small('Employed In'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      width: 400,
                      child: DropdownSearch<String>(
                        selectedItem: selecteDropDownEmployed,
                        key: dropDownEmployed,
                        items:
                            (filter, InfiniteScrollProps) => [
                              '4.1','4.5','5.1','5.5','6.1'
                            ],
                        onChanged: (value) {
                          setState(() {
                            selecteDropDownEmployed = value;
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
                    Edits.text_profile_small('Occupation'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      width: 400,
                      child: DropdownSearch<String>(
                        selectedItem: selectDropDownOccupation,
                        key: dropDownOccupation,
                        items:
                            (filter, InfiniteScrollProps) => [
                              '4.1','4.5','5.1','5.5','6.1'
                            ],
                        onChanged: (value) {
                          setState(() {
                            selectDropDownOccupation = value;
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
                    Edits.text_profile_small('Annual Incom(Rs)'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      width: 400,
                      child: DropdownSearch<String>(
                        selectedItem: selectDropDownAnualIncome,
                        key: dropDownAnualIncome,
                        items:
                            (filter, InfiniteScrollProps) => [
                              '4.1','4.5','5.1','5.5','6.1'
                            ],
                        onChanged: (value) {
                          setState(() {
                            selectDropDownAnualIncome = value;
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
                    Edits.text_profile_small('Work Location'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      width: 400,
                      child: DropdownSearch<String>(
                        selectedItem: selectDropDownWorkLocation,
                        key: dropDownWorkLocation,
                        items:
                            (filter, InfiniteScrollProps) => [
                              '4.1','4.5','5.1','5.5','6.1'
                            ],
                        onChanged: (value) {
                          setState(() {
                            selectDropDownWorkLocation = value;
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
                    Edits.text_profile_small('State'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      width: 400,
                      child: DropdownSearch<String>(
                        selectedItem: selectDropDownState,
                        key: dropDownState,
                        items:
                            (filter, InfiniteScrollProps) => [
                              '4.1','4.5','5.1','5.5','6.1'
                            ],
                        onChanged: (value) {
                          setState(() {
                            selectDropDownState = value;
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
                    Edits.text_profile_small('City'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      width: 400,
                      child: DropdownSearch<String>(
                        selectedItem: selectDropDownCity,
                        key: dropDownCity,
                        items:
                            (filter, InfiniteScrollProps) => [
                              '4.1','4.5','5.1','5.5','6.1'
                            ],
                        onChanged: (value) {
                          setState(() {
                            selectDropDownCity = value;
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> MyAboutYourself()));
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
                    SizedBox(height: 10,),
                  ],
                ),
              )
            ],
          ),
        ),
    ));
  }
}