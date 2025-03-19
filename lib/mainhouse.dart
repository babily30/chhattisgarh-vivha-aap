import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lms/alokmaurya.dart';
import 'package:lms/chatpage.dart';
import 'package:lms/home.dart';
import 'package:lms/mailbox.dart';
import 'package:lms/match.dart';
import 'package:lms/myprofile.dart';
import 'package:lms/setting.dart';
import 'package:lms/upgrade.dart';

class MainHouse extends StatefulWidget {
  const MainHouse({super.key});

  @override
  State<MainHouse> createState() => _MainHouseState();
}

class _MainHouseState extends State<MainHouse> {
  int settingIndex = 0;
  int pageIndex = 0;

  List<Widget> pages = [
    Home(),
    ChatPage(),
    MatchPage(),
    Myprofile(),
    Upgrade(),
  ];

  List<String> pageTitles = ["Home", "Chat", "Match", "My Profile", "Special Offer"];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Exit App',style: TextStyle(fontFamily: 'CustomSans'),),
            content: Text('Do you really want to exit the app?',style: TextStyle(fontFamily: 'CustomSans',color: Colors.grey),),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No',style: TextStyle(fontFamily: 'CustomSans',color: Colors.grey),),
              ),
              TextButton(
                onPressed: () => SystemNavigator.pop(),
                child: Text('Yes',style: TextStyle(fontFamily: 'CustomSans',color: Colors.grey),),
              ),
            ],
          ),
        ) ?? false; 
      },
      child: SafeArea(
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  child: UserAccountsDrawerHeader(
                    accountName: Text('User  Name'),
                    accountEmail: Text('user@gmail.com'),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home_outlined),
                  title: Text('Home'),
                  onTap: () {
                    setState(() {
                      pageIndex = 0;
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.ring),
                  title: Text('Match'),
                  onTap: () {
                    setState(() {
                      pageIndex = 2;
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.crown),
                  title: Text('Upgrade'),
                  onTap: () {
                    setState(() {
                      pageIndex = 4;
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
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
          body: pages[pageIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: pageIndex,
            onTap: (value) {
              setState(() {
                pageIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset('assets/icons/home.png',height: 25,width: 25,color: pageIndex == 0 ?Color(0xffEC0C0D): Colors.grey,),
                label: 'Home',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/icons/messenger.png',height: 25,width: 25,color: pageIndex == 1 ?Color(0xffEC0C0D): Colors.grey,),
                label: 'Chat',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/icons/diamond-ring.png',height: 25,width: 25,color: pageIndex == 2 ?Color(0xffEC0C0D) : Colors.grey,),
                label: 'Match',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/icons/user.png',height: 25,width: 25,color: pageIndex == 3 ? Color(0xffEC0C0D): Colors.grey,),
                label: 'My Profile',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/icons/crown.png',height: 25,width: 25,color: pageIndex == 4 ?Color(0xffEC0C0D): Colors.grey,),
                label: 'Upgrade',
                backgroundColor: Colors.white,
              ),
            ],
            selectedItemColor:const Color.fromARGB(255, 255, 5, 5),
            unselectedItemColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}


