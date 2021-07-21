// import 'package:meme_baaz/constant/theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget cacheImage(String url, {double? width, double? height, BoxFit boxFit = BoxFit.contain}) {
  return CachedNetworkImage(
    fit: boxFit,
    imageUrl: url,
    fadeOutCurve: Curves.decelerate,
    fadeInCurve: Curves.decelerate,
    errorWidget: (context, url, error) => Container(
      height: height,
      width: width,
      color: Colors.white70,
      padding: const EdgeInsets.all(12),
      child: const Icon(Icons.error_rounded),
    ),
  );
}
