import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 20,right: 20),
            child: Column(
              children: [
                Container(
                   decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: const Color.fromARGB(255, 220, 219, 219)))
                    ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/image/person3.jpeg'),
                            ),
                            Positioned(top: 50,left: 50,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Color(0xffF6E20F),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Image.asset('assets/icons/mdi_eye-outline.png',width: 10,height: 10,),
                            ))
                          ],
                        ),
                        Text('Shivangi has Viewed Your Profile.',style: TextStyle(fontFamily: 'CustomSans'),),
                        Text('2 min',style: TextStyle(fontFamily: 'CustomSans'),)
                      ],
                    ),
                  ),
                ),
                Container(
                   decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: const Color.fromARGB(255, 220, 219, 219)))
                    ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/image/person1.jpg'),
                            ),
                            Positioned(top: 50,left: 50,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Color(0xffF6E20F),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Image.asset('assets/icons/mdi_eye-outline.png',width: 10,height: 10,),
                            ))
                          ],
                        ),
                        Text('Ajay has Viewed Your Profile.',style: TextStyle(fontFamily: 'CustomSans')),
                        Text('30 min',style: TextStyle(fontFamily: 'CustomSans'))
                      ],
                    ),
                  ),
                ),
                Container(
                   decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: const Color.fromARGB(255, 220, 219, 219)))
                    ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/image/person2.jpg'),
                            ),
                            Positioned(top: 50,left: 50,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Color(0xffF6E20F),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Image.asset('assets/icons/mdi_eye-outline.png',width: 10,height: 10,),
                            ))
                          ],
                        ),
                        Text('Komal has Viewed Your Profile.',style: TextStyle(fontFamily: 'CustomSans')),
                        Text('1 d',style: TextStyle(fontFamily: 'CustomSans'))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    ));
  }
}