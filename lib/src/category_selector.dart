import 'package:emoji_selector/src/category_icon.dart';
import 'package:flutter/material.dart';

/// Category selector
class CategorySelector extends StatelessWidget {
  final bool selected;
  final CategoryIcon icon;
  final Function() onSelected;

  const CategorySelector(
      {Key? key,
      required this.selected,
      required this.icon,
      required this.onSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 9,
      // height: MediaQuery.of(context).size.width / 9,
      height: 24,
      child: GestureDetector(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: selected ? Colors.black12 : Colors.transparent,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Icon(
              icon.icon,
              size: 16.0,
              color: selected ? icon.selectedColor : icon.color,
            ),
          ),
        ),
        onTap: () {
          onSelected();
        },
      ),
    );
  }
}
