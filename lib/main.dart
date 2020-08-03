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
                                child: Image.asset('videos/pipo.jpg'),
                              ),
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
                              videoPlayerController: VideoPlayerController.network(
                                'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4'
                              //  'videos/VID-20180101-WA0002.mp4'
                              ),
                             // looping: true,
                            ),
                            ));
                      },
                            child: new Container(
                              height: 100.0,
                              child: Card(
                                child: Image.asset('videos/innocent.png'),
                              ),
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
