import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'home_screen_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<HomeScreenController, HomeScreenState>(
      create: (context) => HomeScreenController(
        context: context,
      ),
      builder: (context, _) {
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
                    GestureDetector(
                      onTap: () =>
                          context.read<HomeScreenController>().pokemon(),
                      child: Container(
                        width: mediaWidth / 2,
                        height: mediaWidth / 1.5,
                        color: Colors.red,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: mediaWidth / 1.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () =>
                                context.read<HomeScreenController>().damage10(),
                            child: Container(
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
                          ),
                          GestureDetector(
                            onTap: () =>
                                context.read<HomeScreenController>().damage50(),
                            child: Container(
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
                          ),
                          GestureDetector(
                            onTap: () =>
                                context.read<HomeScreenController>().damage10(),
                            child: Container(
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
                    GestureDetector(
                      onTap: () =>
                          context.read<HomeScreenController>().pokemon1(),
                      child: Container(
                        width: mediaWidth / 5.5,
                        height: mediaWidth / 2.5,
                        color: Colors.red,
                      ),
                    ),
                    GestureDetector(
                      onTap: () =>
                          context.read<HomeScreenController>().pokemon2(),
                      child: Container(
                        width: mediaWidth / 5.5,
                        height: mediaWidth / 2.5,
                        color: Colors.blue,
                      ),
                    ),
                    GestureDetector(
                      onTap: () =>
                          context.read<HomeScreenController>().pokemon3(),
                      child: Container(
                        width: mediaWidth / 5.5,
                        height: mediaWidth / 2.5,
                        color: Colors.yellow,
                      ),
                    ),
                    GestureDetector(
                      onTap: () =>
                          context.read<HomeScreenController>().pokemon4(),
                      child: Container(
                        width: mediaWidth / 5.5,
                        height: mediaWidth / 2.5,
                        color: Colors.green,
                      ),
                    ),
                    GestureDetector(
                      onTap: () =>
                          context.read<HomeScreenController>().pokemon5(),
                      child: Container(
                        width: mediaWidth / 5.5,
                        height: mediaWidth / 2.5,
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
