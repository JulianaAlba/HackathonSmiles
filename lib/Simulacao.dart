import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourflix_app/Menu.dart';
import 'package:tourflix_app/main.dart';
import 'package:tourflix_app/Inclusao.dart';
import 'package:tourflix_app/Consulta.dart';


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
                //Usado quando os box iniciam selecionados, daí a cor do título e subtítulo seguem a cor do chexkbox (geralmente usados em campos desabilitados, lembrando que a variável declarada deve ser alterada para true)
                //selected: true,
                secondary: Icon(Icons.add_location_alt_outlined, color: Color(0XFF11a6a5),),
                onChanged: (bool valorOpcao) {
                  setState(() {
                    _opcaoRestauranteUm = valorOpcao;
                  });
                  //print("Checkbox ${valorOpcao.toString()}");
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
                //Usado quando os box iniciam selecionados, daí a cor do título e subtítulo seguem a cor do chexkbox (geralmente usados em campos desabilitados, lembrando que a variável declarada deve ser alterada para true)
                //selected: true,
                secondary: Icon(Icons.add_location_alt_outlined, color: Color(0XFF11a6a5)),
                onChanged: (bool valorOpcao) {
                  setState(() {
                    _opcaoRestauranteDois = valorOpcao;
                  });
                  //print("Checkbox ${valorOpcao.toString()}");
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
                //Usado quando os box iniciam selecionados, daí a cor do título e subtítulo seguem a cor do chexkbox (geralmente usados em campos desabilitados, lembrando que a variável declarada deve ser alterada para true)
                //selected: true,
                secondary: Icon(Icons.add_location_alt_outlined, color: Color(0XFF11a6a5)),
                onChanged: (bool valorOpcao) {
                  setState(() {
                    _opcaoHotel = valorOpcao;
                  });
                  //print("Checkbox ${valorOpcao.toString()}");
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
                //Usado quando os box iniciam selecionados, daí a cor do título e subtítulo seguem a cor do chexkbox (geralmente usados em campos desabilitados, lembrando que a variável declarada deve ser alterada para true)
                //selected: true,
                secondary: Icon(Icons.add_location_alt_outlined, color: Color(0XFF11a6a5)),
                onChanged: (bool valorOpcao) {
                  setState(() {
                    _opcaoPraca = valorOpcao;
                  });
                  //print("Checkbox ${valorOpcao.toString()}");
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
                //Usado quando os box iniciam selecionados, daí a cor do título e subtítulo seguem a cor do chexkbox (geralmente usados em campos desabilitados, lembrando que a variável declarada deve ser alterada para true)
                //selected: true,
                secondary: Icon(Icons.add_location_alt_outlined, color: Color(0XFF11a6a5)),
                onChanged: (bool valorOpcao) {
                  setState(() {
                    _opcaoMuseu = valorOpcao;
                  });
                  //print("Checkbox ${valorOpcao.toString()}");
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
                //Usado quando os box iniciam selecionados, daí a cor do título e subtítulo seguem a cor do chexkbox (geralmente usados em campos desabilitados, lembrando que a variável declarada deve ser alterada para true)
                //selected: true,
                secondary: Icon(Icons.add_location_alt_outlined, color: Color(0XFF11a6a5)),
                onChanged: (bool valorOpcao) {
                  setState(() {
                    _opcaoBoate= valorOpcao;
                  });
                  //print("Checkbox ${valorOpcao.toString()}");
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
                //Usado quando os box iniciam selecionados, daí a cor do título e subtítulo seguem a cor do chexkbox (geralmente usados em campos desabilitados, lembrando que a variável declarada deve ser alterada para true)
                //selected: true,
                secondary: Icon(Icons.add_location_alt_outlined, color: Color(0XFF11a6a5)),
                onChanged: (bool valorOpcao) {
                  setState(() {
                    _opcaoShopping = valorOpcao;
                  });
                  //print("Checkbox ${valorOpcao.toString()}");
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

