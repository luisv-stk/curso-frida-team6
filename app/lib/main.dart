// File: photo_blue_screen.dart

import 'package:flutter/material.dart';

void main() {
  runApp(PhotoBlueApp());
}

class PhotoBlueApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PhotoBlue',
      theme: ThemeData(
        primaryColor: Color(0xff0179ff),
      ),
      home: PhotoBlueScreen(),
    );
  }
}

class PhotoBlueScreen extends StatefulWidget {
  @override
  _PhotoBlueScreenState createState() => _PhotoBlueScreenState();
}

class _PhotoBlueScreenState extends State<PhotoBlueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Image.network(
              'https://placehold.co/400x400/jpg',
              width: 100,
              height: 30,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: Color(0xffee28ff),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'Nuevas funciones',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  TextButton(onPressed: () {}, child: Text('Idioma')),
                  TextButton(onPressed: () {}, child: Text('Explorar')),
                  TextButton(onPressed: () {}, child: Text('Ayuda')),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cerrar sesión',
                      style: TextStyle(color: Color(0xff0179ff)),
                    ),
                  ),
                  SizedBox(width: 16),
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://placehold.co/400x400/jpg'),
                    radius: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Card(
                  color: Color(0xfff5f9fd),
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios_new),
                          onPressed: () {},
                          iconSize: 20,
                          color: Colors.black87,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Añadir nuevo elemento',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text('Cerrar'),
                                  Icon(Icons.check, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Datos del archivo',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ChoiceChip(
                              selectedColor: Colors.blueAccent,
                              label: Text('Fotografía'),
                              selected: true,
                              onSelected: (_) {},
                            ),
                            SizedBox(width: 8),
                            ChoiceChip(
                              selectedColor: Colors.blueAccent,
                              label: Text('Video'),
                              selected: false,
                              onSelected: (_) {},
                            ),
                            SizedBox(width: 8),
                            ChoiceChip(
                              selectedColor: Colors.blueAccent,
                              label: Text('Ilustración'),
                              selected: false,
                              onSelected: (_) {},
                            ),
                            SizedBox(width: 8),
                            ChoiceChip(
                              selectedColor: Colors.blueAccent,
                              label: Text('3D'),
                              selected: false,
                              onSelected: (_) {},
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Título',
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 100,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Precio',
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            Text(" €"),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.blueAccent, width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.camera_alt_outlined, size: 40),
                              SizedBox(height: 8),
                              Text('Retra_male.jpg - 1,2 Gb.'),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text('Borrar'),
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 24.0),
                                side: BorderSide(color: Colors.blue),
                              ),
                            ),
                            SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12.0, horizontal: 24.0)),
                              child: Text('Cargar archivo'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Las mejores fotos de stock gratis, vídeos compartidos, ilustraciones y recursos 3D de creadores internacionales.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blueAccent,
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton<String>(
                      value: 'Todos',
                      underline: Container(),
                      items: <String>['Todos', 'Fotos', 'Videos', '3D']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Buscar',
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
                child: Text(
                  'Todas mis publicaciones',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              PostList(),
              SizedBox(height: 20),
              PaginationControls()
            ],
          ),
        ),
      ),
    );
  }
}

class PostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> posts = [
      {
        'title': 'Smile day',
        'author': 'Karinne Sita',
        'fileType': 'Fotografía',
        'size': '2300x1800px',
        'description':
            'Etiquetas descripción: portrait, male, smile, blue, bread, brown eyes, T-shirt',
      },
      {
        'title': 'Lovely love',
        'author': 'Karinne Sita',
        'fileType': 'Fotografía',
        'size': '2300x1800px',
        'description': 'Etiquetas descripción: portrait, female, green eyes, red, love, heart',
      },
      // Add more post data as needed.
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.builder(
        itemCount: posts.length,
        primary: false,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          childAspectRatio: 10 / 4, // Adjust for width and height of child
        ),
        itemBuilder: (BuildContext context, int index) {
          return PostCard(postData: posts[index]);
        },
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final Map<String, String> postData;

  PostCard({required this.postData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network('https://placehold.co/400x400/jpg', height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nombre: ${postData['title']}'),
                Text('Precio: Free'),
                Text('Tipo de archivo: ${postData['fileType']}'),
                Text('Tamaño: ${postData['size']}'),
                Text('Autor: ${postData['author']}'),
                Text('Fecha subida: 12/01/2025'),
                Text('${postData['description']}',
                    overflow: TextOverflow.ellipsis, maxLines: 2),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    icon: Icon(Icons.edit, color: Colors.blue), onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.delete, color: Colors.red), onPressed: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PaginationControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(icon: Icon(Icons.chevron_left), onPressed: () {}),
          TextButton(
            onPressed: () {},
            child: Text('1'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('2'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('3'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('...'),
          ),
          IconButton(icon: Icon(Icons.chevron_right), onPressed: () {}),
        ],
      ),
    );
  }
}