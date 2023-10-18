
import 'package:flutter/material.dart';


class GrilleComponents extends StatefulWidget {
  const GrilleComponents({super.key});

  @override
  State<GrilleComponents> createState() => _GrilleComponentsState();
}







class _GrilleComponentsState extends State<GrilleComponents> {
  final List<String> keyLabels = [
    '1', '2', '3',
    '4', '5', '6',
    '7', '8', '9',
    '0', '+', '-',
  ];


   final List<String> imageUrls = [
    'lib/image/1.jpeg',
    'lib/image/22.png',
    'lib/image/33.jpeg',
    'lib/image/44.png',
    'lib/image/55.jpeg',
    'lib/image/66.png',
    'lib/image/77.jpeg',
    'lib/image/88.jpeg',
    'lib/image/99.png',
    'lib/image/0.jpg',
    'lib/image/+.jpg',
    'lib/image/-.jpg',
    
  ];

  String selectedLabel = ''; // Pour stocker la case sélectionnée
  bool isExtraCaseVisible = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isExtraCaseVisible
              ? Container(
                  color: const Color.fromARGB(255, 190, 213, 232),
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      selectedLabel,
                      style: TextStyle(
                        fontSize: 48.0, // Augmenter la taille du texte
                        color: Color.fromARGB(207, 2, 2, 2),
                      ),
                    ),
                  ),
                )
              : Container(),
          GridView.builder(
            shrinkWrap: true,
            itemCount: keyLabels.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0, // Espacement horizontal entre les cases
              mainAxisSpacing: 10.0,   // Espacement vertical entre les cases
            ),
            itemBuilder: (BuildContext context, int index) {
              return GridTile(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedLabel = keyLabels[index];
                      isExtraCaseVisible = true;
                    });
                  },
                  child: ClipOval(
                    child: Container(
                      color: const Color.fromARGB(255, 190, 213, 232),
                      child: Center(
                        child: Text(
                          keyLabels[index],
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              // Naviguer vers la classe ImageDisplay lorsque le bouton est appuyé
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDisplay(selectedLabel)),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 190, 213, 232),
            ),
            child: Text("Afficher"),
          ),
        ],
      ),
    );
  }
}

class ImageDisplay extends StatelessWidget {
  final String selectedLabel;

  ImageDisplay(this.selectedLabel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('image1'),
      ),
      body: Center(
        child: Text(
          selectedLabel,
          style: TextStyle(
            fontSize: 600.0, // Augmenter la taille du texte pour l'afficher en grand format
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clavier Numéro de Téléphone'),
        ),
        body: GrilleComponents(),
      ),
    ),
  );
}