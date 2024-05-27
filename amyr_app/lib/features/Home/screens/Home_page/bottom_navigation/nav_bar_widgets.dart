import 'package:amyr_app/features/Home/controllers/Nav_bar_controller.dart';
import 'package:amyr_app/utils/constants/colors.dart';
import 'package:amyr_app/utils/constants/sizes.dart';
import 'package:amyr_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CenterButtonWidget extends StatelessWidget {
  const CenterButtonWidget({
    super.key,
    required BottomNavigationBarController controller,
  }) : _controller = controller;

  final BottomNavigationBarController _controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: KDeviceUtils.getBottomNavigationBarHeight()*0.6, // Adjust the value as needed to elevate the button
      left: KDeviceUtils.getScreenWidth(context) / 2 - 35, // Center the button
      child: GestureDetector(
        onTap: () {
          _controller.changeTabIndex(2); // Change to the middle tab
        },
        child: Container(
          width: KDeviceUtils.getBottomNavigationBarHeight()*1.3,
          height: KDeviceUtils.getBottomNavigationBarHeight()*1.3,
          decoration: BoxDecoration(
            color: KColors.primary,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color:KColors.darkGrey,
                spreadRadius: 1,
                blurRadius: 8,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Icon(Icons.home, color: KColors.light, size: KSizes.iconLg),
        ),
      ),
    );
  }
}



class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final double size;
  final Color color;
  final bool isElevated;

  IconButtonWidget({
    required this.icon,
    required this.onPressed,
    this.size = 24.0,
    this.color = Colors.black,
    this.isElevated = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isElevated) {
      return GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: 1,
                blurRadius: 8,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Icon(icon, color: Colors.white, size: size),
        ),
      );
    } else {
      return IconButton(
        icon: Icon(icon, size: size, color: color),
        onPressed: onPressed,
      );
    }
  }
}
