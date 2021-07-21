import 'package:flutter/cupertino.dart';

class RecordItemWidget extends StatelessWidget {
  final String title;
  final description;
  final String expireAt;
  final VoidCallback onPressed;

  const RecordItemWidget(
      {Key? key,
      required this.title,
      required this.description,
      required this.expireAt,
      required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onPressed(),
        child: Container(
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            // color: CupertinoColors.lightBackgroundGray,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  child: Icon(
                    CupertinoIcons.tag_circle,
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(title),
                      Text(
                        description,
                        style: const TextStyle(fontSize: 10),
                      ),
                      Text(expireAt, style: const TextStyle(fontSize: 10)),
                    ],
                  ),
                ),
                flex: 9,
              ),
              Expanded(
                child: Container(
                  child: Icon(
                    CupertinoIcons.chevron_forward,
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
        ));
  }
}
