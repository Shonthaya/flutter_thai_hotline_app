import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ThaiHotlineDetail {
  static Future<void> makePhoneCall(
      BuildContext context, String phoneNumber) async {
    final String cleanPhone = phoneNumber.replaceAll(' ', '');
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: cleanPhone,
    );

    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('ไม่สามารถโทรออกได้ในขณะนี้')),
        );
      }
    }
  }
}
