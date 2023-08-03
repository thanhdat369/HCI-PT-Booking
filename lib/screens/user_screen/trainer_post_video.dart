import 'dart:io';

// import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_button_size.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';
import 'package:hci_booking_pt/screens/user_screen/user_detail_exercise_video.dart';
import 'package:hci_booking_pt/theme/colors.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:video_player/video_player.dart';

import 'components/thank_you_dialog.dart';

class UserPostVideoScreen extends StatefulWidget {
  UserPostVideoScreen();
  @override
  State<StatefulWidget> createState() {
    return _UserPostVideoScreenState();
  }
}

class _UserPostVideoScreenState extends State<UserPostVideoScreen> {
  // VideoPlayerController _videoController;
  // ChewieController _chewieController;

  File _fileVideo;
  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    // _videoController =
        // VideoPlayerController.asset('asset/videos/exercises/squat.mp4');
  }

  @override
  void dispose() {
    // _videoController.dispose();
    // _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return UserScreenBackButton(
      title: "Post video",
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     if (this._fileVideo != null)
        //       this._videoController.value.initialized
        //           ? Chewie(
        //               controller: _chewieController,
        //             )
        //           : Container()
        //     else
        //       Text(
        //         "Choosing your video",
        //         style: TextStyle(fontSize: 18.0),
        //       ),
        //     RoundedButtonSize(
        //       width: size.width * 0.6,
        //       height: size.height * 0.07,
        //       press: () {
        //         _pickVideo();
        //       },
        //       text: "Pick your video",
        //     ),
        //     if (_fileVideo != null)
        //       RoundedButtonSize(
        //         width: size.width * 0.6,
        //         height: size.height * 0.07,
        //         press: () {
        //           if (this._fileVideo != null) {
        //             Navigator.of(context).pop();
        //           } else {}
        //         },
        //         text: "Finish",
        //       )
        //   ],
        ),
      ),
    );
  }

  _pickVideo() async {
    PickedFile pickedFile = await picker.getVideo(source: ImageSource.gallery);
    this._fileVideo = File(pickedFile.path);
    // this._videoController = VideoPlayerController.file(_fileVideo)
    //   ..initialize().then((_) {
    //     setState(() {});
    //     // _chewieController = ChewieController(
    //     //   videoPlayerController: _videoController,
    //     //   aspectRatio: 16 / 9,
    //     //   autoPlay: false,
    //     //   looping: true,
    //     //   // Try playing around with some of these other options:

    //     //   showControls: true,
    //     //   materialProgressColors: ChewieProgressColors(
    //     //     playedColor: MainColors.kMain,
    //     //     handleColor: MainColors.kMain,
    //     //     backgroundColor: MainColors.kMain,
    //     //     bufferedColor: MainColors.kSoftDark,
    //     //   ),

    //     //   placeholder: Container(
    //     //     color: MainColors.kSoftDark,
    //     //   ),
    //     //   autoInitialize: true,
    //     // );
    //     // _cameraVideoPlayerController.play();
    //   });
  }
}
