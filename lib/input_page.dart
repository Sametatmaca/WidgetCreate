import 'package:flutter/material.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'icon_gender.dart';
import 'my_container.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainerWidget(
                      child: Text('Merhaba Dünya',
                          style: TextStyle(
                              color: Colors.deepOrangeAccent, fontSize: 25.0)),
                    ),
                  ),
                  Expanded(
                    child: MyContainerWidget(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyContainerWidget(),
            ),
            Expanded(
              child: MyContainerWidget(),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainerWidget(
                      child: Column(children: [
                        Expanded(
                          child: IconGender(gender: 'ERKEK',icon: FontAwesomeIcons.venus),
                        ),
                      ]),
                    ),
                  ),
                  Expanded(
                    child: MyContainerWidget(
                      child: Column(children: [
                        Expanded(
                          child: IconGender(gender: 'KADIN',icon: FontAwesomeIcons.mars),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


