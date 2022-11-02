import 'package:flutter/material.dart';

class Mypub1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                alignment: Alignment(-1, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('@Souleymane',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(text: 'Orange Digital Center'),
                        TextSpan(
                            text: '#fyp #Mali #ODC',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ))
                  ],
                ),
              )),
          Container(
              alignment: Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.favorite),
                  Text('1.2M'),
                  Icon(Icons.chat_bubble_outline_outlined),
                  Text('7.7K'),
                  Icon(Icons.send),
                  Text('123'),
                ],
              ))
        ],
      ),
    );
  }
}
