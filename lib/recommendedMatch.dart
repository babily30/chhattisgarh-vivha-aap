import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lms/controller/matchController.dart';

class RecommendedMatch extends StatefulWidget {
  const RecommendedMatch({super.key});

  @override
  State<RecommendedMatch> createState() => _RecommendedMatchState();
}

class _RecommendedMatchState extends State<RecommendedMatch> {
  late HomeRecommendedMatch homeRecommendedMatch;

  @override
  void initState() {
    homeRecommendedMatch = Get.put(HomeRecommendedMatch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
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
              'Recomanded Matches',
              style: TextStyle(
                fontFamily: 'CustomSans',
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        body:GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: homeRecommendedMatch.MyName.length,
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
                            homeRecommendedMatch.MyImagePath[index],
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
                                  homeRecommendedMatch.MyName[index],
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'CustomSans',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  homeRecommendedMatch.MyAgeHeight[index],
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'CustomSans',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  homeRecommendedMatch.MyLocation[index],
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