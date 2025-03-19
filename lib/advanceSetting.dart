import 'package:flutter/material.dart';
import 'package:lms/edits.dart';

class AdvanceSettingsPage extends StatefulWidget {
  const AdvanceSettingsPage({super.key});

  @override
  State<AdvanceSettingsPage> createState() => _AdvanceSettingsPageState();
}

class _AdvanceSettingsPageState extends State<AdvanceSettingsPage> {
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
              'Advance Settings',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'CustomSans',
                fontSize: 27,
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 5, 5),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Container(
                  width: 340,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: const Color.fromARGB(255, 227, 226, 226),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Edits.image_advance_setting(image: 'assets/image/telephone (1).png'),
                      SizedBox(width: 10),
                      Edits.text_advance_setting('Call Preference'),
                    ],
                  ),
                ),
              ),
              Container(
                width: 340,
                height: 60,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: const Color.fromARGB(255, 227, 226, 226),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Edits.image_advance_setting(image: 'assets/image/block person.png'),
                    SizedBox(width: 10),
                    Edits.text_advance_setting('Blocked Profile'),
                  ],
                ),
              ),
              Container(
                width: 340,
                height: 60,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: const Color.fromARGB(255, 227, 226, 226),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Edits.image_advance_setting(image: 'assets/image/block person.png'),
                    SizedBox(width: 10),
                    Edits.text_advance_setting("Profiles you didn't want to see"),
                  ],
                ),
              ),
              Container(
                width: 340,
                height: 60,
                decoration: BoxDecoration(),
                child: Row(
                  children: [
                    Edits.image_advance_setting(image: 'assets/image/block person.png'),
                    SizedBox(width: 10),
                    Edits.text_advance_setting('Action Confirmation'),
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
