import 'package:flutter/material.dart';

class XLLDashedLine extends StatelessWidget {
  final Axis axis;
  final double dashedWidth;
  final double dashedHeight;
  final double totalsize;
  final double itemSpacing;
  final Color dashedColor;
  XLLDashedLine({
    this.axis = Axis.horizontal,
    this.dashedWidth = 8,
    this.dashedHeight = 1,
    this.totalsize = 200,
    this.itemSpacing = 5,
    this.dashedColor = const Color(0xffff0000)
  }) : assert((axis == Axis.horizontal && dashedWidth < totalsize) || (axis == Axis.vertical && dashedHeight < totalsize),
  '水平方向下dashedWidth不能超出总宽度 && 垂直方向下dashedHeight不能超出总高度');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double dashedSize = axis == Axis.horizontal ? dashedWidth : dashedHeight;
    int count = (totalsize / (itemSpacing + dashedSize)).floor();
    return Container(
      width: axis == Axis.horizontal ? totalsize : dashedHeight,
      height: axis == Axis.horizontal ? dashedHeight : totalsize,
      child: Flex(
        direction: axis,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(count, (index) {
          return SizedBox(
            width: dashedWidth,
            height: dashedHeight,
            child: DecoratedBox(decoration: BoxDecoration(color: dashedColor)),
          );
        }),
      ),
    );
  }
}
