import 'package:flutter/material.dart';
import 'package:twitter/widgets/bar_menu.dart';
import 'package:twitter/widgets/side_bar_menu.dart';
import 'package:twitter/widgets/users_search_results_widget.dart';
import 'package:twitter/user_list.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 20, 20, 20),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),
                      radius: 20,
                    )),
                Flexible(
                    child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintStyle: TextStyle(color: Colors.grey[500], fontSize: 20),
                    contentPadding: const EdgeInsets.fromLTRB(30, 15, 0, 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: (Colors.grey[200])!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2),
                    ),
                  ),
                )),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                  child: const Icon(Icons.settings_outlined,
                      color: Color.fromARGB(255, 112, 186, 246), size: 30),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return UsersSearchResultsWidget(
                      name: userList[index]['name'],
                      username: userList[index]['username'],
                      imgUrl: userList[index]['imgUrl'],
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenuBar(),
    );
  }
}
