import 'package:flutter/material.dart';

class UnbordingContent {
  String title;
  String image;
  String description;
  UnbordingContent(
      {required this.image, required this.title, required this.description});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    image: 'assets/img1.jpg',
    title: ' How We Help You',
    description: 'Personalized reminders, comprehensive tracking, easy access.',
  ),
  UnbordingContent(
    image: 'assets/img2.jpg',
    title: 'Join the Medician Tracker Community',
    description: 'Connect, learn, and share for better health.',
  ),
  UnbordingContent(
    image: 'assets/img3.jpg',
    title: 'Quality food',
    description: ' typesetting industry.lorem',
  ),
];
