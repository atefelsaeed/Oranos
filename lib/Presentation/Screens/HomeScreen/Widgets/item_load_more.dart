import '../../../../MainImports/main_imports.dart';

class ItemLoadMore extends StatelessWidget {
  const ItemLoadMore({Key? key, required this.title, required this.function})
      : super(key: key);
  final String title;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: FontSize.textS20(context)),
        ),
        IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {
              function();
            },
            icon: Icon(
              Icons.more_horiz_rounded,
              color: ColorManager.grayIconColor,
            ))
      ].padded(EdgeInsets.symmetric(vertical: height(context) * .005)),
    );
  }
}
