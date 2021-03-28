import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourflix_app/Menu.dart';
import 'package:tourflix_app/main.dart';
import 'package:tourflix_app/Consulta.dart';
import 'package:tourflix_app/Simulacao.dart';


class Inclusao extends StatefulWidget {
  @override
  _InclusaoState createState() => _InclusaoState();
}

class _InclusaoState extends State<Inclusao> {
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

                  //habilitar ou desabilitar campo de TextField
                  enabled: true,
                  //número máximo de caracteres, porém permite que a digitação continue no TextField
                  //maxLength: 11,
                  //como verdadeira, impede que seja digitado mais caracteres do que o definido anteriormente, ideal para cpf, tel
                  //maxLengthEnforced: true,

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


                      //onPressed: _calcular,

                      /*onPressed: (){
                      print("Valor Alcool ${_textEditingControllerAlcool.text}");
                      print("Valor Gasolina ${_textEditingControllerGasolina.text}");
                    },*/

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
