import 'package:amyr_app/features/Home/screens/Home_page/bottom_navigation/nav_bar_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:amyr_app/features/Home/controllers/Nav_bar_controller.dart';
// Import your custom widget

class InitialScreen extends StatelessWidget {
  final BottomNavigationBarController _controller = Get.put(BottomNavigationBarController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Obx(() {
          // Return the current selected page based on the index
          switch (_controller.selectedIndex.value) {
            case 0:
              return FirstScreen();
            case 1:
              return SecondScreen();
            case 2:
              return ThirdScreen(); // This can be any screen you want to navigate to
            case 3:
              return FourthScreen();
            case 4:
              return FifthScreen();
            default:
              return FirstScreen();
          }
        }),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 6.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButtonWidget(
                  icon: Icons.dashboard,
                  onPressed: () {
                    _controller.changeTabIndex(0);
                  },
                ),
                IconButtonWidget(
                  icon: Icons.notifications,
                  onPressed: () {
                    _controller.changeTabIndex(1);
                  },
                ),
                SizedBox(width: 40), // The space for the middle elevated button
                IconButtonWidget(
                  icon: Icons.message,
                  onPressed: () {
                    _controller.changeTabIndex(3);
                  },
                ),
                IconButtonWidget(
                  icon: Icons.settings,
                  onPressed: () {
                    _controller.changeTabIndex(4);
                  },
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 20, // Adjust the value as needed to elevate the button
          left: MediaQuery.of(context).size.width / 2 - 35, // Center the button
          child: IconButtonWidget(
            icon: Icons.home,
            onPressed: () {
              _controller.changeTabIndex(2); // Change to the middle tab
            },
            size: 30,
            color: Colors.blue,
            isElevated: true,
          ),
        ),
      ],
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('First Screen'));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Second Screen'));
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Third Screen'));
  }
}

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Fourth Screen'));
  }
}

class FifthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Fifth Screen'));
  }
}
