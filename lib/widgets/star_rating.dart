import 'package:flutter/material.dart';

class XLLStarRating extends StatefulWidget {
  final int itemCount;            //评分Item总个数
  final double maxRating;         //总分
  final double currentRating;     //得分
  final Color unselectedColor;    //未选中的颜色
  final Color selectedColor;      //选中的颜色
  final double size;              //尺寸大小
  final Widget unselectedWidget;  //未选中的Widget
  final Widget selectedWidget;    //选中的Widget

  XLLStarRating({
    this.itemCount = 5,
    this.maxRating = 10,
    this.currentRating,
    this.unselectedColor = Colors.red,
    this.selectedColor = Colors.red,
    this.size = 30,
    Widget unselectedWidget,
    Widget selectedWidget
  }) : unselectedWidget = Icon(Icons.star_border, color: unselectedColor, size: size),
        selectedWidget = Icon(Icons.star, color: selectedColor, size: size),
        assert(currentRating != null && currentRating < maxRating, 'currentRating是必传值，且小于maxRating');

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _XLLStarRatingState();
  }
}

class _XLLStarRatingState extends State<XLLStarRating> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: unselectedWidgetList(),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: selectedWidgetList(),
        )
      ],
    );
  }

  List<Widget> unselectedWidgetList() {
    return List.generate(widget.itemCount, (index) {
      return Icon(Icons.star_border, color: widget.unselectedColor, size: widget.size);
    });
  }

  List<Widget> selectedWidgetList() {
    Widget itemWidget = Icon(Icons.star, color: widget.selectedColor, size: widget.size);
    final List<Widget> selectedWidgets = [];
    //1.首先计算出整体的个数
    double oneValue = widget.maxRating / widget.itemCount;
    int fullCount = (widget.currentRating / oneValue).floor();
    print("满星星数量为:$fullCount");
    for (var i = 0; i < fullCount; i++) {
      selectedWidgets.add(itemWidget);
    }
    //2.计算出部分占的比例
    double leftWidth = (widget.currentRating / oneValue - fullCount) * widget.size;
    print("占比宽度为: $leftWidth");
    Widget halfWidget = ClipRect(
      clipper: XLLCustomClipper(leftWidth: leftWidth),
      child: itemWidget,
    );
    selectedWidgets.add(halfWidget);
    return selectedWidgets;
  }
}

class XLLCustomClipper extends CustomClipper<Rect> {
  final double leftWidth;
  XLLCustomClipper({ this.leftWidth });

  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTRB(0, 0, leftWidth, size.height);
  }

  @override
  bool shouldReclip(XLLCustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return oldClipper.leftWidth != leftWidth;
  }
}