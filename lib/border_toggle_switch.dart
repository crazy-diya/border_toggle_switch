library border_toggle_switch;

import 'package:flutter/material.dart';

class BorderToggleSwitch extends StatefulWidget {
  final String? activeToggleName;
  final String? inActiveToggleName;
  final double? radius;
  final double? topRightRadius;
  final double? bottomRightRadius;
  final double? topLeftRadius;
  final double? bottomLeftRadius;
  final bool? isBorder;
  final Color? bottomBorderColor;
  final double? borderSize;
  final Color? activeBackgroundColor;
  final Color? inActiveBackgroundColor;
  final double? height;
  final double? width;
  final TextStyle? activeToggleNameStyle;
  final TextStyle? inActiveToggleNameStyle;
  final Function(String?)? isClicked;


  const BorderToggleSwitch({
    this.radius,
    this.height = 37,
    this.width = double.infinity,
    this.borderSize = 3,
    this.isBorder = true,
    this.activeBackgroundColor,
    @required this.bottomBorderColor,
    @required this.activeToggleName,
    this.bottomLeftRadius = 8,
    this.bottomRightRadius = 8,
    this.inActiveBackgroundColor,
    @required this.inActiveToggleName,
    this.topLeftRadius = 8,
    this.topRightRadius = 8,
    this.activeToggleNameStyle,
    this.inActiveToggleNameStyle,
    required this.isClicked,
    Key? key,
  }) : super(key: key);

  @override
  State<BorderToggleSwitch> createState() => _BorderToggleSwitchState();
}

class _BorderToggleSwitchState extends State<BorderToggleSwitch> {
  bool saved = true;
  bool unSaved = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.radius!)),
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    saved = true;
                    unSaved = false;
                    widget.isClicked!("left");
                  });
                },
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: saved
                        ? widget.activeBackgroundColor
                        : widget.inActiveBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(widget.topLeftRadius!),
                      bottomLeft: Radius.circular(widget.bottomLeftRadius!),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: double.infinity,
                    width: double.infinity,
                    decoration: widget.isBorder!
                        ? BoxDecoration(
                      border: saved
                          ? Border(
                        bottom: BorderSide(
                          width: widget.borderSize!,
                          color: widget.bottomBorderColor!,
                        ),
                      )
                          : const Border(),
                    )
                        : const BoxDecoration(),
                    child: Text(widget.activeToggleName!,
                        style: saved
                            ? widget.activeToggleNameStyle
                            : widget.inActiveToggleNameStyle),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    saved = false;
                    unSaved = true;
                    widget.isClicked!("right");
                  });
                },
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: unSaved
                        ? widget.activeBackgroundColor
                        : widget.inActiveBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(widget.topRightRadius!),
                      bottomRight: Radius.circular(widget.bottomRightRadius!),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: double.infinity,
                    width: double.infinity,
                    decoration: widget.isBorder!
                        ? BoxDecoration(
                      border: unSaved
                          ? Border(
                        bottom: BorderSide(
                          width: widget.borderSize!,
                          color: widget.bottomBorderColor!,
                        ),
                      )
                          : const Border(),
                    )
                        : const BoxDecoration(),
                    child: Text(
                      widget.inActiveToggleName!,
                      style: unSaved
                          ? widget.activeToggleNameStyle
                          : widget.inActiveToggleNameStyle,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

