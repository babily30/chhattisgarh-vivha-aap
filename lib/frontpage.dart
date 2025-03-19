import 'package:flutter/material.dart';
import 'package:lms/edits.dart';
import 'package:lms/registerOlduser.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 600,
              child: Column(
                children: [
                  Expanded(
                    child: PageView(
                      controller: _controller,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              SizedBox(height: 85,),
                              Image.asset('assets/image/pagepic1.png',width: 248,height: 232,fit: BoxFit.cover,),
                              SizedBox(height: 60),
                              Edits.text_frontPage_large('Create Profile'),
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 50.0,
                                  right: 50.0,
                                  top: 10,
                                ),
                                child: Edits.text_frontPage_small("Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries.",)
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              SizedBox(height: 80),
                              Image.asset('assets/image/pagepic2.png',width: 222,height: 237,fit: BoxFit.cover,),
                              SizedBox(height: 60),
                              Edits.text_frontPage_large('Search for Matches'),
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 50.0,
                                  right: 50.0,
                                  top: 10,
                                ),
                                child: Edits.text_frontPage_small("Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries.",)
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              SizedBox(height: 80,),
                              Image.asset('assets/image/pagepic3.png',width: 250,height: 236,fit: BoxFit.cover,),
                              SizedBox(height: 60),
                              Edits.text_frontPage_large('Send Intereset & Connect'),
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 50.0,
                                  right: 50.0,
                                  top: 10,
                                ),
                                child: Edits.text_frontPage_small("Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries.",)
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    axisDirection: Axis.horizontal,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Color(0xffEC0C0D),
                      dotColor: Color(0xffD9D9D9),
                      dotHeight: 11,
                      dotWidth: 11
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisteOldUser()),
                  );},
                     child: Text('Skip',style: TextStyle(color: Color(0xff737373), fontSize: 20)),
                  ),
                  InkWell(
                    onTap: () {
                      int currentpage = _controller.page?.round()??0;
                     if (currentpage<2){_controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );}
                      else{Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisteOldUser()));}
                    },
                    child: Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffEC0C0D),
                      ),
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
