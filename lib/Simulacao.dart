import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourflix_app/Menu.dart';
import 'package:tourflix_app/main.dart';
import 'package:tourflix_app/Inclusao.dart';
import 'package:tourflix_app/Consulta.dart';
import 'package:tourflix_app/Contratacao.dart';


class Simulacao extends StatefulWidget {
  @override
  _SimulacaoState createState() => _SimulacaoState();
}

class _SimulacaoState extends State<Simulacao> {
  bool _opcaoRestauranteUm = false;
  bool _opcaoRestauranteDois = false;
  bool _opcaoHotel = false;
  bool _opcaoPraca = false;
  bool _opcaoMuseu = false;
  bool _opcaoBoate = false;
  bool _opcaoShopping = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0XFFFE7950),
        title: Text("Simulação"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),

          child: Column(

            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top: 20),
              ),

              Text("ORGANIZADOR AUTOMÁTICO DE VIAGEM: Apenas preencha suas preferências e te daremos um cronograma completo, com todos os passeios e para todos os dias, onde você bem entender.",
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
                    labelText: "Cidade, Estado, País",
                  ),

                  //habilitar ou desabilitar campo de TextField
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
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    labelText: "Durante quantos dias pretende ficar",
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
              ),


              CheckboxListTile(
                title: Text("Restaurante",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.deepOrange,
                  ),
                ),
                subtitle: Text("Ao ar livre",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0XFF11a6a5),
                  ),
                ),

                activeColor: Color.fromRGBO(230, 92, 0, 1),
                value: _opcaoRestauranteUm,
                secondary: Icon(Icons.add_location_alt_outlined, color: Color(0XFF11a6a5),),
                onChanged: (bool valorOpcao) {
                  setState(() {
                    _opcaoRestauranteUm = valorOpcao;
                  });
                },
              ),

              CheckboxListTile(
                title: Text("Restaurante",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.deepOrange,
                  ),
                ),
                subtitle: Text("Movimentado",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0XFF11a6a5),
                  ),
                ),

                activeColor: Color.fromRGBO(230, 92, 0, 1),
                value: _opcaoRestauranteDois,
                secondary: Icon(Icons.add_location_alt_outlined, color: Color(0XFF11a6a5)),
                onChanged: (bool valorOpcao) {
                  setState(() {
                    _opcaoRestauranteDois = valorOpcao;
                  });
                },
              ),

              CheckboxListTile(
                title: Text("Hotel",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.deepOrange,
                  ),
                ),
                subtitle: Text("...",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0XFF11a6a5),
                  ),
                ),

                activeColor: Color.fromRGBO(230, 92, 0, 1),
                value: _opcaoHotel,
                secondary: Icon(Icons.add_location_alt_outlined, color: Color(0XFF11a6a5)),
                onChanged: (bool valorOpcao) {
                  setState(() {
                    _opcaoHotel = valorOpcao;
                  });
                },
              ),

              CheckboxListTile(
                title: Text("Praça",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.deepOrange,
                  ),
                ),
                subtitle: Text("...",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0XFF11a6a5),
                  ),
                ),

                activeColor: Color.fromRGBO(230, 92, 0, 1),
                value: _opcaoPraca,
                secondary: Icon(Icons.add_location_alt_outlined, color: Color(0XFF11a6a5)),
                onChanged: (bool valorOpcao) {
                  setState(() {
                    _opcaoPraca = valorOpcao;
                  });
                },
              ),

              CheckboxListTile(
                title: Text("Museu",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.deepOrange,
                  ),
                ),
                subtitle: Text("...",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0XFF11a6a5),
                  ),
                ),

                activeColor: Color.fromRGBO(230, 92, 0, 1),
                value: _opcaoMuseu,
                secondary: Icon(Icons.add_location_alt_outlined, color: Color(0XFF11a6a5)),
                onChanged: (bool valorOpcao) {
                  setState(() {
                    _opcaoMuseu = valorOpcao;
                  });
                },
              ),

              CheckboxListTile(
                title: Text("Boate",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.deepOrange,
                  ),
                ),
                subtitle: Text("...",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0XFF11a6a5),
                  ),
                ),

                activeColor: Color.fromRGBO(230, 92, 0, 1),
                value: _opcaoBoate,
                secondary: Icon(Icons.add_location_alt_outlined, color: Color(0XFF11a6a5)),
                onChanged: (bool valorOpcao) {
                  setState(() {
                    _opcaoBoate= valorOpcao;
                  });
                },
              ),

              CheckboxListTile(
                title: Text("Shopping",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.deepOrange,
                  ),
                ),
                subtitle: Text("...",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0XFF11a6a5),
                  ),
                ),

                activeColor: Color.fromRGBO(230, 92, 0, 1),
                value: _opcaoShopping,
                secondary: Icon(Icons.add_location_alt_outlined, color: Color(0XFF11a6a5)),
                onChanged: (bool valorOpcao) {
                  setState(() {
                    _opcaoShopping = valorOpcao;
                  });
                },
              ),


              Padding(
                  padding: EdgeInsets.all(10)
              ),

              RaisedButton(
                color: Color(0XFFFE7950),
                  child: Text("Simular",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Consulta(),
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
          padding: EdgeInsets.all(20),

        ),
      ),


    );
  }
}

