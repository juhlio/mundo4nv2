import 'package:explore_mundov2/screens/contato_screen.dart';
import 'package:explore_mundov2/screens/post_screen.dart';
import 'package:explore_mundov2/screens/sobre_screen.dart';
import 'package:explore_mundov2/widgets/home_bottom_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../widgets/home_app_bar.dart';

class LugaresModel {
  String lugar_nome;
  String lugar_descricao;
  String lugar_cidadepais;
  String lugar_imagem;

  LugaresModel(this.lugar_nome, this.lugar_descricao, this.lugar_cidadepais,
      this.lugar_imagem);
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  static List<LugaresModel> lugares = [
    LugaresModel(
        'Rio de Janeiro',
        'Cristo Redentor é uma estátua que retrata Jesus Cristo localizada no topo do morro do Corcovado, a 709 metros acima do nível do mar, com vista para parte considerável da cidade brasileira do Rio de Janeiro. Feito de concreto armado e pedra-sabão, tem trinta metros de altura (uma das maiores estátuas do mundo), sem contar os oito metros do pedestal, sendo a mais alta estátua do mundo no estilo Art Déco. Seus braços se esticam por 28 metros de largura e a estrutura pesa 1145 toneladas.',
        'Rio de Janeiro, Brazil',
        'images/city1.jpg'),
    LugaresModel(
        'Grand Canyon',
        'O Grand Canyon, no Arizona, é uma formação natural constituída de camadas de rocha vermelha, que revelam milhões de anos da história geológica em seção transversal. De vastas proporções, o cânion tem, em média, 16 km de largura e 1,6 km de profundidade ao longo de seu comprimento de 445 km. Grande parte da área é um parque nacional, com as paisagens impressionantes e as corredeiras de águas bravas do Rio Colorado.',
        'Arizona, EUA',
        'images/city2.jpg'),
    LugaresModel(
        'Lisboa',
        ' Torre de Belém, antigamente Torre de São Vicente a Par de Belém, oficialmente Torre de São Vicente,[1] é uma fortificação localizada na freguesia de Belém, concelho e distrito de Lisboa, em Portugal. Na margem direita do rio Tejo, onde existiu outrora a praia de Belém, era primitivamente cercada pelas águas em todo o seu perímetro. Ao longo dos séculos foi envolvida pela praia, até se incorporar hoje a terra firme. Um dos ex libris da cidade, o monumento é um ícone da arquitetura do reinado de D. Manuel I, numa síntese entre a torre de menagem de tradição medieval e o baluarte moderno, onde se dispunham peças de artilharia.',
        'Lisboa, Portugal',
        'images/city3.jpg'),
    LugaresModel(
        'Paris',
        'Torre Eiffel (em francês: Tour Eiffel, /tuʀ ɛfɛl/) é uma torre de treliça de ferro forjado no Champ de Mars, em Paris, França. Tem o nome do engenheiro Gustave Eiffel, cuja empresa projetou e construiu a torre.',
        'Paris, França',
        'images/city4.jpg'),
    LugaresModel(
        'Vaticano',
        'Vaticano ou Cidade do Vaticano, oficialmente Estado da Cidade do Vaticano (em italiano: Stato della Città del Vaticano [tʃitˈta del vatiˈkaːno]; em latim: Civitas Vaticana),[7] é a sede[8] da Igreja Católica e uma cidade-Estado soberana sem costa marítima, cujo território consiste de um enclave murado dentro da cidade de Roma, capital da Itália. Com aproximadamente 44 hectares (0,44 km²) e com uma população estimada de 1 000 habitantes, é a menor entidade territorial do mundo administrada por um Estado.[9][10]',
        'Vaticano, Italia',
        'images/city5.jpg'),
    LugaresModel(
        'Ilhas Maldivas',
        'A República das Maldivas (em divehi: ދިވެހިރާއްޖޭގެ ޖުމްހޫރިއްޔާ, transl. Dhivehi Raajjeyge Jumhooriyya) é um pequeno país insular situado no Oceano Índico ao sudoeste do Sri Lanka e da Índia, ao sul do continente asiático, constituído por 1 196 ilhas, das quais 203 são habitadas, localizadas a cerca de 450 km ao sul da península do Decão. A sua única fronteira real é com o território indiano das Laquedivas, a norte, mas são também os vizinhos mais próximos do Território Britânico do Oceano Índico, um conjunto de ilhas localizadas ao sul das Maldivas.',
        'Ilhas Maldivas',
        'images/city6.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 180,
                  child: TextField(
                    onChanged: (value) => searchLugar(value),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Pesquisar Destino',
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ContatoScreen(), // Fazer a pagina contato screen!!
                      ),
                    );
                  },
                  child: Container(
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
                      Icons.phone,
                      size: 28,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            SobreScreen(), // Fazer a pagina contato screen!!
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 6),
                      ],
                    ),
                    child: Icon(
                      Icons.people,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 28,
                    ),
                  ),
                )
              ],
            ),
          )),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: display_list.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, "/post_screen",
                                  //arguments: index + 1,
                                  arguments: LugaresModel(
                                    display_list[index].lugar_nome,
                                    display_list[index].lugar_descricao,
                                    display_list[index].lugar_cidadepais,
                                    display_list[index].lugar_imagem,
                                  ));
                            },
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(
                                      display_list[index].lugar_imagem),

                                  /// AssetImage("images/city${index + 1}.jpg"),
                                  fit: BoxFit.cover,
                                  opacity: 0.8,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  display_list[index].lugar_nome,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ]),
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      )),
      //bottomNavigationBar: HomeBottomBar(),
    );
  }

  List<LugaresModel> display_list = List.from(lugares);

  void searchLugar(String valor) {
    setState(() {
      display_list = lugares
          .where((element) =>
              element.lugar_nome.toLowerCase().contains(valor.toLowerCase()))
          .toList();
    });

    print(display_list.first.lugar_imagem);
  }
}
