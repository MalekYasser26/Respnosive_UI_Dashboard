import 'package:flutter/material.dart';
import 'package:full_responsive_ui/features/home/presentation/models/drawer_item_model.dart';
import 'package:full_responsive_ui/features/home/presentation/views/widgets/drawer_item.dart';

class DrawerOptions extends StatefulWidget {
  final int count;


  const DrawerOptions({
    super.key,
    required this.dimItems,
    required this.count,
  });

  final List<DrawerItemModels> dimItems;

  @override
  State<DrawerOptions> createState() => _DrawerOptionsState();
}

class _DrawerOptionsState extends State<DrawerOptions> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            activeIndex = index;
            debugPrint(activeIndex.toString());
            setState(() {});
          }
        },
        child: DrawerItem(
          dim: widget.dimItems[index],
          isActive: activeIndex == index,
        ),
      ),
      itemCount: widget.count,
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
    );
  }
}
