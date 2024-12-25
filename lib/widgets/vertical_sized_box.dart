import 'package:flutter/material.dart';

class VerticalSizedBox extends StatelessWidget {
  final double height;
  const VerticalSizedBox({
    super.key,
    this.height = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
