import 'package:flutter/material.dart';

class User {
  final String imageUrl;
  final String title;
  final String description;
  final String storyText;

  // User(
  //   this.imageUrl,
  //   this.title,
  //   this.description,
  //   this.storyText,
  // );

  User({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.storyText,
  });

  factory User.fakeItem() {
    return User(
        imageUrl: 'https://picsum.photos/200/300',
        title: 'title',
        description: 'description',
        storyText: '''storyText dee dww e''' * 300);
  }
}
