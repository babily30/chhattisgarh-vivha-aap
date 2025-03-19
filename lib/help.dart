import 'package:flutter/material.dart';

class Suggestion {
  final String text;
  Suggestion(this.text);
}

class HelpSettingPage extends StatefulWidget {
  const HelpSettingPage({super.key});

  @override
  State<HelpSettingPage> createState() => _HelpSettingPageState();
}

class _HelpSettingPageState extends State<HelpSettingPage> {
  int? expandedIndex;

  final TextEditingController _searchController = TextEditingController();

  List<Suggestion> suggestions = [
    Suggestion("Live Chat Support"),
    Suggestion("FAQs(Frequenty Asked Question)"),
    Suggestion("Detailed Knowlege Based Articles"),
    Suggestion("User Manual"),
    Suggestion("Feedback Mechanism"),
    Suggestion("Community Engagement"),
  ];
  List<Suggestion> allItems = [
    Suggestion("Live Chat Support"),
    Suggestion("FAQs(Frequenty Asked Question)"),
    Suggestion("Detailed Knowlege Based Articles"),
    Suggestion("User Manual"),
    Suggestion("Feedback Mechanism"),
    Suggestion("Community Engagement"),
  ];

  void onSearchChanged(String query) {
    setState(() {
      suggestions =
          allItems
              .where(
                (item) => item.text.toLowerCase().contains(query.toLowerCase()),
              )
              .toList();
    });
  }

  void toggleExpansion(int index) {
    setState(() {
      expandedIndex = expandedIndex == index ? null : index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
            title: Text(
              'Help',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'CustomSans',
                fontSize: 27,
              ),
            ),
            backgroundColor: Color(0xffEC0C0D)
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 40),
          child: Column(
            children: [
              SizedBox(
                height: 45,
                child: TextField(
                  controller: _searchController,
                  onChanged: onSearchChanged,
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Expanded(
                child: ListView.builder(
                  itemCount: suggestions.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: const Color.fromARGB(255, 233, 230, 230),
                              ),
                            ),
                          ),
                          child: ListTile(
                            title: Text(suggestions[index].text,style: TextStyle(
                              color: expandedIndex == index?Color(0xffEC0C0D):Colors.black,
                              fontFamily: 'CustomSans',
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),),
                            trailing: Icon(Icons.keyboard_arrow_down,color:  expandedIndex == index?Color(0xffEC0C0D):Colors.black,),
                            onTap: () {
                              toggleExpansion(index);
                              
                            },
                          ),
                        ),
                        if (expandedIndex == index)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: Text(
                              index == 0
                                  ? "Live chat allows customers to connect with support agents in real-time through text-based messaging on a website or app."
                                  : index == 1
                                  ? "FAQs empower users to find solutions independently, saving time for both customers and support staff."
                                  : index == 2
                                  ? " It's a meticulously crafted exploration of a specific subject, designed to educate, inform, and empower the reader with comprehensive understanding."
                                  : index == 3
                                  ? "It offers step-by-step instructions for setting up, operating, and maintaining the product.It provides solutions to common problems and helps users resolve issues independently."
                                  : index == 4
                                  ? "A feedback mechanism is a biological, technological, or social system's ability to regulate itself by using the output of its processes as input. It's a fundamental concept in many fields, from physiology and ecology to engineering and management. Essentially, it's how systems maintain stability and adapt to change."
                                  : index == 5
                                  ? "Community engagement is a dynamic process where organizations and individuals work collaboratively with community members to address issues, build relationships, and create positive change."
                                  : "Detail about",
                              style: TextStyle(color: Colors.grey[600],fontSize: 15,wordSpacing: 3),
                            ),
                          ),
                      ],
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
}
