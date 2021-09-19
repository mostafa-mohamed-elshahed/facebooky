import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class PostsModel{
 @required String? mainName;
 @required String? dateTime;
 @required String? postText;
 late String? postImage;
 @required String? personalPhoto;


  PostsModel({
  this.mainName,
  this.dateTime,
  this.personalPhoto,
  this.postImage,
  this.postText,

});


 static List<PostsModel> modelPost=[
    PostsModel(
      mainName: "Mostafa El Farouk",
      dateTime: DateFormat.jm().format(DateTime.now()),
      postText: "A successful applicant should have hard and personal skills to be accepted in the job he applies forFirstly, bear in your mind that the first impression lasts, so you must make sure you arrive in time in a smart uniform.Secondly, a successful job applicant must have certain personal skills: being reliable, efficient, sociable, well-organized and",
      postImage: "https://img.freepik.com/free-photo/islamic-decoration-background-with-arabic-lantern-crescent-dates-fruit-copy-space_257995-533.jpg",
      personalPhoto: "https://img.freepik.com/free-photo/cheerful-young-man-standing-isolated-orange-wall_171337-16567.jpg",
    ),
    PostsModel(
      mainName: "Ahmed Mohamed",
      dateTime: DateFormat.jm().format(DateTime.now()),
      postText: "  Besides he must obtain hard skills: high qualifications and up to date courses.Also he needs to prepare himself for how he should answer and how to raise questions during the interview.In the end, going to an interview must be well-prepared.",
      postImage: "https://img.freepik.com/free-photo/mosques-dome-dark-blue-twilight-sky-crescent-moon-symbol-islamic-religion_38812-291.jpg",
      personalPhoto: "https://img.freepik.com/free-photo/portrait-handsome-smiling-stylish-young-man-model-dressed-jeans-clothes-fashion-man_158538-5030.jpg",
    ),
    PostsModel(
      mainName: "Eslam Sayed",
      dateTime: DateFormat.jm().format(DateTime.now()),
      postText: "A successful applicant should have hard and personal skills to be accepted in the job he applies forFirstly, bear in your mind that the first impression lasts, so you must make sure you arrive in time in a smart uniform.Secondly, a successful job applicant must have certain personal skills: being reliable, efficient, sociable, well-organized and",
      postImage: "https://img.freepik.com/free-photo/abstract-background-with-black-arabic_305440-875.jpg",
      personalPhoto: "https://img.freepik.com/free-photo/half-length-shot-cheerful-senior-man-smiles-happily-with-white-teeth-wears-optical-glasses-sweater-isolated-brown-wall_273609-44148.jpg",
    ),
    PostsModel(
      mainName: "Moka Read",
      dateTime: DateFormat.jm().format(DateTime.now()),
      postText: " accepted in the job he applies forFirstly, bear in your mind that the first impression lasts,A successful applicant should have hard and personal skills to be, so you must make sure you arrive in time in a smart uniform.Secondly, a successful job applicant must have certain personal skills: being reliable, efficient, sociable, well-organized and",
      personalPhoto: "https://img.freepik.com/free-photo/blond-man-happy-expression_1194-2873.jpg",
    ),
    PostsModel(
      mainName: "Samy Gamal",
      dateTime: DateFormat.jm().format(DateTime.now()),
      postText: "skills to be accepted A successful applicant should have hard and personal skills to be accepted in the job he applies forFirstly, bear in your mind that the first impression lasts, so you must make sure you arrive in time in a smart uniform.Secondly, a successful job applicant must have certain personal skills: being reliable, efficient, sociable, well-organized and",
      personalPhoto: "https://img.freepik.com/free-photo/photo-attractive-bearded-young-man-with-cherful-expression-makes-okay-gesture-with-both-hands-likes-something-dressed-red-casual-t-shirt-poses-against-white-wall-gestures-indoor_273609-16239.jpg",
    ),
    PostsModel(
      mainName: "Tarek Mostafa",
      dateTime: DateFormat.jm().format(DateTime.now()),
      postText: " the job he applies forFirstly, bear in your mind that the first impression lasts, so you must make sure you arrive in time in a smart uniform.Secondly, a successful job applicant must have certain personal skills: being reliable, efficient, sociable, well-organized and",
      personalPhoto: "https://img.freepik.com/free-photo/portrait-happy-bearded-young-man-glasses-standing-outdoors_171337-14763.jpg",
    ),
  ];
}