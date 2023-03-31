import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fwfh_webview/fwfh_webview.dart';
import 'package:webview_flutter/webview_flutter.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          elevation: 10,
          title: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/CAND_logo.png")),
          centerTitle: true),
      body: Stack(children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: HtmlWidget(
            '<iframe src="https://deprem.afad.gov.tr/last-earthquakes.html"></iframe>',
            factoryBuilder: () => MyWidgetFactory(),
          ),
        )
      ]),
    );
  }
}

class MyWidgetFactory extends WidgetFactory with WebViewFactory {}
