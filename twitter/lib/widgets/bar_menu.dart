import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter/providers/app_state.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:twitter/screens/search_screen.dart';
import 'package:twitter/screens/notifications_screen.dart';
import 'package:twitter/screens/chats_screen.dart';

class BottomMenuBar extends StatefulWidget {
  const BottomMenuBar({Key? key}) : super(key: key);

  @override
  State<BottomMenuBar> createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              onTap: () {
                Provider.of<AppState>(context, listen: false).setpageIndex = 0;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: Icon(
                Icons.home,
                color: Provider.of<AppState>(context).pageIndex == 0
                    ? Colors.blue
                    : Colors.grey[500],
              )),
          GestureDetector(
            onTap: () {
              Provider.of<AppState>(context, listen: false).setpageIndex = 1;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchScreen()),
              );
            },
            child: Icon(
              Icons.search,
              color: Provider.of<AppState>(context).pageIndex == 1
                  ? Colors.blue
                  : Colors.grey[500],
            ),
          ),
          GestureDetector(
            onTap: () {
              Provider.of<AppState>(context, listen: false).setpageIndex = 2;
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationsScreen()),
              );
            },
            child: Icon(
              Icons.notifications_outlined,
              color: Provider.of<AppState>(context).pageIndex == 2
                  ? Colors.blue
                  : Colors.grey[500],
            ),
          ),
          GestureDetector(
            onTap: () {
              Provider.of<AppState>(context, listen: false).setpageIndex = 3;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatsScreen()),
              );
            },
            child: Icon(
              Icons.mail_outline,
              color: Provider.of<AppState>(context).pageIndex == 3
                  ? Colors.blue
                  : Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}
