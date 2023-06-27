import 'package:flutter/material.dart';

class BasecDesignScreen extends StatelessWidget {
  const BasecDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagen
          Image(
            image: AssetImage('assets/landspace.jpg'),
          ),

          // Titulo
          Title(),

          // Botones
          ButtonSection(),

          // Descripción
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Text(
                'Non eiusmod ad anim esse ad irure. Veniam consectetur consectetur Lorem sunt dolor laborum veniam. Ea sint aute magna Lorem excepteur.Irure et dolor est consectetur. Magna sunt culpa tempor ipsum incididunt est fugiat. Tempor et aliqua occaecat exercitation ex irure fugiat veniam non. Laboris excepteur anim ea est ad laboris duis nostrud aute laborum ipsum. Sint enim incididunt culpa elit cillum cupidatat labore mollit cupidatat.'),
          )
        ],
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
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41')
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
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, info: 'CALL'),
          CustomButton(icon: Icons.map_sharp, info: 'ROUTE'),
          CustomButton(icon: Icons.share, info: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String info;
  const CustomButton({required this.icon, required this.info});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 35,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          info,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
