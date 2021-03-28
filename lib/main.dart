import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourflix_app/Menu.dart';
import 'package:tourflix_app/Inclusao.dart';
import 'package:tourflix_app/Consulta.dart';
import 'package:tourflix_app/Simulacao.dart';
import 'package:tourflix_app/Contratacao.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela de Acesso/Cadastro',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  bool isLogin = true;
  Animation<double> loginSize;
  AnimationController loginController;
  AnimatedOpacity opacityAnimation;
  Duration animationDuration = Duration(milliseconds: 270);

  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIOverlays([]);

    loginController =
        AnimationController(vsync: this, duration: animationDuration);

    opacityAnimation =
        AnimatedOpacity(opacity: 0.0, duration: animationDuration);
  }

  @override
  void dispose() {
    loginController.dispose();
    super.dispose();
  }

  Widget _buildLoginWidgets() {
    return Container(
      padding: EdgeInsets.only(bottom: 62, top: 16),
      width: MediaQuery.of(context).size.width,
      height: loginSize.value,
      decoration: BoxDecoration(
          color: Color(0XFFFE7950),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(190),
              bottomRight: Radius.circular(190))),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: AnimatedOpacity(
          opacity: loginController.value,
          duration: animationDuration,
          child: GestureDetector(
            onTap: isLogin ? null : () {
              loginController.reverse();

              setState(() {
                isLogin = !isLogin;
              });
            },
            child: Container(
              child: Text(
                'ACESSAR'.toUpperCase(),
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginComponents() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Visibility(
          visible: isLogin,
          child: Padding(
            padding: const EdgeInsets.only(left: 42, right: 42),
            child: Column(
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.white, height: 0.5),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32))
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: TextField(
                    //keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    style: TextStyle(color: Colors.white, height: 0.5),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key),
                        hintText: 'Senha',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(32)))),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 24),
                ),

                RaisedButton(
                  color: Colors.white,
                  //borderRadius: BorderRadius.circular(24),

                  child:
                  Text("ACESSAR",
                    style: TextStyle(
                      color: Color(0XFFFE7950),
                      fontSize: 18,

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

      ],
    );
  }

  Widget _buildRegistercomponents() {
    return Padding(
      padding: EdgeInsets.only(
          left: 42,
          right: 42,
          top: 32,
          bottom: 32
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: Text(
              'CADASTRAR'.toUpperCase(),
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFFFE7950)),
            ),
          ),
          TextField(
            style: TextStyle(color: Colors.black, height: 0.5),
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                ),
                hintText: 'Email',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32)))),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16, top: 16),
            child: TextField(
              style: TextStyle(color: Colors.black, height: 0.5),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key),
                  hintText: 'Senha',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32)))),
            ),
          ),
          TextField(
            style: TextStyle(color: Colors.black, height: 0.5),
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.vpn_key),
                hintText: 'Confirmar Senha',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32)))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24),
          ),

            RaisedButton(
              color: Color(0XFFFE7950),

              child: Text("CADASTRAR",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),

              //Não está operando, mas o onPressed serve para validar a cor
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
    );
  }

  @override
  Widget build(BuildContext context) {
    double _defaultLoginSize = MediaQuery.of(context).size.height / 1.6;

    loginSize = Tween<double>(begin: _defaultLoginSize, end: 200).animate(
        CurvedAnimation(parent: loginController, curve: Curves.linear));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedOpacity(
              opacity: isLogin ? 0.0 : 1.0,
              duration: animationDuration,
              child: Container(child: _buildRegistercomponents()),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: isLogin && !loginController.isAnimating ? Colors.white : Colors.transparent,
              width: MediaQuery.of(context).size.width,
              height: _defaultLoginSize/1.5,
              child: Visibility(
                visible: isLogin,
                child: GestureDetector(
                  onTap: () {
                    loginController.forward();
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
                  child: Center(
                    child: Text(
                      'CADASTRAR'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFFFE7950),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedBuilder(
            animation: loginController,
            builder: (context, child) {
              return _buildLoginWidgets();
            },
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
                child: Center(child: _buildLoginComponents()),
              )
          )
        ],
      ),
    );
  }
}
