import 'package:flutter/material.dart';
import 'package:lms/addnewCard.dart';

class Gold extends StatefulWidget {
  const Gold({super.key});

  @override
  State<Gold> createState() => _GoldState();
}

class _GoldState extends State<Gold> {
  bool? value1 = false;
  bool? value2 = false;
  bool? mastercard = false;
  bool? visa = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.check_circle, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    'View 50 Contact Nos',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'CustomSans',
                      color: const Color.fromARGB(255, 143, 139, 139),
                    ),
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
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'CustomSans',
                      color: const Color.fromARGB(255, 143, 139, 139),
                    ),
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
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'CustomSans',
                      color: const Color.fromARGB(255, 143, 139, 139),
                    ),
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
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'CustomSans',
                      color: const Color.fromARGB(255, 143, 139, 139),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                height: 110,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: value1 == true ? Color(0xffEC0C0D) : Colors.grey,
                    width: value1 == true ? 3 : 0,
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
                      activeColor: Color(0xffEC0C0D),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Annual 24.99',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'CustomSans',
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '7 days free trial ',
                                style: TextStyle(fontFamily: 'CustomSans'),
                              ),
                              Text(
                                '* 2.08/mo',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'CustomSans',
                                ),
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
                    color: value2 == true ? Color(0xffEC0C0D) : Colors.grey,
                    width: value2 == true ? 3 : 0,
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Monthly 4.99',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'CustomSans',
                            ),
                          ),
                          Text(
                            '59.88/yo',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'CustomSans',
                            ),
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
                  child: 
                  TextButton(
                    onPressed: () {
                      if (value1 == true || value2 == true ){
                      double paymentamt = value1 == true? 24.99:4.99;
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 450,
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Payment Method',
                                        style: TextStyle(
                                          fontFamily: 'CustomSans',
                                          fontSize: 25,
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.close),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Container(
                                    width: 400,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.07),
                                          blurRadius: 1,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            'assets/icons/mastercard.png',
                                          ),
                                          SizedBox(width: 20),
                                          Text('Master Card'),
                                          SizedBox(width: 160),
                                          Checkbox(
                                            value: mastercard,
                                            onChanged: (bool? newValue) {
                                              setState(() {
                                                mastercard = true;
                                                visa = false;
                                              });
                                            },
                                            activeColor: Color(0xffEC0C0D),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    width: 400,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.07),
                                          blurRadius: 1,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image.asset('assets/icons/Visa.png'),
                                          SizedBox(width: 20),
                                          Text('Visa'),
                                          SizedBox(width: 200),
                                          Checkbox(
                                            value: visa,
                                            onChanged: (bool? newValue) {
                                              setState(() {
                                                visa = true;
                                                mastercard = false;
                                              });
                                            },
                                            activeColor: Color(0xffEC0C0D),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    width: 400,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.07),
                                          blurRadius: 1,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            'assets/icons/Icon add.png',
                                          ),
                                          SizedBox(width: 20),
                                          Text('Add Debit Card'),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30,),
                                  Center(
                                    child: SizedBox(
                                      width: 350,
                                      height: 45,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder:
                                                  (context) => Addnewcard(),
                                            ),
                                          );
                                        },
                                        style: TextButton.styleFrom(
                                          backgroundColor: Color(0xffEC0C0D),
                                        ),
                                        child: Text(
                                          '  Pay & \$${paymentamt.toString()} ',
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
                          );
                        },
                      );}
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 5, 5),
                    ),
                    child: Text(
                      'Pay Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'CustomSans',
                      ),
                    ),
                  )
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  'View Pakages',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 143, 139, 139),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'CustomSans',
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
