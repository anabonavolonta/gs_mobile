import 'package:flutter/material.dart';
import 'package:mobile_global_solution/screen/pages/register.page.dart';
import 'package:mobile_global_solution/screen/widgets/tabs.page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static final String title = 'Card Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Color.fromARGB(255, 223, 163, 94),
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            buildRoundedCard(),
            buildImageInteractionCard(),
            buildImageInteractionCard1(),
            buildImageInteractionCard2(),
            buildRoundedCard2(),
          ],
        ),
      );

  Widget buildRoundedCard() => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bem-vindo(a)!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Temos o match perfeito entre agricultura, cuidados pet e a realização de produtos nutricionais para o seu amigo de quatro patas.',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      );

  Widget buildImageInteractionCard() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: NetworkImage(
                    'https://i.ibb.co/KKCW5qG/img-dia-do-agricultor-e-agricultura-familiar.jpg',
                  ),
                  height: 240,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    'Agricultores',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: Text(
                'Trazendo toda a visbilidade para os Agricultores Familiares.O app diponibilizará  informações de todos os nossos fornecedores, suas histórias, nomes e rostos.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      );

  Widget buildImageInteractionCard1() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: NetworkImage(
                    'https://i.ibb.co/x8SbZBf/alimentacao-natural-cachorro.jpg',
                  ),
                  height: 240,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    'Produtos',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: Text(
                'Teremos um catálogo de marmitinhas para cada tipo, porte pequeno, médio, grande, cães e gatos idosos, gestantes e muito mais.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      );

  Widget buildImageInteractionCard2() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: NetworkImage(
                    'https://i.ibb.co/2PV9ZLj/visiting-veterinarian-2021-09-24-02-48-06-utc-1-1-1024x683.jpg',
                  ),
                  height: 240,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    'Blog',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: Text(
                'Você conseguirá interagir com o blog deixando comentários e tirando dúvidas sobre a artigo postado, além de conseguir postar a foto do seu amigo de quatro patas para todos se encantarem.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      );

  Widget buildRoundedCard2() => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cadastre-se',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Quer ser um agricultor parceiro? Cadastre-se e saiba mais',
                style: TextStyle(fontSize: 16),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  FlatButton(
                    child: Text('Cadastrar'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                        ),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      );
}
