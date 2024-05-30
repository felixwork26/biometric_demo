import 'package:flutter/material.dart';
import 'package:local_auth_example/bioauthn/bio_authn_manager_example.dart';
import 'package:local_auth_example/bioauthn/bio_authn_prompt_example.dart';
import 'package:local_auth_example/bioauthn/face_manager_example.dart';
import 'package:local_auth_example/fidoclient/fido_example.dart';

class HuaweiFidoHome extends StatelessWidget {
  const HuaweiFidoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('HUAWEI FIDO EXAMPLE')),
        body: Column(
          children: <Widget>[
            CustomButton('BIOAUTHN MANAGER EXAMPLE', () {
              Navigator.of(context).push(
                MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) =>
                        const BioAuthnManagerExample()),
              );
            }),
            CustomButton('BIOAUTHN PROMPT EXAMPLE', () {
              Navigator.of(context).push(
                MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) =>
                        const BioAuthnPromptExample()),
              );
            }),
            CustomButton('FACE MANAGER EXAMPLE', () {
              Navigator.of(context).push(
                MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) =>
                        const FaceManagerExample()),
              );
            }),
            CustomButton('FIDO2CLIENT EXAMPLE', () {
              Navigator.of(context).push(
                MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => const FidoExample()),
              );
            }),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton(this.text, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10),
        ),
        child: Text(text),
      ),
    );
  }
}
