import 'package:flutter_chat_ui/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// You - current user
final User currentUser = User(
  id: 0,
  name: "Current User",
  imageUrl: "assets/images/leslie.jpeg",
);

// Users
final User leslie = User(
  id: 1,
  name: "Leslie",
  imageUrl: "assets/images/leslie.jpeg",
);

final User mandy = User(
  id: 2,
  name: "Mandy",
  imageUrl: "assets/images/mandy.jpeg",
);

final User michael = User(
  id: 3,
  name: "Michael",
  imageUrl: "assets/images/michael.jpg",
);

final User tenasi = User(
  id: 4,
  name: "Tenasi",
  imageUrl: "assets/images/tenasi.jpeg",
);

final User ima = User(
  id: 5,
  name: "Ima <3",
  imageUrl: "assets/images/ima.jpg",
);

final User arthikan = User(
  id: 6,
  name: "Arthikan",
  imageUrl: "assets/images/arthikan.jpeg",
);

final User aivaras = User(
  id: 7,
  name: "Aivaras",
  imageUrl: "assets/images/aivaras.jpeg",
);

final User gabriel = User(
  id: 8,
  name: "Gabriel",
  imageUrl: "assets/images/gabriel.jpeg",
);

// FAVOURITE CONTACTS
List<User> favourites = [ima, leslie, arthikan, mandy, michael, aivaras, gabriel];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> chats = [
  Message(
    sender: leslie,
    time: "5:40pm",
    text: "I'd simp for Ima :))",
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: ima,
    time: "9:40pm",
    text: "I love leslie.. YAY! ;)",
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: arthikan,
    time: "5:24pm",
    text: "Ngor gor meng... SUIII!!!",
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: mandy,
    time: "1:23pm",
    text: "I look like auntie renee",
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: michael,
    time: "3:00am",
    text: "Hug Hug??",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: tenasi,
    time: "2:00am",
    text: "Im a tennaweeb",
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: gabriel,
    time: "6:11am",
    text: "You're so much better at basketball than me leslie!",
    isLiked: true,
    unread: false,
  ),
];
