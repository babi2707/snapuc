import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  List<String> profileImages = [
    "images/fred.jpg",
    "images/babi.jpg",
    "images/daniel.jpg",
    "images/luisa.jpg",
  ];

  List<String> posts = [
    "images/feed1.jpg",
    "images/feed2.jpg",
    "images/feed3.jpg",
    "images/feed4.jpg",
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            "images/icone_sanpuc2.png",
            height: 50,
          ),
        ),
      ),

        //----------- Feed -------------
      body: SingleChildScrollView(
        child: Column(
            children: [
              Divider(),
              Column(
                children: List.generate(
                    profileImages.length,
                    (index) => Column(
                      children: [
                        //Header Post
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: CircleAvatar(
                                radius: 28,
                                backgroundImage: AssetImage(
                                  profileImages[index],
                                ),
                              ),
                            ),
                            Text("Profile Name"),
                          ],
                        ),
                        //IMAGE POST
                        Image.asset(posts[index]),
                        //FOOTER POST
                        Row(
                          children: [
                            IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.chat_bubble_outline),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.emoji_emotions_outlined),
                            ),
                          ],
                        ),
                      ],
                    )
                ),
              ),
            ],
        )
      )
    );
  }}