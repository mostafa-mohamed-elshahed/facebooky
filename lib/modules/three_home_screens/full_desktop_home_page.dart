import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mr_ahmed_salah_task_facebook/models/carousel_model/carousel_model.dart';
import 'package:mr_ahmed_salah_task_facebook/models/pages_model/pages_model.dart';
import 'package:mr_ahmed_salah_task_facebook/models/posts_model/posts_model.dart';
import 'package:mr_ahmed_salah_task_facebook/models/users_model/user_model.dart';
import 'package:mr_ahmed_salah_task_facebook/modules/three_home_screens/full_tablet_home_page.dart';
import 'package:mr_ahmed_salah_task_facebook/shared/components/components.dart';

Widget fullDesktopPageHere(context,controller)=>ListView(
  shrinkWrap: true,
  physics: ScrollPhysics(),
  children: [
    Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 3,child:  Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                         CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                              "https://img.freepik.com/free-photo/portrait-smiling-young-man_53419-5764.jpg",
                            ),
                            backgroundColor: Colors.blue,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Text("Mostafa El Farouk",maxLines: 1,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1),
                          ),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount:PagesModel.pagesModel.length ,
                  physics: ScrollPhysics(),
                  itemBuilder: (context,index)=>Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(PagesModel.pagesModel[index].icon!,color: PagesModel.pagesModel[index].color!,),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(PagesModel.pagesModel[index].text!,maxLines: 1,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1),
                        ),
                      ],
                    ),
                  ),),
                myDividerH(context: context),
              ],
            )),
            Expanded(
                flex: 1,
                child:Text(""),),
            Expanded(flex: 8,child:  fullTabletPageHere(context,controller)),

          ],
        ),
      ],
    )
  ],
);