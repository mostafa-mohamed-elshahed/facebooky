import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget defaultButton({

  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 3.0,
  required Function ?function,
  required String ?text,
}) =>
    Container(
      width: width,
      height: 40.0,
      child: MaterialButton(
        onPressed:() {
          function!();
        },
        child: Text(
          isUpperCase ? text!.toUpperCase() : text!,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );

Widget defaultTextButton({
  required Function ?function,
  required String? text,
}) =>
    TextButton(
      onPressed:() {
        function!();
      },
      child: Text(
        text!.toUpperCase(),
      ),
    );

Widget defaultFormField({
  BorderSide? borderSide,
  required TextEditingController? controller,
  required TextInputType? type,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
  bool isPassword = false,
   required Function? validate,
   required String? label,
   required IconData? prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
 required BuildContext? context,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: (e) {
        onSubmit!(e);
      },
      onChanged:(e) {
      onChange!(e);
    },
      onTap:() {
        onTap!();
      },
      validator:(e) {
        validate!();
      },
      decoration: InputDecoration(
        focusColor: Theme.of(context!).textTheme.subtitle1!.color,
        labelText: label,
        labelStyle: Theme.of(context).textTheme.subtitle1,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed:() {
                  suffixPressed!();
                },
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50,),
        ),
        enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(50,),
            borderSide: BorderSide(color: Theme.of(context).textTheme.button!.color!,width: 1),
        ),
        focusedBorder:   OutlineInputBorder(
          borderRadius: BorderRadius.circular(50,),
          borderSide: BorderSide(color: Theme.of(context).textTheme.button!.color!,width: 1),
        ),
      ),
    );


Widget defaultIconAppBar({
 required IconData? icon,
  Function? function,
  bool? C,
})
=>Padding(
  padding: const EdgeInsets.symmetric(horizontal: 12.0),
  child:   CircleAvatar(

      radius: 20,

      backgroundColor:C! ? Colors.black54:Colors.grey[200],

      child: IconButton(onPressed: (){

        function!();

      },

          icon: Icon(

            icon,

            size: 24,

            color: C ?Colors.white: Colors.black,),

      ),

  ),
);

PreferredSizeWidget defaultAppBar({
  String? title,
  List<Widget>? actions,
  double? height =140,
}) => AppBar(
toolbarHeight: height,
  titleSpacing: 5.0,
  title: Padding(
    padding: const EdgeInsets.only(left:12.0),
    child: Text(
      title!,
    ),
  ),
  actions: actions!,
);


Widget myDividerH({@required BuildContext? context}) => Container(
  width: double.infinity,
  height: 1.0,
  color:Theme.of(context!).textTheme.button!.color ,
);Widget myDividerW({@required BuildContext? context}) => Container(
  height: 30,
  width: 1,
  color:Theme.of(context!).textTheme.button!.color ,
);


void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );

Widget carouselBuilderList({
 required String? urlStatus,
 required String? urlUser,
 required String? nameUser,
  required BuildContext context,
})=>Padding(
  padding: const EdgeInsets.symmetric(horizontal: 3.0),
  child: Container(
    decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10)
    ),
    width: 180,
    height: 220,
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(
                  urlStatus!
              ),
              fit: BoxFit.cover,
            )
          ),
          width: MediaQuery.of(context).size.width,
          height: 220,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0,left: 8),
          child: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            radius: 25,
            child: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  urlUser!
              ),
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Text(nameUser!,style: Theme.of(context).textTheme.bodyText1!
                .copyWith(
              color: Colors.white,
            ),),
        ),
      ],
    ),
  ),
);






