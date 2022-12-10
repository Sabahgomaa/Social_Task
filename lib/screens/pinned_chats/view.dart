import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_task/shared/const/colors.dart';

import '../../comonents/chat_category.dart';
import '../../comonents/container_pinned_chat.dart';
import '../../comonents/item_chat.dart';
import '../../shared/const/router.dart';
import '../chat/chat_details.dart';

class PinnedChatsScreens extends StatelessWidget {
  const PinnedChatsScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .5,
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Pinned Chats',
                            style: TextStyle(
                                color: textPrimary,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: CircleAvatar(
                                radius: 14,
                                backgroundImage: AssetImage(
                                  'assets/images/Image.png',
                                ),
                              ),
                            )
                    ],
                  ),
                  SizedBox(
                    height: 500,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 1.0,
                          childAspectRatio: 168 / 102,
                          mainAxisSpacing: 1.0,
                        ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              MagicRouter.navigateTo(const ChatDetails());
                            },
                            child: ContainerPinnedChat(),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Material(
              child: DraggableScrollableSheet(
                maxChildSize: 1,
                snap: true,
                expand: false,
                snapSizes: const [
                  0.55,
                  1,
                ],
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Scaffold(
                    body: ListView(
                      children: [
                        SizedBox(
                          height: 7.h,
                        ),
                        Divider(
                          thickness: 3.73.w,
                          height: 3.73.w,
                          endIndent: 180.h,
                          indent: 180.h,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'Recent Chats',
                                  style: TextStyle(
                                      color: textPrimary,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.r),
                              child: Image.asset("assets/images/ic_search.png"),
                            ),
                          ],
                        ),
                        const ChatCategory(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*.6,
                          child: ListView.builder(
                           // physics: const NeverScrollableScrollPhysics(),
                            controller: scrollController,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return const ItemChat();
                            },
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
