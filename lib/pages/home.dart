import 'package:flutter/material.dart';

class ConversorHome extends StatefulWidget {
  const ConversorHome({super.key});

  @override
  State<ConversorHome> createState() => _ConversorHomeState();
}

class _ConversorHomeState extends State<ConversorHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leadingWidth: 60,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Material(
            shape: const CircleBorder(),
            color: Colors.white,
            elevation: 3,
            child: IconButton(
              icon: const Icon(Icons.person_outline, color: Colors.black),
              splashRadius: 24,
              onPressed: () {},
            ),
          ),
        ),
        title: const Text(
          "My Wallet",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black, size: 30),
            onPressed: () {},
          ),
        ],
      ),

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.black,
                        elevation: 3,
                        maximumSize: const Size(100, 50),
                        minimumSize: const Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('USD'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.blue,
                              ),
                              SizedBox(width: 5),
                              Text('R\$ 1.000,00'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.black,
                        elevation: 3,
                        maximumSize: const Size(80, 50),
                        minimumSize: const Size(80, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('EUR'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.green,
                              ),
                              SizedBox(width: 5),
                              Text('R\$ 1.000,00'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shadowColor: Colors.black,
                      elevation: 3,
                      shape: CircleBorder(
                        side: BorderSide(color: Colors.white, width: 1),
                      ),
                    ),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: const [
                  Text('Balance', style: TextStyle(color: Colors.blueGrey)),
                  SizedBox(height: 5),
                  Text(
                    '\$ 150,56',
                    style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                
                children: [
                  _buildActionButton(Icons.add, 'Add', const Color.fromARGB(255, 44, 45, 46)),
                  _buildActionButton(Icons.send, 'Send',Colors.white),
                  _buildActionButton(Icons.compare_arrows, 'Convert',Colors.white),
                  _buildActionButton(Icons.arrow_right, 'More',Colors.white),
                ],
              ),

              const SizedBox(height: 20),
              Row(
                children: const [
                  Text(
                    'Transactions',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  ElevatedButton(onPressed: null, child: Text('View all')),
                ],
              ),
              const SizedBox(height: 10),
              const Card(
                child: ListTile(
                  leading: Icon(Icons.compare_arrows),
                  title: Text('Conversion'),
                  subtitle: Text('10:00 PM'),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '+R\$ 150,00',
                        style: TextStyle(color: Colors.green),
                      ),
                      Text('-R\$ 150,00', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildActionButton(IconData icon, String label, Color backgroundColor) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          width: 100,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(icon, color: Colors.white),
                Text(label, style: const TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),

        const SizedBox(height: 4),
      ],
    );
  }
}
