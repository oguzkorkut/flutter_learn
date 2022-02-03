import 'package:flutter/material.dart';
import 'package:flutter_learn1/work2/core/enums/duration_enum.dart';
import 'package:flutter_learn1/work2/core/image_manager.dart';

class ImageOpacity extends StatefulWidget {
  // ImageOpacity({Key? key}) : super(key: key);

  // final ImageManager imageManager;

  final String url;

  // const ImageOpacity({Key? key, required this.imageManager}) : super(key: key);
  const ImageOpacity({Key? key, required this.url}) : super(key: key);

  @override
  State<ImageOpacity> createState() => _ImageOpacityState();
}

class _ImageOpacityState extends State<ImageOpacity> {
  bool _isOpacity = false;

  @override
  void initState() {
    super.initState();
  }

  Future<void> waitForTime() async {
    await Future.delayed(DurationEnums.NORMAL.time);

    setState(() {
      _isOpacity = true;
    });
  }

  double get opacityValue => _isOpacity ? 0 : 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: opacityValue,
      duration: DurationEnums.NORMAL.time,
      // child: Image.network(widget.imageManager.randomImage),
      child: Image.network(widget.url),
    );
  }
}
