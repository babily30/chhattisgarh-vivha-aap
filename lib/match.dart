import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/controller/matchController.dart';
import 'package:lms/mainhouse.dart';
import 'package:lms/matchDetails.dart';

class MatchPage extends StatefulWidget {
  const MatchPage({super.key});

  @override
  State<MatchPage> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  String _selectedFilter = 'Match Preferences';
  Map<String, bool> _filterOptions = {
    'All Matches': false,
    'Newly Joined': false,
    'Viewed You': false,
    'Shortlisted You': false,
    'Viewed By You': false,
    'Shortlisted By You': false,
    'Sent Request': false,
    'Receive Request': false,
    'Accepted Request': false,
  };

  bool? allmatch = false;
  bool? newlyjoin = false;
  bool? vewiedyou = false;
  bool? shortlisted = false;
  bool? vewiedboth = false;
  bool? vewiedboth1 = false;

  int? expandedIndexRow;

  List<String> filters = [
    'Match Preference',
    'Basic Details',
    'Religious Details',
    'Professional Details',
    'Location Details',
    'FAmily Details',
  ];

  List<String> matchPreference = [
    'All Matches',
    'Newly Joined',
    'Viewed You',
    'Shortlisted You',
    'Viewed By You',
    'Shortlisted By You',
    'Sent Request',
    'Receive Request',
    'Accepted Request',
  ];
  // List<bool> checkboxValues;

  void toggleExpansion(int index) {
    setState(() {
      expandedIndexRow = expandedIndexRow == index ? null : index;
    });
  }

  late MatchController matchController;
  late List<bool> isFavt;

  @override
  void initState() {
    // checkboxValues = List<bool>.filled(matchPreference.length, false);
    matchController = Get.put(MatchController());
    isFavt = List<bool>.filled(matchController.MyName.length, false);
    super.initState();
  }

  void onChanged(bool value, int index) {
    setState(() {
      // checkboxValues[index] = value;
    });
  }

