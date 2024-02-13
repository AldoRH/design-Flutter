import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        width: 300,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child:const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text('Clasificaciones', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(height: 10,),
            Text('Clasifica la transacción por categorias', style: TextStyle(fontSize: 18, color: Colors.white),),
          ],
        ),
      ),
    );
  }
}