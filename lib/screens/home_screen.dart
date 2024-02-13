import 'package:design/widgets/page_title.dart';
import 'package:design/widgets/widgets.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Fondo
          Background(),

          //Cuerpo
          _HomeBody()

        ],
     ),
     bottomNavigationBar: CustomBottomNavigation(),
   );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
      
          //Titulo
          PageTitle(),

          //Tarjetas
          CardTable(),
      
        ],
      ),
    );
  }
}