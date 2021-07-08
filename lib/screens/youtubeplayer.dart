import 'package:flutter/material.dart';
import 'package:task_app/screens/walkthrough.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayers extends StatefulWidget {
  @override
  _YoutubePlayersState createState() => _YoutubePlayersState();
}

class _YoutubePlayersState extends State<YoutubePlayers> {
  static String videoID = 'dFKhWe2bBkM';

  // YouTube Video Full URL : https://www.youtube.com/watch?v=dFKhWe2bBkM&feature=emb_title&ab_channel=BBKiVines

  // ignore: unused_field
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: videoID,
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Youtube"),
        actions: [
          IconButton(
              icon: Icon(Icons.forward),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WalkthroughView()));
              }),
        ],
      ),
      body: Container(
        child: YoutubePlayer(
          controller: _controller,
          liveUIColor: Colors.amber,
          showVideoProgressIndicator: true,
        ),
      ),
    );
  }
}
