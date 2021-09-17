import 'package:flutter/material.dart';

class CarouselModel{
  @required String? urlStatus;
  @required String? urlUser;
  @required String? nameUser;
  CarouselModel({this.nameUser,this.urlStatus,this.urlUser});

 static List<CarouselModel> carousel=[
      CarouselModel(nameUser: "Mostafa Salah"  ,
        urlStatus: "https://img.freepik.com/free-photo/business-accounting-financial-analysis-management-concept_53876-120908.jpg",
        urlUser: "https://img.freepik.com/free-photo/playful-thoughtful-handsome-guy-with-curly-hair-holding-smartphone-smirking-looking-with-curious-intrigued-expression_176420-24464.jpg"),
      CarouselModel(nameUser: "Ayman Samy"     ,
          urlStatus: "https://img.freepik.com/free-photo/business-people-shaking-hands-agreement_53876-119796.jpg",
          urlUser: "https://img.freepik.com/free-photo/yeah-feeling-courage-readiness-achieve-success-confident-delighted-optimistic-african-american-bearded-man-raising-clenched-fists-celebration-triumphing-being-happy-with-good-result_176420-35027.jpg"),
      CarouselModel(nameUser: "Youssef Ahmed"  ,
          urlStatus: "https://img.freepik.com/free-photo/financial-data_53876-120032.jpg",
          urlUser: "https://img.freepik.com/free-photo/smart-cheerfull-good-looking-boyfriend-with-white-perfect-smile-holding-hand-jawline-grinning-from-satisfaction-joy-posing-happy-against-grey-wall-friendly-relaxed_176420-35905.jpg"),
      CarouselModel(nameUser: "Abdulla Mansour",
          urlStatus: "https://img.freepik.com/free-photo/businessman-presenting-project-computer-desktop_53876-134453.jpg",
          urlUser: "https://img.freepik.com/free-photo/mental-health-people-quarantine-concept-portrait-patient-handsome-bearded-man-self-distancing-during-pandemic-covid19-home-trying-stay-calm-relaxed-meditating-feel-good_176420-33977.jpg"),
      CarouselModel(nameUser: "Marawan Mostafa",
          urlStatus: "https://img.freepik.com/free-photo/happy-diverse-business-people-making-deal_53876-105339.jpg",
          urlUser: "https://img.freepik.com/free-photo/caucasian-handsome-man-posing-with-arms-hip-smiling-isolated-purple-wall_1368-89876.jpg"),
      CarouselModel(nameUser: "Eslam Hamed"    ,
          urlStatus: "https://img.freepik.com/free-photo/businessmen-working-strategic-planning_53876-97634.jpg",
          urlUser: "https://img.freepik.com/free-photo/portrait-young-man-giving-thumbs-up-isolated-blue-studio-wall_155003-37347.jpg"),
      CarouselModel(nameUser: "Gamal Galal"    ,
          urlStatus: "https://img.freepik.com/free-photo/business-people-connecting-puzzle-pieces-together_53876-134442.jpg",
          urlUser: "https://img.freepik.com/free-photo/handsome-young-man-with-new-stylish-haircut_176420-19637.jpg"),
      CarouselModel(nameUser: "Selem Mahmoud"  ,
          urlStatus: "https://img.freepik.com/free-photo/business-unity_53876-95873.jpg",
          urlUser: "https://img.freepik.com/free-photo/indoor-photo-happy-glad-handsome-guy_295783-534.jpg"),
      CarouselModel(nameUser: "Morad Ali"      ,
          urlStatus: "https://img.freepik.com/free-photo/business-partners-handshake-international-business-concept_53876-104046.jpg",
          urlUser: "https://img.freepik.com/free-photo/portrait-handsome-smiling-stylish-young-man-model-dressed-blue-shirt-clothes-fashion-man-posing_158538-4976.jpg"),
      CarouselModel(nameUser: "Ahmed Khaled"   ,
         urlStatus: "https://img.freepik.com/free-photo/aerial-view-business-team_53876-124515.jpg",
         urlUser: "https://img.freepik.com/free-photo/waist-up-shot-happy-carefree-european-male-student-trendy-round-glasses-red-t-shirt_176420-24327.jpg"),

 ];

}