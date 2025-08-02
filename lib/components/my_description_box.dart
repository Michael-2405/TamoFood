import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    // estilos de texto
    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
    );
    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
    );

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // precio de entrega
          Column(
            children: [
              Text('\$1.99', style: myPrimaryTextStyle),
              Text('Costo de entrega', style: mySecondaryTextStyle),
            ],
          ),

          // tiempo de entrega
          Column(
            children: [
              Text('15-30 min', style: myPrimaryTextStyle),
              Text('Tiempo de entrega', style: mySecondaryTextStyle),
            ],
          ),
        ],
      ),
    );
  }
}
