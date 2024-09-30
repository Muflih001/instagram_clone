import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/view/sections/FeedHeadSection.dart';

class PostFeed extends StatelessWidget {
  final String username;
  final String location;
  final String text;
  final String descriptionText;
  final String postImage;
  final String userProfileImage;
  final String likeProfileImage;

  PostFeed({
    required this.username,
    required this.location,
    required this.text,
    required this.descriptionText,
    required this.postImage,
    required this.userProfileImage,
    required this.likeProfileImage,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            FeedHeadSection(
              username: username,
              location: location,
              avatarImage: userProfileImage,
            ),
            Container(
              width: double.infinity,
              height: 440,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      postImage,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_outline,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.comment,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.near_me_outlined,
                          color: Colors.white,
                        ))
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.bookmark_outline,
                      color: Colors.white,
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(likeProfileImage),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        text,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  Text(
                    descriptionText,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
