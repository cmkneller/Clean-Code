import 'package:cleanproject/src/features/error/presentation/widgets/error_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});
  static const routeName = "/scanner";

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenDimensions = MediaQuery.of(context).size;
    return ErrorWrapper(
        widget: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(title: const Text('QR Scanner')),
      body: SizedBox(
        height: screenDimensions.height,
        child: MobileScanner(onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          for (final barcode in barcodes) {}
        }),
      ),
    ));
  }
}
