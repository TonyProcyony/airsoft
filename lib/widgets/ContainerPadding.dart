import 'package:flutter/material.dart';

class ContainerPadding extends StatelessWidget {
  const ContainerPadding(
      {super.key, this.xPadding, this.yPadding, required this.widget});

  final Widget? widget;
  final double? xPadding;
  final double? yPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: yPadding == null ? 0 : yPadding!,
        horizontal: xPadding == null ? 5 : xPadding!,
      ),
      margin: EdgeInsets.symmetric(
        vertical: yPadding == null ? 0 : yPadding!,
        horizontal: xPadding == null ? 5 : xPadding!,
      ),
      child: widget,
    );
  }
}
