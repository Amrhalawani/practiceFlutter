import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
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
              width: 10,),
            const Text('Chats'),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(14.0),color:Colors.grey),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                  const Text('Search')
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  Container(
                    child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children:  [
                        CircleAvatar(
                          radius: 30,
                        backgroundImage:  NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
                        ),
                      ),
                        Container(
                          margin:EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                        ),

                        Container(
                          margin:EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.red,
                          ),
                        ),


                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Amr Mohamed',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 10,),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ) ,
          SizedBox(height: 20,),

          Container(
              child: Row(
                 children: [
                  Container(
                    child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children:  [
                        CircleAvatar(
                          radius: 30,
                        backgroundImage:  NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
                        ),
                      ),
                        Container(
                          margin:EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                        ),

                        Container(
                          margin:EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.red,
                          ),
                        ),


                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Amr Mohamed kasdoaskd opaskdops akdopaskd opaksdopaksdpoaksdo',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(fontSize: 14,
                               fontWeight: FontWeight.w700
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text('hello bro 10:54am',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(fontSize: 10,),
                              ),
                            ),
                            Container(margin: EdgeInsetsDirectional.only(start: 8, end: 8),width: 7, height: 7, decoration: BoxDecoration(color: Colors.blue,  shape: BoxShape.circle),),
                            Text('hello bro 10:54am',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(fontSize: 10,),
                            ),

                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
        ],
      ),
          )),
    );
  }
}
