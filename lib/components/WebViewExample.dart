import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webviewexample extends StatefulWidget {
  const Webviewexample({super.key, required this.url});
  final String url;
  @override
  State<Webviewexample> createState() => _WebviewexampleState();
}

class _WebviewexampleState extends State<Webviewexample> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setUserAgent('Mozilla/5.0')
      ..loadRequest(Uri.parse(widget.url),
      headers: {'Cache-Control': 'max-age=86400'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }
}
