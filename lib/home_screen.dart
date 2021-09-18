import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:task1_iti/services/counter_bloc.dart';
import 'package:task1_iti/services/counter_event.dart';
import 'package:task1_iti/services/counter_state.dart';
class Home extends StatelessWidget {
 List colors1=[Colors.red,Colors.brown,Colors.green];
  List colors2=[Colors.blue,Colors.pink,Colors.red];

  @override
  Widget build(BuildContext context) {
   BlocCounter blocCounter=BlocProvider.of(context);
    return Scaffold(
      body: BlocBuilder<BlocCounter,CounterState>(
        builder:(context,state)=> SafeArea(child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(width: 200,height: 200,color: colors1[state.counter],),//red
            Container(width: 200,height: 200,color: Colors.yellow,),
            Container(width: 200,height: 200,color: colors2[state.counter],),//blue
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed:()=>blocCounter.add(counterEvent.ADD), child: Text('Change Colors')),
                  ElevatedButton(onPressed:()=>blocCounter.add(counterEvent.RESET), child: Text('Reset'))
              ],
            )
          ],
        )
        ),
      ),
    );
  }
}