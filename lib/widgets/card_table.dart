import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SinglCard(
              icon: Icons.apps_sharp,
              name: 'General',
              color: Colors.blue,
            ),
            _SinglCard(
              icon: Icons.directions_bus_rounded,
              name: 'Transporte',
              color: Colors.pinkAccent,
            ),
          ],
        ),
        TableRow(
          children: [
            _SinglCard(
              icon: Icons.shopify,
              name: 'Shopping',
              color: Colors.purple,
            ),
            _SinglCard(
              icon: Icons.edit_document,
              name: 'Facturas',
              color: Colors.red,
            ),
          ],
        ),
        TableRow(
          children: [
            _SinglCard(
              icon: Icons.movie,
              name: 'Entretenimiento',
              color: Colors.indigo,
            ),
            _SinglCard(
              icon: Icons.fastfood_rounded,
              name: 'Tienda',
              color: Colors.green,
            ),
          ],
        ),
        TableRow(
          children: [
            _SinglCard(
              icon: Icons.border_all_rounded,
              name: 'Apps',
              color: Colors.teal,
            ),
            _SinglCard(
              icon: Icons.pie_chart,
              name: 'Estadisticas',
              color: Colors.deepOrange,
            ),
          ],
        ),
      ],
    );
  }
}

class _SinglCard extends StatelessWidget {
  // const _SinglCard({});

  final IconData icon;
  final String name;
  final Color? color;

  _SinglCard({required this.icon, required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      height: 230,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: color,
            child: Icon(
              icon,
              color: Colors.grey[350],
              size: 40,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(color: color, fontSize: 18),
          )
        ],
      ),
    );
  }
}
