import 'package:commutee_flutter/controllers/auth_methods.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () => Auth().signout(),
                        icon: const Icon(Icons.logout))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage(Auth().currerntuser!.photoURL!),
                  backgroundColor: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  Auth().currerntuser!.displayName!,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width * 0.5 -
                            50,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.black)),
                        child: Column(
                          children: const [
                            Icon(Icons.map_outlined, size: 25),
                            Text('45',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 25,
                                )),
                            Text('Trips Planned')
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width * 0.5 -
                            50,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.black)),
                        child: Column(
                          children: const [
                            Icon(Icons.currency_rupee_sharp, size: 25),
                            Text('1,200',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 25,
                                )),
                            Text('Money Saved')
                          ],
                        ),
                      ),
                    ]),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.black)),
                      child: Column(children: [
                        Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Name"),
                              Text(Auth().currerntuser!.displayName!)
                            ]),
                        Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Email"),
                              Text(Auth().currerntuser!.email!)
                            ])
                      ],),
                ),
                const SizedBox(height: 30,),

              ],
            ),
          ),
        ),
      )),
    );
  }
}
