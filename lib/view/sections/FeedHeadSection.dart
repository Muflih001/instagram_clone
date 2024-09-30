import 'package:flutter/material.dart';

class FeedHeadSection extends StatelessWidget {
  final String username;
  final String location;
  final String avatarImage;
  const FeedHeadSection({super.key, 
    required this.username,
    required this.location,
    required this.avatarImage,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(avatarImage),
        ),
        title: Text(
          username,
          style: const TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          location,
          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.white,
            )),
      ),
    );
  }
}
