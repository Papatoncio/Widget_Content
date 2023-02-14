import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Contenedores',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(), //Se crea una clase nueva
    );
  }
}

//Borrar clase MyHomePage y crear Home con st - StatelessWidget
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/sala.png',
          height: 40.0,
          width: 40.0,
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Icon(Icons.dehaze),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Continua Estudiando',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    width: 200,
                    height: 150,
                    color: Colors.red[50],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    width: 200,
                    height: 150,
                    color: Colors.green[100],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    width: 200,
                    height: 150,
                    color: Colors.teal[100],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    width: 200,
                    height: 150,
                    color: Colors.yellow[100],
                  ),
                ),
              ],
            ),
          ),
          ManejoTabs(),
          //const TabBarDemo(),
        ],
      ),
    );
  }
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.book)),
                Tab(icon: Icon(Icons.workspace_premium)),
                Tab(icon: Icon(Icons.folder_special)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.book),
              Icon(Icons.workspace_premium),
              Icon(Icons.folder_special),
            ],
          ),
        ),
      ),
    );
  }
}

class ManejoTabs extends StatefulWidget {
  const ManejoTabs({super.key});

  @override
  State<ManejoTabs> createState() => _ManejoTabsState();
}

class _ManejoTabsState extends State<ManejoTabs> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(2);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      //color: Colors.blue[100],
      child: Column(
        children: <Widget>[
          DefaultTabController(
            length: 3,
            child: TabBar(
              controller: _tabController,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.red,
              indicator: BoxDecoration(color: Colors.green),
              tabs: [
                Tab(text: 'Cursos'),
                Tab(text: 'Workshops'),
                Tab(text: 'Especialidades'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ContenUno(),
                ContenDos(),
                ContenTres(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContenUno extends StatelessWidget {
  const ContenUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Text(
          'Cursos',
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30, //¿Cómo cambiar color?
          ),
        ),
        Text(
          'La cantida de cursos que pueden encontrar en esta plataforma es muy variada, ademas de que hay muchas opciones para cada tema por lo que no dudes en buscar el que mas se ajuste a tus gustos',
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 20, //¿Cómo cambiar color?
          ),
        ),
        Icon(Icons.book),
      ]),
    );
  }
}

class ContenDos extends StatelessWidget {
  const ContenDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Text(
          'Workshops',
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30, //¿Cómo cambiar color?
          ),
        ),
        Text(
          'En este apartado podras encontrar una gran variedad de talleres con los que puedes aprender y reforzar distintas habilidades',
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 20, //¿Cómo cambiar color?
          ),
        ),
        Icon(Icons.workspace_premium),
      ]),
    );
  }
}

class ContenTres extends StatelessWidget {
  const ContenTres({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Text(
          'Especilidades',
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30, //¿Cómo cambiar color?
          ),
        ),
        Text(
          'En este apartado pueder revisar las distintas especialidades con las que cuenta la aplicación',
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 20, //¿Cómo cambiar color?
          ),
        ),
        Icon(Icons.folder_special),
      ]),
    );
  }
}
