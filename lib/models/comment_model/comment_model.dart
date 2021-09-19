import 'package:flutter/cupertino.dart';

class CommentModel{
  @required String? mainNameComment;
  @required String? postTextComment;
  @required String? personalPhotoComment;

  CommentModel({
    this.mainNameComment,
    this.postTextComment,
    this.personalPhotoComment,
  });


  static List<CommentModel> commentModel=[
    CommentModel(
      mainNameComment: "Tarek Mostafa",
      postTextComment: " the job he applies forFirstly, bear in your mind that the first impression lasts, so you must make sure you arrive in time in a smart uniform.Secondly, a successful job applicant must have certain personal skills: being reliable, efficient, sociable, well-organized and",
      personalPhotoComment: "https://img.freepik.com/free-photo/portrait-happy-bearded-young-man-glasses-standing-outdoors_171337-14763.jpg",
    ),
    CommentModel(
      mainNameComment: "Eslam Sayed",
      postTextComment: "A successful applicant should have hard and personal skills to be accepted in the job he applies forFirstly, bear in your mind that the first impression lasts, so you must make sure you arrive in time in a smart uniform.Secondly, a successful job applicant must have certain personal skills: being reliable, efficient, sociable, well-organized and",
      personalPhotoComment: "https://img.freepik.com/free-photo/half-length-shot-cheerful-senior-man-smiles-happily-with-white-teeth-wears-optical-glasses-sweater-isolated-brown-wall_273609-44148.jpg",
    ),
    CommentModel(
      mainNameComment: "Mostafa El Farouk",
      postTextComment: "A successful applicant should have hard and personal skills to be accepted in the job he applies forFirstly, bear in your mind that the first impression lasts, so you must make sure you arrive in time in a smart uniform.Secondly, a successful job applicant must have certain personal skills: being reliable, efficient, sociable, well-organized and",
      personalPhotoComment: "https://img.freepik.com/free-photo/cheerful-young-man-standing-isolated-orange-wall_171337-16567.jpg",
    ),
    CommentModel(
      mainNameComment: "Ahmed Mohamed",
      postTextComment: "  Besides he must obtain hard skills: high qualifications and up to date courses.Also he needs to prepare himself for how he should answer and how to raise questions during the interview.In the end, going to an interview must be well-prepared.",
      personalPhotoComment: "https://img.freepik.com/free-photo/portrait-handsome-smiling-stylish-young-man-model-dressed-jeans-clothes-fashion-man_158538-5030.jpg",
    ),

    CommentModel(
      mainNameComment: "Moka Read",
      postTextComment: " accepted in the job he applies forFirstly, bear in your mind that the first impression lasts,A successful applicant should have hard and personal skills to be, so you must make sure you arrive in time in a smart uniform.Secondly, a successful job applicant must have certain personal skills: being reliable, efficient, sociable, well-organized and",
      personalPhotoComment: "https://img.freepik.com/free-photo/blond-man-happy-expression_1194-2873.jpg",
    ),
    CommentModel(
      mainNameComment: "Samy Gamal",
      postTextComment: "skills to be accepted A successful applicant should have hard and personal skills to be accepted in the job he applies forFirstly, bear in your mind that the first impression lasts, so you must make sure you arrive in time in a smart uniform.Secondly, a successful job applicant must have certain personal skills: being reliable, efficient, sociable, well-organized and",
      personalPhotoComment: "https://img.freepik.com/free-photo/photo-attractive-bearded-young-man-with-cherful-expression-makes-okay-gesture-with-both-hands-likes-something-dressed-red-casual-t-shirt-poses-against-white-wall-gestures-indoor_273609-16239.jpg",
    ),

  ];
}