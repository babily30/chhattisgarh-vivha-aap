import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:lms/edits.dart';
import 'package:lms/myprofile2.dart';
import 'package:lms/myprofile4.dart';

class MyProfilePersonal extends StatefulWidget {
  const MyProfilePersonal({super.key});

  @override
  State<MyProfilePersonal> createState() => _MyProfilePersonalState();
}

class _MyProfilePersonalState extends State<MyProfilePersonal> {

  bool? value = false;
  final dropDownKeyNoofChild = GlobalKey();
  final dropDownKeyheight = GlobalKey();
  final dropDownKeyFamilystatus = GlobalKey();
  final dropDownKeyFamilyValues = GlobalKey();


  String? selectDropDownMaritalStatue;
  String? selectDropDownNoOfChild;
  String? selectDropDownHeight;
  String? selectDropDownFamilystatus;
  String? selectDropDownFamilyValues;

    int? _disabilityIndex;
    int? _childrenLivingIndex;
    int? _familyType;


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
                    builder:
                        (context) => MyProfileReligious(initialPageIndex: 0),
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
                                value: 0.6,
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
                                  '3',
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
                              'Personal Details',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'CustomSans',
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Next Step: Professional Details',
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
                  'Please Provide your Personal Details:',
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
                    Edits.text_profile_small('Marital Status'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      width: 400,
                      child: DropdownButtonFormField<String>(
                        value: selectDropDownMaritalStatue,
                        items: [
                          DropdownMenuItem(value: 'Yes', child: Text('Yes')),
                          DropdownMenuItem(value: 'No', child: Text('No')),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectDropDownMaritalStatue = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Edits.text_profile_small('No. of Children'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      width: 400,
                      child: DropdownSearch<String>(
                        selectedItem: selectDropDownNoOfChild,
                        key: dropDownKeyNoofChild,
                        items:
                            (filter, InfiniteScrollProps) => [
                              '0','1','2','3','4','5','More',
                            ],
                        onChanged: (value) {
                          setState(() {
                            selectDropDownNoOfChild = value;
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
                    ),SizedBox(height: 20),
                    Edits.text_profile_small('IS Children living with you?'),
                    SizedBox(height: 10),
                    Container(
                      height: 40,
                      child: ToggleButtons(
                        isSelected: [_childrenLivingIndex == 0, _childrenLivingIndex == 1],
                        onPressed: (index) {
                          setState(() {
                            _childrenLivingIndex = index;
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
                            child: Text('       Yes       ',style: TextStyle(fontSize: 18),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(child: Text('      No      ',style: TextStyle(fontSize: 18),)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Edits.text_profile_small('Height'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      width: 400,
                      child: DropdownSearch<String>(
                        selectedItem: selectDropDownHeight,
                        key: dropDownKeyheight,
                        items:
                            (filter, InfiniteScrollProps) => [
                              '4.1','4.5','5.1','5.5','6.1'
                            ],
                        onChanged: (value) {
                          setState(() {
                            selectDropDownHeight = value;
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

                    Edits.text_profile_small('Family Status'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      width: 400,
                      child: DropdownSearch<String>(
                        selectedItem: selectDropDownFamilystatus,
                        key: dropDownKeyFamilystatus,
                        items:
                            (filter, InfiniteScrollProps) => [
                              'nuclear', 'single-parent', 'extended', 'blended',  'more',
                            ],
                        onChanged: (value) {
                          setState(() {
                            selectDropDownFamilystatus = value;
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
                    Edits.text_profile_small('Family Type'),
                    SizedBox(height: 10),
                    Container(
                      height: 40,
                      child: ToggleButtons(
                        isSelected: [_familyType == 0, _familyType == 1],
                        onPressed: (index) {
                          setState(() {
                            _familyType = index;
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
                            child: Text('       Joint       ',style: TextStyle(fontSize: 18),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(child: Text('     Nuclear     ',style: TextStyle(fontSize: 18),)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Edits.text_profile_small('Family Values'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      width: 400,
                      child: DropdownSearch<String>(
                        selectedItem: selectDropDownFamilyValues,
                        key: dropDownKeyFamilyValues,
                        items:
                            (filter, InfiniteScrollProps) => [
                              'Honesty', 'Responsibility', 'Respect', 'Empathy',"Family time" 
                            ],
                        onChanged: (value) {
                          setState(() {
                            selectDropDownFamilyValues = value;
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
                    Edits.text_profile_small('Any Disability'),
                    SizedBox(height: 10),
                    Container(
                      height: 40,
                      child: ToggleButtons(
                        isSelected: [_disabilityIndex == 0, _disabilityIndex == 1],
                        onPressed: (index) {
                          setState(() {
                            _disabilityIndex = index;
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
                            child: Text('       Yes       ',style: TextStyle(fontSize: 18),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(child: Text('      No      ',style: TextStyle(fontSize: 18),)),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> MyProfileProfessional()));
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
