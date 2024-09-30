import 'package:flutter/material.dart';

class BottomSection extends StatelessWidget {
  final String userProfileImage;
  const BottomSection({
    super.key,
    required this.userProfileImage,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomAppBar(
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.home_outlined)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.search_outlined)),
            // IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.movie_outlined)),
            CircleAvatar(
              backgroundImage: AssetImage(userProfileImage),
            )
          ],
        ),
      ),
    );
  }
}
