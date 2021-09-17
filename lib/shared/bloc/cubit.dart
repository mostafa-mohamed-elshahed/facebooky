import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mr_ahmed_salah_task_facebook/modules/groups_page/groups_screen.dart';
import 'package:mr_ahmed_salah_task_facebook/modules/home_page/home_screen.dart';
import 'package:mr_ahmed_salah_task_facebook/modules/live_Screen_page/live_page_screen.dart';
import 'package:mr_ahmed_salah_task_facebook/modules/notification_screen/notification_screen.dart';
import 'package:mr_ahmed_salah_task_facebook/modules/settings_screen/settings_screen.dart';
import 'package:mr_ahmed_salah_task_facebook/modules/shop_screen/shop_screen.dart';
import 'package:mr_ahmed_salah_task_facebook/shared/bloc/cubit_state.dart';

class FaceBookCubitApp extends Cubit<FaceBookStateApp>{
  FaceBookCubitApp() : super(InitialAppState());
 static FaceBookCubitApp get(context)=>BlocProvider.of(context);

int currentIndex=0;
bool isDark=false;
void changeThemeMode(){
   isDark = !isDark;
   emit(ChangeThemeModeAppState());
}

void changeCurrentIndex(index){
  currentIndex=index;
  emit(ChangeCurrentIndexAppState());
}
List<Widget> screen=[
  HomeScreen(),
  GroupsScreen(),
  LiveScreen(),
  ShopScreen(),
  NotificationScreen(),
  SettingsScreen(),
  ];
}