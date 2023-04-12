import 'package:flutter/material.dart';

class CardUno extends StatelessWidget {
  const CardUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 4,
          color: Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  _Header(),
                  _ImageCard(),
                  _IconFooter(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: Colors.amber[800],
                child: const CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.red,
                    backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/men/1.jpg'),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Richard Meyer',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.4,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '@richard_meyer',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              )
            ],
          ),
          const Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  const _ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: AspectRatio(
        aspectRatio: 8 / 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/places3.jpg',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class _IconFooter extends StatefulWidget {
  const _IconFooter({super.key});

  @override
  State<_IconFooter> createState() => _IconFooterState();
}

class _IconFooterState extends State<_IconFooter> {
  bool _active = false;

  void _handleFavorite() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: _handleFavorite,
                child: Icon(
                  Icons.favorite,
                  size: 21,
                  color: _active ? Colors.red : Colors.grey,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                '528',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              const Icon(
                Icons.sms_outlined,
                size: 19,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                '20',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              const Icon(
                Icons.send_outlined,
                size: 19,
              ),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
          Text(
            '20 min',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
