import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tafi/data/video.dart';
import 'package:tafi/widgets/actions_toolbar.dart';
import 'package:tafi/widgets/video_description.dart';
import 'package:video_player/video_player.dart';

class VideoFeedScreen extends StatefulWidget {
  const VideoFeedScreen({Key? key}) : super(key: key);

  @override
  State<VideoFeedScreen> createState() => _VideoFeedScreenState();
}

class _VideoFeedScreenState extends State<VideoFeedScreen> {
  final List<String> videos = ["videos/intro.mp4", "videos/intro2.mp4"];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: PageController(
        initialPage: 0,
        viewportFraction: 1,
      ),
      itemCount: videos.length,
      onPageChanged: (index) {},
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Stack(children: [
          buildImages(videos[index]),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  VideoDescription("Shyam","VideoTitle","songInfo"),
                  ActionsToolbar("20k","40k",
                      "https://www.andersonsobelcosmetic.com/wp-content/uploads/2018/09/chin-implant-vs-fillers-best-for-improving-profile-bellevue-washington-chin-surgery.jpg"),
                ],
              ),
              SizedBox(height: 20)
            ],
          )
        ]);
      },
    );
  }

  Widget buildImages(String videos) => Container(
          // height: double.infinity,
          // width: double.infinity,
          child: VideoItem(
        videoPlayerController: VideoPlayerController.asset(
          videos,
        ),
        looping: false,
      ));
}

Widget videoCard(Video video) {
  return Stack(
    children: [
      video.controller != null
          ? GestureDetector(
              onTap: () {
                if (video.controller!.value.isPlaying) {
                  video.controller?.pause();
                } else {
                  video.controller?.play();
                }
              },
              child: SizedBox.expand(
                  child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: video.controller?.value.size.width ?? 0,
                  height: video.controller?.value.size.height ?? 0,
                  child: VideoPlayer(video.controller!),
                ),
              )),
            )
          : Container(
              color: Colors.black,
              child: Center(
                child: Text("Loading"),
              ),
            ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              VideoDescription(video.user, video.videoTitle, video.songName),
              ActionsToolbar(video.likes, video.comments,
                  "https://www.andersonsobelcosmetic.com/wp-content/uploads/2018/09/chin-implant-vs-fillers-best-for-improving-profile-bellevue-washington-chin-surgery.jpg"),
            ],
          ),
          SizedBox(height: 20)
        ],
      ),
    ],
  );
}
