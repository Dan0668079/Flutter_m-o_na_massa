import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        scrollDirection: Axis.horizontal,
        children: const [
          // SizedBox(
          //   width: 100,
          //   height: 100,
          //   child:  CircleAvatar(
          //     backgroundImage:(
          //        AssetImage('assets/images/mariaLiz.jpeg')
          //     ),
          //     // backgroundImage:(NetworkImage('https://i.pinimg.com/originals/7f/80/9c/7f809c8d17b303fa29da825156a41a84.png')),
          //   ),
          // )
          Padding(
            padding: EdgeInsets.all(8.0),
            child: AssetAvatar(assetImage1: 'assets/images/mariaLiz.jpeg'),
          ),
         
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ImageAvatar(
                urlImage:
                    'https://i.pinimg.com/originals/7f/80/9c/7f809c8d17b303fa29da825156a41a84.png'),
          ),
        
          Padding(
            padding: EdgeInsets.all(8.0),
            child: AssetAvatar(assetImage1: 'assets/images/mariaLiz.jpeg'),
          ),
          


          Padding(
            padding: EdgeInsets.all(8.0),
            child: ImageAvatar(
                urlImage:
                    'https://i.pinimg.com/originals/10/59/13/105913871126d849fe2b8687bbc1c676.png'),
          ),
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({Key? key, required this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.deepPurple, Colors.green],
                begin: Alignment.topCenter),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: (NetworkImage(urlImage)),
            //   child:  CircleAvatar(
            //   backgroundImage: (AssetImage('assets/images/mariaLiz.jpeg')),
            // ),
          ),
        ),
        const Icon(Icons.star),
        SizedBox(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(8)),
              child: const Text(
                'Ao Vivo',
                style: TextStyle(fontSize: 8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AssetAvatar extends StatelessWidget {
  final String assetImage1;
  const AssetAvatar({Key? key, required this.assetImage1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.purple,
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: (AssetImage(assetImage1)),
            //   child:  CircleAvatar(
            //   backgroundImage: (AssetImage('assets/images/mariaLiz.jpeg')),
            // ),
          ),
        ),
        const Icon(Icons.star),
        SizedBox(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(8)),
              child: const Text(
                'Ao Vivo',
                style: TextStyle(fontSize: 8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
