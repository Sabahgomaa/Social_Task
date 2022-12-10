import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_task/screens/chat/chat_details.dart';
import 'package:social_task/screens/pinned_chats/view.dart';

import '../shared/const/colors.dart';
import '../shared/const/router.dart';

class NavBarScreens extends StatefulWidget {
  const NavBarScreens({Key? key}) : super(key: key);

  @override
  State<NavBarScreens> createState() => _NavBarScreensState();
}

class _NavBarScreensState extends State<NavBarScreens> {
  int currentIndex = 0;
  List<Widget> screens = [
    const PinnedChatsScreens(),
    const PinnedChatsScreens(),
    const PinnedChatsScreens(),
    const PinnedChatsScreens(),
  ];
  List<String> labels = [
    '',
    '',
    '',
    '',
  ];
  List<String> icons = [
    'ic_chat',
    'ic_recent',
    'ic_calls',
    'ic_profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          //unselectedItemColor: gray,
          selectedItemColor: bgContainerSelect,
          selectedLabelStyle:
              TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: List.generate(
              icons.length,
              (index) => BottomNavigationBarItem(
                    backgroundColor: const Color(0xff4C8613),
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: Image.asset(
                        'assets/images/${icons[index]}.png',
                        height: 21.h,
                        width: 21.w,
                        // color: index == currentIndex ? bgContainerSelect : textSecondary,
                      ),
                    ),
                    label: labels[index],
                  ))),
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MagicRouter.navigateTo(const ChatDetails());
        },
        child: Image.asset('assets/images/ic_new_chats.png'),
      ),
    );
  }
}
