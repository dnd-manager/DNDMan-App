import 'package:dndman_app/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockholm/stockholm.dart';

class DNDManButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final double? width;
  final double height;
  final EdgeInsets padding;
  final String? tooltip;
  final bool flat;

  const DNDManButtonWidget(
      {Key? key,
      this.tooltip,
      this.width,
      this.height = 35,
      this.flat = true,
      this.padding = const EdgeInsets.only(right: 12),
      required this.onPressed,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return tooltip != null
        ? SizedBox(
            width: width,
            height: height,
            child: Padding(
              padding: padding,
              child: Tooltip(
                message: tooltip,
                child: flat
                    ? FlatButton(
                        child: child,
                        onPressed: onPressed,
                      )
                    : StockholmButton(
                        onPressed: onPressed,
                        child: child,
                      ),
              ),
            ),
          )
        : SizedBox(
            width: width,
            height: height,
            child: Padding(
              padding: padding,
              child: flat
                  ? FlatButton(
                      child: child,
                      onPressed: onPressed,
                    )
                  : StockholmButton(
                      onPressed: onPressed,
                      child: child,
                    ),
            ),
          );
  }
}

class DNDManButtonLabel extends StatelessWidget {
  final IconData? icon;
  final String text;
  final double fontSize;
  final TextAlign? textAlign;

  const DNDManButtonLabel(
      {Key? key,
      this.icon,
      this.fontSize = 15,
      this.textAlign,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null)
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(icon),
          ),
        Text(
          text,
          textAlign: textAlign,
          style: DNDTextStyle.normalText(
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}
