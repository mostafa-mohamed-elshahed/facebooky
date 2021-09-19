import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mr_ahmed_salah_task_facebook/models/carousel_model/carousel_model.dart';
import 'package:mr_ahmed_salah_task_facebook/models/comment_model/comment_model.dart';
import 'package:mr_ahmed_salah_task_facebook/models/posts_model/posts_model.dart';
import 'package:mr_ahmed_salah_task_facebook/shared/components/components.dart';

Widget fullPhonePageHere(context,controller)=> Column(
  children: [
    SizedBox(height: 30,),
    myDividerH(context: context),
    SizedBox(height: 10,),
    Container(
      child: Row(
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
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              child: defaultFormField(
                  context: context,
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
    ),
    SizedBox(height: 15,),
    myDividerH(context: context),
    Row(
      children: [
        Expanded(
          child: TextButton.icon(onPressed: (){}, icon: Icon(
            Icons.videocam_rounded,color: Colors.red,
          ),
            label: Text("Live",style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
            ),
          ),
        ),
        myDividerW(context: context),
        Expanded(
          child: TextButton.icon(onPressed: (){}, icon: Icon(
            Icons.photo_library_outlined,color: Colors.green,
          ),
            label: Text("Photo",style: TextStyle(color:  Theme.of(context).textTheme.bodyText1!.color),
            ),
          ),
        ),
        myDividerW(context: context),
        Expanded(
          child: TextButton.icon(onPressed: (){}, icon: Icon(
            Icons.video_call,color: Colors.deepPurpleAccent,
          ),
            label: Text("Room",style: TextStyle(color:  Theme.of(context).textTheme.bodyText1!.color),
            ),
          ),
        ),
      ],
    ),
    Container(
      width: double.infinity,
      height: 16.0,
      color: Theme.of(context).textTheme.overline!.color,
    ),
    Container(
      color: Theme.of(context).appBarTheme.color,
      width: double.infinity,
      height: 240,
      child: CarouselSlider(
          options: CarouselOptions(
            height: 220,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(
              seconds: 3,
            ),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
            viewportFraction: 0.31,
          ),
          items: CarouselModel.carousel.map((e) =>
              ListView.builder(
                itemBuilder: (context,index)=> InkWell(
                  onTap: (){},
                  child: carouselBuilderList(
                    context: context,
                    urlStatus: e.urlStatus,
                    urlUser: e.urlUser,
                    nameUser: e.nameUser,
                  ),
                ),
                shrinkWrap: true,
                itemCount:  CarouselModel.carousel.length.bitLength.bitLength.bitLength,
                physics: ScrollPhysics(),
              ), ).toList()
      ),
    ),
    Container(
      width: double.infinity,
      height: 16.0,
      color: Theme.of(context).textTheme.overline!.color,
    ),
    ListView.separated(
      physics: ScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => builderList(
          context: context,
          mainNameComment: CommentModel.commentModel[index].mainNameComment,
          personalPhotoComment: CommentModel.commentModel[index].personalPhotoComment ,
          postTextComment:  CommentModel.commentModel[index].postTextComment,
          mainName: PostsModel.modelPost[index].mainName,
          dateTime: PostsModel.modelPost[index].dateTime,
          postText: PostsModel.modelPost[index].postText,
          postImage:PostsModel.modelPost[index].postImage,
          personalPhoto: PostsModel.modelPost[index].personalPhoto,
        ),
        separatorBuilder: (context, index) =>   Container(
          width: double.infinity,
          height: 16.0,
          color: Theme.of(context).textTheme.overline!.color,
        ),
        itemCount: PostsModel.modelPost.length),
  ],
);