  int? _currentIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Color(0xffEC0C0D),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainHouse()),
                );
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
            title: Text(
              'Matches',
              style: TextStyle(
                fontFamily: 'CustomSans',
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return SingleChildScrollView(
                                child: Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Filter',
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontFamily: 'CustomSans',
                                                fontWeight: FontWeight.w600,
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
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                _buildFilterCategory(
                                                  'Match Preferences',
                                                ),
                                                _buildFilterCategory(
                                                  'Basic Details',
                                                ),
                                                _buildFilterCategory(
                                                  'Religious Details',
                                                ),
                                                _buildFilterCategory(
                                                  'Professional Details',
                                                ),
                                                _buildFilterCategory(
                                                  'Location Details',
                                                ),
                                                _buildFilterCategory(
                                                  'Family Details',
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 16.0),
                                            Expanded(
                                              child: Column(
                                                children:
                                                    _filterOptions.keys.map((
                                                      option,
                                                    ) {
                                                      return CheckboxListTile(
                                                        title: Text(option),
                                                        value:
                                                            _filterOptions[option],
                                                        onChanged: (bool? value) {
                                                          setState(() {
                                                            _filterOptions[option] =
                                                                value!;
                                                          });
                                                        },
                                                        controlAffinity:
                                                            ListTileControlAffinity
                                                                .leading,
                                                      );
                                                    }).toList(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 1,
                          iconColor: Colors.white,
                          overlayColor: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/icons/filters 1.png'),
                            SizedBox(width: 5),
                            Text('Filters'),
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(elevation: 1),
                        child: Text('Match Preference'),
                      ),
                      SizedBox(width: 15),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Newly Joins'),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: matchController.MyName.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => DetailsPage(
                                  name: matchController.MyName[index],
                                  imagePath: matchController.MyImagePath[index],
                                  age: matchController.MyAge[index],
                                  height: matchController.MyHeight[index],
                                  degree: matchController.MyDegree[index],
                                  location: matchController.MyLocation[index],
                                  job: matchController.MyJob[index],
                                  isFavorite: isFavt[index],
                                  onFavriteToogle: (isFavorite) {
                                    isFavt[index] = isFavorite;
                                  },
                                ),
                          ),
                        );
                      },
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    matchController.MyImagePath[index],
                                    fit: BoxFit.cover,
                                    height: 250,
                                    width: double.infinity,
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  left: 300,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          color: Colors.white,
                                        ),
                                        child: IconButton(
                                          icon:
                                              isFavt[index]
                                                  ? Icon(
                                                    Icons.favorite,
                                                    color: Color(0xffEC0C0D),
                                                    size: 20,
                                                  )
                                                  : Icon(
                                                    Icons.favorite_outline,
                                                    color: Color(0xffCFCFCF),
                                                    size: 20,
                                                  ),
                                          onPressed: () {
                                            setState(() {
                                              isFavt[index] = !isFavt[index];
                                              String ageheight =
                                                  '${matchController.MyAge[index]}, ${matchController.MyHeight[index]}';
                                              String location =
                                                  matchController
                                                      .MyLocation[index];
                                              if (isFavt[index]) {
                                                matchController.addToFav(
                                                  matchController.MyName[index],
                                                  matchController
                                                      .MyImagePath[index],
                                                  ageheight,
                                                  location,
                                                );
                                              } else {
                                                matchController.removeFromFav(
                                                  matchController.MyName[index],
                                                  matchController
                                                      .MyImagePath[index],
                                                  ageheight,
                                                  location,
                                                );
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          color: Colors.white,
                                        ),
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.share_outlined,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder:
                                                  (
                                                    BuildContext context,
                                                  ) => AlertDialog(
                                                    title: Row(
                                                      children: [
                                                        Text(
                                                          'Share Profile',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'CustomSans',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        SizedBox(width: 110),
                                                        IconButton(
                                                          onPressed: () {
                                                            Navigator.pop(
                                                              context,
                                                            );
                                                          },
                                                          icon: Icon(
                                                            Icons.close,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    actions: [
                                                      Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              CircleAvatar(
                                                                radius: 50,
                                                                backgroundImage:
                                                                    AssetImage(
                                                                      matchController
                                                                          .MyImagePath[index],
                                                                    ),
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets.only(
                                                                        left:
                                                                            10.0,
                                                                        top: 30,
                                                                      ),
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        matchController
                                                                            .MyName[index],
                                                                        style: TextStyle(
                                                                          fontFamily:
                                                                              'CustomSans',
                                                                          fontSize:
                                                                              25,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          color:
                                                                              Colors.black,
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        children: [
                                                                          Text(
                                                                            matchController.MyAge[index],
                                                                            style: TextStyle(
                                                                              fontFamily:
                                                                                  'CustomSans',
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: Color(
                                                                                0xff757575,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                5,
                                                                          ),
                                                                          Text(
                                                                            matchController.MyHeight[index],
                                                                            style: TextStyle(
                                                                              fontFamily:
                                                                                  'CustomSans',
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: Color(
                                                                                0xff757575,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Text(
                                                                        matchController
                                                                            .MyLocation[index],
                                                                        style: TextStyle(
                                                                          fontFamily:
                                                                              'CustomSans',
                                                                          fontSize:
                                                                              20,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          color:
                                                                              Colors.black,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                            5,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(height: 10),
                                                          SizedBox(
                                                            height: 75,
                                                            width:
                                                                double.infinity,
                                                            child: Container(
                                                              margin:
                                                                  const EdgeInsets.only(
                                                                    left: 1,
                                                                    right: 1,
                                                                    top: 15,
                                                                    bottom: 10,
                                                                  ),
                                                              decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      30,
                                                                    ),
                                                                border:
                                                                    Border.all(),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.all(
                                                                      8.0,
                                                                    ),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'Link',
                                                                      style: TextStyle(
                                                                        color:
                                                                            Colors.grey,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          170,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .copy,
                                                                      size: 15,
                                                                      color: Color(
                                                                        0xffEC0C0D,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      'Copy',
                                                                      style: TextStyle(
                                                                        color: Color(
                                                                          0xffEC0C0D,
                                                                        ),
                                                                        fontFamily:
                                                                            'CustomSans',
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(height: 10),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Column(
                                                                children: [
                                                                  Container(
                                                                    width: 55,
                                                                    height: 55,
                                                                    decoration: BoxDecoration(
                                                                      color:
                                                                          Colors
                                                                              .black,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                            30,
                                                                          ),
                                                                    ),
                                                                    child: Image.asset(
                                                                      'assets/icons/broadcast.png',
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10,
                                                                  ),
                                                                  Text(
                                                                    'Airdrop',
                                                                    style: TextStyle(
                                                                      fontFamily:
                                                                          'CustomSans',
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Container(
                                                                    width: 55,
                                                                    height: 55,
                                                                    decoration: BoxDecoration(
                                                                      color: Color(
                                                                        0xff16C165,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                            30,
                                                                          ),
                                                                    ),
                                                                    child: Image.asset(
                                                                      'assets/icons/brand-whatsapp.png',
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10,
                                                                  ),
                                                                  Text(
                                                                    'Whatsaap',
                                                                    style: TextStyle(
                                                                      fontFamily:
                                                                          'CustomSans',
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Container(
                                                                    width: 55,
                                                                    height: 55,
                                                                    decoration: BoxDecoration(
                                                                      color: Color(
                                                                        0xff1C3FF7,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                            30,
                                                                          ),
                                                                    ),
                                                                    child: Image.asset(
                                                                      'assets/icons/brand-facebook.png',
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10,
                                                                  ),
                                                                  Text(
                                                                    'Facebook',
                                                                    style: TextStyle(
                                                                      fontFamily:
                                                                          'CustomSans',
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Container(
                                                                    width: 55,
                                                                    height: 55,
                                                                    decoration: BoxDecoration(
                                                                      color: Color(
                                                                        0xffF41F52,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                            30,
                                                                          ),
                                                                    ),
                                                                    child: Image.asset(
                                                                      'assets/icons/brand-instagram.png',
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10,
                                                                  ),
                                                                  Text(
                                                                    'Instagram',
                                                                    style: TextStyle(
                                                                      fontFamily:
                                                                          'CustomSans',
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: 400,
                              height: 200,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      matchController.MyName[index],
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/age.png',
                                              color: Color(0xff757575),
                                              height: 20,
                                              width: 20,
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              matchController.MyAge[index]
                                                  .toString(),
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xff757575),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/text-height.png',
                                              color: Color(0xff757575),
                                              height: 20,
                                              width: 20,
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              matchController.MyHeight[index]
                                                  .toString(),
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xff757575),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/degree.png',
                                              color: Color(0xff757575),
                                              height: 25,
                                              width: 25,
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              matchController.MyDegree[index],
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xff757575),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/location.png',
                                              color: Color(0xff757575),
                                              height: 20,
                                              width: 20,
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              matchController.MyLocation[index],
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xff757575),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 60),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/briefcase.png',
                                              color: Color(0xff757575),
                                              height: 20,
                                              width: 20,
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              matchController.MyJob[index],
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xff757575),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      'Interested with this profile?',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff323232),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      height: 40,
                                      child: ToggleButtons(
                                        isSelected: [
                                          _currentIndex == 0,
                                          _currentIndex == 1,
                                        ],
                                        onPressed: (index) {
                                          setState(() {
                                            _currentIndex = index;
                                          });
                                        },
                                        borderRadius: BorderRadius.circular(30),
                                        borderColor: Colors.grey,
                                        selectedBorderColor: Color(0xffEC0C0D),
                                        color: Colors.black,
                                        selectedColor: Colors.white,
                                        fillColor: Color(0xffEC0C0D),
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text('Yes,Interested'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Center(child: Text('No')),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterCategory(String category) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedFilter = category;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: BoxDecoration(
          color: _selectedFilter == category ? Colors.red : Colors.transparent,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Text(
          category,
          style: TextStyle(
            color: _selectedFilter == category ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

void showFilter(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return MatchPage();
    },
  );
}
