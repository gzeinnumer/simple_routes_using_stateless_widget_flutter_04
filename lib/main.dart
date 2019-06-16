import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new HomePage(),
    routes: <String, WidgetBuilder>{
      //daftarkan dulu route nya, nama sesuai nama klass yang akan di panggil
      "/SecondPage":(BuildContext contex) => new SecondPage(),
      "/HomePage":(BuildContext contex) => new HomePage()
    },
  ));
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Home Page Zein"),backgroundColor: Colors.deepOrange,),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.favorite, color: Colors.redAccent,),
                iconSize: 70.0,
                onPressed: () {
                  Navigator.of(context).pushNamed("/SecondPage");
                }
              ,)
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Second Page Zein"), backgroundColor: Colors.deepPurple,),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.home, color: Colors.blue,),
                iconSize: 70.0,
                //dengan fungsi
                onPressed: (){
                  myOnPress(context);
                  // Navigator.of(context).pushNamed("/HomePage");
                },
              ),
              new Text("Halaman ke 2", style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic))
            ],
          ),),),
    );
  }

  void myOnPress(BuildContext context){
    Navigator.of(context).pop(true);
  }
}