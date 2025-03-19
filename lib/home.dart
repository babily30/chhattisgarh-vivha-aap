import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/alokmaurya.dart';
import 'package:lms/controller/matchController.dart';
import 'package:lms/faviorite.dart';
import 'package:lms/help.dart';
import 'package:lms/mailbox.dart';
import 'package:lms/mainhouse.dart';
import 'package:lms/matchDetails.dart';
import 'package:lms/notificationMain.dart';
import 'package:lms/premiumMatch.dart';
import 'package:lms/recommendedMatch.dart';
import 'package:lms/setting.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  

  bool isSelected1 = false; 
  bool isSelected2 = false; 
  bool isSelected3 = false; 
  bool isSelected4 = false; 
  bool isSelected5 = false; 


  late HomePremiunMatch homePremiunMatch;
  late HomeRecommendedMatch homeRecommendedMatch;

  late List<bool> isFavt;  
  @override
  void initState() {
    homePremiunMatch = Get.put(HomePremiunMatch());
    homeRecommendedMatch = Get.put(HomeRecommendedMatch());
    isFavt = List<bool>.filled(homePremiunMatch.MyName.length, false);
    super.initState();
  }

  final PageController _controller = PageController();
  int pageIndex = 0;

  List<String> pageTitles = [
    "Home",
    "Chat",
    "Match",
    "My Profile",
    "Special Offer",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              leading: Builder(
                builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: CircleAvatar(radius: 40, backgroundImage: AssetImage('assets/image/rahul.jpeg'),
                    ),
                  );
                },
              ),
              title: Center(
                child: Column(
                  children: [
                    Text(
                      'Welcome!',style: TextStyle(fontFamily: 'CustomSans',fontSize: 25,fontWeight: FontWeight.w500,),
                    ),
                    Text(
                      'Rahul',style: TextStyle(fontFamily: 'CustomSans',fontSize: 25, color: Color(0xff757575),),
                    ),
                  ],
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationMain(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.notifications_outlined,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (contex)=> Favourite()));
                  },
                  icon: Icon(Icons.menu, color: Colors.black, size: 25),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(radius: 50, backgroundImage: AssetImage('assets/image/rahul.jpeg'),),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0,top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Rahul',style: TextStyle(fontFamily: 'CustomSans',fontSize: 25,fontWeight: FontWeight.w500,color: Colors.black),),
                            Text('Rahul@example.com',style: TextStyle(fontFamily: 'CustomSans',fontWeight: FontWeight.w500,color: Color(0xff757575)),),
                            SizedBox(height: 5,),
                            TextButton(onPressed: (){},style: TextButton.styleFrom(side: BorderSide(color: Color(0xffE8EBE6))), child: Row(children: [
                              Icon(Icons.star_rounded,color: Color(0xffefbf04),),
                              Text('Premium',style: TextStyle(fontFamily: 'CustomSans',fontWeight: FontWeight.w500,color: Color(0xff757575)),)
                            ],))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Image.asset('assets/icons/editprofile.png'),
                title: Text('Edit Profile'),
                onTap: () {
                  setState(() {
                  });
                },
              ),
              ListTile(
                leading: Image.asset("assets/icons/editprefference.png"),
                title: Text('Edit Preference'),
                onTap: () {
                  setState(() {
                  });
                },
              ),
              ListTile(
                leading:  Image.asset("assets/icons/profileverifi.png"),
                title: Text('Profile Verification'),
                onTap: () {
                  setState(() {
                  });
                },
              ),ListTile(
                leading:  Image.asset("assets/icons/downlbiodata.png"),
                title: Text('Download Biodata'),
                onTap: () {
                  setState(() {
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Support & Feedback',style: TextStyle(fontFamily: 'CustomSans',fontWeight: FontWeight.w500,fontSize: 20),),
              ),
              ListTile(
                leading: Icon(Icons.settings_outlined,color: Color(0xff60635E),),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
              ),
              ListTile(
                leading:Image.asset('assets/icons/help.png'),
                title: Text('Help'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelpSettingPage()),
                  );
                },
              ),
              ListTile(
                leading:  Icon(Icons.star_outline),
                title: Text('Rate Us'),
                onTap: () {
                  {
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
                                          'Rate Us',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'CustomSans',
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                    backgroundColor: Colors.white,
                                    actions: [
                                      Center(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 20),
                                            Text(
                                              'How is your experience while using our app?',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'CustomSans',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Image.asset(
                                              'assets/image/smile.png'
                                            ),
                                            Row(
                                              children: [
                                                IconButton(onPressed: (){setState(() {
                                                  isSelected1 =!isSelected1;
                                                });}, icon: Icon(Icons.star_rate_rounded,color: isSelected1 ? Colors.amber : Colors.grey,size: 40)),
                                                IconButton(onPressed: (){setState(() {
                                                  isSelected2 =!isSelected2;
                                                });}, icon: Icon(Icons.star_rate_rounded,color: isSelected2 ? Colors.amber : Colors.grey,size: 40)),
                                                IconButton(onPressed: (){setState(() {
                                                  isSelected3 =!isSelected3;
                                                });}, icon: Icon(Icons.star_rate_rounded,color: isSelected3 ? Colors.amber : Colors.grey,size: 40)),
                                                IconButton(onPressed: (){setState(() {
                                                  isSelected4 =!isSelected4;
                                                });}, icon: Icon(Icons.star_rate_rounded,color: isSelected4 ? Colors.amber : Colors.grey,size: 40)),
                                                IconButton(onPressed: (){setState(() {
                                                  isSelected5 =!isSelected5;
                                                });}, icon: Icon(Icons.star_rate_rounded,color: isSelected5 ? Colors.amber : Colors.grey,size: 40),)
                                              ],
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                              'Rate us to let us to know how we are doing!',
                                              style: TextStyle(
                                                fontFamily: 'CustomSans',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(height: 30),
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
                                                    'Submit Rating',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontFamily: 'CustomSans',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MainHouse()));}, child: Text('Go to home',style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 15,
                                                      fontFamily: 'CustomSans',
                                                    ),))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                            );
                          }
                },
              ),
              ListTile(
                leading:  Icon(Icons.more_vert),
                title: Text('More'),
                onTap: () {
                  setState(() {
                  });
                },
              ),
              ListTile(
                leading: Image.asset('assets/icons/signout.png'),
                title: Text('Sign out',style: TextStyle(color: Color(0xffEC0C0D)),),
                onTap: () {
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
                                          'Sign Out',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'CustomSans',
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                    backgroundColor: Colors.white,
                                    actions: [
                                      Center(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 50),
                                            Image.asset(
                                              'assets/image/quest.png',
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                              'Are you Sure?',
                                              style: TextStyle(
                                                fontFamily: 'CustomSans',
                                                fontSize: 30,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 40),
                                            Text(
                                              'Do you want to sign out?',
                                              style: TextStyle(
                                                fontFamily: 'CustomSans',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(height: 40),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                SizedBox(
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
                                                      backgroundColor:Colors.white
                                                    ),
                                                    child: Text(
                                                      'Sign Out',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 15,
                                                        fontFamily: 'CustomSans',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
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
                                                      'Cancel',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontFamily: 'CustomSans',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                            );
                          },
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text('Mailbox'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mailbox()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.alternate_email),
                title: Text('Alok Maurya'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Alokmaurya()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 320,
                    height: 43,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search Matches Here",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  FloatingActionButton.small(
                    elevation: 0,
                    backgroundColor: Color(0xffEC0C0D),
                    onPressed: () {},
                    child: Image.asset(
                      'assets/icons/settings-sliders.png',
                      width: 20,
                      height: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            height: 150,
                            width: 270,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20), 
                              child: Image.asset(
                                'assets/image/homepic1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Find Perfect',
                                  style: TextStyle(
                                    fontFamily: 'CustomSans',
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Match Here!',
                                  style: TextStyle(
                                    fontFamily: 'CustomSans',
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 20,),
                                SizedBox(
                                  width: 90,
                                  height: 30,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Explore',
                                      style: TextStyle(
                                        color: Color(0xffEC0C0D),
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
                    Stack(
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            height: 150,
                            width: 270,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20), 
                              child: Image.asset(
                                'assets/image/homepic1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Find Perfect',
                                  style: TextStyle(
                                    fontFamily: 'CustomSans',
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Match Here!',
                                  style: TextStyle(
                                    fontFamily: 'CustomSans',
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 20,),
                                SizedBox(
                                  width: 90,
                                  height: 30,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Explore',
                                      style: TextStyle(
                                        color: Color(0xffEC0C0D),
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
                    Stack(
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            height: 150,
                            width: 270,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20), 
                              child: Image.asset(
                                'assets/image/homepic1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Find Perfect',
                                  style: TextStyle(
                                    fontFamily: 'CustomSans',
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Match Here!',
                                  style: TextStyle(
                                    fontFamily: 'CustomSans',
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 20,),
                                SizedBox(
                                  width: 90,
                                  height: 30,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Explore',
                                      style: TextStyle(
                                        color: Color(0xffEC0C0D),
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
              SizedBox(height: 10,),
              Center(
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Color(0xffEC0C0D),
                    dotColor: Color(0xffD9D9D9),
                    dotHeight: 11,
                    dotWidth: 11,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Premium Matches',
                      style: TextStyle(
                        fontFamily: 'CustomSans',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton( onPressed: () { 
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> PremiumMatch() ));
                     }, child: Text( 'View All',
                      style: TextStyle(
                        fontFamily: 'CustomSans',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffEC0C0D),
                        decoration: TextDecoration.underline,
                      ),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: SizedBox(
                  height: 170,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: homePremiunMatch.MyImagePath.length-7,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=> DetailsPage(
                            name: homePremiunMatch.MyName[index] ,
                            imagePath: homePremiunMatch.MyImagePath[index],
                            age: homePremiunMatch.MyAge[index], 
                            height:homePremiunMatch.MyHeight[index], 
                            degree: homePremiunMatch.MyDegree[index], 
                            location: homePremiunMatch.MyLocation[index], 
                            job: homePremiunMatch.MyJob[index], 
                            isFavorite: false , 
                            onFavriteToogle: (bool ) {  },)
                             ));
                        },
                        child: Stack(
                          children: [
                            Card(
                              child: Image.asset(homePremiunMatch.MyImagePath[index],fit: BoxFit.cover,),
                            ),
                            Positioned(
                              child: Padding(padding: const EdgeInsets.only(left: 20.0,top: 110,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      homePremiunMatch.MyName[index],
                                      style: TextStyle(fontSize: 15,fontFamily: 'CustomSans',fontWeight: FontWeight.w500, color: Colors.white,),
                                    ),
                                    Text(
                                      homePremiunMatch.MyAgeHeight[index],
                                      style: TextStyle(fontSize: 12,fontFamily: 'CustomSans',fontWeight: FontWeight.w500,color: Colors.white,),
                                    ),
                                    Text(
                                      homePremiunMatch.MyLocation[index],
                                      style: TextStyle(fontSize: 12,fontFamily: 'CustomSans',fontWeight: FontWeight.w500,color: Colors.white,),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended Matches',
                      style: TextStyle(
                        fontFamily: 'CustomSans',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> RecommendedMatch()));
                    }, child: Text(
                      'View All',
                      style: TextStyle(
                        fontFamily: 'CustomSans',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffEC0C0D),
                        decoration: TextDecoration.underline,
                      ),
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: SizedBox(
                  height: 170,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: homeRecommendedMatch.MyImagePath.length-7,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=> DetailsPage(
                            name: homeRecommendedMatch.MyName[index] ,
                            imagePath: homeRecommendedMatch.MyImagePath[index],
                            age: homeRecommendedMatch.MyAge[index], 
                            height:homeRecommendedMatch.MyHeight[index], 
                            degree: homeRecommendedMatch.MyDegree[index], 
                            location: homeRecommendedMatch.MyLocation[index], 
                            job: homeRecommendedMatch.MyJob[index], 
                            isFavorite: false , 
                            onFavriteToogle: (bool ) {  },)
                             ));
                        },
                        child: Stack(
                          children: [
                            Card(
                              child: Image.asset(homeRecommendedMatch.MyImagePath[index],fit: BoxFit.cover,),
                            ),
                            Positioned(
                              child: Padding(padding: const EdgeInsets.only(left: 20.0,top: 110,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      homeRecommendedMatch.MyName[index],
                                      style: TextStyle(fontSize: 15,fontFamily: 'CustomSans',fontWeight: FontWeight.w500, color: Colors.white,),
                                    ),
                                    Text(
                                      homeRecommendedMatch.MyAgeHeight[index],
                                      style: TextStyle(fontSize: 12,fontFamily: 'CustomSans',fontWeight: FontWeight.w500,color: Colors.white,),
                                    ),
                                    Text(
                                      homeRecommendedMatch.MyLocation[index],
                                      style: TextStyle(fontSize: 12,fontFamily: 'CustomSans',fontWeight: FontWeight.w500,color: Colors.white,),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
