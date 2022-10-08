import 'package:oranos_app/Presentation/Screens/ChatScreen/Widgets/item_bot_chat.dart';

import '../../../MainImports/main_imports.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ItemBotChat()
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: ColorManager.grayCircleColor,borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Icon(Icons.language,color: ColorManager.grayIconColor,),
                AppSize.spaceWidth2(context),
                Text('Type something',style: TextStyle(color: ColorManager.grayIconColor),),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.mic,color: ColorManager.grayIconColor,))
              ],
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.send_rounded,
                color: ColorManager.grayIconColor,
              ))
        ],
      ),
    );
  }
}
