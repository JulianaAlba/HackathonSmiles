import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourflix_app/main.dart';
import 'package:tourflix_app/Inclusao.dart';
import 'package:tourflix_app/Consulta.dart';
import 'package:tourflix_app/Simulacao.dart';
import 'package:tourflix_app/Contratacao.dart';


class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0XFFFE7950),
        title: Text("Menu"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),

          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget>[

              /*Image.asset(
                "imagens/combustivel.png",
                //height: 200,
                //descobrir pq a imagem não modifica dentro de Scaffold
                //fit: BoxFit.cover,
              ),*/

              Padding(
                padding: const EdgeInsets.only(top: 20),
              ),

            Center(

              child: Text("Bem vindo ao Menu Smile, onde seu sonho é acessível e real em tempo record!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0XFFFE7950),
              ),

            ),),

              Padding(
                padding: const EdgeInsets.only(top: 80),
              ),

              Text("Acesse a opção abaixo caso seja Pessoa Física Sem Deficiência",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF11a6a5),
                ),
              ),
              RaisedButton(
                color: Color(0XFFFE7950),
                child: Text("PFSD",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                onPressed: (){
                  // 'push' abre uma tela que eu defino e 'pop' fecha a tela atual e abre uma nova
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      //chamando função anônima curta, com a próxima tela
                      builder: (context) => Simulacao(),
                    ),
                  );
                },


              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
              ),

              Text("Acesse a opção abaixo caso seja Pessoa Física Com Deficiência",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF11a6a5),
                ),),
              RaisedButton(
                color: Color(0XFFFE7950),
                child: Text("PFCD",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                onPressed: (){
                  // 'push' abre uma tela que eu defino e 'pop' fecha a tela atual e abre uma nova
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      //chamando função anônima curta, com a próxima tela
                      builder: (context) => Simulacao(),
                    ),
                  );
                },


              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
              ),

              Text("Acesse para consultar o Organizador de Viagem salvo anteriormente",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF11a6a5),
                ),),

              RaisedButton(
                color: Color(0XFFFE7950),

                child: Text("Consultar",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                onPressed: (){
                  // 'push' abre uma tela que eu defino e 'pop' fecha a tela atual e abre uma nova
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      //chamando função anônima curta, com a próxima tela
                      builder: (context) => Consulta(),
                    ),
                  );
                },

              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
              ),
              Text("Contrate pacotes de serviços especiais com nossos parceiros",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF11a6a5),
                ),),
              RaisedButton(
                color: Color(0XFFFE7950),
                child: Text("Contratar",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                onPressed: (){
                  // 'push' abre uma tela que eu defino e 'pop' fecha a tela atual e abre uma nova
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      //chamando função anônima curta, com a próxima tela
                      builder: (context) => Contratacao(),
                    ),
                  );
                },

              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
              ),
              Text("Colabore conosco e ganhe milhas: Conbribua informando lugares para Pessoa Física Com Deficiência",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF11a6a5),
                ),),
              RaisedButton(
                color: Color(0XFFFE7950),
                child: Text("Incluir",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                onPressed: (){
                  // 'push' abre uma tela que eu defino e 'pop' fecha a tela atual e abre uma nova
                  Navigator.push(
                    context,
                       MaterialPageRoute(
                      //chamando função anônima curta, com a próxima tela
                      builder: (context) => Inclusao(),
                    ),
                  );
                },

              ),


            ],
          ),

        ),

      ),

      bottomNavigationBar: BottomAppBar(
        color: Color(0XFFFE7950),
        child: Padding(
          //esse valor define o tamanho da barra inferior
          padding: EdgeInsets.all(20),

        ),
      ),


    );
  }
}
