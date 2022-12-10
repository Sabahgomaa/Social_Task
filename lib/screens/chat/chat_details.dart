import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_task/shared/const/router.dart';

import '../../shared/const/colors.dart';

class ChatDetails extends StatelessWidget {
  const ChatDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              MagicRouter.pop();
            },
            child: Image.asset(
              'assets/images/ic_back.png',
            )),
        actions: [
          Image.asset('assets/images/ic_video.png'),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset('assets/images/ic_setting.png'),
          ),
        ],
        titleSpacing: 0.0,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage(
                'assets/images/Image.png',
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Mike Wazowski',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: textPrimary,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '7 Online, from 12 peoples',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: textSecondary,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Container(
                width: 200.w,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadiusDirectional.only(
                    bottomEnd: Radius.circular(
                      10.0,
                    ),
                    topStart: Radius.circular(
                      10.0,
                    ),
                    topEnd: Radius.circular(
                      10.0,
                    ),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 10.0,
                ),
                child: const Text(
                    'Hello guys, we have discussed about post-corona vacation plan and our decision is to go to Bali. We will have a very big party after this corona ends! These are some images about our destination'),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Container(
                width: 200.w,
                decoration: const BoxDecoration(
                  color: bgContainerSelect,
                  borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(
                      10.0,
                    ),
                    topStart: Radius.circular(
                      10.0,
                    ),
                    topEnd: Radius.circular(
                      10.0,
                    ),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 10.0,
                ),
                child: const Text(
                  "That’s very nice place! you guys made a very good decision. Can’t wait to go on vacation!",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: bgContainer,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(
            15.0,
          ),
        ),
        //clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/ic_anime.png'),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Write a message...',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/ic_attechment.png'),
            ),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                  color: bgContainerSelect,
                  borderRadius: BorderRadius.circular(40)),
              child: MaterialButton(
                onPressed: () {},
                minWidth: 1.0,
                child: Image.asset('assets/images/ic_voice.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
