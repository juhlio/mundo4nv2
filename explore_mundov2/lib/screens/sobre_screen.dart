import 'package:explore_mundov2/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SobreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                        )
                      ]),
                  child: Icon(
                    Icons.arrow_back,
                    size: 28,
                  ),
                ),
              ),
              CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/agencia.jpg')),
              Text(
                'Explore Mundo',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Color(0xfff07b3f),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 2, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                  ),
                  title: Text(
                    'Explore Mundo foi fundada em 2024 com o desejo de mudar o mundo. Estabelecemos a melhor plataforma de pacote de viagens do mundo e essa é nossa missão. Nossa equipe está totalmente distribuída ao redor do mundo. Estamos sempre em busca de grandes talentos que compartilhem dos mesmos valores e sejam tão entusiasmados quanto nós. Atendemos a milhares de clientes de 128 países em todo o mundo.',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
