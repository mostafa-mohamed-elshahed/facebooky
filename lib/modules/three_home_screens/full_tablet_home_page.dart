import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mr_ahmed_salah_task_facebook/models/users_model/user_model.dart';
import 'package:mr_ahmed_salah_task_facebook/modules/three_home_screens/full_phone_home_page.dart';
import 'package:mr_ahmed_salah_task_facebook/shared/components/components.dart';

Widget fullTabletPageHere(context,controller)=>ListView(
  shrinkWrap: true,
  physics: ScrollPhysics(),
  children: [
    Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 5,
              child: fullPhonePageHere(context,controller),
            ),
            Expanded(flex: 1,child:  SizedBox(width: 1,)),
            Expanded(flex: 3,child:  Column(
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
             myDividerH(context: context),
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
                myDividerH(context: context),

                Column(children: [
                ListView.separated(
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
                    separatorBuilder:(context,index)=> myDividerH(context: context),
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