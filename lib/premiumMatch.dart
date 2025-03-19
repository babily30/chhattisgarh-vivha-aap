import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/controller/matchController.dart';

class PremiumMatch extends StatefulWidget {
  const PremiumMatch({super.key});

  @override
  State<PremiumMatch> createState() => _PremiumMatchState();
}

class _PremiumMatchState extends State<PremiumMatch> {
  late HomePremiunMatch homePremiunMatch;

  @override
  void initState() {
    homePremiunMatch = Get.put(HomePremiunMatch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Color(0xffEC0C0D),
            centerTitle: true,
            leading: IconButton(onPressed: (){
              setState(() {
                Navigator.pop(context);
              });
            }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
            title: Text(
              'Premium Matches',
              style: TextStyle(
                fontFamily: 'CustomSans',
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: homePremiunMatch.MyName.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  child: Container(
                    height: 190,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            homePremiunMatch.MyImagePath[index],
                            fit: BoxFit.cover,
                            height: 190,
                            width: double.infinity,
                          ),
                        ),
                        Positioned(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 110),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  homePremiunMatch.MyName[index],
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'CustomSans',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  homePremiunMatch.MyAgeHeight[index],
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'CustomSans',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  homePremiunMatch.MyLocation[index],
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'CustomSans',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )
        )
    );
  }
}