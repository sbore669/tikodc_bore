import 'package:flutter/material.dart';
// import 'package:tikodc/publicat/mypub2.dart';
// import 'package:tikodc/publicat/mypub3.dart';
// import 'package:tikodc/publicat/mypub4.dart';
// import '../publicat/mypub1.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:video_player/video_player.dart';
import 'dart:math' as math;

// class UserAcceuilpage extends StatelessWidget {
//   final _controller = PageController(initialPage: 0);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         controller: _controller,
//         scrollDirection: Axis.vertical,
//         children: [
//           Mypub1(),
//           Mypub2(),
//           Mypub3(),
//           Mypub4(),
//         ],
//       ),
//     );
//   }
// }
class UserAcceuilpage extends StatelessWidget {
  final _controller = PageController(initialPage: 0);
  final List<Map> tikelement = [
    {
      "video": "assets/videos/video_1.mp4",
    },
    {
      "video": "assets/videos/video_2.mp4",
    },
    {
      "video": "assets/videos/video_3.mp4",
    },
    {
      "video": "assets/videos/video_4.mp4",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: double.infinity,
        scrollDirection: Axis.vertical,
        viewportFraction: 1.0,
      ),
      items: tikelement.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              color: const Color(0xFF141518),
              child: Stack(
                children: [
                  VideoWidget(videoUrl: item["video"]),
                  const Postcontent()
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class VideoWidget extends StatefulWidget {
  const VideoWidget({super.key, required this.videoUrl});
  final String videoUrl;

  @override
  _VideoWidgetState createState() => _VideoWidgetState(this.videoUrl);
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  final String videoUrl;
  _VideoWidgetState(this.videoUrl);

  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(videoUrl)
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.play;
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}

class Postcontent extends StatelessWidget {
  const Postcontent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          padding: const EdgeInsets.only(top: 40),
          // color: Colors.blue,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text(
              'Folowing',
              style: TextStyle(
                color: Colors.white54,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 20),
            Text(
              'For you',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ]),
        ),
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: Container(
                //color: Colors.red.withOpacity(0.5),
                padding: const EdgeInsets.all(10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '@ODK_Bore',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      const Text(
                        "Orange Digital Center Mali develelopper Fullstack #Mali #Orange @Yeah okldo c'est très simple @_Leweeskys ",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Icon(
                            Icons.music_note,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Gaspi Double Artiste - Double 7/* yeah',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ]),
              ),
            ),
            Container(
              width: 80,
              // color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 80,
                    // color: Colors.blue,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: const CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/ph2.jpg'),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(Icons.add, color: Colors.white, size: 15),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    // color: Colors.teal,
                    child: Column(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.white.withOpacity(0.85),
                          size: 45,
                        ),
                        const Text(
                          '25.0k',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    // color: Colors.teal,
                    child: Column(
                      children: [
                        Icon(
                          Icons.chat,
                          color: Colors.white.withOpacity(0.85),
                          size: 45,
                        ),
                        const Text(
                          '25.0k',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    // color: Colors.teal,
                    child: Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.white.withOpacity(0.85),
                          size: 45,
                        ),
                        const Text(
                          '25.0k',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  const AnimatedLogo(),
                ],
              ),
            )
          ],
        ))
      ],
    );
  }
}

class AnimatedLogo extends StatefulWidget {
  const AnimatedLogo({Key? key}) : super(key: key);

  @override
  _AnimatedLogoState createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Container(
        height: 45,
        width: 45,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: const DecorationImage(
            image: AssetImage("assets/images/disc_icon.png"),
          ),
        ),
        child: Image.asset('assets/images/tiktok_icon.png'),
      ),
    );
  }
}
