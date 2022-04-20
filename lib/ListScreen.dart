import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {

  List<UserModel> users = [UserModel('Amr mohamed', '01110869492'),
    UserModel('Amr Halawani', '01090281022'),
    UserModel('Mohamed Said', '015412455'),
    UserModel('Diaa Said', '01084561235'),
    UserModel('Ahmed Yousry', '010485128465'),
    UserModel('Abdulayom', '0189453256'),
    UserModel('Aly Hamalawy', '01048561234856'),
    UserModel('Mahmoud Ibrahim', '01045613284'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const CircleAvatar(
                backgroundImage: const NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
            )),
            const SizedBox(
              width: 10,
            ),
            const Text('Chats'),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
        ],
      ),
      body: ListView.separated(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return buildListItem(index);
        },
        separatorBuilder: (BuildContext context, int index) => Container(width: double.infinity,
          height: 1,
          color: Colors.green),
      ),
    );
  }

  Widget buildListItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png'),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(users[index].name,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(
                  users[index].phone,
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class UserModel {
  late final String name;
  late final String phone;

  UserModel(this.name, this.phone);
}
