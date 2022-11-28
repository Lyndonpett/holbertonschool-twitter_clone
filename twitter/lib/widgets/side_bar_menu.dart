import 'package:flutter/material.dart';
import 'package:twitter/screens/signin_screen.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({Key? key}) : super(key: key);

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 250,
            child: DrawerHeader(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/3177/3177440.png'),
                      radius: 35,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 50, 0, 15),
                      child: Text(
                        'UserName',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              color: Colors.grey[700],
                            ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text('0 Followers',
                                style: Theme.of(context).textTheme.subtitle1)),
                        Expanded(
                            child: Text('0 Following',
                                style: Theme.of(context).textTheme.subtitle1))
                      ],
                    ),
                  ]),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            iconColor: Colors.grey[500],
            title: const Text('Profile', style: TextStyle(fontSize: 22)),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.format_list_bulleted),
            iconColor: Colors.grey[500],
            title: const Text('Lists', style: TextStyle(fontSize: 22)),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.bookmark),
            iconColor: Colors.grey[500],
            title: const Text('Bookmark', style: TextStyle(fontSize: 22)),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.flash_on),
            iconColor: Colors.grey[500],
            title: const Text('Moments', style: TextStyle(fontSize: 22)),
            onTap: () => {},
          ),
          Divider(
            color: Colors.grey[400],
          ),
          ListTile(
            title: const Text('Settings and privacy',
                style: TextStyle(fontSize: 22)),
            onTap: () => {},
          ),
          ListTile(
            title: const Text('Help Center', style: TextStyle(fontSize: 22)),
            onTap: () => {},
          ),
          Divider(
            color: Colors.grey[400],
          ),
          ListTile(
            title: const Text('Logout', style: TextStyle(fontSize: 22)),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
