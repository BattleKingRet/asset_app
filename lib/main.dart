import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:video_player/video_player.dart';
import 'local.dart';
import 'package:chewie/chewie.dart';
import 'playlist.dart';

void main() {
  runApp(HomePage());
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        backgroundColor: Colors.lightGreen.shade100,
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
        appBar: new AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            iconTheme: new IconThemeData(color: Color(0xFF18D191))),
        body: MainContent(),
      )
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
              child: new Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  new Text(
                    "VideoApp",
                    style: new TextStyle(
                      fontSize: 30.0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Local(
                              videoPlayerController: VideoPlayerController.asset(
                                'videos/VID-20180101-WA0002.mp4'
                              ),
                              looping: true,
                            ),
                            ));
                      },
                      child: new Container(
                        height: 100.0,
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            color: Color(0xFFFD7384)),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                              Icons.folder,
                              color: Colors.white,
                            ),
                            new Text("Local",
                                style: new TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                  )),
                  new Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Category()
                            //Local(
                             // videoPlayerController: VideoPlayerController.asset(
                               // 'videos/VID-20180101-WA0002.mp4'
                              //),
                             // looping: true,
                           // ),
                            ));
                      },
                      child: new Container(
                        height: 100.0,
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            color: Color(0XFF2BD093)),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                              Icons.open_in_browser,
                              color: Colors.white,
                            ),
                            new Text("Online",
                                style: new TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                  )),
                  new Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Local(
                              videoPlayerController: VideoPlayerController.asset(
                                'videos/videoplayback.mp4'
                              ),
                              looping: true,
                            ),
                            ));
                      },
                      child: new Container(
                        height: 100.0,
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            color: Color(0XFF53CEDB)),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                              Icons.history,
                              color: Colors.white,
                            ),
                            new Text("Recently added",
                                style: new TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                  )),
                ],
              ),
              new SizedBox(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                      child: new Text("Trending",
                          style: new TextStyle(fontSize: 18.0))),
                  new Expanded(
                      child: new Text(
                    "View All",
                    style: new TextStyle(color: Color(0XFF2BD093)),
                    textAlign: TextAlign.end,
                  ))
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                    child: Container(
                      height: 150.0,
                      child: new Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Local(
                              videoPlayerController: VideoPlayerController.asset(
                                'videos/VID-20180101-WA0002.mp4'
                              ),
                              looping: true,
                            ),
                            ));
                      },
                            child: new Container(
                              height: 100.0,
                              child: Card(
                                child: Image.asset('videos/r6o.jpg')
                              ),
                            ),
                          ),
                          new Text(
                            "R6 Siege gameplay",
                            style: new TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  new SizedBox(
                    width: 5.0,
                  ),
                  new Expanded(
                    child: Container(
                      height: 150.0,
                      child: new Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Local(
                              videoPlayerController: VideoPlayerController.asset(
                                'videos/short.mp4'
                              ),
                              looping: true,
                            ),
                            ));
                      },
                            child: new Container(
                              height: 100.0,
                              child: Card(
                                child: Image.asset('videos/pipo.jpg'),
                              ),
                            //  decoration: new BoxDecoration(
                            //      borderRadius: new BorderRadius.circular(5.0),
                            //      image: new DecorationImage(
                            //          image: new NetworkImage(
                            //              'https://pawanjewellers.in/wp-content/uploads/2016/09/Jewellery-new.jpg'),
                            //          fit: BoxFit.cover)),
                            ),
                          ),
                          new Text("A short film ",
                              style: new TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                  ),
                  new SizedBox(
                    width: 5.0,
                  ),
                  new Expanded(
                    child: Container(
                      height: 150.0,
                      child: new Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Local(
                              videoPlayerController: VideoPlayerController.asset(
                                'videos/videoplayback.mp4'
                              ),
                              looping: true,
                            ),
                            ));
                      },
                            child: new Container(
                              height: 100.0,
                              child: Card(
                                child: Image.asset('videos/cattoo.jpeg'),
                              ),
                              //decoration: new BoxDecoration(
                              //    borderRadius: new BorderRadius.circular(5.0),
                              //    image: new DecorationImage(
                              //        image: new Image.asset('ece.jpg'),
                              //        fit: BoxFit.cover)),
                            ),
                          ),
                          new Text('Funny cat video',
                              style: new TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              new SizedBox(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                      child: new Text("Playlists",
                          style: new TextStyle(fontSize: 18.0))),
                  new Expanded(
                      child: new Text(
                    "View All",
                    style: new TextStyle(color: Color(0XFF2BD093)),
                    textAlign: TextAlign.end,
                  ))
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                    child: Container(
                      height: 150.0,
                      child: new Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Local(
                              videoPlayerController: VideoPlayerController.asset(
                                'videos/VID-20180101-WA0002.mp4'
                              ),
                              looping: true,
                            ),
                            ));
                      },
                            child: new Container(
                              height: 100.0,
                              child: Card(
                                child: Image.asset('videos/harry.png'),
                              ),
                        //      decoration: new BoxDecoration(
                        //          borderRadius: new BorderRadius.circular(5.0),
                        //          image: new DecorationImage(
                        //              image: new NetworkImage(
                        //                  'https://s1.cdn.autoevolution.com/images/gallery/LEXUS-HS-250h-3892_26.jpg'),
                        //              fit: BoxFit.cover)),
                            ),
                          ),
                          new Text(
                            "Harry Potter at home Playlist",
                            style: new TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  new SizedBox(
                    width: 5.0,
                  ),
                  new Expanded(
                    child: Container(
                      height: 150.0,
                      child: new Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Local(
                              videoPlayerController: VideoPlayerController.asset(
                                'videos/VID-20180101-WA0002.mp4'
                              ),
                              looping: true,
                            ),
                            ));
                      },
                            child: new Container(
                              height: 100.0,
                              child: Card(
                                child: Image.asset('videos/op.png'),
                              ),
                           //   decoration: new BoxDecoration(
                            //      borderRadius: new BorderRadius.circular(5.0),
                            //      image: new DecorationImage(
                            //          image: new NetworkImage(
                            //              'https://d3tvpxjako9ywy.cloudfront.net/blog/content/uploads/2015/03/company-culture-why-it-matters.jpg?av=6219bb831e993c907ca622baef062556'),
                            //          fit: BoxFit.cover)),
                            ),
                          ),
                          new Text("Hits",
                              style: new TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                  ),
                  new SizedBox(
                    width: 5.0,
                  ),
                  new Expanded(
                    child: Container(
                      height: 150.0,
                      child: new Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Local(
                              videoPlayerController: VideoPlayerController.asset(
                                'videos/VID-20180101-WA0002.mp4'
                              ),
                              looping: true,
                            ),
                            ));
                      },
                            child: new Container(
                              height: 100.0,
                              child: Card(
                                child: Image.asset('videos/V.png')
                              ),
                            //  decoration: new BoxDecoration(
                              //    borderRadius: new BorderRadius.circular(5.0),
                                //  image: new DecorationImage(
                                  //    image: new NetworkImage(
                                    //      'http://images4.fanpop.com/image/photos/21600000/Electronics-hd-wallpaper-21627626-1920-1200.jpg'),
                                      //fit: BoxFit.cover)),
                            ),
                          ),
                          new Text('Playlist V',
                              style: new TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              new SizedBox(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                      child: new Text("Liked Videos",
                          style: new TextStyle(fontSize: 18.0))),
                  new Expanded(
                      child: new Text(
                    "View All",
                    style: new TextStyle(color: Color(0XFF2BD093)),
                    textAlign: TextAlign.end,
                  ))
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                    child: Container(
                      height: 150.0,
                      child: new Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Local(
                              videoPlayerController: VideoPlayerController.asset(
                                'videos/VID-20180101-WA0002.mp4'
                              ),
                              looping: true,
                            ),
                            ));
                      },
                            child: new Container(
                              height: 100.0,
                              child: Card(
                                child: Image.asset('videos/pip.jpg'),
                              ),
                          //    decoration: new BoxDecoration(
                            //      borderRadius: new BorderRadius.circular(5.0),
                              //    image: new DecorationImage(
                                //      image: new NetworkImage(
                                  //        'https://www.howtogeek.com/wp-content/uploads/2016/01/steam-and-xbox-controllers.jpg'),
                                    //  fit: BoxFit.cover)),
                            ),
                          ),
                          new Text(
                            "A short Film",
                            style: new TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  new SizedBox(
                    width: 5.0,
                  ),
                  new Expanded(
                    child: Container(
                      height: 150.0,
                      child: new Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Local(
                              videoPlayerController: VideoPlayerController.asset(
                                'videos/VID-20180101-WA0002.mp4'
                              ),
                              looping: true,
                            ),
                            ));
                      },
                            child: new Container(
                              height: 100.0,
                              child: Card(
                                child: Image.asset('videos/innocent.png'),
                              ),
                     //         decoration: new BoxDecoration(
                       //           borderRadius: new BorderRadius.circular(5.0),
                         //         image: new DecorationImage(
                           //           image: new NetworkImage(
                             //             'https://pawanjewellers.in/wp-content/uploads/2016/09/Jewellery-new.jpg'),
                               //       fit: BoxFit.cover)),
                            ),
                          ),
                          new Text("Top Cats Compilation ",
                              style: new TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                  ),
                  new SizedBox(
                    width: 5.0,
                  ),
                  new Expanded(
                    child: Container(
                      height: 150.0,
                      child: new Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Local(
                              videoPlayerController: VideoPlayerController.asset(
                                'videos/VID-20180101-WA0002.mp4'
                              ),
                              looping: true,
                            ),
                            ));
                      },
                            child: new Container(
                                height: 100.0,
                                child: Card(
                                  child: Image.asset('videos/3d.png')
                                )
                    //            decoration: new BoxDecoration(
                      //              borderRadius: new BorderRadius.circular(5.0),
                        //            image: new DecorationImage(
                          //              image: new NetworkImage(
                            //                'http://images4.fanpop.com/image/photos/21600000/Electronics-hd-wallpaper-21627626-1920-1200.jpg'),
                              //          fit: BoxFit.cover)),
                              ),
                          ),
                          new Text('3-D art Tutorial',
                              style: new TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
        )
      ],
    );
  }
}
/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('VideoApp'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: Card(
                color: Colors.red,
                child: Text('hmm'),
              ),
            ),
            Container(
              child: Card(
                child: Text('aaaa'),
              )
            )
          ],
        ),
        backgroundColor: Colors.blue.shade200,
      ),
    );
  }
}*/