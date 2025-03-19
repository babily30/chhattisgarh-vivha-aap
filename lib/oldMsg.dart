import 'package:flutter/material.dart';

class OldMessage extends StatefulWidget {
  const OldMessage({super.key});

  @override
  State<OldMessage> createState() => _OldMessageState();
}

class _OldMessageState extends State<OldMessage> {
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
                              backgroundImage: AssetImage('assets/image/person4.jpeg'),
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
                        Text('Nancy has Viewed Your Profile.',style: TextStyle(fontFamily: 'CustomSans')),
                        Text('1 d',style: TextStyle(fontFamily: 'CustomSans'))
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
                              backgroundImage: AssetImage('assets/image/person5.jpeg'),
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
                        Text('Sivani has Viewed Your Profile.',style: TextStyle(fontFamily: 'CustomSans')),
                        Text('2 d',style: TextStyle(fontFamily: 'CustomSans'))
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
                              backgroundImage: AssetImage('assets/image/person6.jpeg'),
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
                        Text('Shivangi has Viewed Your Profile.',style: TextStyle(fontFamily: 'CustomSans')),
                        Text('1 w',style: TextStyle(fontFamily: 'CustomSans'))
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