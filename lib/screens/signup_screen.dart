import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _familyNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  String _errorText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('S\'inscrire'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Nom',
                border: OutlineInputBorder(),
              ),
              onChanged: (_) {
                setState(() {
                  _errorText = '';
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _familyNameController,
              decoration: const InputDecoration(
                labelText: 'Nom de famille',
                border: OutlineInputBorder(),
              ),
              onChanged: (_) {
                setState(() {
                  _errorText = '';
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _phoneNumberController,
              decoration: const InputDecoration(
                labelText: 'Numéro de téléphone',
                border: OutlineInputBorder(),
              ),
              onChanged: (_) {
                setState(() {
                  _errorText = '';
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              onChanged: (_) {
                setState(() {
                  _errorText = '';
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Mot de passe',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
              onChanged: (_) {
                setState(() {
                  _errorText = '';
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _confirmPasswordController,
              decoration: const InputDecoration(
                labelText: 'Confirmez le mot de passe',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
              onChanged: (_) {
                setState(() {
                  _errorText = '';
                });
              },
            ),
            const SizedBox(height: 16.0),
            if (_errorText.isNotEmpty)
              Text(
                _errorText,
                style: const TextStyle(color: Colors.red),
              ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _signup,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ), // Set the text color
                textStyle: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text(
                'S\'inscrire',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Future<void> _signup() async {
    if (_nameController.text.isEmpty ||
        _familyNameController.text.isEmpty ||
        _phoneNumberController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _confirmPasswordController.text.isEmpty) {
      setState(() {
        _errorText = 'Merci de remplir tous les champs.';
      });
      return;
    }

    if (_passwordController.text.length < 8) {
      setState(() {
        _errorText = 'Le mot de passe doit comporter au moins 8 caractères.';
      });
      return;
    }

    if (_passwordController.text != _confirmPasswordController.text) {
      setState(() {
        _errorText =
            'Mot de passe et confirmer le mot de passe ne correspond pas.';
      });
      return;
    }

    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      // Store additional user data in Firebase
      // ...
      await firestore.collection('users').doc(userCredential.user!.uid).set({
        'uid': userCredential.user!.uid,
        'name': _nameController.text,
        'familyName': _familyNameController.text,
        'phone': _phoneNumberController.text,
        'email': _emailController.text,
        // Add other user data here
      });

      // Signup successful, do something with the userCredential
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.blue,
          content: const Text(
            'Inscription réussie!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          action: SnackBarAction(
            label: 'Dismiss',
            textColor: Colors.white,
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
          ),
        ),
      );
      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        setState(() {
          _errorText = 'Le mot de passe fourni est trop faible.';
        });
      } else if (e.code == 'email-already-in-use') {
        setState(() {
          _errorText = 'Email déjà utilisé.';
        });
      } else if (e.code == 'invalid-email') {
        setState(() {
          _errorText = 'Email invalide.';
        });
      }
    } on Exception catch (e) {
      setState(() {
        _errorText = e.toString();
      });
    }
  }
}
