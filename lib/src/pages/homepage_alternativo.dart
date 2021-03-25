import 'package:flutter/material.dart';

class HomePageAlternativo extends StatelessWidget {
  final opciones = [
    {
      "title": "Uno",
      "description": "Description 1",
      "iconL": Icons.add_circle,
      "iconT": Icons.chevron_right_outlined,
      "txtstyle": TextStyle(fontStyle: FontStyle.italic),
      "color": Colors.yellow
    },
    {
      "title": "Dos",
      "description": "Description 2",
      "iconL": Icons.add_call,
      "iconT": Icons.arrow_right_sharp,
      "txtstyle": TextStyle(fontStyle: FontStyle.normal),
      "color": Colors.amber
    },
    {
      "title": "Tres",
      "description": "Description 3",
      "iconL": Icons.add_to_home_screen,
      "iconT": Icons.border_right_rounded,
      "txtstyle": TextStyle(fontWeight: FontWeight.bold),
      "color": Colors.blue
    },
    {
      "title": "Cuatro",
      "description": "Description 4",
      "iconL": Icons.add_to_photos_outlined,
      "iconT": Icons.rotate_right_sharp,
      "txtstyle": TextStyle(fontSize: 30),
      "color": Colors.red
    },
    {
      "title": "Cinco",
      "description": "Description 5",
      "iconL": Icons.airline_seat_legroom_normal_sharp,
      "iconT": Icons.subdirectory_arrow_right_rounded,
      "txtstyle": TextStyle(fontStyle: FontStyle.italic),
      "color": Colors.purple
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Broforce'),
      ),
      backgroundColor: Colors.black,
      body: ListView(children: _crearItemsCorto()),
    );
  }

  //List <Widget> _crearItems() {
  //List<Widget> lista = new List<Widget>();
  //for (var opt in opciones) {
  //final tempWidget = ListTile(
  //title: Text(opt),
  //);
  //lista.add(tempWidget);
  //lista.add(Divider());
  //lista..add(tempWidget)..add(Divider());
  // }
  //return lista;
  // }

  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text((item['title']), style: item['txtstyle']),
            subtitle: Text(item['description']),
            leading: Icon(item['iconL']),
            trailing: Icon(item['iconT']),
            onTap: () {},
            tileColor: (item['color']),
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
