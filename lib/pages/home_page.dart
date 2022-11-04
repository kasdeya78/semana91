import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  getDataPokemon() async {
    Uri _uri = Uri.parse(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    http.Response respose = await http.get(_uri);
    print(respose.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Pokedex",
                  style: TextStyle(
                    fontSize: 34.00,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                GridView.count(
                  shrinkWrap: true,
                  mainAxisSpacing: 12.0,
                  crossAxisSpacing: 12.0,
                  crossAxisCount: 2,
                  childAspectRatio: 1.4,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF4ccfb2),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: -20,
                            right: -20,
                            child: Image.asset(
                              "assets/images/pokeball.png",
                              height: 120.0,
                              color: Colors.white.withOpacity(0.3),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Text(
                                  "Bulbasaur",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 6.0),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 14.0, vertical: 4.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.26),
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.04),
                                        offset: Offset(4, 4),
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    "Grass",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Image.network(
                                "http://www.serebii.net/pokemongo/pokemon/001.png"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
