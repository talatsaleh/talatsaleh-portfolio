import 'dart:ui';

import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.imgAssets,
    this.imgAssetsBlended,
    this.fullHeight = 300,
    this.fullWidth = 300,
    this.width,
    this.height,
    this.child,
    this.avatarImg,
    this.color = const Color(0xf0181818),
    this.rotation = .2,
    this.isMobile = false,
  });

  final Color? color;

  final String? imgAssets;
  final String? imgAssetsBlended;
  final double fullHeight;
  final double fullWidth;
  final double? width;
  final double? height;
  final Widget? child;
  final String? avatarImg;
  final double rotation;
  final bool isMobile;

  double get getWidth {
    return width ?? fullWidth - fullWidth / 10;
  }

  double get getHeight {
    return height ?? fullHeight - fullHeight / 10;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: fullHeight,
      width: fullWidth,
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (imgAssets != null)
            Positioned(
              child: Container(
                transformAlignment: Alignment.bottomCenter,
                transform: Matrix4.rotationZ(.2),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(imgAssets!)),
                  color: const Color(0xf0181818),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xf0000000).withOpacity(.72),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 100, sigmaX: 100),
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.transparent),
                  ),
                ),
              ),
            ),
          Positioned(
            width: getWidth,
            height: getHeight,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  transformAlignment: Alignment.center,
                  transform: Matrix4.rotationZ(rotation),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                        style: BorderStyle.solid),
                    color: const Color(0xf0181818).withOpacity(.2),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xf0000000).withOpacity(.72),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  // alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(
                    top: avatarImg != null ? getWidth * 41 / 240 : 40,
                    left: getWidth >= fullHeight ? 40 : getWidth * 41 / 240,
                    right: getWidth >= fullHeight ? 40 : getWidth * 41 / 240,
                    bottom: 40,
                  ),
                  decoration: BoxDecoration(
                    // border: Border.all(color: Theme.of(context).colorScheme.secondary,style: BorderStyle.solid),
                    image: imgAssets == null
                        ? null
                        : DecorationImage(
                            fit: BoxFit.cover, image: AssetImage(imgAssets!)),
                    color: color,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xf0000000).withOpacity(.72),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: child,
                )
              ],
            ),
          ),
          if (avatarImg != null)
            Positioned(
              top: MediaQuery.of(context).size.width < 1800 && !isMobile ? 0 : isMobile && getHeight < 500 ? getHeight * .03 : 0,
              left: isMobile
                  ? (getWidth * .5) - getWidth * 41 / 240
                  : getWidth * 1 / 3,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: (MediaQuery.of(context).size.width < 1800 && !isMobile) ? getWidth *(41 / 300) : getWidth <= 600
                    ?  getWidth * (41 / 240)
                    : getWidth * (41 / 300),
                backgroundImage: AssetImage(avatarImg!),
              ),
            ),
        ],
      ),
    );
  }
}
