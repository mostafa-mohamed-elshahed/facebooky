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
        labelText: label,
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
          borderRadius: BorderRadius.circular(50),
          borderSide:borderSide ?? BorderSide(color: Colors.grey.shade300)
        ),
      ),
    );


Widget defaultIconAppBar({
 required IconData? icon,
  Function? function,
})
=>Padding(
  padding: const EdgeInsets.symmetric(horizontal: 12.0),
  child:   CircleAvatar(

      radius: 20,

      backgroundColor: Colors.grey[200],

      child: IconButton(onPressed: (){

        function!;

      },

          icon: Icon(

            icon,

            size: 24,

            color: Colors.black,),

      ),

  ),
);

PreferredSizeWidget defaultAppBar({

  String? title,
  List<Widget>? actions,
}) => AppBar(
toolbarHeight: 140,
  titleSpacing: 5.0,
  title: Padding(
    padding: const EdgeInsets.only(left:12.0),
    child: Text(
      title!,
    ),
  ),
  actions: actions!,
);


Widget myDividerH() => Container(
  width: double.infinity,
  height: 1.0,
  color: Colors.grey[300],
);
Widget myDividerW() => Container(
  height: 30,
  width: 1,
  color: Colors.grey[300],
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
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  child:   Container(
    decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10)
    ),
    width: 130,
    height: 200,
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
          height: 200,
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

}) => Column(
  children: [
    Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context!).textTheme.headline6!.backgroundColor,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                            style: Theme.of(context).textTheme.bodyText2),
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
                    Text(
                      dateTime!,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.ellipsisH,size: 18,))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Center(
                child: Container(
                  color: Colors.grey[300],
                  height: 1,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                postText!,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            if(postImage != null)
            Padding(
              padding: const EdgeInsets.all(4.0),
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
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Text("1200"),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_outline,
                            color: Colors.red,
                          ))
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text("Comment"),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.comment_sharp,
                            color: Colors.amber,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Center(
                child: Container(
                  color: Colors.grey[300],
                  height: 1,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
              ),
            ),
            Row(
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
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Write Comment",
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_outline,
                      color: Colors.red,
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    "Like",
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
                SizedBox(
                  width: 8,
                )
              ],
            ),
            SizedBox(
              height: 8,
            )
          ],
        ),
      ),
    ),
  ],
);