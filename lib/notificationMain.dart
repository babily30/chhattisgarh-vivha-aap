import 'package:flutter/material.dart';
import 'package:lms/MessageAll.dart';
import 'package:lms/newMsg.dart';
import 'package:lms/oldMsg.dart';
import 'package:toggle_switch/toggle_switch.dart';

class NotificationMain extends StatefulWidget {
  const NotificationMain({super.key});

  @override
  State<NotificationMain> createState() => _NotificationMainState();
}

class _NotificationMainState extends State<NotificationMain> {

   int messageIndex = 0;
  List pages = [AllMessage(),NewMessage(),OldMessage()];


  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(15.0),
            child: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 70.0,top: 10),
            child: Text('Notification',style: TextStyle(color: Colors.white,fontFamily: 'CustomSans',fontSize: 27,),),
          ),
          backgroundColor: Color(0xffEC0C0D),
        ),
      ),
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
                activeBgColor: [Color(0xffEC0C0D)],
                inactiveBgColor: Colors.white,
                totalSwitches: 3,
                labels: ['All Messages','New','Old'],
                radiusStyle: true,
                initialLabelIndex: messageIndex,
                onToggle: (index) {
                  setState(() {
                    messageIndex = index!;
                  });
                },
              ),
            ),
          ),
          Expanded(child: pages[messageIndex]),
        ],
      ),
    ));
  }
}