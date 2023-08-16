import 'package:flutter/material.dart';

class CardTravel extends StatelessWidget {
  const CardTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFEFEFEF),
        child: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              Column(
                children: [
                  Container(
                    color: const Color(0xFFEFEFEF),
                    child: SafeArea(
                      child: Column(children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 300,
                              color: const Color(0xFFEFEFEF),
                              child: Stack(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 245,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/suiza-1.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 25,
                                    child: Container(
                                      width: 110,
                                      height: 110,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFFEFEFEF),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/bandera.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black26,
                                                blurRadius: 8.0,
                                                offset: Offset(0, 3),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Informations(),
                        const Title(),
                        const Price(),
                        const Description(),
                        const Button()
                      ]),
                    ),
                  )
                ],
              ),
            ]))
          ],
        ),
      ),
    );
  }
}

//Widget del calendario y la cantidad de personas
class Informations extends StatelessWidget {
  const Informations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(height: 25),
        Icon(
          Icons.calendar_today_outlined,
          size: 18,
          color: Colors.black38,
        ),
        SizedBox(width: 5),
        Text(
          '8 Days',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black38,
            decoration: TextDecoration.none,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: 20),
        Icon(
          Icons.person_2_outlined,
          size: 23,
          color: Colors.black38,
        ),
        SizedBox(width: 5),
        Text(
          '4 People',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black38,
            decoration: TextDecoration.none,
            fontWeight: FontWeight.w600,
          ),
        )
      ]),
    );
  }
}

//Titulo y estrellas
class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 15),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text(
            'Switzerland',
            style: TextStyle(
              fontSize: 22,
              decoration: TextDecoration.none,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Wrap(
            children: [
              ...List.generate(5, (index) {
                return const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 18,
                );
              }),
            ],
          )
        ]),
      ),
    );
  }
}

//Widget del Precio
class Price extends StatelessWidget {
  const Price({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 18,
              ),
              SizedBox(width: 5),
              Text(
                'Europe',
                style: TextStyle(
                  fontSize: 14,
                  decoration: TextDecoration.none,
                  color: Colors.black38,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Text(
                '\$1.000',
                style: TextStyle(
                  fontSize: 22,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 216, 103, 95),
                ),
              ),
              SizedBox(width: 14),
              Card(
                color: Color(0xFFEFEFEF),
                elevation: 0,
                child: Text(
                  '\$1.200',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.black38,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

//Descripcion
class Description extends StatelessWidget {
  const Description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 20),
        child: const Text(
          "The Swiss Alps are a stunning mountain range situated in Switzerland, renowned for their breathtaking beauty and outdoor recreational opportunities. These majestic mountains span across the southern part of the country, forming a natural border with several neighboring nations. Characterized by their snow-capped peaks, verdant valleys, and picturesque alpine villages, the Swiss Alps are a prime destination for both nature enthusiasts and adventure seekers.",
          style: TextStyle(
            fontSize: 14,
            decoration: TextDecoration.none,
            color: Colors.black54,
            height: 1.5,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
            //overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}

//boton explore now
class Button extends StatelessWidget {
  const Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 216, 103, 95),
                    elevation: 4,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                    )),
                child: const Text(
                  'Explore Now',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
