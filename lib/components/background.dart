import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../utils/strings_manager.dart';

class Background extends StatefulWidget {
  const Background({Key? key}) : super(key: key);

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  @override
  void dispose() {
    _stopAnimation();
    super.dispose();
  }

  void _startAnimation() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        offsetX -=
            5; // Adjust this value to control the speed and direction of the animation.
      });
    });
  }

  void _stopAnimation() {
    _timer?.cancel();
  }

  double offsetX = 0.0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return SizedBox(
        height: height,
        child: Stack(children: [
          CachedNetworkImage(
            imageUrl: UrlStrings.homeBackgroundUrl,
            fit: BoxFit.fitHeight,
          ),
          Opacity(
            opacity:
                0.9, // Adjust the opacity value (0.0 - fully transparent, 1.0 - fully opaque)
            child: Container(
              color: Colors.black, // Adjust the color for the overlay effect
            ),
          ),
        ]));
  }
}
