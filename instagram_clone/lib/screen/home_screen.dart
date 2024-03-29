import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        StoryArea(),
        FeedList(),
      ]),
    );
  }
}

class StoryArea extends StatelessWidget {
  const StoryArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            10,
            (index) => UserStory(
                  userName: 'User $index',
                )),
      ),
    );
  }
}

class UserStory extends StatelessWidget {
  final String userName;

  const UserStory({
    required this.userName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            decoration: BoxDecoration(
                color: Colors.blue.shade300,
                borderRadius: BorderRadius.circular(40)),
          ),
          Text(userName),
        ],
      ),
    );
  }
}

class FeedData {
  final String userName;
  final int likeCount;
  final String content;

  FeedData(
      {required this.userName, required this.content, required this.likeCount});
}

final feedDataList = [
  FeedData(userName: 'User1', content: '오늘 점심은 맛있었다.', likeCount: 50),
  FeedData(userName: 'User2', content: '오늘 점심은 맛있었다.', likeCount: 520),
  FeedData(userName: 'User3', content: '오늘 점심은 맛있었다.', likeCount: 503),
  FeedData(userName: 'User4', content: '오늘 점심은 맛있었다.', likeCount: 10),
  FeedData(userName: 'User5', content: '오늘 점심은 맛있었다.', likeCount: 20),
  FeedData(userName: 'User6', content: '오늘 점심은 맛있었다.', likeCount: 110),
  FeedData(userName: 'User7', content: '오늘 점심은 맛있었다.', likeCount: 200),
  FeedData(userName: 'User8', content: '오늘 점심은 맛있었다.', likeCount: 3),
  FeedData(userName: 'User9', content: '오늘 점심은 맛있었다.', likeCount: 2),
  FeedData(userName: 'User10', content: '오늘 점심은 맛있었다.', likeCount: 1),
  FeedData(userName: 'User11', content: '오늘 점심은 맛있었다.', likeCount: 18),
  FeedData(userName: 'User12', content: '오늘 점심은 맛있었다.', likeCount: 40),
];

class FeedList extends StatelessWidget {
  const FeedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: feedDataList.length,
        itemBuilder: (context, index) =>
            FeedItem(feedData: feedDataList[index]));
  }
}

class FeedItem extends StatelessWidget {
  final FeedData feedData;

  const FeedItem({required this.feedData, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade300,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(feedData.userName),
                ],
              ),
              const Icon(Icons.more_vert),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: double.infinity,
          height: 500,
          color: Colors.indigo.shade300,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite_outline)),
                  IconButton(
                      onPressed: () {}, icon: Icon(CupertinoIcons.chat_bubble)),
                  IconButton(
                      onPressed: () {}, icon: Icon(CupertinoIcons.paperplane)),
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bookmark)),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              '좋아요 ${feedData.likeCount}개',
              style: const TextStyle(fontWeight: FontWeight.bold),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: feedData.userName,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                text:feedData.content,
              )
            ],
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(height: 8,)
      ],
    );
  }
}
