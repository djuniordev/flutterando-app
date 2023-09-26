import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String senha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //Scrow na tela toda
        child: SizedBox(
          width: MediaQuery.of(context).size.width, //Pegar largura automatico
          height: MediaQuery.of(context).size.height, //Pegar altura automatico
          child: Padding(
            padding: const EdgeInsets.all(8.0), //Espaço nas bordas
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: 100,
                width: 100,
                child: Image.asset("assets/images/logoflutter.png"),
              ),
              SizedBox(
                height: 10,
              ),
              //Image.network("https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png")), colocar imagem da internet
              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType
                    .emailAddress, //Aparecer o @ no teclado do usuario
                decoration: InputDecoration(
                    labelText: "Email", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (text) {
                  senha = text;
                },
                obscureText: true, //Deixar a senha em *
                decoration: InputDecoration(
                    //Decorar o input
                    labelText: "Senha",
                    border: OutlineInputBorder()), //Deixar borda arredondada
              ),
              SizedBox(
                //Dar um Espaço
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: Size(150, 60),
                ), //Botao
                onPressed: () {
                  if (email == "123" && senha == "123") {
                    Navigator.of(context)
                        .pushReplacementNamed('/home'); //Navegadar pelo route
                  } else {
                    print("Login inválido");
                  }
                },
                child: Text('Entrar'),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
