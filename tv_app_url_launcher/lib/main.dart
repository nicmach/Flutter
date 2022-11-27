import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'provider/theme_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  static const String _title = 'Thüringer Fernsehen';

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: _title,
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
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

  final List<Widget> _pages = <Widget>[

    Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDF011B),
        title: Text("Fernsehsender"),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(32),
        child: Row(
           children: [
             Expanded(
                 child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Card(
                        shadowColor: Colors.black,
                        elevation: 8,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                              Ink.image(
                                image: AssetImage("assets/1.0x/ABG_Wide.jpg"),
                                child: InkWell(
                                  onTap: () async {
                                    final Uri _url = Uri.parse("https://www.altenburg.tv/");

                                    if (await canLaunchUrl(_url)) {
                                      await launchUrl(
                                        _url,
                                        mode: LaunchMode.inAppWebView,
                                      );
                                    }
                                  },
                                ),
                                height: 150,
                                width: 250,
                                fit: BoxFit.cover,
                              ),

                          ],
                        )
                      ),
                      Card(
                          shadowColor: Colors.black,
                          elevation: 8,
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Ink.image(
                                image: AssetImage("assets/1.0x/Salve_TV.jpg"),
                                child: InkWell(
                                  onTap: () async {
                                    final Uri _url = Uri.parse("https://www.salve.tv/tv/RegioLounge/");

                                    if (await canLaunchUrl(_url)) {
                                      await launchUrl(
                                        _url,
                                        mode: LaunchMode.inAppWebView,
                                      );
                                    }
                                  },
                                ),
                                height: 150,
                                width: 250,
                                fit: BoxFit.cover,
                              ),

                            ],
                          )
                      ),
                      Card(
                          shadowColor: Colors.black,
                          elevation: 8,
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Ink.image(
                                image: AssetImage("assets/1.0x/Jena_TV.png"),
                                child: InkWell(
                                  onTap: () async {
                                    final Uri _url = Uri.parse("https://www.jenatv.de/");

                                    if (await canLaunchUrl(_url)) {
                                      await launchUrl(
                                        _url,
                                        mode: LaunchMode.inAppWebView,
                                      );
                                    }
                                  },
                                ),
                                height: 150,
                                width: 250,
                                fit: BoxFit.cover,
                              ),

                            ],
                          )
                      ),
                    ],
                 )
             ),
             Flexible(
                 fit: FlexFit.tight,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Card(
                            shadowColor: Colors.black,
                            elevation: 8,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Ink.image(
                                  image: AssetImage("assets/1.0x/Oscar_TV.jpg"),
                                  child: InkWell(
                                    onTap: () async {
                                      final Uri _url = Uri.parse("https://www.oscar-am-freitag.de/kategorie/oscaramfreitagtv/");

                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(
                                          _url,
                                          mode: LaunchMode.inAppWebView,
                                        );
                                      }
                                    },
                                  ),
                                  height: 150,
                                  width: 250,
                                  fit: BoxFit.cover,
                                ),

                              ],
                            )
                        ),
                        Card(
                            shadowColor: Colors.black,
                            elevation: 8,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Ink.image(
                                  image: AssetImage("assets/1.0x/SRF_TV.jpg"),
                                  child: InkWell(
                                    onTap: () async {
                                      final Uri _url = Uri.parse("https://www.srf-online.de/");

                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(
                                          _url,
                                          mode: LaunchMode.inAppWebView,
                                        );
                                      }
                                    },
                                  ),
                                  height: 150,
                                  width: 250,
                                  fit: BoxFit.cover,
                                ),

                              ],
                            )
                        ),
                        Card(
                            shadowColor: Colors.black,
                            elevation: 8,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Ink.image(
                                  image: AssetImage("assets/1.0x/Rennsteig.jpg"),
                                  child: InkWell(
                                    onTap: () async {
                                      final Uri _url = Uri.parse("https://www.rennsteig.tv/");

                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(
                                          _url,
                                          mode: LaunchMode.inAppWebView,
                                        );
                                      }
                                    },
                                  ),
                                  height: 150,
                                  width: 250,
                                  fit: BoxFit.cover,
                                ),

                              ],
                            )
                        ),
                      ]
                  )
                 ),

         ],
        ),
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


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFDF011B),
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
