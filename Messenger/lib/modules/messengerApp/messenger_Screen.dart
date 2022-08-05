import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger/shared/components/components.dart';

class MessengerLayout extends StatelessWidget {
  const MessengerLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('images/sayed.jpg'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chat',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 16,
                ),
              ),
          ),
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 16,
                ),
              ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                  color: Colors.grey[200],
                ),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Search'
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 103,
                child: ListView.separated(
                  shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStoryitem(),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                    itemCount: 10,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatitem(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
                  itemCount: 10),

            ],
          ),
        ),
      ),
    );
  }
}
