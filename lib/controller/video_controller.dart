// import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hci_booking_pt/theme/colors.dart';
// import 'package:video_player/video_player.dart';

class ChewieVideoPlayer extends StatefulWidget {
  ChewieVideoPlayer(
      {this.title = 'Chewie Demo',
      this.asset = 'asset/videos/exercises/squat.mp4'});

  final String title;
  final String asset;

  @override
  State<StatefulWidget> createState() {
    return _ChewieVideoPlayerState();
  }
}

class _ChewieVideoPlayerState extends State<ChewieVideoPlayer> {
  TargetPlatform _platform;
  // VideoPlayerController _videoController;
  // ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    // _videoController = VideoPlayerController.asset(widget.asset);
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
    // _videoController.dispose();
    // _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // child: Chewie(
      //   controller: _chewieController,
      // ),
    );
  }
}
