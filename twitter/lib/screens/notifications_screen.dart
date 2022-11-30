import 'package:flutter/material.dart';
import 'package:twitter/widgets/bar_menu.dart';
import 'package:twitter/widgets/side_bar_menu.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomMenuBar(),
      body: SafeArea(
          child: Column(children: [
        Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/3177/3177440.png'),
                    radius: 20,
                  ),
                  Flexible(
                      child: Text(
                    'Notifications',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.black),
                  )),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: const Icon(
                      Icons.settings_outlined,
                      color: Color.fromARGB(255, 112, 186, 246),
                      size: 30,
                    ),
                  )
                ],
              ),
            ])),
        Flexible(
          child: Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: Colors.grey[200],
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "No Notifications available yet",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "When new notifications are found, they'll show up here",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.grey[500], height: 1.5),
                    )
                  ]),
            ),
          ),
        ),
      ])),
    );
  }
}
