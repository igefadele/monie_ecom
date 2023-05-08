import 'package:flutter/material.dart';

class VoucherScreen extends StatefulWidget {
  const VoucherScreen({super.key});

  @override
  VoucherScreenState createState() => VoucherScreenState();
}

class VoucherScreenState extends State<VoucherScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Voucher Page'),
        ),
      ),
    );
  }
}
