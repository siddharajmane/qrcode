import 'package:flutter/material.dart';
var a = 0;
class myapp2 extends StatefulWidget {
  @override
  _myapp2State createState() => _myapp2State();
}

class _myapp2State extends State<myapp2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "QR code",
      debugShowCheckedModeBanner: false,
      home: Myapp1(),
      theme: ThemeData(
       brightness: Brightness.dark,
          accentColor: Colors.red
      ),
    );
  }
}




class Myapp1 extends StatefulWidget {
  @override
  _Myapp1State createState() => _Myapp1State();
}

class _Myapp1State extends State<Myapp1> {
  @override
  setbanner() {
    setState(() {
      a = 0;
    });
  }

  increment() {
    setState(() {
      for (var i = 0; i < 10; i++) {
        a++;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.plus_one),
            onPressed: increment),
        appBar: AppBar(
          title: Text("QR attendance"),
        ),
        body: Center(
            child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(a.toString(),
                      style: TextStyle(fontSize: 50.0),
                    ),
                    Container(
                        padding: EdgeInsets.all(10.0),
                        child: RaisedButton(
                          color: Colors.amber,
                          child: Text("Reset"),
                          onPressed: setbanner,
                        )
                    )
                  ],
                )
            )
        )
    );
  }
}