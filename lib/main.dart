import 'package:basketball/counter/counter_cubit.dart';
import 'package:basketball/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Basketball());
}

class Basketball extends StatelessWidget {
  const Basketball({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  int pointATeam = 0;
  int pointBTeam = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('points counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    children: [
                      const Text(
                        'TEAM A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).pointATeam}',
                        style: const TextStyle(
                          fontSize: 100,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'A', buttonNumber: 1);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'A', buttonNumber: 2);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        child: const Text(
                          'Add 2 point',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'A', buttonNumber: 3);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        child: const Text(
                          'Add 3 point',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const Spacer(
                        flex: 12,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 350,
                  child: VerticalDivider(
                    thickness: 1,
                    endIndent: 160,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    children: [
                      const Text(
                        'TEAM B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).pointBTeam}',
                        style: const TextStyle(
                          fontSize: 100,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'B', buttonNumber: 1);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'B', buttonNumber: 2);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        child: const Text(
                          'Add 2 point',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'B', buttonNumber: 3);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        child: const Text(
                          'Add 3 point',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(150, 50),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              child: const Text(
                'RESET',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      );
    }, listener: (context, state) {
      if (state is CounterAIncrementState) {
        pointATeam = BlocProvider.of<CounterCubit>(context).pointATeam;
      } else {
        pointBTeam = BlocProvider.of<CounterCubit>(context).pointBTeam;
      }
    });
  }
}
