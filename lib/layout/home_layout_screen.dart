import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mr_ahmed_salah_task_facebook/shared/bloc/cubit.dart';
import 'package:mr_ahmed_salah_task_facebook/shared/bloc/cubit_state.dart';
import 'package:mr_ahmed_salah_task_facebook/shared/components/components.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeFaceBookScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FaceBookCubitApp, FaceBookStateApp>(
      builder: (BuildContext context, state) {
        var cubit = FaceBookCubitApp.get(context);
        return ScreenTypeLayout(
          mobile:   Scaffold(
            appBar: defaultAppBar(
              title: "facebook",
              actions: [
                defaultIconAppBar(icon: FontAwesomeIcons.search,),
                defaultIconAppBar(icon:FontAwesomeIcons.facebookMessenger,),
              ],
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
            floatingActionButton: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeCurrentIndex(index);
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.users), label: "Group"),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.tv), label: "Live"),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.store), label: "Shop"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications), label: "Notification"),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.bars), label: "Settings"),
              ],
            ),
            body: cubit.screen[cubit.currentIndex],
          ),
          desktop:  Scaffold(

            appBar: AppBar(
              toolbarHeight: MediaQuery.of(context).size.height*0.070,
              actions: [
                Expanded(flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                          child: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.facebook,color: Theme.of(context).appBarTheme.titleTextStyle!.color,size: 38,),padding: EdgeInsets.only(bottom: 8),)),
                      Expanded(
                        flex: 2,
                        child:  Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: defaultFormField(

                                borderSide: BorderSide.none,
                                controller: controller,
                                type: TextInputType.text,
                                validate: (String value){
                                  if(value.isEmpty){
                                    return "value is empty";
                                  }
                                },
                                label: "What's on your mind ?",
                                prefix: FontAwesomeIcons.search
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 10 ,
                        child: Text(""),),
                      Expanded(flex: 3,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Row(
                                children: [

                                  CircleAvatar(
                                    radius: 16,
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
                                            .bodyText2),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: CircleAvatar(
                                  radius: 17,
                                  backgroundColor: Colors.grey,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      FontAwesomeIcons.th,
                                      size: 16,
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                            Expanded(
                                flex: 1,
                                child: CircleAvatar(
                                    radius: 17,
                                    backgroundColor: Colors.grey,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          FontAwesomeIcons.facebookMessenger,
                                          size: 16,
                                          color: Colors.black,
                                        )))),
                            Expanded(
                                flex: 1,
                                child: CircleAvatar(
                                    radius: 17,
                                    backgroundColor: Colors.grey,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          FontAwesomeIcons.solidBell,
                                          size: 16,
                                          color: Colors.black,
                                        )))),
                            Expanded(
                                flex: 1,
                                child: CircleAvatar(
                                    radius: 17,
                                    backgroundColor: Colors.grey,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          FontAwesomeIcons.caretDown,
                                          size: 16,
                                          color: Colors.black,
                                        )))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerTop,
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(bottom: 70.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 3,
                      child: Text("")),
                  Expanded(
                    flex: 3,
                    child: BottomNavigationBar(
                      currentIndex: cubit.currentIndex,
                      onTap: (index) {
                        cubit.changeCurrentIndex(index);
                      },
                      items: [
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), label: "Home"),
                        BottomNavigationBarItem(
                            icon: Icon(FontAwesomeIcons.users), label: "Group"),
                        BottomNavigationBarItem(
                            icon: Icon(FontAwesomeIcons.tv), label: "Live"),
                        BottomNavigationBarItem(
                            icon: Icon(FontAwesomeIcons.store), label: "Shop"),
                        BottomNavigationBarItem(
                            icon: Icon(FontAwesomeIcons.user),
                            label: "Users"),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Text("")),
                ],
              ),
            ),
            body: cubit.screen[cubit.currentIndex],
          ),
          tablet:   Scaffold(
            appBar: AppBar(
              actions: [
                Expanded(
                    flex: 4,
                    child: Text("")),
                Expanded(flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 26.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 16,
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
                                        .bodyText2),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: CircleAvatar(
                              radius: 17,
                              backgroundColor: Colors.grey,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  FontAwesomeIcons.th,
                                  size: 16,
                                  color: Colors.black,
                                ),
                              )),
                        ),
                        Expanded(
                            flex: 1,
                            child: CircleAvatar(
                                radius: 17,
                                backgroundColor: Colors.grey,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      FontAwesomeIcons.facebookMessenger,
                                      size: 16,
                                      color: Colors.black,
                                    )))),
                        Expanded(
                            flex: 1,
                            child: CircleAvatar(
                                radius: 17,
                                backgroundColor: Colors.grey,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      FontAwesomeIcons.solidBell,
                                      size: 16,
                                      color: Colors.black,
                                    )))),
                        Expanded(
                            flex: 1,
                            child: CircleAvatar(
                                radius: 17,
                                backgroundColor: Colors.grey,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      FontAwesomeIcons.caretDown,
                                      size: 16,
                                      color: Colors.black,
                                    )))),
                      ],
                    ),
                  ),
                )
              ],
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerTop,
            floatingActionButton: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: BottomNavigationBar(
                    currentIndex: cubit.currentIndex,
                    onTap: (index) {
                      cubit.changeCurrentIndex(index);
                    },
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home), label: "Home"),
                      BottomNavigationBarItem(
                          icon: Icon(FontAwesomeIcons.users), label: "Group"),
                      BottomNavigationBarItem(
                          icon: Icon(FontAwesomeIcons.tv), label: "Live"),
                      BottomNavigationBarItem(
                          icon: Icon(FontAwesomeIcons.store), label: "Shop"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.notifications), label: "Notification"),
                      BottomNavigationBarItem(
                          icon: Icon(FontAwesomeIcons.bars), label: "Settings"),
                    ],
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Text("")),
              ],
            ),
            body: cubit.screen[cubit.currentIndex],
          ),
          breakpoints: ScreenBreakpoints(desktop: 900, tablet: 600, watch: 1000),
        );
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
