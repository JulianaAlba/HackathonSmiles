import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourflix_app/Menu.dart';
import 'package:tourflix_app/main.dart';
import 'package:tourflix_app/Inclusao.dart';
import 'package:tourflix_app/Simulacao.dart';
import 'package:tourflix_app/Consulta.dart';


class Contratacao extends StatefulWidget {
  @override
  _ContratacaoState createState() => _ContratacaoState();
}

class _ContratacaoState extends State<Contratacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0XFFFE7950),
        title: Text("Contratação"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),

          child: Column(

            children: <Widget>[

              Image.asset(
                "imagens/SmilesPacotes.PNG",
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
              ),

              Text("Contrate o pacote que desejar, de acordo com o local e quantidade de dias",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFFFE7950),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
              ),


              Row(
                  children: <Widget>[

                    Padding(
                        padding: EdgeInsets.all(10)
                    ),

                    RaisedButton(
                      color: Color(0XFFFE7950),
                      child: Text("Pacote 3 Dias",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),


                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Image.asset("imagens/pacoteum.PNG"),
                          ),
                        );
                      },

                    ),


                    RaisedButton(
                      color: Color(0XFFFE7950),
                      child: Text("Pacote 5 dias",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Image.asset("imagens/pacotedois.PNG"),
                          ),
                        );
                      },

                    ),


                    RaisedButton(
                      color: Color(0XFFFE7950),
                      child: Text("Pacote 7 dias",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Image.asset("imagens/pacotetres.PNG"),
                          ),
                        );
                      },

                    ),


                  ]
              ),


            ],
          ),

        ),

      ),


      bottomNavigationBar: BottomAppBar(
        color: Color(0XFFFE7950),
        child: Padding(
          padding: EdgeInsets.all(20),

        ),
      ),


    );
  }
}
