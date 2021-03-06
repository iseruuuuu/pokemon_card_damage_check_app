import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:pokemon_card_help_app/component/other_card_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'home_screen_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<HomeScreenController, HomeScreenState>(
      create: (context) =>
          HomeScreenController(
            context: context,
          ),
      builder: (context, _) {
        final mediaWidth = MediaQuery.of(context).size.width;
        final pokemon =
        context.select<HomeScreenState, int>((state) => state.pokemon);
        final pokemon1 =
        context.select<HomeScreenState, int>((state) => state.pokemon1);
        final pokemon2 =
        context.select<HomeScreenState, int>((state) => state.pokemon2);
        final pokemon3 =
        context.select<HomeScreenState, int>((state) => state.pokemon3);
        final pokemon4 =
        context.select<HomeScreenState, int>((state) => state.pokemon4);
        final pokemon5 =
        context.select<HomeScreenState, int>((state) => state.pokemon5);
        final text = context.select<HomeScreenState, String>((state) => state.title);
        return Scaffold(
          appBar: AppBar(
            title: Text('現在のダメージ対象：' + text),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => context.read<HomeScreenController>().reset(),
                      child: const Text(
                          'リセット',
                        style: TextStyle(
                          fontSize: 20,

                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () =>
                          context.read<HomeScreenController>().damage10(),
                      child: Container(
                        width: mediaWidth / 8,
                        height: mediaWidth / 8,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red
                        ),
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
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red
                        ),
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
                          context.read<HomeScreenController>().damage100(),
                      child: Container(
                        width: mediaWidth / 8,
                        height: mediaWidth / 8,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red
                        ),
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


                const Spacer(),
                Row(
                  children: [
                    const Spacer(),
                    // SizedBox(
                    //   height: mediaWidth / 1.5,
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //     children: [
                    //       Container(
                    //         width: mediaWidth / 8,
                    //         height: mediaWidth / 8,
                    //         color: Colors.orange,
                    //         child: const Center(
                    //           child: Text(
                    //             'やけど',
                    //             style: TextStyle(
                    //               color: Colors.white,
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       Container(
                    //         width: mediaWidth / 8,
                    //         height: mediaWidth / 8,
                    //         color: Colors.deepPurple,
                    //         child: const Center(
                    //           child: Text(
                    //             'どく',
                    //             style: TextStyle(
                    //               color: Colors.white,
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () =>
                          context.read<HomeScreenController>().pokemon(),
                      child: Container(
                        width: mediaWidth / 2,
                        height: mediaWidth / 1.5,
                        color: Colors.red,
                        child: Column(
                          children: [
                            const Spacer(),

                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: [
                            //     const Spacer(),
                            //     Center(
                            //       child: Text(
                            //           'やけど',
                            //         style: TextStyle(
                            //           fontSize: 20,
                            //           color: Colors.white,
                            //         ),
                            //       ),
                            //     ),
                            //     const Spacer(),
                            //     Center(
                            //       child: Text(
                            //         'どく',
                            //         style: TextStyle(
                            //           fontSize: 20,
                            //           color: Colors.white,
                            //         ),
                            //       ),
                            //     ),
                            //     const Spacer(),
                            //   ],
                            // ),
                            // const Spacer(),

                            Center(
                              child: Text(
                                '$pokemon',
                                style: const TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: mediaWidth / 1.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [],
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OtherCardWidget(
                      mediaWidth: mediaWidth,
                      text: '$pokemon1',
                      burn: '',
                      poison: '',
                      onTap: () => context.read<HomeScreenController>().pokemon1(),
                    ),
                    OtherCardWidget(
                      mediaWidth: mediaWidth,
                      text: '$pokemon2',
                      burn: '',
                      poison: '',
                      onTap: () => context.read<HomeScreenController>().pokemon2(),
                    ),
                    OtherCardWidget(
                      mediaWidth: mediaWidth,
                      text: '$pokemon3',
                      burn: '',
                      poison: '',
                      onTap: () => context.read<HomeScreenController>().pokemon3(),
                    ),
                    OtherCardWidget(
                      mediaWidth: mediaWidth,
                      text: '$pokemon4',
                      burn: '',
                      poison: '',
                      onTap: () => context.read<HomeScreenController>().pokemon4(),
                    ),
                    OtherCardWidget(
                      mediaWidth: mediaWidth,
                      text : '$pokemon5',
                      burn: '',
                      poison: '',
                      onTap: () => context.read<HomeScreenController>().pokemon5(),
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