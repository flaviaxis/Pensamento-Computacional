import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildItem(),
    );
  }

  _buildItem() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildHours(),
              _buildContent()
            ],
          ),
        ),
      ),
    );
  }

  _buildHours() {
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
     // child: Text("09:00 AM - 10:00 AM"),
    );
  }

  _buildContent() {
    return Row(
      children: <Widget>[
        _buildImg(),
        _buildTexts()
      ],
    );
  }

  _buildImg() {
    return Container(
      width: 80,
      height: 80,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
        child: Image.network(
          "https://diarioescola.com.br/wp-content/uploads/2019/05/PC-brain2-1030x1030.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  _buildTexts() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Pensamento Computacional.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                fontSize: 16
              ),),
            //Text("Mr Bean."),
            //Text("Duration."),
          ],
        ),
      ),
    );
  }

}


