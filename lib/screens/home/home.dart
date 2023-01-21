import 'package:commutee_flutter/controllers/auth_methods.dart';
import 'package:flutter/material.dart';
import '../../components/input/textinput.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controller = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(Auth().currerntuser!.photoURL!),
                  backgroundColor: Colors.white,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Textinput(
                textEditingController: _controller,
                placeholder: "Where do you want to be?",
                textInputType: TextInputType.streetAddress)
          ],
        ),
      )),
    );
  }
}
