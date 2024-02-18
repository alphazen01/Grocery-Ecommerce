import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery/app/core/app_images.dart';
import 'package:grocery/app/global_widgets/custom_shimer.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    Key? key,
    required this.path,
    this.fit = BoxFit.contain,
    this.height,
    this.width,
    this.color,
    this.isFile = false,
  }) : super(key: key);

  final String? path;
  final BoxFit fit;
  final double? height, width;
  final Color? color;
  final bool isFile;

  @override
  Widget build(BuildContext context) {
    final imagePath =
        path == null || path == '' ? AppImages.onboardingImage : path;

    if (isFile) {
      return Image.file(
        File(imagePath!),
        fit: fit,
        color: color,
        height: height,
        width: width,
      );
    }

    if (imagePath!.endsWith('.svg')) {
      return SizedBox(
        height: height,
        width: width,
        child: SvgPicture.asset(
          imagePath,
          fit: fit,
          height: height,
          width: width,
          // ignore: deprecated_member_use
          color: color,
        ),
      );
    }
    if (imagePath.startsWith('http') ||
        imagePath.startsWith('https') ||
        imagePath.startsWith('www.')) {
      return CachedNetworkImage(
        imageUrl: imagePath,
        fit: fit,
        color: color,
        height: height,
        width: width,
        progressIndicatorBuilder: (context, url, downloadProgress) {
          return const Center(
              child: CustomShimmer(
            height: 24,
            width: 24,
          ));
        },
        errorWidget: (context, url, error) => const Image(
          image: AssetImage(AppImages.onboardingImage),
          fit: BoxFit.cover,
        ),
      );
    }
    return Image.asset(
      imagePath,
      fit: fit,
      color: color,
      height: height,
      width: width,
      errorBuilder: (context, error, stackTrace) {
        return Image(
          image: const AssetImage(AppImages.onboardingImage),
          height: height,
          width: width,
        );
      },
    );
  }
}
