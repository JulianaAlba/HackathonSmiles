import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourflix_app/Menu.dart';
import 'package:tourflix_app/main.dart';
import 'package:tourflix_app/Inclusao.dart';
import 'package:tourflix_app/Simulacao.dart';
import 'package:tourflix_app/Contratacao.dart';


class Consulta extends StatefulWidget {
  @override
  _ConsultaState createState() => _ConsultaState();
}

class _ConsultaState extends State<Consulta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0XFFFE7950),
        title: Text("Consulta"),
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

                child: Text("CRONOGRAMA COMPLETO: BONS PASSEIOS!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFFE7950),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 80),
              ),

              Center(

                child: Text("PRIMEIRO DIA:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFFE7950),
                  ),
                ),
              ),

              Text("Manhã: Museu do Amanhã",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF11a6a5),
                ),),
              Text("Tarde: Restaurante e Bar Garota de Ipanema.",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF11a6a5),
                ),),
              Text("Noite: Boox Club",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF11a6a5),
                ),),


              Padding(
                padding: const EdgeInsets.only(top: 20),
              ),

              Center(

                child: Text("SEGUNDO DIA:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFFE7950),
                  ),
                ),
              ),
              Text("Manhã: Museu Nacional UFRJ",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF11a6a5),
                ),),
              Text("Tarde: Margutta Ipanema",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF11a6a5),
                ),),
              Text("Noite: Galeria Café",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF11a6a5),
                ),),

              Padding(
                padding: const EdgeInsets.only(top: 20),
              ),

              Center(

                child: Text("TERCEIRO DIA:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFFE7950),
                  ),
                ),
              ),
              Text("Manhã: Shopping Ipanema Mall",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF11a6a5),
                ),),
              Text("Tarde: Satyricon",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF11a6a5),
                ),),
              Text("Noite: CAVE",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF11a6a5),
                ),),

              Padding(
                padding: const EdgeInsets.only(top: 20),
              ),


              RaisedButton(
                color: Color(0XFFFE7950),
                child: Text("Salvar",
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
                      builder: (context) => Menu(),
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
