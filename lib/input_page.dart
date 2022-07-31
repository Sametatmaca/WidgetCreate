import 'package:flutter/material.dart';

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
          style: TextStyle(color: Colors.black54),
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
                    child: MyContainerWidget(),
                  ),
                  Expanded(
                    child: MyContainerWidget(color: Colors.yellow,),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyContainerWidget( ),
            ),
            Expanded(
              child: MyContainerWidget(color: Colors.amber,),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainerWidget(color: Colors.deepOrangeAccent,),
                  ),
                  Expanded(
                    child: MyContainerWidget(color: Colors.green,),
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

  MyContainerWidget({ this.color=Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
