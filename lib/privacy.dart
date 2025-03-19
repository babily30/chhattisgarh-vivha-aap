import 'package:flutter/material.dart';
import 'package:lms/edits.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
            title: Text(
              'Privacy Policy',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'CustomSans',
                fontSize: 27,
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 5, 5),
          ),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: const Color.fromARGB(255, 233, 230, 230))),
                ),
                child: Center(child: Text("Privacy Policy Of Chhattisgarh Vivah",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,fontFamily: 'CustomSans'),)),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 360,
                decoration: BoxDecoration(),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  Text('Terms',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: 'CustomSans'),),
                  SizedBox(height: 10,),
                  Edits.text_privacy_policy('The customer is very important, the customer will be followed by the customer. He needs to decorate as easily as he can with the arrows of the bow, Tortor. Wisely, the outcome of clinical disease should always be zero. The author of the book, as it is, loves to live. I hate vulputate that hungers tincidunt.',),
                  SizedBox(height: 15,),
                  Edits.text_privacy_policy('The customer is very important, the customer will be followed by the customer. He needs to decorate as easily as he can with the arrows of the bow, Tortor. Wisely, the outcome of clinical disease should always be zero. The author of the book, as it is, loves to live. I hate vulputate that hungers tincidunt.',),
                 ],
               )),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 360,
                decoration: BoxDecoration(),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  Text('What information you Need to Give To Use This Website/Apps?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Edits.text_privacy_policy('The customer is very important, the customer will be followed by the customer. He needs to decorate as easily as he can with the arrows of the bow, Tortor. Wisely, the outcome of clinical disease should always be zero. The author of the book, as it is, loves to live. I hate vulputate that hungers tincidunt.',),
                   
                 ],
               )),
            ),
            
          ],
        ),
      ),
    ));
  }
}