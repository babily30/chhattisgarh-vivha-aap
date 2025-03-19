import 'package:flutter/material.dart';

class PrimePlatinum extends StatefulWidget {
  const PrimePlatinum({super.key});

  @override
  State<PrimePlatinum> createState() => _PrimePlatinumState();
}

class _PrimePlatinumState extends State<PrimePlatinum> {


  bool? value1 = false;
  bool? value2 = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green),
                    SizedBox(width: 8),
                    Text(
                      'View 100 Contact Nos',
                      style: TextStyle(fontSize: 20,fontFamily:'CustomSans',color: const Color.fromARGB(255, 143, 139, 139))
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green),
                    SizedBox(width: 8),
                    Text(
                      'Send Unlimited Messages',
                      style: TextStyle(fontSize: 20,fontFamily:'CustomSans',color: const Color.fromARGB(255, 143, 139, 139))
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green),
                    SizedBox(width: 8),
                    Text(
                      'View All Profile Information',
                      style: TextStyle(fontSize: 20,fontFamily:'CustomSans',color: const Color.fromARGB(255, 143, 139, 139))
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green),
                    SizedBox(width: 8),
                    Text(
                      'Unlimited Horoscope Views',
                      style: TextStyle(fontSize: 20,fontFamily:'CustomSans',color: const Color.fromARGB(255, 143, 139, 139))
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green),
                    SizedBox(width: 8),
                    Text(
                      'Highlight Profile + Priority Match',
                      style: TextStyle(fontSize: 20,fontFamily:'CustomSans',color: const Color.fromARGB(255, 143, 139, 139))
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green),
                    SizedBox(width: 8),
                    Text(
                      'Dedicated Support(Email/Chat)',
                      style: TextStyle(fontSize: 20,fontFamily:'CustomSans',color: const Color.fromARGB(255, 143, 139, 139))
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green),
                    SizedBox(width: 8),
                    Text(
                      'Personalized Daily Recommendations',
                      style: TextStyle(fontSize: 20,fontFamily:'CustomSans',color: const Color.fromARGB(255, 143, 139, 139))
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green),
                    SizedBox(width: 8),
                    Text(
                      'Video Profiles(View & Upload) ',
                      style: TextStyle(fontSize: 20,fontFamily:'CustomSans',color: const Color.fromARGB(255, 143, 139, 139))
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 110,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: value1 == true ? const Color.fromARGB(255, 255, 5, 5) : Colors.grey,
                      width: value1==true? 3:0,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Checkbox(
                        value: value1,
                        onChanged: (bool? newValue) {
                          setState(() {
                            value1 = true;
                            value2 = false;
                          });
                        },
                        shape: CircleBorder(),
                      activeColor: const Color.fromARGB(255, 255, 5, 5),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Annual \$39.99',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'CustomSans'
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '\$3.33/mo',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'CustomSans'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 110,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: value2 == true ? const Color.fromARGB(255, 255, 5, 5) : Colors.grey,
                      width: value2==true? 3:0,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Checkbox(
                        value: value2,
                        onChanged: (bool? newValue) {
                          setState(() {
                            value2 = true;
                            value1 = false;
                          });
                        },
                        shape: CircleBorder(),
                      activeColor: const Color.fromARGB(255, 255, 5, 5),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Monthly \$6.99',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'CustomSans'
                              ),
                            ),
                            Text(
                              '\$83.88/yo',
                              style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'CustomSans'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Center(
                child: SizedBox(
                  width: 350,
                  height: 55,
                  child: TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 255, 5, 5),),
                   child: Text('Pay Now',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'CustomSans'),)
                   ),
                ),
              ),
              SizedBox(height: 30,),
              Center(child: Text('View Pakages',style: TextStyle(color: const Color.fromARGB(255, 143, 139, 139),fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'CustomSans'),))
              ],
            ),
          ),
        ),
      ),);
  }
}