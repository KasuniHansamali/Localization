import 'package:flutter/material.dart';
import 'package:localization/classes/language.dart';
import 'package:localization/localization/language_constants.dart';
import 'package:localization/main.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  void _changeLanguage(Language? language) async {
    Locale _locale = await setLocale(language!.languageCode);
    MyApp.setLocale(context, _locale);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome')

      ),

      body:
          Container(
            child: Center(
                child:
                DropdownButton<Language>(
                  icon: Icon(
                    Icons.language,
                    color: Colors.black,
                  ),
                  hint: Text(getTranslated(context, 'change_language')?? ""),
                  onChanged: (Language? language) {
                    _changeLanguage(language);
                  },
                  items: Language.languageList()
                      .map<DropdownMenuItem<Language>>(
                        (e) => DropdownMenuItem<Language>(
                      value: e,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            e.flag,
                            style: TextStyle(fontSize: 30),
                          ),
                          Text(e.name)
                        ],
                      ),
                    ),
                  )
                      .toList(),
                )
            ),
          )
      );

  }


}
