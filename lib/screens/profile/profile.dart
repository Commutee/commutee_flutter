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
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
