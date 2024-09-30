import 'package:flutter/material.dart';
import 'package:instagram_clone/view/colors.dart';
import 'package:instagram_clone/view/widgets/CircleAvatarTemp.dart';
import 'package:instagram_clone/view/assets.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  // final String username;
  // final String friendname;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatarTemp(avatarImage: DefaultAvathar),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 8),
                child: Text(
                  'Your Story',
                  style: TextStyle(color: textColor, fontSize: 12),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatarTemp(avatarImage: musk),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 8),
                child: Text(
                  'User One',
                  style: TextStyle(color: textColor, fontSize: 12),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatarTemp(avatarImage: vloger),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 8),
                child: Text(
                  'User Two',
                  style: TextStyle(color: textColor, fontSize: 12),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatarTemp(avatarImage: gamer),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 8),
                child: Text(
                  'User Three',
                  style: TextStyle(color: textColor, fontSize: 12),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatarTemp(avatarImage: riyas),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 8),
                child: Text(
                  'Your Story',
                  style: TextStyle(color: textColor, fontSize: 12),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatarTemp(avatarImage: developer),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 8),
                child: Text(
                  'Your Story',
                  style: TextStyle(color: textColor, fontSize: 12),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatarTemp(avatarImage: reporter),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 8),
                child: Text(
                  'user3',
                  style: TextStyle(color: textColor, fontSize: 12),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatarTemp(avatarImage: DefaultAvathar),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 8),
                child: Text(
                  'User 2',
                  style: TextStyle(color: textColor, fontSize: 12),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatarTemp(avatarImage: DefaultAvathar),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 8),
                child: Text(
                  'User 1',
                  style: TextStyle(color: textColor, fontSize: 12),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
