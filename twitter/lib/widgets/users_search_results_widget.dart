import 'package:flutter/material.dart';

class UsersSearchResultsWidget extends StatelessWidget {
  final String name;
  final String username;
  final String imgUrl;

  const UsersSearchResultsWidget({
    Key? key,
    required this.name,
    required this.username,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
        child: Center(
            heightFactor: 1,
            child: Row(children: [
              CircleAvatar(
                backgroundImage: NetworkImage(imgUrl),
                radius: 25,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontWeight: FontWeight.bold)),
                    Text('@$username',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Colors.grey[500]))
                  ],
                ),
              )
            ])));
  }
}
