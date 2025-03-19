import 'package:flutter/material.dart';
import 'package:lms/account.dart';
import 'package:lms/advanceSetting.dart';
import 'package:lms/changelang.dart';
import 'package:lms/notificationSetting.dart';
import 'package:lms/privacy.dart';

class Suggestion {
  final String text;
  final IconData icon;
  final Widget page;

  Suggestion(this.text, this.icon,this.page);
}

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
   final TextEditingController _searchController = TextEditingController();
   
  List<Suggestion> suggestions = [
    Suggestion("Change Language",Icons.flag_outlined,ChangeLanguagePage()),
    Suggestion("Notification Setting",Icons.notifications_outlined,NotificationSettingPage()),
    Suggestion("Advance Settings",Icons.settings_outlined,AdvanceSettingsPage()),
    Suggestion("Account",Icons.person_outlined,AccountPage()),
    Suggestion("Privacy Policy",Icons.settings_outlined,PrivacyPolicy()),
    ];
  List<Suggestion> allItems = [
    Suggestion("Change Language",Icons.flag_outlined,ChangeLanguagePage()),
    Suggestion("Notification Setting",Icons.notifications_outlined,NotificationSettingPage()),
    Suggestion("Advance Settings",Icons.settings_outlined,AdvanceSettingsPage()),
    Suggestion("Account",Icons.person_outlined,AccountPage()),
    Suggestion("Privacy Policy",Icons.settings_outlined,PrivacyPolicy()),
  ];

  void _onSearchChanged(String query) {
    setState(() {
      suggestions = allItems
          .where((item) => item.text.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
            title: Text(
              'Setting',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'CustomSans',
                fontSize: 27,
              ),
            ),
            backgroundColor: Color(0xffEC0C0D),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 40),
          child: Column(
            children: [
              TextField(
                controller: _searchController,
                onChanged: _onSearchChanged,
                decoration: InputDecoration(
                  hintText: "Search settings",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  
                ),
              ),
              SizedBox(height: 16.0),
              Expanded(
                child: ListView.builder(
                  itemCount: suggestions.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(suggestions[index].icon,color: const Color.fromARGB(255, 99, 98, 98),),
                      title: Text(suggestions[index].text,style: TextStyle(fontFamily: 'CustomSans',color: const Color.fromARGB(255, 99, 98, 98)),),
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => suggestions[index].page),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
