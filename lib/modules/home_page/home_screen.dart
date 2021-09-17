
import 'package:flutter/material.dart';
import 'package:mr_ahmed_salah_task_facebook/modules/three_home_screens/full_desktop_home_page.dart';
import 'package:mr_ahmed_salah_task_facebook/modules/three_home_screens/full_phone_home_page.dart';
import 'package:mr_ahmed_salah_task_facebook/modules/three_home_screens/full_tablet_home_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ListView(
          children: [
            fullPhonePageHere(context,controller),
          ]
      ),
      tablet: ListView(
          children: [
           Row(
             children: [
               Expanded(flex: 2,child: fullTabletPageHere(context,controller)),
             ],
           )
          ]
      ),
      desktop:ListView(
          children: [
            Row(
              children: [
                Expanded(flex: 2,child: fullDesktopPageHere(context,controller)),
              ],
            )
          ]
      ),
    );
  }
}
