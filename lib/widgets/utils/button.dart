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

  const DNDManButtonWidget({Key? key, this.tooltip, this.width, this.height = 35, this.padding = const EdgeInsets.only(right: 12), required this.onPressed, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (tooltip != null) {
      return SizedBox(
        width: width,
        height: height,
        child: Padding(
          padding: padding,
          child: Tooltip(
            message: tooltip,
            child: StockholmButton(
              child: child,
              onPressed: onPressed,
            ),
          ),
        ),
      );
    } else {
      return SizedBox(
        width: width,
        height: height,
        child: Padding(
          padding: padding,
          child: StockholmButton(
            child: child,
            onPressed: onPressed,
          ),
        ),
      );
    }
  }
}

class DNDManButtonLabel extends StatelessWidget {
  final IconData icon;
  final String text;

  const DNDManButtonLabel({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(icon),
        ),
        Text(
          text,
          style: GoogleFonts.notoSerif(fontSize: 15),
        ),
      ],
    );
  }
}

