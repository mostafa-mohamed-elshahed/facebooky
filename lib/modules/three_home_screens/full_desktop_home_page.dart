import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mr_ahmed_salah_task_facebook/models/carousel_model/carousel_model.dart';
import 'package:mr_ahmed_salah_task_facebook/models/pages_model/pages_model.dart';
import 'package:mr_ahmed_salah_task_facebook/models/posts_model/posts_model.dart';
import 'package:mr_ahmed_salah_task_facebook/models/users_model/user_model.dart';
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
            Expanded(flex: 2,child:  Column(
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
                myDividerH(),
              ],
            )),
            Expanded(
                flex: 1,
                child:Text(""),),
            Expanded(flex: 3,child:  Column(
              children: [
                SizedBox(height: 55,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only( left: 8),
                      child: CircleAvatar(
                        radius: 22,
                        backgroundImage: NetworkImage(
                          "https://img.freepik.com/free-photo/portrait-smiling-young-man_53419-5764.jpg",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60)
                        ),
                        child: defaultFormField(
                            controller: controller,
                            type: TextInputType.text,
                            validate: (String value){
                              if(value.isEmpty){
                                return "value is empty";
                              }
                            },
                            label: "What's on your mind ?",
                            prefix: null
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    )
                  ],
                ),
                SizedBox(height: 15,),
                myDividerH(),
                Row(
                  children: [
                    Expanded(
                      child: TextButton.icon(onPressed: (){}, icon: Icon(
                        Icons.videocam_rounded,color: Colors.red,
                      ),
                        label: Text("Live",style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    myDividerW(),
                    Expanded(
                      child: TextButton.icon(onPressed: (){}, icon: Icon(
                        Icons.photo_library_outlined,color: Colors.green,
                      ),
                        label: Text("Photo",style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    myDividerW(),
                    Expanded(
                      child: TextButton.icon(onPressed: (){}, icon: Icon(
                        Icons.video_call,color: Colors.deepPurpleAccent,
                      ),
                        label: Text("Room",style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 12.0,
                  color: Colors.grey[200],
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 240,
                  child: CarouselSlider(
                      options: CarouselOptions(
                        scrollPhysics: ScrollPhysics(),
                        height: 200,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(
                          seconds: 3,
                        ),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        scrollDirection: Axis.horizontal,
                        viewportFraction: 0.38,
                      ),
                      items: CarouselModel.carousel.map((e) =>
                          ListView.builder(
                            itemBuilder: (context,index)=> carouselBuilderList(
                              context: context,
                              urlStatus: e.urlStatus,
                              urlUser: e.urlUser,
                              nameUser: e.nameUser,
                            ),
                            shrinkWrap: true,
                            itemCount:  CarouselModel.carousel.length,
                          ), ).toList()
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 12.0,
                  color: Colors.grey[200],
                ),
                ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => builderList(
                      context: context,
                      mainName: PostsModel.modelPost[index].mainName,
                      dateTime: PostsModel.modelPost[index].dateTime,
                      postText: PostsModel.modelPost[index].postText,
                      postImage:PostsModel.modelPost[index].postImage,
                      personalPhoto: PostsModel.modelPost[index].personalPhoto,
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 8,
                    ),
                    itemCount: PostsModel.modelPost.length),
              ],
            ),),
            Expanded(
              flex: 1,
              child:Text(""),),
            Expanded(flex: 2,child:  Column(
              children: [
                Column(children: [
                  InkWell(
                    onTap: (){},
                    child: Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.bell,color: Colors.grey[400],size: 18,),),
                        Text("1 Notification",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.usersCog,color: Colors.grey[400],size: 18,),),
                        Text("Create Group",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.newspaper,color: Colors.grey[400],size: 18,),),
                        Text("Create Page",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                  ),
                ],),
                myDividerH(),
                Row(
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,),
                      child: Text("Contacts"),
                    )),
                    IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.video,color: Colors.grey[400],size: 18,)),
                    IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.search,color: Colors.grey[400],size: 18)),
                    IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.ellipsisH,color: Colors.grey[400],size: 18)),

                  ],
                ),
                myDividerH(),

                Column(children: [
                  ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (context,index)=>  InkWell(
                        onTap: (){},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            height: 55,
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: NetworkImage(UsersModel.usersModel[index].image!),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(UsersModel.usersModel[index].name!,style: Theme.of(context).textTheme.caption,),
                              ],
                            ),
                          ),
                        ),
                      ),
                      itemCount: UsersModel.usersModel.length
                  ),

                ],),
              ],
            )),
          ],
        ),
      ],
    )
  ],
);