import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          //Imagen
          const Image(image: AssetImage('assets/landscape.png'),),
        
          //Título
          const Title(),
        
          //Botones
          const ButtonSection(),
        
          //Descrición
          Container(
            margin:const EdgeInsets.symmetric(horizontal: 30, vertical: 10) ,
            child: const Text('Lorem in labore enim ut labore non eu eiusmod. Non aliquip proident labore eu ex labore velit minim sint non aute. Lorem ea officia adipisicing ut proident sit adipisicing. Sit occaecat et ut esse mollit nisi quis dolor amet adipisicing consectetur pariatur qui. Cillum cillum Lorem laboris tempor cupidatat excepteur officia ut et. Aliqua minim nostrud occaecat nulla ea.Lorem in labore enim ut labore non eu eiusmod. Non aliquip proident labore eu ex labore velit minim sint non aute. Lorem ea officia adipisicing ut proident sit adipisicing. Sit occaecat et ut esse mollit nisi quis dolor amet adipisicing consectetur pariatur qui. Cillum cillum Lorem laboris tempor cupidatat excepteur officia ut et. Aliqua minim nostrud occaecat nulla ea.Lorem in labore enim ut labore non eu eiusmod. Non aliquip proident labore eu ex labore velit minim sint non aute. Lorem ea officia adipisicing ut proident sit adipisicing. Sit occaecat et ut esse mollit nisi quis dolor amet adipisicing consectetur pariatur qui. Cillum cillum Lorem laboris tempor cupidatat excepteur officia ut et. Aliqua minim nostrud occaecat nulla ea.Lorem in labore enim ut labore non eu eiusmod. Non aliquip proident labore eu ex labore velit minim sint non aute. Lorem ea officia adipisicing ut proident sit adipisicing. Sit occaecat et ut esse mollit nisi quis dolor amet adipisicing consectetur pariatur qui. Cillum cillum Lorem laboris tempor cupidatat excepteur officia ut et. Aliqua minim nostrud occaecat nulla ea.Lorem in labore enim ut labore non eu eiusmod. Non aliquip proident labore eu ex labore velit minim sint non aute. Lorem ea officia adipisicing ut proident sit adipisicing. Sit occaecat et ut esse mollit nisi quis dolor amet adipisicing consectetur pariatur qui. Cillum cillum Lorem laboris tempor cupidatat excepteur officia ut et. Aliqua minim nostrud occaecat nulla ea.Lorem in labore enim ut labore non eu eiusmod. Non aliquip proident labore eu ex labore velit minim sint non aute. Lorem ea officia adipisicing ut proident sit adipisicing. Sit occaecat et ut esse mollit nisi quis dolor amet adipisicing consectetur pariatur qui. Cillum cillum Lorem laboris tempor cupidatat excepteur officia ut et. Aliqua minim nostrud occaecat nulla ea.Lorem in labore enim ut labore non eu eiusmod. Non aliquip proident labore eu ex labore velit minim sint non aute. Lorem ea officia adipisicing ut proident sit adipisicing. Sit occaecat et ut esse mollit nisi quis dolor amet adipisicing consectetur pariatur qui. Cillum cillum Lorem laboris tempor cupidatat excepteur officia ut et. Aliqua minim nostrud occaecat nulla ea.Lorem in labore enim ut labore non eu eiusmod. Non aliquip proident labore eu ex labore velit minim sint non aute. Lorem ea officia adipisicing ut proident sit adipisicing. Sit occaecat et ut esse mollit nisi quis dolor amet adipisicing consectetur pariatur qui. Cillum cillum Lorem laboris tempor cupidatat excepteur officia ut et. Aliqua minim nostrud occaecat nulla ea.Lorem in labore enim ut labore non eu eiusmod. Non aliquip proident labore eu ex labore velit minim sint non aute. Lorem ea officia adipisicing ut proident sit adipisicing. Sit occaecat et ut esse mollit nisi quis dolor amet adipisicing consectetur pariatur qui. Cillum cillum Lorem laboris tempor cupidatat excepteur officia ut et. Aliqua minim nostrud occaecat nulla ea.', textAlign: TextAlign.justify,))
        ]),
      ),
    );
  }
}



class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child:  Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Título de la imagen", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Subtítulo de la imagen", style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red,),
          const Text("4.1"),
        ],
      ),
    );
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustumButton(text: "Call", icon: Icons.call),
          CustumButton(text: "Route", icon: Icons.room_outlined),
          CustumButton(text: "Share", icon: Icons.share),
        ],
      ),
    );
  }
}

class CustumButton extends StatelessWidget {
  const CustumButton({
    super.key, required this.icon, required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blueAccent, size: 30, ),
        Text(text, style: const TextStyle(color: Colors.blueAccent),)
      ],
    );
  }
}