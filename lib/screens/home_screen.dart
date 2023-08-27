import 'package:flutter/material.dart';
import 'package:potion/helpers/theming.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(251, 251, 250, 1),
              border: Border(
                right: BorderSide(
                  color: Color.fromRGBO(245, 245, 244, 1),
                  width: 1,
                ),
              ),
            ),
            width: 220,
            child: ListView(
              children: [
                Container(
                  constraints: const BoxConstraints(minHeight: 45),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Container(
                        constraints:
                            BoxConstraints.tight(const Size.square(20)),
                        color: Colors.grey.shade200,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Workspace',
                        style: Theme.of(context).textTheme.bodyMediumSoft!,
                      ),
                    ],
                  ),
                ),
                PotionMenuItem(
                  leading: Icon(Icons.search),
                  child: Text('Search'),
                ),
                PotionMenuItem(
                  leading: Icon(Icons.settings),
                  child: Text('Settings'),
                ),
                PotionMenuItem(
                  leading: Icon(Icons.add_circle_outline),
                  child: Text('New page'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 96, vertical: 100),
              children: [
                Text(
                  'Lorem Ipsum',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: 16),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies aliquam, nunc sapien ultricies nunc, quis aliquet nisl nunc eget nisl. Donec auctor, nisl eget ultricies aliquam, nunc sapien ultricies nunc, quis aliquet nisl nunc eget nisl.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PotionMenuItem extends StatefulWidget {
  final Widget leading, child;

  const PotionMenuItem({
    super.key,
    required this.leading,
    required this.child,
  });

  @override
  State<PotionMenuItem> createState() => _PotionMenuItemState();
}

class _PotionMenuItemState extends State<PotionMenuItem> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() => _hovering = true);
      },
      onExit: (event) {
        setState(() => _hovering = false);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        constraints: const BoxConstraints(minHeight: 27),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: _hovering ? const Color.fromRGBO(240, 240, 239, 1) : null,
        ),
        child: Row(
          children: [
            IconTheme(
              data: const IconThemeData(
                size: 18,
                color: Color.fromRGBO(162, 162, 159, 1),
              ),
              child: widget.leading,
            ),
            const SizedBox(width: 12),
            DefaultTextStyle(
              style: Theme.of(context).textTheme.bodyMediumSoft30!,
              child: widget.child,
            ),
          ],
        ),
      ),
    );
  }
}
