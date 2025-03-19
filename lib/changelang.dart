import 'package:flutter/material.dart';

class Suggestion {
  final String text;
  final Image image;

  Suggestion(this.text, this.image);
}

class ChangeLanguagePage extends StatefulWidget {
  const ChangeLanguagePage({super.key});

  @override
  State<ChangeLanguagePage> createState() => _ChangeLanguagePageState();
}

class _ChangeLanguagePageState extends State<ChangeLanguagePage> {
  final TextEditingController _searchController = TextEditingController();

  List<Suggestion> suggestion = [
    Suggestion('English', Image.asset('assets/icons/english.png')),
    Suggestion('Indonesia', Image.asset('assets/icons/indonesia.png')),
    Suggestion('Spain', Image.asset('assets/icons/spain.png')),
    Suggestion('Germany', Image.asset('assets/icons/germany.png')),
    Suggestion('Japan', Image.asset('assets/icons/japan.png')),
    Suggestion('Arabic', Image.asset('assets/icons/arabic.png')),
    Suggestion('Rusian', Image.asset('assets/icons/rusia.png')),
    Suggestion('Turkish', Image.asset('assets/icons/turkish.png')),
    Suggestion('Italian', Image.asset('assets/icons/italian.png')),
  ];

  List<Suggestion> allItems = [
    Suggestion('English', Image.asset('assets/icons/english.png')),
    Suggestion('Indonesia', Image.asset('assets/icons/indonesia.png')),
    Suggestion('Spain', Image.asset('assets/icons/spain.png')),
    Suggestion('Germany', Image.asset('assets/icons/germany.png')),
    Suggestion('Japan', Image.asset('assets/icons/japan.png')),
    Suggestion('Arabic', Image.asset('assets/icons/arabic.png')),
    Suggestion('Rusian', Image.asset('assets/icons/rusia.png')),
    Suggestion('Turkish', Image.asset('assets/icons/turkish.png')),
    Suggestion('Italian', Image.asset('assets/icons/italian.png')),
  ];

  void _onSearchChanged(String query) {
    setState(() {
      suggestion =
          allItems
              .where(
                (item) => item.text.toLowerCase().contains(query.toLowerCase()),
              )
              .toList();
    });
  }
 String? selectLanguage;

  void LanguageSelection(String lang){
    setState(() {
      selectLanguage  = lang;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              'Change Language',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'CustomSans',
                fontSize: 27,
              ),
            ),
            backgroundColor: Color(0xffEC0C0D),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 40),
          child: Column(
            children: [
              TextField(
                controller: _searchController,
                onChanged: _onSearchChanged,
                decoration: InputDecoration(
                  hintText: "Search Language",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: suggestion.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ListTile(
                          leading: suggestion[index].image,
                          title: Text(
                            suggestion[index].text,
                            style: TextStyle(
                              fontFamily: 'CustomSans',
                              color: Color(0xff757575)
                            ),
                          ),
                          trailing: Radio(value: suggestion[index].text, 
                          groupValue: selectLanguage,
                          activeColor: Color(0xffEC0C0D),
                          onChanged: (value){
                            if (value!=null){
                              LanguageSelection(value);
                            }
                          }),
                          onTap: () {
                            LanguageSelection(suggestion[index].text);
                          },
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
}
