import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

import './main.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyAppState();
}

class _MyAppState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Arena Clone',
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Image.asset("assets/logo.png"),
            backgroundColor: Colors.black,
            actions: [
              // redirect to login
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const LoginUI()));
                  },
                  icon: const Icon(Icons.logout_outlined))
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Full Stack Developer',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Outfit-VariableFont_wght',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        'Razvoj softwera je kao slaganje lego kockica, putem koda se prave programi koji izvršavaju određenu radnju te služe svrsi. Cilj programiranja nije samo finalizacija zadataka, cilj je da napravljeni kod ima smisao i da izvršava ono što mu je svrha!',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Outfit-VariableFont_wght',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              '1',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Flutter Mobile App + Node.js Backend',
                            style: TextStyle(
                              fontFamily: 'Outfit-VariableFont_wght',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        'Veoma koristan kurs kako razviti Flutter aplikaciju sa backendom napisanim u Node.js-u. Iako ćemo na tromjesečnoj praksi koristiti drugačiji način spajanja te ćemo koristiti AWS cloud, ovo može biti super korisno. Obavezno je da se ovaj kurs prođe čitav te da se ista aplikacija razvije.',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Outfit-VariableFont_wght',
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                            child: Link(
                              uri: Uri.parse(
                                  "https://www.youtube.com/watch?v=ylJz7N-dv1E"),
                              builder: (context, followLink) => ElevatedButton(
                                onPressed: followLink,
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromRGBO(4, 231, 98, 100),
                                ),
                                child: const Text(
                                  'Pogledaj',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Outfit-VariableFont_wght',
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              '2',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        'How to speak the language of Application Architecture',
                        style: TextStyle(
                          fontFamily: 'Outfit-VariableFont_wght',
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        'Razvoj softwera nije samo slaganje kockica, već zahtijeva planiranje načina slaganja tih kockica. Kako bi bio/bila u stanju da razumiješ koncepte kako se ovo radi, potrebno je da barem pogledaš ovaj video. Ovdje možeš pronaći veoma dobar sadržaj. Ako budeš imao/la vremena, toplo preporučujemo da pogledaš još sličnih videa na ovu temu!',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Outfit-VariableFont_wght',
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                            child: Link(
                              uri: Uri.parse(
                                  "https://www.youtube.com/watch?v=kGYGEcdPE2U"),
                              builder: (context, followLink) => ElevatedButton(
                                  onPressed: followLink,
                                  style: ElevatedButton.styleFrom(
                                    primary:
                                        const Color.fromRGBO(4, 231, 98, 100),
                                  ),
                                  child: const Text(
                                    'Pogledaj',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Outfit-VariableFont_wght',
                                      fontSize: 14,
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              '3',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'APIs for Beginners',
                            style: TextStyle(
                              fontFamily: 'Outfit-VariableFont_wght',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        'Kao i u govoru, možemo imati najbolju ideju, ali ako tu ideju ne možemo iskomunicirati onda sve pada u vodu. Tako je i sa softwerom, potrebno je da razumiješ na koji način frontend komunicira sa backend-om.',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Outfit-VariableFont_wght',
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 15),
                            child: Link(
                              uri: Uri.parse(
                                  "https://www.youtube.com/watch?v=GZvSYJDk-us"),
                              builder: (context, followLink) => ElevatedButton(
                                  onPressed: followLink,
                                  style: ElevatedButton.styleFrom(
                                    primary:
                                        const Color.fromRGBO(4, 231, 98, 100),
                                  ),
                                  child: const Text(
                                    'Pogledaj',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Outfit-VariableFont_wght',
                                      fontSize: 14,
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              '4',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Git and GitHub for Beginners',
                            style: TextStyle(
                              fontFamily: 'Outfit-VariableFont_wght',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        'GitHub je jedna od najpopularnijih platformi za čuvanje koda i za kolaboraciju za programere te je potrebno da razumiješ barem njene osnove.',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Outfit-VariableFont_wght',
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 15),
                            child: Link(
                              uri: Uri.parse(
                                  "https://www.youtube.com/watch?v=tRZGeaHPoaw"),
                              builder: (context, followLink) => ElevatedButton(
                                  onPressed: followLink,
                                  style: ElevatedButton.styleFrom(
                                    primary:
                                        const Color.fromRGBO(4, 231, 98, 100),
                                  ),
                                  child: const Text(
                                    'Pogledaj',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Outfit-VariableFont_wght',
                                      fontSize: 14,
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              '5',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'SOLID Principles (Uncle Bob)',
                            style: TextStyle(
                              fontFamily: 'Outfit-VariableFont_wght',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        'Predavanje na temu SOLID principa od strane Rober C. Martina, poznatijeg kao Uncle Bob. Robert je u svijetu softwera ekvivalentan Ronaldu u fudbalu. Ako budeš imao/la vremena, preporučujemo da pogledaš još predavanja na temu SOLID principa i predavanja Uncle Bob-a.',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Outfit-VariableFont_wght',
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                            child: Link(
                              uri: Uri.parse(
                                  "https://www.youtube.com/watch?v=zHiWqnTWsn4"),
                              builder: (context, followLink) => ElevatedButton(
                                  onPressed: followLink,
                                  style: ElevatedButton.styleFrom(
                                    primary:
                                        const Color.fromRGBO(4, 231, 98, 100),
                                  ),
                                  child: const Text(
                                    'Pogledaj',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Outfit-VariableFont_wght',
                                      fontSize: 14,
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              '6',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Uncle Bobs solid Principles made easy',
                            style: TextStyle(
                              fontFamily: 'Outfit-VariableFont_wght',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Pojednostavljena verzija ovog što Uncle Bob govori.',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Outfit-VariableFont_wght',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                            child: Link(
                              uri: Uri.parse(
                                  "https://www.youtube.com/watch?v=pTB30aXS77U"),
                              builder: (context, followLink) => ElevatedButton(
                                  onPressed: followLink,
                                  style: ElevatedButton.styleFrom(
                                    primary:
                                        const Color.fromRGBO(4, 231, 98, 100),
                                  ),
                                  child: const Text(
                                    'Pogledaj',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Outfit-VariableFont_wght',
                                      fontSize: 14,
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
