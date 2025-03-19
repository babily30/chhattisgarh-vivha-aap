import 'package:flutter/material.dart';
import 'package:lms/mainhouse.dart';

class Addnewcard extends StatefulWidget {
  const Addnewcard({super.key});

  @override
  State<Addnewcard> createState() => _AddnewcardState();
}

class _AddnewcardState extends State<Addnewcard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            centerTitle: true,
            title: Text(
              'Add New Card',
              style: TextStyle(
                fontFamily: 'CustomSans',
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 8, right: 8),
          child: Column(
            children: [
              Image.asset('assets/image/card.png', width: 400, height: 200),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Card Number',
                        style: TextStyle(
                          fontFamily: 'CustomSans',
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Card Number',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Card Holder Name',
                        style: TextStyle(
                          fontFamily: 'CustomSans',
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Holder Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Expired',
                                style: TextStyle(
                                  fontFamily: 'CustomSans',
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 10),
                              SizedBox(
                                height: 50,
                                width: 160,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'MM/YY',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CVV Code',
                                style: TextStyle(
                                  fontFamily: 'CustomSans',
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 10),
                              SizedBox(
                                height: 50,
                                width: 160,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'CVV',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: SizedBox(
                  width: 350,
                  height: 45,
                  child: TextButton(
                    onPressed: () {
                            showDialog(
                              context: context,
                              builder:
                                  (BuildContext context) => AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    titlePadding: EdgeInsets.all(0),
                                    title: Container(
                                      height: 50,
                                      width: 330,
                                      decoration: BoxDecoration(
                                        color: Color(0xffEC0C0D),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Payment Successful',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'CustomSans',
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                    backgroundColor: Colors.white,
                                    actions: [
                                      Center(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 50),
                                            Stack(
                                              children: [
                                                Image.asset(
                                                  'assets/icons/correct.png',
                                                  width: 90,
                                                  height: 90,
                                                ),
                                                Positioned(
                                                  child: Image.asset(
                                                    'assets/icons/blink.png',
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 60,
                                                  left: 60,
                                                  child: Image.asset(
                                                    'assets/icons/blink.png',
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                              'Payment Success',
                                              style: TextStyle(
                                                fontFamily: 'CustomSans',
                                                fontSize: 30,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 40),
                                            Text(
                                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                                              style: TextStyle(
                                                fontFamily: 'CustomSans',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(height: 40),
                                            Center(
                                              child: SizedBox(
                                                width: 130,
                                                height: 40,
                                                child: TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder:
                                                            (context) => MainHouse(),
                                                      ),
                                                    );
                                                  },
                                                  style: TextButton.styleFrom(
                                                    backgroundColor: Color(
                                                      0xffEC0C0D,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Go To Home',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontFamily: 'CustomSans',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                            );
                          },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xffEC0C0D),
                    ),
                    child: Text(
                      'Pay Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'CustomSans',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
