
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('first title1'),
        leading: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Sending Message"),
            ));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(10.0 ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:  BorderRadius.circular(15.0)
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    const Image(
                        image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
                        ),
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover),
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.3),
                      padding: EdgeInsets.all(16.0),
                      child: const Text(
                        'Image Title',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              Container(
                color: Colors.white,
                child: const Text(
                  'Firstddd\nokapsdaskdopasdkop',
                  style: TextStyle(color: Colors.indigo, fontSize: 100.0),
                ),
              ),
              Container(
                color: Colors.white,
                child: const Text(
                  'Firstddd\nokapsdaskdopasdkop',
                  style: TextStyle(color: Colors.indigo, fontSize: 100.0),
                ),
              ),
              Container(
                color: Colors.white,
                child: const Text(
                  'Firstddd\nokapsdaskdopasdkop',
                  style: TextStyle(color: Colors.indigo, fontSize: 100.0),
                ),
              ),
              Container(
                color: Colors.white,
                child: const Text(
                  'Firstddd\nokapsdaskdopasdkop',
                  style: TextStyle(color: Colors.indigo, fontSize: 100.0),
                ),
              ),
              Container(
                color: Colors.white,
                child: const Text(
                  'Firstddd\nokapsdaskdopasdkop',
                  style: TextStyle(color: Colors.indigo, fontSize: 100.0),
                ),
              ),
              Container(
                color: Colors.white,
                child: const Text(
                  'Firstddd\nokapsdaskdopasdkop',
                  style: TextStyle(color: Colors.indigo, fontSize: 100.0),
                ),
              ),
              Container(
                color: Colors.white,
                child: const Text(
                  'Firstddd\nokapsdaskdopasdkop',
                  style: TextStyle(color: Colors.indigo, fontSize: 100.0),
                ),
              ),
              Container(
                color: Colors.white,
                child: const Text(
                  'Firstddd\nokapsdaskdopasdkop',
                  style: TextStyle(color: Colors.indigo, fontSize: 100.0),
                ),
              ),
              Container(
                child: Text(
                  'Second',
                ),
                color: Colors.black26,
              ),
              Container(
                color: Colors.black26,
                child: Text(
                  'Third',
                ),
              ),
              Container(
                color: Colors.black38,
                child: Text(
                    'Fourth\n adsadFourth\n adsadFourth\n adsadFourth\n adsadFourth\n adsadFourth\n adsad'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
