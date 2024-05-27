import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Government ID Scan',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Government ID Scan'),
        ),
        body: Center(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(70)),
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset("assets/Aadhaar.webp"),
              ),
              ElevatedButton(
                onPressed: _launchAadhaarQRScanner,
                child: const Text('Aadhaar Scanner'),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset("assets/Pan.webp"),
              ),
               const SizedBox(height: 20),
               ElevatedButton(
                onPressed: _launchPanCardScanner,
                child: const Text('Pan Card Scanner'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _launchAadhaarQRScanner() async {
    const String url = 'https://play.google.com/store/apps/details?id=in.net.uidai.qrcodescanner&hl=en_IN';
    if (await launchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchPanCardScanner() async {
    const String url = 'https://play.google.com/store/apps/details?id=com.pv.scr.pancardreader&hl=en_IN';
    if (await launchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

}
