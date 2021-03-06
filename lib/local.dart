import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/rendering.dart';
import 'package:video_player/video_player.dart';

class Local extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;

  Local({
    @required this.videoPlayerController, 
    this.looping, 
    Key key, 
  }) : super(key: key);
  
  @override
  _LocalState createState() => _LocalState();
}

class _LocalState extends State<Local> {
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 16/9,
      autoInitialize: true,
      looping: widget.looping,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
            ),
          );
        
      },
    );
  }


 @override
 Widget build(BuildContext context) {
   return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Chewie(
      controller: _chewieController,
    ),
  );
 }
 @override 
 void dispose() {
   super.dispose();
   widget.videoPlayerController.dispose();
   _chewieController.dispose();
 }
}