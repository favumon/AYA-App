import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//Match action buttons
class CustomIconButton extends StatefulWidget {
  final String iconNormal;
  final String iconPressed;
  final void Function() onTapped;

  const CustomIconButton({this.iconNormal, this.iconPressed, this.onTapped});

  @override
  _CustomIconButtonState createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  bool onTappedDown = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          onTappedDown = true;
        });
      },
      onTapUp: (details) => setState(() {
        onTappedDown = false;
      }),
      onTapCancel: () => setState(() {
        onTappedDown = false;
      }),
      child: Container(
        width: 140,
        child: IconButton(
            onPressed: widget.onTapped,
            iconSize: 60,
            icon: onTappedDown
                ? SvgPicture.asset(widget.iconPressed)
                : SvgPicture.asset(widget.iconNormal)),
      ),
    );
  }
}
