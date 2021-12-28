import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/models/message_model.dart';

class FavouriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Favourite Contacts",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz),
                  iconSize: 30,
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10),
                itemCount: favourites.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                            radius: 35,
                            backgroundImage:
                                AssetImage(favourites[index].imageUrl)),
                        SizedBox(height: 6),
                        Text(
                          favourites[index].name,
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
