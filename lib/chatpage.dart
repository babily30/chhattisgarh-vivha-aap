import 'package:flutter/material.dart';
import 'package:lms/chatAllmessg.dart';
import 'package:lms/mainhouse.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  int chatIndex = 0;
  List pages = [ChatAllMessg()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Color(0xffEC0C0D),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainHouse()),
                );
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
            title: Text(
              'Chat',
              style: TextStyle(
                fontFamily: 'CustomSans',
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border(bottom: BorderSide(color: Colors.grey,width: 0.5))
                ),
                child: ToggleSwitch(
                  cornerRadius: 60,
                  minWidth: 150,
                  activeBgColor: [const Color(0xffEC0C0D)],
                  inactiveBgColor: Colors.white,
                  totalSwitches: 3,
                  radiusStyle: true,
                  customWidgets: [
                  Text('All Messages',style: TextStyle(color: chatIndex == 0 ? Colors.white :Colors.black)),
                  Text(' New',style: TextStyle(color: chatIndex == 1 ? Colors.white :Colors.black)),
                  Text(' Old',style: TextStyle(color: chatIndex == 2 ? Colors.white :Colors.black))],
                  initialLabelIndex: chatIndex,
                  // onToggle: (index) {
                  //   setState(() {
                  //     chatIndex = index!;
                  //   });
                  // },
                ),
              ),
            ),
            Expanded(child: pages[chatIndex]),
          ],
        ),
      ),
    );
  }
}
