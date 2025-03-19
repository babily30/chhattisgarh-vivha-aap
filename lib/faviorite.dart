import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/controller/matchController.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  late MatchController matchController; 

  @override
  void initState() {
    matchController = Get.find();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75),
          child: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(15.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back, color: Colors.white),
              ),
            ),
            backgroundColor: Colors.red,
            title: Padding(
            padding: const EdgeInsets.only(left: 70.0,top: 10),
            child: Text('Favourite',style: TextStyle(color: Colors.white,fontFamily: 'CustomSans',fontSize: 27,),),
          ),
          ),
        ),
        body: Center(
          child: Container(
            child: (() {
              if (matchController.favorites.isEmpty) {
                return Text('No favorites yet!');
              } else {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: matchController.favorites.length,
                  itemBuilder: (BuildContext context, int index) {
                    final favorite = matchController.favorites[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                favorite['imagePath'],
                                fit: BoxFit.cover,
                                height: 190,
                              ),
                            ),
                            Positioned(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 110),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  favorite['name'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'CustomSans',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  favorite['ageheight'],
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'CustomSans',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  favorite['location'],
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
                            Positioned(
                              top: 10,
                              right: 10,
                              child: IconButton(
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                onPressed: () {// Remove the favorite from the list
                                  setState(() {
                                    matchController.favorites.removeAt(index);
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
            }()),
          ),
        ),
      ),
    );
  }
}