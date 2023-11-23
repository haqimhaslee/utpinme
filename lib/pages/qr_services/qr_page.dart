import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'dart:developer';
import 'dart:io';

class QRService extends StatefulWidget {
  const QRService({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRServiceState();
}

class _QRServiceState extends State<QRService> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scan a code"),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 4, child: _buildQrView(context)),
          Expanded(
              flex: 1,
              child: Container(
                color: const Color.fromARGB(255, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Text(''),
                    if (result != null)
                      Row(
                        children: [
                          Text('Barcode Type: ${(result!.format)}'),
                          Text('Data: ${result!.code}')
                        ],
                      )
                    else
                      const Text(' '),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 45),
                          child: Container(
                            margin: const EdgeInsets.all(0),
                            child: TextButton(
                                onPressed: () async {
                                  await controller?.toggleFlash();
                                  setState(() {});
                                },
                                child: FutureBuilder(
                                  future: controller?.getFlashStatus(),
                                  builder: (context, snapshot) {
                                    if (snapshot.data != null) {
                                      return const Icon(Icons.flash_on_rounded);
                                    } else {
                                      return const Icon(Icons.flash_on_rounded);
                                    }
                                  },
                                )),
                          ),
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Padding(
                          padding: const EdgeInsets.only(right: 45),
                          child: Container(
                            margin: const EdgeInsets.all(0),
                            child: TextButton(
                                onPressed: () async {
                                  await controller?.flipCamera();
                                  setState(() {});
                                },
                                child: FutureBuilder(
                                  future: controller?.getCameraInfo(),
                                  builder: (context, snapshot) {
                                    if (snapshot.data != null) {
                                      return const Icon(
                                          Icons.cameraswitch_rounded);
                                    } else {
                                      return const Icon(
                                          Icons.cameraswitch_rounded);
                                    }
                                  },
                                )),
                          ),
                        )
                      ],
                    ),
                    const Text(''),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;

    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Theme.of(context).colorScheme.primary,
          borderRadius: 15,
          borderLength: 50,
          borderWidth: 8,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
