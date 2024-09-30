import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/view/sections/PostFeed.dart';
import 'package:instagram_clone/view/sections/StorySection.dart';
import 'package:instagram_clone/view/assets.dart';
import 'package:instagram_clone/view/sections/videoPostSection.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.photo_camera_outlined,
                    size: 24,
                    color: Colors.white,
                  )),
              const Text(
                'ℑ𝔫𝔰𝔱𝔞𝔤𝔯𝔞𝔪',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.heart,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.near_me_outlined,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: const [],
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal, child: StorySection()),
              const SizedBox(
                height: 20,
              ),
              PostFeed(
                username: 'Shazzam',
                location: 'Cochin',
                text: 'liked by stark',
                descriptionText: 'it is wonderfull ',
                postImage: vlogerpost,
                userProfileImage: vloger,
                likeProfileImage: developer,
              ),
              PostFeed(
                username: 'Elon Musk',
                location: 'NewYork',
                text: 'liked by stark',
                descriptionText: 'it is wonderfull ',
                postImage: muskpost2,
                userProfileImage: musk,
                likeProfileImage: DefaultAvathar,
              ),
              PostFeed(
                username: 'Reporter',
                location: 'Kerala',
                text: 'liked by stark',
                descriptionText: 'it is wonderfull ',
                postImage: reporterpost,
                userProfileImage: reporter,
                likeProfileImage: DefaultAvathar,
              ),
              PostFeed(
                username: 'Developer',
                location: 'NewYork',
                text: 'liked by stark',
                descriptionText: 'it is wonderfull ',
                postImage: developerpost,
                userProfileImage: developer,
                likeProfileImage: DefaultAvathar,
              ),
              PostFeed(
                username: 'Tony Stark',
                location: 'NewYork',
                text: 'liked by stark',
                descriptionText: 'it is wonderfull ',
                postImage: gamerpost,
                userProfileImage: DefaultAvathar,
                likeProfileImage: DefaultAvathar,
              ),
              Videopostsection(
                  username: 'riyasbinhakkim',
                  location: 'Kerala',
                  text: 'liked by stark',
                  descriptionText: 'hi',
                  videoAsset: riyaspost,
                  userProfileImage: riyas,
                  likeProfileImage: DefaultAvathar),
              PostFeed(
                username: 'Tony Stark',
                location: 'NewYork',
                text: 'liked by stark',
                descriptionText: 'it is wonderfull ',
                postImage: DefaultAvathar,
                userProfileImage: DefaultAvathar,
                likeProfileImage: DefaultAvathar,
              ),
              Videopostsection(
                  username: 'Knoledge',
                  location: '',
                  text: 'Liked by Muflih',
                  descriptionText: 'one god',
                  videoAsset: Quranpost1,
                  userProfileImage: Quran,
                  likeProfileImage: developer)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                  size: 30,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'AddPostScreen');
                },
                icon: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.movie_outlined,
                  color: Colors.white,
                  size: 30,
                )),
            CircleAvatar(
              backgroundImage: AssetImage(DefaultAvathar),
            )
          ],
        ),
      ),
    );
  }
}
