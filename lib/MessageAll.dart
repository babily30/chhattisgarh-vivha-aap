import 'package:flutter/material.dart';

class AllMessage extends StatefulWidget {
  const AllMessage({super.key});

  @override
  State<AllMessage> createState() => _AllMessageState();
}

class _AllMessageState extends State<AllMessage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                        Text('1 hr',style: TextStyle(fontFamily: 'CustomSans'))
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
      ),
    );
  }
}
