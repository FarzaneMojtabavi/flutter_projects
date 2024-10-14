import 'package:flutter/material.dart';
import 'package:testproject/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage(
      {super.key,
      this.width,
      this.height,
      required this.imageUrl,
      this.applyImageradius = true,
      this.border,
      this.backgroundColor = Colors.white,
      this.fit = BoxFit.contain,
      this.padding,
      this.isNetworkImage = false,
      this.onPressed,
      this.borderRadius = SizeConst.md16});
  final double? width, height;
  final String imageUrl;
  final bool applyImageradius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
          borderRadius: applyImageradius
              ? BorderRadius.circular(borderRadius)
              : const BorderRadius.only(
                  topLeft: Radius.circular(SizeConst.md16),
                  topRight: Radius.circular(SizeConst.md16),
                ),
          child: Image(
            fit: fit,
            image:
                isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
