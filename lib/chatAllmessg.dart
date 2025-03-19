import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/chatdetails.dart';
import 'package:lms/controller/matchController.dart';

class ChatAllMessg extends StatefulWidget {
  const ChatAllMessg({super.key});

  @override
  State<ChatAllMessg> createState() => _ChatAllMessgState();
}

class _ChatAllMessgState extends State<ChatAllMessg> {
  late MatchController matchController;

  @override
  void initState() {
    matchController = Get.put(MatchController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: matchController.MyName.length,
                itemBuilder: (BuildContext,int index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatDetails(
                      name:matchController.MyName[index],
                      imagePath: matchController.MyImagePath[index],
                    )));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: const Color.fromARGB(255, 220, 219, 219)))
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 20.0,top: 8.0,bottom: 8.0),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(matchController.MyImagePath[index]),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(matchController.MyName[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Image.asset('assets/icons/double-check.png',height: 10,width: 10,),
                                  SizedBox(width: 8),
                                  Text(index==0?"Pls send me your details":index==1?"Nice profile send it to me":'Pls Send me your details'),
                                ],
                              )
                            ],
                          ),
                          SizedBox(width: 70,),
                          Text('10:00 AM')
                        ],
                      ),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
