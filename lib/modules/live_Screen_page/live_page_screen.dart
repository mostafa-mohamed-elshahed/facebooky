import 'package:flutter/material.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("LiveScreen",style: Theme.of(context).textTheme.bodyText1,),
    );
  }
}
