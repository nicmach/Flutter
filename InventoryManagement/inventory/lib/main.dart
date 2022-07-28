/** 
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Navigation Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(title: 'HomePage'));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: <
                    Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const FleischPage(title: 'FleischPage');
                  }));
                },
                icon: const Icon(Icons.fastfood),
                iconSize: 100),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const GemuesePage(title: 'GemuesePage');
                  }));
                },
                icon: const Icon(Icons.fastfood),
                iconSize: 100)
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ObstPage(title: 'ObstPage');
                  }));
                },
                icon: const Icon(Icons.fastfood),
                iconSize: 100),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const TrinkenPage(title: 'TrinkenPage');
                  }));
                },
                icon: const Icon(Icons.fastfood),
                iconSize: 100)
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SuessigkeitenPage(title: 'SuessigkeitenPage');
                  }));
                },
                icon: const Icon(Icons.fastfood),
                iconSize: 100),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const GewuerzePage(title: 'GewuerzePage');
                  }));
                },
                icon: const Icon(Icons.fastfood),
                iconSize: 100)
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SaucePage(title: 'SaucePage');
                  }));
                },
                icon: const Icon(Icons.fastfood),
                iconSize: 100),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SonstigesPage(title: 'SonstigesPage');
                  }));
                },
                icon: const Icon(Icons.fastfood),
                iconSize: 100)
          ])
        ])));
  }
}



class FleischPage extends StatelessWidget {
  const FleischPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'))));
  }
}

class SonstigesPage extends StatelessWidget {
  const SonstigesPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'))));
  }
}

class GemuesePage extends StatelessWidget {
  const GemuesePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'))));
  }
}

class ObstPage extends StatelessWidget {
  const ObstPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'))));
  }
}

class TrinkenPage extends StatelessWidget {
  const TrinkenPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'))));
  }
}

class SuessigkeitenPage extends StatelessWidget {
  const SuessigkeitenPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'))));
  }
}

class GewuerzePage extends StatelessWidget {
  const GewuerzePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'))));
  }
}

class SaucePage extends StatelessWidget {
  const SaucePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'))));
  }
}
*/

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app/locator.dart';
import 'models/todo.adapter.dart';
import 'ui/todo_screen/todos_screen_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter());
  await Hive.openBox('todos');
  
  setupLocator();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TodosScreenView(),
      theme: ThemeData.dark(),
      title: 'Flutter Stacked Todos',
    );
  }
}