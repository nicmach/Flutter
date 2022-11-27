import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/*
class YourWebView extends StatelessWidget {
  String url;
  YourWebView(this.url);

  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TV App"),
      ),
      body: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl: url,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
          onPageStarted: (String url) {
            print('Seite wird geladen: $url');
          },
          onPageFinished: (String url) {
            print('Seite wurde geladen: $url');
          },
          gestureNavigationEnabled: true,
        );
    })
    );
  }
}*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  static const String _title = 'Thüringer Fernsehen';

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      title: _title,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  //@override
  //_MyHomePageState createState() => _MyHomePageState();
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  /*
  int _counter = 0;

  void _incrementCounter()
  {
    setState(() {
      _counter++;
    });
  }

  inform(given_url) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => YourWebView(given_url))
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("TV App"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: inform("https://www.altenburg.tv/"),
                child: Text("TV Altenburg"),
              ),
            ],
          ),
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
    );
  }*/

  late WebViewController _webViewController;

  final List<Widget> _pages = <Widget>[

    Scaffold(
      appBar: AppBar(
        title: Text("TV App"),
      ),
      body: WebView(
        initialUrl: 'https://www.altenburg.tv/',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController controller) {
          _webViewController = controller;
        },
      ),
    ),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Datenschutz"),
          Icon(Icons.gpp_maybe),
        ],
      ),
    ),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Impressum"),
          Icon(Icons.error_outlined),
        ],
      ),
    ),
  ];





    /*Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          child: Text('Open URL'),
          onPressed: // inform("https://www.altenburg.tv/"),
        ),
      ),
    ),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Home"),
          Icon(Icons.home),
        ],
      ),
    ),*/


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thüringer Fernsehen')
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gpp_maybe),
            label: 'Datenschutz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.error_outlined),
            label: 'Impressum',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }

}
