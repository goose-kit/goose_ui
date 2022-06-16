import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:goose_gallery/widget_views/dropdown_view.dart';
import 'package:goose_gallery/widget_views/loading_icon_view.dart';
import 'package:goose_gallery/widget_views/tooltip_view.dart';

import 'widget_views/button_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _current = const SizedBox();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Goose Gallery'),
      ),
      body: Row(
        children: [
          SizedBox(
            width: 280,
            child: ListView(
              children: [
                ListTile(
                  title: const Text('Button'),
                  onTap: () {
                    setState(() {
                      _current = const ButtonView();
                    });
                  },
                ),
                ListTile(
                  title: const Text('Dropdown'),
                  onTap: () {
                    setState(() {
                      _current = const DropdownView();
                    });
                  },
                ),
                ListTile(
                  title: const Text('Tooltip'),
                  onTap: () {
                    setState(() {
                      _current = const TooltipView();
                    });
                  },
                ),
                ListTile(
                  title: const Text('Loading Icons'),
                  onTap: () {
                    setState(() {
                      _current = const LoadingIconView();
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: PageTransitionSwitcher(
              transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
                return SharedAxisTransition(
                  animation: primaryAnimation,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: SharedAxisTransitionType.vertical,
                  child: child,
                );
              },
              child: _current,
            ),
          ),
        ],
      ),
    );
  }
}
