import 'package:flutter/material.dart';
import 'package:quizzo/presentation/auth/pages/sign_up.dart';
import 'package:quizzo/presentation/auth/pages/singnin.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(padding: EdgeInsets.all(10),
      child: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index){
            return const Padding(padding: EdgeInsets.all(10));
          },
          itemBuilder: (context, index){
            return Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Item $index', style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                    ),),
                  )
                ],
              ),
            );
      }),),
    );
  }
}
