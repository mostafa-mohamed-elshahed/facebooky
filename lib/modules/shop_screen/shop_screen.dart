import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("ShopScreen",style: Theme.of(context).textTheme.bodyText1,),
    );
  }
}
