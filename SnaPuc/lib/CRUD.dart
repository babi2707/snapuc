import 'package:flutter/material.dart';
import 'home_page.dart';
import 'main.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(

      //--------- Pagina Da Home Page ---------

      body: HomePage(),

      //--------- Botões da parte inferior ---------
      bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.search, //Icone
                  color: currentPage == 5 //Identificação do incone
                      ? Color.fromRGBO(168, 85, 225, 1) //Cor setada quando esta nele
                      : Color.fromRGBO(40, 40, 40, 1), //Cor setada quando não esta nele
                ),
                onPressed: (){
                  setState(() { //Ao pressionado seta o numero de identificação para mudar a cor
                    currentPage = 5; //indentificação = 5
                  });
                },
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.chat_bubble,
                  color: currentPage == 3
                      ? Color.fromRGBO(168, 85, 225, 1)
                      : Color.fromRGBO(40, 40, 40, 1),
                ),

                onPressed: (){
                  setState(() {
                    currentPage = 3;
                  });
                },
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: currentPage == 1
                      ? Color.fromRGBO(168, 85, 225, 1)
                      : Color.fromRGBO(40, 40, 40, 1),
                ),
                onPressed: (){
                  setState(() {
                    currentPage = 1;
                  });
                },
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.camera_alt,
                  color: currentPage == 2
                      ? Color.fromRGBO(168, 85, 225, 1)
                      : Color.fromRGBO(40, 40, 40, 1),
                ),
                onPressed: (){
                  setState(() {
                    currentPage = 2;
                  });
                },
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.person_2,
                  color: currentPage == 4
                      ? Color.fromRGBO(168, 85, 225, 1)
                      : Color.fromRGBO(40, 40, 40, 1),
                ),
                onPressed: (){
                  setState(() {
                    currentPage = 4;
                  });
                },
              ),
              Spacer(),
            ],
          )),
    );

  }
}
