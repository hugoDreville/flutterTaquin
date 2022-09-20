import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taquin',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Taquin'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Taquin monJeu = Taquin();
  String aGagne = "";

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonTheme(
                  minWidth: 70.0,
                  height: 70.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.green.shade50)),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (!monJeu.getGagnant()) {
                          if (monJeu.jouer(monJeu.getPlateau()[0])) {
                            monJeu.addCounter();
                            if (monJeu.estGagnant()) {
                              aGagne = "Victoire!";
                              monJeu.changeGagnant();
                            }
                          }
                        }
                      });
                    },
                    child: Text(monJeu.getPlateau()[0].toString()),
                  ),
                ),
                ButtonTheme(
                  minWidth: 70.0,
                  height: 70.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.green.shade50)),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (!monJeu.getGagnant()) {
                          if (monJeu.jouer(monJeu.getPlateau()[1])) {
                            monJeu.addCounter();
                            if (monJeu.estGagnant()) {
                              aGagne = "Victoire!";
                              monJeu.changeGagnant();
                            }
                          }
                        }
                      });
                    },
                    child: Text(monJeu.getPlateau()[1].toString()),
                  ),
                ),
                ButtonTheme(
                  minWidth: 70.0,
                  height: 70.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.green.shade50)),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (!monJeu.getGagnant()) {
                          if (monJeu.jouer(monJeu.getPlateau()[2])) {
                            monJeu.addCounter();
                            if (monJeu.estGagnant()) {
                              aGagne = "Victoire!";
                              monJeu.changeGagnant();
                            }
                          }
                        }
                      });
                    },
                    child: Text(monJeu.getPlateau()[2].toString()),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonTheme(
                  minWidth: 70.0,
                  height: 70.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.green.shade50)),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (!monJeu.getGagnant()) {
                          if (monJeu.jouer(monJeu.getPlateau()[3])) {
                            monJeu.addCounter();
                            if (monJeu.estGagnant()) {
                              aGagne = "Victoire!";
                              monJeu.changeGagnant();
                            }
                          }
                        }
                      });
                    },
                    child: Text(monJeu.getPlateau()[3].toString()),
                  ),
                ),
                ButtonTheme(
                  minWidth: 70.0,
                  height: 70.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.green.shade50)),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (!monJeu.getGagnant()) {
                          if (monJeu.jouer(monJeu.getPlateau()[4])) {
                            monJeu.addCounter();
                            if (monJeu.estGagnant()) {
                              aGagne = "Victoire!";
                              monJeu.changeGagnant();
                            }
                          }
                        }
                      });
                    },
                    child: Text(monJeu.getPlateau()[4].toString()),
                  ),
                ),
                ButtonTheme(
                  minWidth: 70.0,
                  height: 70.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.green.shade50)),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (!monJeu.getGagnant()) {
                          if (monJeu.jouer(monJeu.getPlateau()[5])) {
                            monJeu.addCounter();
                            if (monJeu.estGagnant()) {
                              aGagne = "Victoire!";
                              monJeu.changeGagnant();
                            }
                          }
                        }
                      });
                    },
                    child: Text(monJeu.getPlateau()[5].toString()),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonTheme(
                  minWidth: 70.0,
                  height: 70.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.green.shade50)),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (!monJeu.getGagnant()) {
                          if (monJeu.jouer(monJeu.getPlateau()[6])) {
                            monJeu.addCounter();
                            if (monJeu.estGagnant()) {
                              aGagne = "Victoire!";
                              monJeu.changeGagnant();
                            }
                          }
                        }
                      });
                    },
                    child: Text(monJeu.getPlateau()[6].toString()),
                  ),
                ),
                ButtonTheme(
                  minWidth: 70.0,
                  height: 70.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.green.shade50)),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (!monJeu.getGagnant()) {
                          if (monJeu.jouer(monJeu.getPlateau()[7])) {
                            monJeu.addCounter();
                            if (monJeu.estGagnant()) {
                              aGagne = "Victoire!";
                              monJeu.changeGagnant();
                            }
                          }
                        }
                      });
                    },
                    child: Text(monJeu.getPlateau()[7].toString()),
                  ),
                ),
                ButtonTheme(
                  minWidth: 70.0,
                  height: 70.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.green.shade50)),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (!monJeu.getGagnant()) {
                          if (monJeu.jouer(monJeu.getPlateau()[8])) {
                            monJeu.addCounter();
                            if (monJeu.estGagnant()) {
                              aGagne = "Victoire!";
                              monJeu.changeGagnant();
                            }
                          }
                        }
                      });
                    },
                    child: Text(monJeu.getPlateau()[8].toString()),
                  ),
                ),
              ],
            ),
            Text(aGagne),
            TextButton.icon(
              icon: Icon(Icons.restart_alt),
              label: Text("Recommencer"),
              onPressed: () {
                setState(() {
                  monJeu.restart();
                  aGagne = " ";
                });
              },
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Taquin {
  List<int> _lePlateau = [1, 2, 3, 4, 5, 6, 7, 0, 8];
  bool _gagnant = false;
  int _counter = 0;

  Taquin() {
    melange();
  }

  void changeGagnant() {
    this._gagnant = !_gagnant;
  }

  bool getGagnant() {
    return this._gagnant;
  }

  int getCounter() {
    return this._counter;
  }

  List<int> getPlateau() {
    return this._lePlateau;
  }

  void addCounter() {
    this._counter++;
  }

  bool estGagnant() {
    int comp = 0;
    for (int k = 0; k < 8; k++) {
      if (_lePlateau[k] == k + 1) {
        comp++;
      }
    }
    return comp == 8;
  }

  bool jouer(a) {
    int index = 0;
    for (int k = 0; k < 9; k++) {
      if (_lePlateau[k] == a) {
        index = k;
      }
    }

    int rep = -1;
    if (index == 0) {
      if (_lePlateau[index + 1] == 0) {
        rep = index + 1;
      } else if (_lePlateau[index + 3] == 0) {
        rep = index + 3;
      }
    } else if (index == 1) {
      if (_lePlateau[index + 1] == 0) {
        rep = index + 1;
      } else if (_lePlateau[index + 3] == 0) {
        rep = index + 3;
      } else if (_lePlateau[index - 1] == 0) {
        rep = index - 1;
      }
    } else if (index == 2) {
      if (_lePlateau[index - 1] == 0) {
        rep = index - 1;
      } else if (_lePlateau[index + 3] == 0) {
        rep = index + 3;
      }
    } else if (index == 3) {
      if (_lePlateau[index + 1] == 0) {
        rep = index + 1;
      } else if (_lePlateau[index - 3] == 0) {
        rep = index - 3;
      } else if (_lePlateau[index + 3] == 0) {
        rep = index + 3;
      }
    } else if (index == 4) {
      if (_lePlateau[index + 1] == 0) {
        rep = index + 1;
      } else if (_lePlateau[index - 3] == 0) {
        rep = index - 3;
      } else if (_lePlateau[index + 3] == 0) {
        rep = index + 3;
      } else if (_lePlateau[index - 1] == 0) {
        rep = index - 1;
      }
    } else if (index == 5) {
      if (_lePlateau[index - 1] == 0) {
        rep = index - 1;
      } else if (_lePlateau[index - 3] == 0) {
        rep = index - 3;
      } else if (_lePlateau[index + 3] == 0) {
        rep = index + 3;
      }
    } else if (index == 6) {
      if (_lePlateau[index + 1] == 0) {
        rep = index + 1;
      } else if (_lePlateau[index - 3] == 0) {
        rep = index - 3;
      }
    } else if (index == 7) {
      if (_lePlateau[index + 1] == 0) {
        rep = index + 1;
      } else if (_lePlateau[index - 3] == 0) {
        rep = index - 3;
      } else if (_lePlateau[index - 1] == 0) {
        rep = index - 1;
      }
    } else if (index == 8) {
      if (_lePlateau[index - 1] == 0) {
        rep = index - 1;
      } else if (_lePlateau[index - 3] == 0) {
        rep = index - 3;
      }
    }
    if (rep != -1) {
      _lePlateau[rep] = a;
      _lePlateau[index] = 0;
    }
    return rep != -1;
  }

  void melange() {
    for (int k = 0; k < 100; k++) {
      Random random = Random();
      int test = random.nextInt(9);
      jouer(test);
    }
  }

  void restart() {
    this._gagnant = false;
    this._counter = 0;
    melange();
  }
}
