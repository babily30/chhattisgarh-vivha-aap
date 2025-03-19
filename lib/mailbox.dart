import 'package:flutter/material.dart';
import 'package:lms/accepted.dart';
import 'package:lms/allMatch.dart';
import 'package:lms/decline.dart';
import 'package:lms/pendingMatch.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Mailbox extends StatefulWidget {
  const Mailbox({super.key});

  @override
  State<Mailbox> createState() => _MailboxState();
}

class _MailboxState extends State<Mailbox> {
  int matchindex =0;
  int anotherMatchindex = 0;

  List MailPages = [
    AllMatch(),
    PendingMatch(),
    Accepted(),
    Declined(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(15.0),
            child: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 70.0,top: 10),
            child: Text('MailBox',style: TextStyle(color: Colors.white,fontFamily: 'CustomSans',fontSize: 27,),),
          ),
          backgroundColor: Colors.red,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: 
            ToggleSwitch(
            activeBgColor: [Colors.red],
            inactiveBgColor: const Color.fromARGB(255, 240, 238, 238),
            cornerRadius: 60.0,
            minWidth: 90,
            radiusStyle: true,
            customWidgets:  [
                  Text('All', style: TextStyle(color: Colors.black)),
                  Text('Pending', style: TextStyle(color: Colors.black)),
                  Text('Accepted/Replied', style: TextStyle(color: Colors.black)),
                  Text('Declined', style: TextStyle(color: Colors.black)),
                ],
            totalSwitches: 4,
            initialLabelIndex: matchindex,
            onToggle: (index){
              setState(() {
                matchindex = index!;
              });
            },
            ),
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ToggleSwitch(activeBgColor: [Colors.green],
            inactiveBgColor: const Color.fromARGB(255, 240, 238, 238),
            cornerRadius: 20.0,
            minHeight: 90,
            minWidth: 90,
            radiusStyle: true,
            initialLabelIndex: anotherMatchindex,
            labels: ['Recieved Request','Send Request','Request Accepted','Calls'],
            onToggle: (anotherindex){
              anotherMatchindex = anotherindex!;
            },
            ),
          ),

          Expanded(child: MailPages[matchindex]),
        ],
      ),
    ));
  }
}