import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_responsive_ui/features/home/presentation/models/income_item_model.dart';
import 'package:full_responsive_ui/utils/app_styles.dart';

class IncomeItems extends StatelessWidget {
  final List<IncomeItemModel> data;

  const IncomeItems({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) => Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: data[index].color,
                  ),
                  Text(
                    data[index].text,
                    style: AppStyles.styleMediumBlue14(context),
                    overflow: TextOverflow.ellipsis,
                  ),
                  constraints.maxWidth > 205
                      ? Flexible(
                          child: Text(
                          "${data[index].value.toString()} %",
                          style: AppStyles.styleMediumBlue14(context),
                          overflow: TextOverflow.ellipsis,
                        ))
                      : const SizedBox.shrink()
                ],
              ),
          separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
          itemCount: data.length),
    );
  }
}
