import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';
import 'package:hci_booking_pt/theme/colors.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class TrainerPostVideoScreen extends StatefulWidget {
  TrainerPostVideoScreen({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _TrainerPostVideoScreenState();
  }
}

class _TrainerPostVideoScreenState extends State<TrainerPostVideoScreen> {
  VideoPlayerController _videoController;
  ChewieController _chewieController;

  File _fileVideo;
  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _videoController =
        VideoPlayerController.asset('asset/videos/exercises/squat.mp4');
    // VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
    // _chewieController = ChewieController(
    //   videoPlayerController: _videoController,
    //   aspectRatio: 16 / 9,
    //   autoPlay: true,
    //   looping: true,
    //   // Try playing around with some of these other options:

    //   showControls: true,
    //   materialProgressColors: ChewieProgressColors(
    //     playedColor: MainColors.kMain,
    //     handleColor: MainColors.kMain,
    //     backgroundColor: MainColors.kMain,
    //     bufferedColor: MainColors.kSoftDark,
    //   ),

    //   placeholder: Container(
    //     color: MainColors.kSoftDark,
    //   ),
    //   autoInitialize: true,
    // );
  }

  @override
  void dispose() {
    _videoController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return UserScreenBackButton(
      title: "Post video",
      child: Container(
        child: Column(
          children: [
            if (this._fileVideo != null)
              this._videoController.value.initialized
                  ? Chewie(
                      controller: _chewieController,
                    )
                  : Container()
            else
              Text(
                "Click on Pick Video to select video",
                style: TextStyle(fontSize: 18.0),
              ),
            RaisedButton(
              onPressed: () {
                _pickVideo();
              },
              child: Text("Pick your video"),
            )
          ],
        ),
      ),
    );
  }

  _pickVideo() async {
    PickedFile pickedFile = await picker.getVideo(source: ImageSource.gallery);
    this._fileVideo = File(pickedFile.path);
    this._videoController = VideoPlayerController.file(_fileVideo)
      ..initialize().then((_) {
        setState(() {});
        _chewieController = ChewieController(
          videoPlayerController: _videoController,
          aspectRatio: 16 / 9,
          autoPlay: false,
          looping: true,
          // Try playing around with some of these other options:

          showControls: true,
          materialProgressColors: ChewieProgressColors(
            playedColor: MainColors.kMain,
            handleColor: MainColors.kMain,
            backgroundColor: MainColors.kMain,
            bufferedColor: MainColors.kSoftDark,
          ),

          placeholder: Container(
            color: MainColors.kSoftDark,
          ),
          autoInitialize: true,
        );
        // _cameraVideoPlayerController.play();
      });
  }
}
