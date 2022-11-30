import 'package:flutter/material.dart';
import 'package:twitter/screens/signin_screen.dart';
import 'package:twitter/widgets/bar_menu.dart';
import 'package:twitter/widgets/side_bar_menu.dart';
import 'package:twitter/widgets/post_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      drawer: const SideBarMenu(),
      bottomNavigationBar: const BottomMenuBar(),
      body: const PostWidget(
        name: 'Vader',
        username: 'Darth',
        imgUrl:
            'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/darth-vader-1549906397.jpg',
        postText: 'I am altering the deal. Pray I don’t alter it any further.',
      ),
    );
  }
}
