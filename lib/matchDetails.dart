import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/controller/matchController.dart';
import 'package:lms/edits.dart';
import 'package:lms/match.dart';

class DetailsPage extends StatefulWidget {
  final String name;
  final String imagePath;
  final String age; 
  final String height;
  final String degree;
  final String location;
  final String job;
  final bool isFavorite;
  final Function(bool) onFavriteToogle;

  DetailsPage({
    required this.name,
    required this.imagePath,
    required this.age,
    required this.height,
    required this.degree,
    required this.location,
    required this.job,
    required this.isFavorite,
    required this.onFavriteToogle,
  });

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late MatchController matchController;
  late HomePremiunMatch homePremiunMatch;
  late HomeRecommendedMatch homeRecommendedMatch;
  late List<bool> isFavt;

  @override
  void initState() {
    homePremiunMatch = Get.put(HomePremiunMatch());
    homeRecommendedMatch = Get.put(HomeRecommendedMatch());
    matchController = Get.put(MatchController());
    isFavt = List<bool>.filled(matchController.MyName.length, false);
    super.initState();
    isFavt = List<bool>.filled(homePremiunMatch.MyName.length, false);
    super.initState();
    isFavt = List<bool>.filled(homeRecommendedMatch.MyName.length, false);
    super.initState();
  }

