import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/images/sala.png',
            width: 40.0,
            height: 40.0,
          ),
          actions: const <Widget>[
            Icon(Icons.search),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Icon(Icons.dehaze),
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('Continua Estudiado',
                    style: TextStyle(color: Colors.grey[400], fontSize: 20))),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        width: 200,
                        height: 150,
                        color: Colors.lightBlue,
                      )),
                  Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        width: 200,
                        height: 150,
                        color: Colors.green[100],
                      )),
                  Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        width: 200,
                        height: 150,
                        color: Colors.indigo[100],
                      )),
                  Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        width: 200,
                        height: 150,
                        color: Colors.lime[100],
                      )),
                ],
              ),
            ),
            const DefaultTabController(
                length: 3,
                // ignore: unnecessary_const
                child: TabBar(
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.transparent,
                  indicator: BoxDecoration(color: Colors.blueAccent),
                  tabs: [
                    Tab(
                      icon: Icon(Icons.work),
                      child: TabBarView(children: [
                        Text('asdsad'),
                        Icon(Icons.battery_unknown_outlined)
                      ]),
                    ),
                    Tab(
                      icon: Icon(Icons.work),
                      child: TabBarView(children: [
                        Text('asdsad'),
                        Icon(Icons.battery_unknown_outlined)
                      ]),
                    ),
                    Tab(
                      icon: Icon(Icons.work),
                      child: TabBarView(children: [
                        Text('asdsad'),
                        Icon(Icons.battery_unknown_outlined)
                      ]),
                    ),
                  ],
                )),
          ],
        ));
  }
}
