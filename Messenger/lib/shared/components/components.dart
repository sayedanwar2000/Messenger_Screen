import 'package:flutter/material.dart';

Widget buildStoryitem() =>Container(
  width: 60,
  child: Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('images/sayed.jpg'),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 2,
              end: 2,
            ),
            child: CircleAvatar(
              radius: 6,
              backgroundColor: Colors.green,
            ),
          ),
        ],

      ),
      SizedBox(
        height: 5,
      ),
      Text(
        'Sayed Anwar Sayed',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
      ),
    ],
  ),
);

Widget buildChatitem() => Row(
  children: [
    Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('images/sayed.jpg'),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
            bottom: 2,
            end: 2,
          ),
          child: CircleAvatar(
            radius: 6,
            backgroundColor: Colors.green,
          ),
        ),
      ],

    ),
    SizedBox(
      width: 10,
    ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sayed Anwar Sayed',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'hello broooooooooooo i waiting you',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0
                ),
                child: Container(
                  width: 7,
                  height: 7,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Text(
                  '2:00 pm'
              ),
            ],
          ),
        ],
      ),
    ),
  ],
);