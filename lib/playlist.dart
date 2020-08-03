import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/rendering.dart';
import 'package:video_player/video_player.dart';
import 'main.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int _bottomNavIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: new BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            fixedColor: Color(0XFF29D091),
            currentIndex: _bottomNavIndex,
            onTap: (int index){
              setState((){
                _bottomNavIndex = index;
                print('dfbtbdf');
              });
            },
            
            items: [
              new BottomNavigationBarItem(
                title: new Text(''),
                icon: new Icon(Icons.home)
              ),
              new BottomNavigationBarItem(
                title: new Text(''),
                icon: new Icon(Icons.trending_up)
                
              ),
              new BottomNavigationBarItem(
                title: new Text(''),
                icon: new Icon(Icons.category)
              ),
             // new BottomNavigationBarItem(
              //  title: new Text(''),
            //    icon: new Icon(Icons.notifications)
            //  )

            ],
          ),
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text('Categories'),
          backgroundColor: Colors.greenAccent,
        ),
        body: Column(
          
        //  mainAxisAlignment: MainAxisAlignment.center,
        //  crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 275,
              child: Card(
                color: Colors.white,
                child: Image.asset('videos/gg.jpg'),
              ),
            ),
            Container(
              width: double.infinity,
              height: 250,
              child: Card(
                color: Colors.white,
                child: Image.asset('videos/greenfood.png'),
              )
            )
          ],
        ),
      //  backgroundColor: Colors.blue.shade200,
      ),
    );
  }
}