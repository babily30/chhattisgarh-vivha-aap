import 'package:get/get.dart';

class MatchController extends GetxController{
  RxList MyName = ['Nisha Gupta','Malti Singh','Swetha Sinha','Shivangi Rajvanshi','Ellie Bowers','Helena Krueger'].obs;
  RxList MyAge = ["20 Yrs","21 Yrs","22 Yrs",'23 Yrs','24 Yrs','25 Yrs'].obs;
  RxList MyHeight = ['6’2”','4’2”','6’2”','5’6”','5’4”','6’1”'].obs;
  RxList MyDegree = ['M.tech','B.Sc','M.Sc','MBA','MCA','B.tech'].obs;
  RxList MyLocation = ['New York','Los Angeles','London','Tokyo','Sydney','Toronto'].obs;
  RxList MyJob = ['Software Engineer','Data Scientist','Product Manager','Graphic Designer','Web Developer','Marketing Specialist',].obs;
  RxList MyImagePath = ['assets/image/homePeople (5).png','assets/image/homePeople (6).png','assets/image/homePeople (7).png',
  'assets/image/homePeople (8).png','assets/image/homeRecom (7).png','assets/image/homeRecom (8).png',].obs;

  RxList <Map>favorites =<Map>[].obs;


  void addToFav(String name,String imagePath,String ageheight,String location) {
    favorites.add({'name': name, 'imagePath': imagePath,'ageheight':ageheight,'location':location});
    update();
  }

  void removeFromFav(String myName, String myImagePath,String ageheight,String location) {
    favorites.removeWhere((item) => item['name'] == myName && item['imagePath'] == myImagePath && item['ageheight'] == ageheight && item['location'] == location);
  }

    bool isFavorite(String name, String imagePath, String ageheight, String location) {
    return favorites.any((item) =>
        item['name'] == name &&
        item['imagePath'] == imagePath &&
        item['ageheight'] == ageheight &&
        item['location'] == location);
  }

}

class HomePremiunMatch extends GetxController{
  RxList MyImagePath = ['assets/image/homePeople (1).png','assets/image/homePeople (2).png','assets/image/homePeople (3).png',
  'assets/image/homePeople (4).png','assets/image/homePeople (5).png','assets/image/homePeople (6).png','assets/image/homePeople (7).png',
  'assets/image/homePeople (8).png','assets/image/homePeople (9).png','assets/image/homePeople (10).png',].obs;
  RxList MyName = ['Vaishnvi Jha','kalpana Gupta','Sonali Thakur','Nisha Gupta','Payal Martin','Rashmi Goyal','Payal Martin','kajal Malik','Kavya Verma','Saanti Sinha'].obs;
  RxList MyAgeHeight = ['21 Yrs, 6’2”','18 Yrs, 4’2”','22 Yrs, 6’2”','28 Yrs, 5’2”','22 Yrs, 6’2”','28 Yrs, 5’2”','22 Yrs, 6’2”','28 Yrs, 5’2”','28 Yrs, 5’2”','22 Yrs, 6’2”'].obs;
  RxList MyAge = ['21 Yrs','18 Yrs','22 Yrs','28 Yrs','22 Yrs','28 Yrs','22 Yrs','28 Yrs','28 Yrs','22 Yrs'].obs;
  RxList MyHeight = ['6’2”','4’2”','6’2”','5’2”','6’2”','5’2”','6’2”','5’2”','5’2”','6’2”'].obs;
  RxList MyDegree = ['M.tech','B.Sc','M.Sc','MBA','MCA','B.tech','M.tech','B.sc','MBA','MBA'].obs;
  RxList MyJob = ['Software Engineer','Data Scientist','Product Manager','Graphic Designer','Web Developer','Marketing Specialist','Software Engineer','Data Scientist','Product Manager','Graphic Designer'].obs;
  RxList MyLocation = ['Kolkata','Delhi','Nainital','Noida','Uttarakhand','Delhi','Kolkata','Pune','Mumbai','Punjab'].obs;
}

class HomeRecommendedMatch extends GetxController{
  RxList MyImagePath = ['assets/image/homePeople (5).png','assets/image/homePeople (6).png','assets/image/homePeople (7).png',
  'assets/image/homePeople (8).png','assets/image/homeRecom (7).png','assets/image/homeRecom (8).png',
  'assets/image/homeRecom (9).png','assets/image/homeRecom (10).png','assets/image/homeRecom (11).png','assets/image/homeRecom (12).png'].obs;
  RxList MyName = ['Vaishnvi Jha','kalpana Gupta','Sonali Thakur','Nisha Gupta','Payal Martin','Rashmi Goyal','Payal Martin','kajal Malik','Kavya Verma','Saanti Sinha',].obs;
  RxList MyAgeHeight = ['21 Yrs, 6’2”','18 Yrs, 4’2”','22 Yrs, 6’2”','28 Yrs, 5’2”','22 Yrs, 6’2”','28 Yrs, 5’2”','22 Yrs, 6’2”','28 Yrs, 5’2”','28 Yrs, 5’2”','22 Yrs, 6’2”'].obs;
  RxList MyAge = ['22 Yrs','28 Yrs','22 Yrs','28 Yrs','28 Yrs','22 Yrs','21 Yrs','18 Yrs','22 Yrs','28 Yrs',].obs;
  RxList MyHeight = ['6’2”','4’2”','6’2”','5’2”','6’2”','5’2”','6’2”','5’2”','5’2”','6’2”'].obs;
  RxList MyDegree = ['M.tech','B.Sc','M.Sc','MBA','MCA','B.tech','M.tech','B.sc','MBA','MBA'].obs;
  RxList MyJob = ['Software Engineer','Data Scientist','Product Manager','Graphic Designer','Web Developer','Marketing Specialist','Software Engineer','Data Scientist','Product Manager','Graphic Designer'].obs;
  RxList MyLocation = ['Pune','Mumbai','Punjab','Noida','Uttarakhand','Kolkata','Delhi','Nainital','Noida','Uttarakhand',].obs;
}
