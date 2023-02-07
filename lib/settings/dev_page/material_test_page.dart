import 'package:flutter/material.dart';
import 'package:utp_in_me/settings/dev_page/material_theme_col.dart';
import 'package:utp_in_me/settings/dev_page/material_widget_lib.dart';

class MaterialTestPage extends StatefulWidget {
  const MaterialTestPage({super.key});

  @override
  State<MaterialTestPage> createState() => _MaterialTestPageState();
}

class _MaterialTestPageState extends State<MaterialTestPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              title: Text('Material Library Page'),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: "Widget",
                    icon: Icon(Icons.widgets_rounded),
                  ),
                  Tab(
                    text: "Color",
                    icon: Icon(Icons.palette_rounded),
                  ),
                ],
              ),
            )
          ],
          body: const TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                MaterialWidgetLibrary(),
                MaterialThemeColor(),
              ]),
        ),
      ));
}
