import 'package:flutter/material.dart';
import 'package:lms/edits.dart';

class NotificationSettingPage extends StatefulWidget {
  const NotificationSettingPage({super.key});

  @override
  State<NotificationSettingPage> createState() =>
      _NotificationSettingPageState();
}

class _NotificationSettingPageState extends State<NotificationSettingPage> {
  bool phone = false;
  bool request = false;
  bool shortlist = false;
  bool chats = false;
  bool newMatche = false;
  bool matchOfDay = false;
  bool dailyrecom = false;
  bool snooze = false;
  bool silent = false;

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
              'Notification',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'CustomSans',
                fontSize: 27,
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 5, 5),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 40),
                  child: Container(
                    width: 300,
                    height: 80,
                    decoration: BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Edits.text_notificationSetting_large('Memeber Activity'),
                        SizedBox(height: 5),
                        Edits.text_notificationSetting_small("If you turn these off, you won't be notified of any member's activity on your profile",),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 340,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: const Color.fromARGB(255, 227, 226, 226),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Edits.text_notificationSetting_medium('Phone Number Views'),
                            SizedBox(height: 5),
                            Edits.text_notificationSetting_small("when members view your number"),
                          ],
                        ),
                        Edits.CustomSwitch(value: phone, onChanged: (bool value){
                          setState(() {
                            phone = value;
                          });
                        })
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 340,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: const Color.fromARGB(255, 227, 226, 226),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Edits.text_notificationSetting_medium('Requests'),
                            SizedBox(height: 5),
                            Edits.text_notificationSetting_small("when members request for your information"),
                          ],
                        ),
                        Edits.CustomSwitch(value: request, onChanged: (bool value){
                          setState(() {
                            request = value;
                          });
                        })
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 340,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: const Color.fromARGB(255, 227, 226, 226),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Edits.text_notificationSetting_medium('Shortlists'),
                            SizedBox(height: 5),
                            Edits.text_notificationSetting_small("when members shortlist you"),
                          ],
                        ),
                        Edits.CustomSwitch(value: shortlist, onChanged: (bool value){
                          setState(() {
                            shortlist = value;
                          });
                        })
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 340,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: const Color.fromARGB(255, 227, 226, 226),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Edits.text_notificationSetting_medium('Chats'),
                            SizedBox(height: 5),
                            Edits.text_notificationSetting_small("when members are online or initiate chat"),
                          ],
                        ),
                        Edits.CustomSwitch(value: chats, onChanged: (bool value){
                          setState(() {
                            chats = value;
                          });
                        })
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'More Alerts',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 40),
                  child: Container(
                    width: 300,
                    height: 80,
                    decoration: BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Edits.text_notificationSetting_large('Matches'),
                        SizedBox(height: 5),
                        Edits.text_notificationSetting_small("If you turn these off, you might miss out on our recommendation based on your preferences"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 340,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: const Color.fromARGB(255, 227, 226, 226),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Edits.text_notificationSetting_medium( 'New Matches'),
                            SizedBox(height: 5),
                            Edits.text_notificationSetting_small( "Everyday"),
                          ],
                        ),
                        Edits.CustomSwitch(value: newMatche, onChanged: (bool value){
                          setState(() {
                            newMatche = value;
                          });
                        })
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 340,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: const Color.fromARGB(255, 227, 226, 226),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Edits.text_notificationSetting_medium('Daily Recommendation'),
                            SizedBox(height: 5),
                            Edits.text_notificationSetting_small("Everyday"),
                          ],
                        ),
                        Edits.CustomSwitch(value: dailyrecom, onChanged: (bool value){
                          setState(() {
                            dailyrecom = value;
                          });
                        })
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 340,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: const Color.fromARGB(255, 227, 226, 226),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Edits.text_notificationSetting_medium('Match Of the Day'),
                            SizedBox(height: 5),
                            Edits.text_notificationSetting_small( "A Daily curated match recommendation"),
                          ],
                        ),
                        Edits.CustomSwitch(value: matchOfDay, onChanged: (bool value){
                          setState(() {
                            matchOfDay = value;
                          });
                        })
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 40),
                  child: Container(
                    width: 300,
                    height: 80,
                    decoration: BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Edits.text_notificationSetting_medium('Sounds'),
                        SizedBox(height: 5),
                        Edits.text_notificationSetting_small("If you turn these off, you don't get any  notification sounds"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 340,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: const Color.fromARGB(255, 227, 226, 226),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Edits.text_notificationSetting_medium('Snooze'),
                            SizedBox(height: 5),
                            Edits.text_notificationSetting_small("1 week"),
                          ],
                        ),
                        Edits.CustomSwitch(value: snooze, onChanged: (bool value){
                          setState(() {
                            snooze = value;
                          });
                        })
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 330,
                    height: 0,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: const Color.fromARGB(255, 227, 226, 226),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Edits.text_notificationSetting_medium('Silent'),
                            SizedBox(height: 5),
                            Edits.text_notificationSetting_small("User won't get any sound when notification occur"),
                          ],
                        ),
                        Switch(
                          value: silent,
                          activeColor: Colors.red,
                          onChanged: (bool value) {
                            setState(() {
                              silent = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