Widget builderList({
   BuildContext? context,
 required  String? mainName,
  required String? dateTime,
 required  String? postText,
           String? postImage,
 required  String? personalPhoto,
  required String? mainNameComment,
  required String? postTextComment,
  required String? personalPhotoComment,

}) => Column(
  children: [
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context!).textTheme.headline6!.backgroundColor,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                          personalPhoto!
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(mainName!,
                              style: Theme.of(context).textTheme.subtitle1),
                          SizedBox(
                            width: 8,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.check,
                              size: 12,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 3,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dateTime!,
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Text(
                            "  . ",
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Icon(FontAwesomeIcons.globeAmericas,color: Colors.white,size: 14,)
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(FontAwesomeIcons.ellipsisH,size: 18,color: Theme.of(context).appBarTheme.iconTheme!.color,))
                ],
              ),
            ),
            SizedBox(
           height: 12,
           width: double.infinity,
         ),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                postText!,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            if(postImage != null)
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Image(
                image: NetworkImage(
                  postImage
                ),
                height: 170,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0,right: 12),
              child: Row(
                children: [
                  Stack(
                    textDirection:TextDirection.rtl ,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon:Icon(
                        FontAwesomeIcons.gratipay,
                        color: Colors.red,
                            size: 18,
                        ) ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.laughSquint,
                              color: Colors.yellow,
                              size: 18,

                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: IconButton(
                            onPressed: () {},
                            icon:Icon(
                              FontAwesomeIcons.thumbsUp,
                              color: Colors.blue,
                              size: 18,

                            ) ),
                      ),

                    ],
                  ),
                  Text("365",style: Theme.of(context).textTheme.caption,),
                  Spacer(),
                  Row(
                    children: [
                      Text("125",style: Theme.of(context).textTheme.caption),
                      SizedBox(width: 8,),
                      Text("Comments",style: Theme.of(context).textTheme.caption),
                      SizedBox(width: 8,),
                      Text(".",style: Theme.of(context).textTheme.caption),
                      SizedBox(width: 8,),
                      Text("20",style: Theme.of(context).textTheme.caption),
                      SizedBox(width: 8,),
                      Text("Shares",style: Theme.of(context).textTheme.caption),

                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Center(
                child: Container(
                  color: Theme.of(context).textTheme.button!.color,
                  height: 1,
                  width: MediaQuery.of(context).size.width * 0.95,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(onTap: (){},
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.thumbsUp,color: Theme.of(context).textTheme.caption!.color,),
                      SizedBox(width: 10,),
                      Text("Like",style: Theme.of(context).textTheme.caption!,),
                    ],
                  ),
                ),
                GestureDetector(onTap: (){},
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.commentAlt,color: Theme.of(context).textTheme.caption!.color,),
                      SizedBox(width: 10,),

                      Text("Comment",style: Theme.of(context).textTheme.caption!),
                    ],
                  ),
                ),
                GestureDetector(onTap: (){},
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.share,color: Theme.of(context).textTheme.caption!.color,),
                      SizedBox(width: 10,),

                      Text("Share",style: Theme.of(context).textTheme.caption!),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0,top: 12),
              child: Center(
                child: Container(
                  color: Theme.of(context).textTheme.button!.color,
                  height: 1,
                  width: MediaQuery.of(context).size.width * 0.95,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8),
                    child: CircleAvatar(
                     radius: 25,
                      child: CircleAvatar(
                        radius: 22,
                        backgroundImage: NetworkImage(
                            personalPhotoComment!
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child:Column(
                      mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Theme.of(context).textTheme.button!.color
                            ),
                            child: Padding(
                              padding:const EdgeInsets.symmetric(horizontal: 18.0,vertical: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(mainNameComment!,
                                      style: Theme.of(context).textTheme.subtitle1),
                                  SizedBox(height: 3,),
                                  Text(
                                    postTextComment!,
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 2),
                            child: Row(
                              children: [
                                 GestureDetector(onTap: (){},child: Text("Like",style: Theme.of(context).textTheme.caption,)),
                                 SizedBox(width: 16,),
                                 GestureDetector(onTap: (){},child: Text("Reply",style: Theme.of(context).textTheme.caption,)),
                              ],
                            ),
                          )
                        ],
                    ),
                  ),

                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8),
                  child: CircleAvatar(
                    radius: 22,
                    backgroundImage: NetworkImage(
                        personalPhoto
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: GestureDetector(onTap: (){},
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Theme.of(context).textTheme.button!.color
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Text(
                                  "Write Comment",
                                  style: Theme.of(context).textTheme.caption,
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_outline,
                                  color: Colors.grey[300],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                )
              ],
            ),
            SizedBox(
              height:4,
            )
          ],
        ),
      ),
    ),
  ],
);