  int? _currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Color(0xffEC0C0D),
            centerTitle: true,
            leading: IconButton(onPressed: (){
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MatchPage()),
                  );
            }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
            title: Text(
              'Matches Details',
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          widget.imagePath,
                          fit: BoxFit.cover,
                          height: 250,
                          width: double.infinity,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 330,
                        child: Column(
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child: IconButton( icon: Icon( widget.isFavorite ? Icons.favorite: Icons.favorite_outline,
                              color: widget.isFavorite ? Color(0xffEC0C0D): Color(0xffcfcfcf),size: 20,),
                                onPressed: () {
                                  widget.onFavriteToogle(widget.isFavorite);
                                },
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child: IconButton(
                                          icon: Icon(
                                            Icons.share_outlined,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder:
                                                  (
                                                    BuildContext context,
                                                  ) => AlertDialog(
                                                    title: Row(
                                                      children: [
                                                        Text(
                                                          'Share Profile',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'CustomSans',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        SizedBox(width: 110),
                                                        IconButton(onPressed: () { Navigator.pop(context); },
                                                        icon: Icon(Icons.close)),
                                                      ],
                                                    ),
                                                    actions: [
                                                      Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              CircleAvatar(
                                                                radius: 50,
                                                                backgroundImage:
                                                                    AssetImage(
                                                                      widget.imagePath),
                                                              ),
                                                              SizedBox(width: 10),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets.only(
                                                                        left: 10.0,
                                                                        top: 30,
                                                                      ),
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        widget.name,
                                                                        style: TextStyle(fontFamily:'CustomSans',
                                                                          fontSize:25,
                                                                          fontWeight:FontWeight.w500,
                                                                          color:Colors.black,
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        children: [
                                                                          Text(
                                                                            widget.age,
                                                                            style: TextStyle( fontFamily: 'CustomSans',
                                                                              fontWeight: FontWeight.w500,
                                                                              color: Color(0xff757575,),
                                                                            ),
                                                                          ),
                                                                          SizedBox(width: 5,),
                                                                          Text(
                                                                            widget.height,
                                                                            style: TextStyle( fontFamily: 'CustomSans',
                                                                              fontWeight: FontWeight.w500,
                                                                              color: Color(0xff757575,),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Text(
                                                                        widget.location,
                                                                        style: TextStyle(fontFamily:'CustomSans',
                                                                          fontSize:20,
                                                                          fontWeight:FontWeight.w500,
                                                                          color:Colors.black,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: 5,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(height: 10,),
                                                          SizedBox(
                                                            height: 75,
                                                            width:double.infinity,
                                                            child: Container(
                                                              margin: const EdgeInsets.only(left: 1,right: 1,top: 15,bottom: 10),
                                                              decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(30),
                                                                border: Border.all()
                                                                ),
                                                              child: Padding(
                                                                padding: const EdgeInsets.all(8.0),
                                                                child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                    children: [
                                                                      Text('Link',style: TextStyle(color: Colors.grey),),
                                                                      SizedBox(width: 170,),
                                                                      Icon(Icons.copy,size: 15,color: Color(0xffEC0C0D),),
                                                                      Text('Copy',style: TextStyle(color: Color(0xffEC0C0D),fontFamily: 'CustomSans'),),
                                                                      ],
                                                                    ),
                                                                  ),
                                                            ),
                                                          ),
                                                          SizedBox(height: 10,),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Column(
                                                                children: [
                                                                  Container(width: 55,height: 55,
                                                                    decoration: BoxDecoration(
                                                                      color: Colors.black,
                                                                      borderRadius: BorderRadius.circular(30)
                                                                    ),
                                                                    child: Image.asset('assets/icons/broadcast.png'),
                                                                  ),
                                                                  SizedBox(height: 10,),
                                                                  Text('Airdrop',style: TextStyle(fontFamily: 'CustomSans',),)
                                                                ],
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Container(width: 55,height: 55,
                                                                    decoration: BoxDecoration(
                                                                      color: Color(0xff16C165),
                                                                      borderRadius: BorderRadius.circular(30)
                                                                    ),
                                                                    child: Image.asset('assets/icons/brand-whatsapp.png'),
                                                                  ),SizedBox(height: 10,),
                                                                  Text('Whatsaap',style: TextStyle(fontFamily: 'CustomSans',),)
                                                                ],
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Container(width: 55,height: 55,
                                                                    decoration: BoxDecoration(
                                                                      color: Color(0xff1C3FF7),
                                                                      borderRadius: BorderRadius.circular(30)
                                                                    ),
                                                                    child: Image.asset('assets/icons/brand-facebook.png'),
                                                                  ),
                                                                  SizedBox(height: 10,),
                                                                  Text('Facebook',style: TextStyle(fontFamily: 'CustomSans',),)
                                                                ],
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Container(width: 55,height: 55,
                                                                    decoration: BoxDecoration(
                                                                      color: Color(0xffF41F52),
                                                                      borderRadius: BorderRadius.circular(30)
                                                                    ),
                                                                    child: Image.asset('assets/icons/brand-instagram.png'),
                                                                  ),
                                                                  SizedBox(height: 10,),
                                                                  Text('Instagram',style: TextStyle(fontFamily: 'CustomSans',),)
                                                                ],
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                            );
                                          },
                                        ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.name,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.call,size: 25,),
                                  SizedBox(width: 10,),
                                  Image.asset('assets/icons/whatsapp.png',width: 25,height: 25,)
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/age.png',
                                    color: Color(0xff757575),
                                    height: 20,
                                    width: 20,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    widget.age,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff757575),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/text-height.png',
                                    color: Color(0xff757575),
                                    height: 20,
                                    width: 20,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    widget.height,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff757575),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/degree.png',
                                    color: Color(0xff757575),
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    widget.degree,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff757575),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/location.png',
                                    color: Color(0xff757575),
                                    height: 20,
                                    width: 20,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    widget.location,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff757575),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 60),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/briefcase.png',
                                    color: Color(0xff757575),
                                    height: 20,
                                    width: 20,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    widget.job,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff757575),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Interested with this profile?',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff323232),
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            height: 40,
                            child: ToggleButtons(
                              isSelected: [
                                _currentIndex == 0,
                                _currentIndex == 1,
                              ],
                              onPressed: (index) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                              borderRadius: BorderRadius.circular(30),
                              borderColor: Colors.grey,
                              selectedBorderColor: Colors.red,
                              color: Colors.black,
                              selectedColor: Colors.white,
                              fillColor: Colors.red,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text('Yes,Interested'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Center(child: Text('No')),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'About her:',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'CustomSans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing lit, sed do eiusmod tempor in cididunt ut labore et dolore magna aliqua.',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'CustomSans',
                              color: Color(0xff757575),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Basic Details:',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'CustomSans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          Edits.text_matchdetails_small('D.O.B:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Edits.text_matchdetails_small('Age:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Edits.text_matchdetails_small('Mother Tongue:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Edits.text_matchdetails_small('Eating Habits:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Edits.text_matchdetails_small('Smoking Habits:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Edits.text_matchdetails_small('Drinking Habits:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Edits.text_matchdetails_small('Profile Created By:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Edits.text_matchdetails_small('Marital Status:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Edits.text_matchdetails_small('Live In:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Edits.text_matchdetails_small('Citizen:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Religion Details:',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'CustomSans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          Edits.text_matchdetails_small('Religion:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Edits.text_matchdetails_small('Caste / Sub-Caste:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Edits.text_matchdetails_small('Gothram:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Edits.text_matchdetails_small('Dosham:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Professional Details:',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'CustomSans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          Edits.text_matchdetails_small('Employement:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Educational Details:',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'CustomSans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          Edits.text_matchdetails_small('Degree:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Edits.text_matchdetails_small('University:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Family Details:',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'CustomSans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          Edits.text_matchdetails_small('Family Type:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Edits.text_matchdetails_small('Parents:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Edits.text_matchdetails_small('Ancestral Origin:'),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Color(0xff757575))
                                ),
                              ),
                            ),
                          ),
                        ],
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
