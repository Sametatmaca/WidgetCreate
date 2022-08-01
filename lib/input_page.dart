import 'package:flutter/material.dart';
import 'package:awesome_icons/awesome_icons.dart';

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
                                color: Colors.deepOrangeAccent,
                                fontSize: 25.0)),
                        color: Colors.green),
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
                          child: Icon(
                            FontAwesomeIcons.venus,
                            size: 50,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: Text(
                            'Kadın',
                            style:
                                TextStyle(fontSize: 25, color: Colors.black54),
                          ),
                        )
                      ]),
                    ),
                  ),
                  Expanded(
                    child: MyContainerWidget(
                      child: Column(children: [
                        Expanded(
                          child: Icon(
                            FontAwesomeIcons.mars,
                            size: 50,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: Text(
                            'Erkek',
                            style:
                                TextStyle(fontSize: 25, color: Colors.black54),
                          ),
                        )
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

class MyContainerWidget extends StatelessWidget {
  final Color color;
  final Widget? child;

  MyContainerWidget({this.color = Colors.white, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: child,
        ),
      ),
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
