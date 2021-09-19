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
              height: 60,
              title: "facebook",
              actions: [
                defaultIconAppBar(icon: FontAwesomeIcons.search,function: ()=>cubit.changeThemeMode(),C: cubit.isDark),
                defaultIconAppBar(icon:FontAwesomeIcons.facebookMessenger,C:cubit.isDark),
              ],
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(top: 60.0,bottom: 0),
              child: BottomNavigationBar(

                elevation: 0,
                currentIndex: cubit.currentIndex,
                onTap: (index) {
                  cubit.changeCurrentIndex(index);
                },
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: "ــــــــــــــــ",),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.users), label: "ـــــــــــــــ",),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.tv), label: "ــــــــــــــ"),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.store), label: "ـــــــــــــ"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.notifications), label: "ـــــــــــــ"),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.bars), label: "ـــــــــــ"),
                ],
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: cubit.screen[cubit.currentIndex],
            ),
          ),
          desktop:  Scaffold(
            appBar: AppBar(
              toolbarHeight: MediaQuery.of(context).size.height*0.070,
              actions: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.facebook,color: Theme.of(context).appBarTheme.titleTextStyle!.color,size: 38,),padding: EdgeInsets.only(bottom: 8),)),
                      Expanded(
                        flex: 3,
                        child:  Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).textTheme.button!.color,
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: defaultFormField(
                                context: context,
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
                      Expanded(flex: 4,
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
              padding: const EdgeInsets.only(top: 0.0,left: 50),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 4,
                      child: Text("")),
                  Expanded(
                    flex: 5,
                    child: BottomNavigationBar(
                      currentIndex: cubit.currentIndex,
                      elevation: 0,
                      onTap: (index) {
                        cubit.changeCurrentIndex(index);
                      },
                      items: [
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), label: "ــــــــــــــــ"),
                        BottomNavigationBarItem(
                            icon: Icon(FontAwesomeIcons.users), label: "ـــــــــــــــ"),
                        BottomNavigationBarItem(
                            icon: Icon(FontAwesomeIcons.tv), label: "ــــــــــــــ"),
                        BottomNavigationBarItem(
                            icon: Icon(FontAwesomeIcons.store), label: "ـــــــــــــ"),
                        BottomNavigationBarItem(
                            icon: Icon(FontAwesomeIcons.user),
                            label: "ــــــــــــ"),
                        BottomNavigationBarItem(
                            icon: Icon(FontAwesomeIcons.bars), label: "ـــــــــــ"),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 4,
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
                    elevation: 0,
                    onTap: (index) {
                      cubit.changeCurrentIndex(index);
                    },
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home), label: "ــــــــــــــــ"),
                      BottomNavigationBarItem(
                          icon: Icon(FontAwesomeIcons.users), label: "ـــــــــــــــ"),
                      BottomNavigationBarItem(
                          icon: Icon(FontAwesomeIcons.tv), label: "ــــــــــــــ"),
                      BottomNavigationBarItem(
                          icon: Icon(FontAwesomeIcons.store), label: "ـــــــــــــ"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.notifications), label: "ــــــــــــ"),
                      BottomNavigationBarItem(
                          icon: Icon(FontAwesomeIcons.bars), label: "ـــــــــــ"),
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
