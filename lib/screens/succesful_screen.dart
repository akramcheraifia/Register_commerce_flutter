import 'package:flutter/material.dart';

class SuccessfulScreen extends StatelessWidget {
  final int formNumber;
  SuccessfulScreen({super.key, required this.formNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle,
              size: 100,
              color: Colors.green,
            ),
            const SizedBox(height: 20),
            const Text(
              'Formulaire soumis avec succès!',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Numéro de la Demande #${formNumber.toString()}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('Retour'),
            ),
          ],
        ),
      ),
    );
  }
}
