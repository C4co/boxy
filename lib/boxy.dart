import 'dart:ui';

import 'package:flutter/material.dart';

class Boxy extends StatelessWidget {
  final BorderRadius? borderRadius;
  final double? width;
  final double? height;
  final Border? border;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget? child;
  final double? blurEffect;
  final Color? color;
  final Color? splashColor;
  final Gradient? gradient;
  final ImageProvider? backgroundImage;
  final void Function()? onTap;
  final void Function()? onDoubleTap;
  final void Function()? onLongPress;
  final List<BoxShadow>? boxShadow;

  const Boxy({
    this.borderRadius,
    this.blurEffect,
    this.width,
    this.height,
    this.border,
    this.padding,
    this.margin,
    this.child,
    this.color,
    this.splashColor,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.gradient,
    this.backgroundImage,
    this.boxShadow,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    dynamic decorationImage;

    if (backgroundImage != null) {
      decorationImage = DecorationImage(
        image: backgroundImage!,
        fit: BoxFit.cover,
      );
    }

    return Container(
      clipBehavior: Clip.hardEdge,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        image: decorationImage,
        boxShadow: boxShadow,
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: gradient,
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: blurEffect ?? 0,
            sigmaY: blurEffect ?? 0,
          ),
          child: Material(
            color: color ?? Colors.transparent,
            child: InkWell(
              splashColor: splashColor,
              splashFactory: InkRipple.splashFactory,
              onTap: onTap,
              onDoubleTap: onDoubleTap,
              onLongPress: onLongPress,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: borderRadius,
                  border: border,
                ),
                padding: padding,
                width: width,
                height: height,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
