import 'package:flutter/material.dart';
import 'package:lms/edits.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
              'Account',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'CustomSans',
                fontSize: 27,
              ),
            ),
            backgroundColor: Color(0xffEC0C0D)
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
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
                      Icon(
                        Icons.lock_outline,
                        color: const Color.fromARGB(255, 105, 105, 105),
                      ),
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
                    Icon(Icons.logout_outlined,color: const Color.fromARGB(255, 105, 105, 105),),
                    SizedBox(width: 10),
                    Edits.text_advance_setting('Logout'),
                  ],
                ),
              ),
              Container(
                width: 340,
                height: 60,
                decoration: BoxDecoration(),
                child: Row(
                  children: [
                    Icon(Icons.delete_outlined,color: const Color.fromARGB(255, 105, 105, 105),),
                    SizedBox(width: 10),
                    Edits.text_advance_setting('Delete Account'),
                    SizedBox(width: 150),
                    Icon(Icons.arrow_forward_ios,color: const Color.fromARGB(255, 105, 105, 105),),
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
