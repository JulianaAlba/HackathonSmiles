import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourflix_app/Menu.dart';
import 'package:tourflix_app/main.dart';
import 'package:tourflix_app/Consulta.dart';
import 'package:tourflix_app/Simulacao.dart';
import 'package:tourflix_app/Contratacao.dart';


class Inclusao extends StatefulWidget {
  @override
  _InclusaoState createState() => _InclusaoState();
}

class _InclusaoState extends State<Inclusao> {

  void pressionarBotaoPDV( BuildContext context){
    var alertDialog = AlertDialog(
      title: Text("PDV SALVO"),
      content: Text("Dados salvos para Pessoa com Deficiência Visual"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context){
          return alertDialog;
        });
  }

  void pressionarBotaoPDA( BuildContext context){
    var alertDialog = AlertDialog(
      title: Text("PDA SALVO"),
      content: Text("Dados salvos para Pessoa com Deficiência Auditiva"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context){
          return alertDialog;
        });
  }

  void pressionarBotaoPDF( BuildContext context){
    var alertDialog = AlertDialog(
      title: Text("PDF SALVO"),
      content: Text("Dados salvos para Pessoa com Deficiência Física"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context){
          return alertDialog;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(




      appBar: AppBar(
        backgroundColor: Color(0XFFFE7950),
        title: Text("Inclusão"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),

          child: Column(

            children: <Widget>[


              Padding(
                padding: const EdgeInsets.only(top: 20),
              ),

              Text("Inclua o dado que desejar, desde que seja realmente válido para PFCD, pois vamos conferir. Não é necessário preencher todos os campos, apenas os que você souber. Apenas atente-se para salvar para o público correto.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFFFE7950),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),

                child: TextField(
                  keyboardType: TextInputType.text,

                  decoration: InputDecoration(
                    labelText: "Restaurante acessível",
                  ),
                  enabled: true,

                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0XFFFE7950),
                  ),

                ),

              ),

              Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),

                child: TextField(
                  keyboardType: TextInputType.text,

                  decoration: InputDecoration(
                    labelText: "Hotel acessível",
                  ),

                  enabled: true,

                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0XFFFE7950),
                  ),

                ),

              ),

              Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),

                child: TextField(
                  keyboardType: TextInputType.text,

                  decoration: InputDecoration(
                    labelText: "Praça acessível",
                  ),

                  enabled: true,

                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0XFFFE7950),
                  ),

                ),

              ),

              Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),

                child: TextField(
                  keyboardType: TextInputType.text,

                  decoration: InputDecoration(
                    labelText: "Museu acessível",
                  ),

                  enabled: true,

                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0XFFFE7950),
                  ),

                ),

              ),

              Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),

                child: TextField(
                  keyboardType: TextInputType.text,

                  decoration: InputDecoration(
                    labelText: "Boate acessível",
                  ),

                  enabled: true,

                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0XFFFE7950),
                  ),

                ),

              ),

              Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),

                child: TextField(
                  keyboardType: TextInputType.text,

                  decoration: InputDecoration(
                    labelText: "Shopping acessível",
                  ),

                  enabled: true,

                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0XFFFE7950),
                  ),

                ),

              ),


              Padding(
                  padding: EdgeInsets.all(10)
              ),


              Row(
                  children: <Widget>[

                    Padding(
                        padding: EdgeInsets.all(10)
                    ),

                    RaisedButton(
                      color: Color(0XFFFE7950),
                      child: Text("Salvar PDV",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      onPressed: (){
                        pressionarBotaoPDV(context);
                      },

                    ),

                    Padding(
                        padding: EdgeInsets.all(10)
                    ),

                    RaisedButton(
                      color: Color(0XFFFE7950),
                      child: Text("Salvar PDA",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      onPressed: (){
                        pressionarBotaoPDA(context);
                      },

                    ),


                    Padding(
                        padding: EdgeInsets.all(10)
                    ),


                    RaisedButton(
                      color: Color(0XFFFE7950),
                      child: Text("Salvar PDF",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      onPressed: (){
                        pressionarBotaoPDF(context);
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
          //esse valor define o tamanho da barra inferior
          padding: EdgeInsets.all(20),

        ),
      ),


    );

  }
}
