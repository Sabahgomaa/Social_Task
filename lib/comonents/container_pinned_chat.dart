import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_task/shared/const/colors.dart';

// ignore: must_be_immutable
class ContainerPinnedChat extends StatelessWidget {
  bool isPressed = false;

  ContainerPinnedChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
            color: bgContainer, borderRadius: BorderRadius.circular(7.r)),
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: const [
                        CircleAvatar(
                          radius: 21,
                          backgroundImage: AssetImage(
                            'assets/images/Image.png',
                          ),
                        ),
                        CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Mike ',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: textPrimary,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'Wazowski',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: textPrimary,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Expanded(
                child: Text(
                  'That’s awesome! ...',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: textSecondary,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
