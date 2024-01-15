import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class SupportClientScreen extends StatelessWidget {
  const SupportClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Text(
          'Service client',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OptionCard(
              onTap: () {
                launcher.launchUrl(
                  Uri.parse(
                    'sms:555010123${Platform.isAndroid ? '?' : '&'}body=Je besoin d\'aide',
                  ),
                );
              },
              icon: Icons.message,
              title: 'Message',
              subtitle: '+213 123-456-7890',
              color: Colors.green,
            ),
            const SizedBox(height: 20),
            OptionCard(
              icon: Icons.email,
              title: 'Email',
              subtitle: 'support@commerce.com',
              color: Colors.orange,
              onTap: () async {
                Uri uri = Uri.parse(
                  'mailto:akram.cheraifia@gmail.com?subject=Reclamation&body=Je besoin d\'aide',
                );
                if (!await launcher.launchUrl(uri)) {
                  debugPrint("error");
                }
              },
            ),
            const SizedBox(height: 20),
            OptionCard(
              onTap: () async {
                Uri uri = Uri.parse('tel:+213-5579-52-363');
                if (!await launcher.launchUrl(uri)) {
                  debugPrint("error");
                }
              },
              icon: Icons.phone,
              title: 'Appel',
              subtitle: '+213 123-456-7890',
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final void Function()? onTap;

  const OptionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: color,
      child: ListTile(
          leading: Icon(
            icon,
            color: Colors.white,
          ),
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          onTap: onTap),
    );
  }
}
