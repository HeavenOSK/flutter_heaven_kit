import 'package:flutter/material.dart';

/// A widget that draws a box with specialized size.
///
/// This widget is [Placeholder]'s wrapper.
class SizedPlaceHolder extends StatelessWidget {
  const SizedPlaceHolder({
    this.height,
    this.heightFactor,
    this.width,
    this.widthFactor,
    this.color = const Color(0xFF455A64),
    this.strokeWidth = 2.0,
    Key key,
  })  : assert(height == null || heightFactor == null),
        assert(width == null || widthFactor == null),
        assert(color != null),
        assert(strokeWidth != null),
        super(key: key);

  final double height;
  final double width;
  final double heightFactor;
  final double widthFactor;
  final Color color;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: heightFactor,
      widthFactor: widthFactor,
      child: SizedBox(
        height: height,
        width: width,
        child: Placeholder(
          color: color,
          strokeWidth: strokeWidth,
        ),
      ),
    );
  }
}
