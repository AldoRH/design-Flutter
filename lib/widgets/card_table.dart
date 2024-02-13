import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(icon: Icons.paste_sharp, color: Colors.blue, text: 'General',),
            _SingleCard(icon: Icons.emoji_transportation_outlined, color: Colors.green, text: 'Transporte',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.card_giftcard_outlined, color: Colors.orange, text: 'Regalos',),
            _SingleCard(icon: Icons.fact_check_rounded, color: Colors.pink, text: 'Facturas',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.movie_creation_outlined, color: Colors.purple, text: 'Entretenimiento',),
            _SingleCard(icon: Icons.shopping_bag_outlined, color: Colors.yellow, text: 'Recreación',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.pets, color: Colors.amber, text: 'Mascotas',),
            _SingleCard(icon: Icons.shopping_cart_outlined, color: Colors.lime, text: 'Despensa',),
          ]
        ),
        ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard({required this.icon, required this.color, required this.text});

  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon(icon,  size: 40, color: Colors.white),
                ),
                const SizedBox(height: 15,),
                Text(text, style: TextStyle(color: color, fontSize: 18),)
          
              ],
            )
      );
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: child,
            
          ),
        ),
      ),
    );
  }
}