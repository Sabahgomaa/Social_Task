import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_task/shared/const/colors.dart';

class ChatCategory extends StatelessWidget {
  const ChatCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, bottom: 10,right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 26.h,
              width: 64.w,
              decoration: BoxDecoration(
                color: bgContainerSelect,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 5), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'All chats',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 26.h,
              width: 64.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 5), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Personal',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: textPrimary,
                  ),
                ),
              ),
            ),
            Container(
              height: 26.h,
              width: 64.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 5), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Work',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: textPrimary,
                  ),
                ),
              ),
            ),
            Container(
              height: 26.h,
              width: 64.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 5), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Groups',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: textPrimary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
