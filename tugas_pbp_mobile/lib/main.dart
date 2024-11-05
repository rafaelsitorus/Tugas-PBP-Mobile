import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  final List<ItemHomePage> items = [
    ItemHomePage("Lihat Produk", Icons.archive),
    ItemHomePage("Tambah Produk", Icons.add),
    ItemHomePage("Logout", Icons.logout),
  ];

  // List of color pairs for each card
  final List<List<Color>> cardColors = [
    [Color.fromRGBO(252, 255, 223, 1), Color.fromRGBO(241, 254, 135, 1)], // Color pair for the first card
    [Color.fromRGBO(200, 255, 255, 1), Color.fromRGBO(100, 200, 255, 1)], // Color pair for the third card
    [Color.fromRGBO(255, 220, 220, 1), Color.fromRGBO(255, 150, 150, 1)], // Color pair for the second card
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 310,
            child: Container(
              padding: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [
                    Color.fromRGBO(162, 235, 36, 1),
                    Color.fromRGBO(140, 203, 31, 1),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,  
            left: 20, 
            child: Text(
              "hijau",
              style: GoogleFonts.rethinkSans(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: 525,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [
                    Color.fromRGBO(115, 150, 69, 1),
                    Color.fromRGBO(78, 108, 38, 1),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45.0),
                  topRight: Radius.circular(45.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 70.0), 
                  Container(
                    height: 450, 
                    width: double.infinity,
                    child: ListView.builder(
                      padding: EdgeInsets.only(bottom: 20, left: 180, right: 180),
                      scrollDirection: Axis.vertical, 
                      itemCount: items.length, 
                      itemBuilder: (context, index) {
                        final item = items[index];
                        final colors = cardColors[index]; 
                        return makeCard(
                          context: context,
                          startColor: colors[0], 
                          endColor: colors[1],   
                          name: item.name,
                          icon: item.icon,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,  
            right: 20,   
            child: Text(
              "hijau",
              style: GoogleFonts.rethinkSans(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget makeCard({
    required BuildContext context, 
    required String name,          
    required IconData icon,        
    required Color startColor,     
    required Color endColor,       
  }) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Kamu telah menekan tombol $name"),
            duration: Duration(seconds: 1),
          ),
        );
      },
      child: AspectRatio(
        aspectRatio: 1.0,  
        child: Container(
          margin: EdgeInsets.only(bottom: 10), 
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35.0),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              colors: [startColor, endColor], 
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 40,
                color: Color.fromRGBO(92, 133, 20, 1),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemHomePage {
  final String name;
  final IconData icon;

  ItemHomePage(this.name, this.icon);
}
