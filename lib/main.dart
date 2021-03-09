import 'package:flutter/material.dart';
//Page Import
import './beranda.dart' as beranda;
import './product_list.dart' as product_list;

//Main method
void main() {
  runApp(new MaterialApp(
    title: "Kedai Panen",
    home: new MyApp(),
  ));
}

//Class MyApp with StatefullWidget
class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

//State MyApp from MyApp Class
class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{
  TabController myController;

  //InitState Method
  @override
  void initState(){
    myController = new TabController(vsync: this, length: 2);
    super.initState();
  }

  //Widget
  @override
  Widget build(BuildContext context){
    //Scaffold widget
    return Scaffold(      
      body: new TabBarView(
          controller: myController,
          children: <Widget>[
            //Widget that I want to show, or we can say the page
              new beranda.Beranda(),
              new product_list.ProductList(),
          ],
        ),

        //Using bottom navigation for Beranda and ListProduct
        bottomNavigationBar: new Material(
          color: Colors.green,
          child: new TabBar(
            controller: myController,
            tabs: <Widget>[
              //Using icon 
              new Tab(icon: new Icon(Icons.home)), //Icon for Beranda
              new Tab(icon: new Icon(Icons.list)) //Icon for ListProduct
            ],
            ),
        ),
    );
  }
}