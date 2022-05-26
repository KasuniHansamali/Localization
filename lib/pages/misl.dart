import 'package:flutter/material.dart';
import 'package:localization/localization/language_constants.dart';



class Misl extends StatefulWidget {
  const Misl({Key? key}) : super(key: key);

  @override
  State<Misl> createState() => _MislState();
}

class _MislState extends State<Misl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text(getTranslated(context, 'about')??""),
        ),
      ),
    );
  }
}
