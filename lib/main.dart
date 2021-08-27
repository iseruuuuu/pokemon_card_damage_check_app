import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('リセット'),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                SizedBox(
                  height: mediaWidth / 1.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: mediaWidth / 8,
                        height: mediaWidth / 8,
                        color: Colors.orange,
                        child: const Center(
                          child: Text(
                            'やけど',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: mediaWidth / 8,
                        height: mediaWidth / 8,
                        color: Colors.deepPurple,
                        child: const Center(
                          child: Text(
                            'どく',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                //TODO 大カード
                Container(
                  width: mediaWidth / 2,
                  height: mediaWidth / 1.5,
                  color: Colors.red,
                ),
                const Spacer(),
                SizedBox(
                  height: mediaWidth / 1.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: mediaWidth / 8,
                        height: mediaWidth / 8,
                        color: Colors.red,
                        child: const Center(
                          child: Text(
                            '10',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: mediaWidth / 8,
                        height: mediaWidth / 8,
                        color: Colors.red,
                        child: const Center(
                          child: Text(
                            '50',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: mediaWidth / 8,
                        height: mediaWidth / 8,
                        color: Colors.red,
                        child: const Center(
                          child: Text(
                            '100',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: mediaWidth / 5.5,
                  height: mediaWidth / 2.5,
                  color: Colors.red,
                ),
                Container(
                  width: mediaWidth / 5.5,
                  height: mediaWidth / 2.5,
                  color: Colors.blue,
                ),
                Container(
                  width: mediaWidth / 5.5,
                  height: mediaWidth / 2.5,
                  color: Colors.yellow,
                ),
                Container(
                  width: mediaWidth / 5.5,
                  height: mediaWidth / 2.5,
                  color: Colors.green,
                ),
                Container(
                  width: mediaWidth / 5.5,
                  height: mediaWidth / 2.5,
                  color: Colors.pink,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
