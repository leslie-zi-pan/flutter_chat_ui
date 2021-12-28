import 'package:flutter/material.dart';

import 'message_model.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (BuildContext context, int index) {
                  final Message chat = chats[index];
                  return Container(
                    margin: EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                      right: 20,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: chat.unread ? Color(0xFFFFEFEE) : Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(chat.sender.imageUrl),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  chat.sender.name,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.55,
                                  child: Text(
                                    chat.text,
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              chat.time,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            chat.unread ? Container(
                              width: 40,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Theme.of(context).primaryColor),
                              alignment: Alignment.center,
                              child: Text(
                                "NEW",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ) : SizedBox.shrink(),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          )),
    );
  }
}
