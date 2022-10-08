import 'package:oranos_app/Presentation/Screens/ChatScreen/Widgets/cheack_groube.dart';
import 'package:oranos_app/Presentation/Screens/ChatScreen/Widgets/item_bot_chat.dart';
import 'package:oranos_app/Presentation/Screens/ChatScreen/Widgets/item_user_chat.dart';
import 'package:oranos_app/Resources/routes_manager.dart';

import '../../../MainImports/main_imports.dart';
import '../../Widgets/navigation.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const ItemBotChat(msg: 'kkkkkkkkk'),
                  const ItemUserChat(msg: 'oooooooooo'),
                  const ItemBotChat(msg: 'kkkkkkkkk'),
                  const ItemUserChat(msg: 'oooooooooo'),
                  const ItemBotChat(msg: 'kkkkkkkkk'),
                  const ItemUserChat(msg: 'oooooooooo'),
                  const ItemBotChat(msg: 'kkkkkkkkk'),

                  // CheackGroube()
                ].padded(
                  const EdgeInsets.all(10),
                ),
              ),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width(context) * .8,
                    height: height(context) * .065,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: ColorManager.grayCircleColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.language,
                          color: ColorManager.grayIconColor,
                        ),
                        AppSize.spaceWidth2(context),
                        Text(
                          'Type something',
                          style: TextStyle(color: ColorManager.grayIconColor),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            icon: Icon(
                              Icons.mic,
                              color: ColorManager.grayIconColor,
                            ))
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigation.navigateWithName(context, Routes.homeDashBoardRoute);
                      },
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      icon: Icon(
                        Icons.send_rounded,
                        color: ColorManager.grayIconColor,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
