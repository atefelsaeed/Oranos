// ignore_for_file: constant_identifier_names

const String IMAGE_PATH = 'assets/images';
const String ICON_PATH = 'assets/icons';

class ImageAssets {
  static const String logo = '$IMAGE_PATH/logo.png';
  static const String startBackgroundImage =
      '$IMAGE_PATH/startBackgroundImage.png';
  static const String introLogo = '$IMAGE_PATH/introLogo.png';
  static const String introPath = '$IMAGE_PATH/introPath.png';
  static const String user1 = '$IMAGE_PATH/user1.png';
  static const String user2 = '$IMAGE_PATH/user2.png';
  static const String panel1 = '$IMAGE_PATH/panel_1.png';
  static const String panel2 = '$IMAGE_PATH/panel_2.png';
  static const String panel3 = '$IMAGE_PATH/panel_3.png';
  static const String panel4 = '$IMAGE_PATH/panel_4.png';
  static const String panel5 = '$IMAGE_PATH/panel_5.png';
  static const String panel6 = '$IMAGE_PATH/panel_6.png';

  ///icons
  static const String homeIcon = '$ICON_PATH/homeIcon.png';
  static const String profileIcon = '$ICON_PATH/profileIcon.png';
  static const String searchIcon = '$ICON_PATH/searchIcon.png';
  static const String starIcon = '$ICON_PATH/starIcon.png';
  static const String walletIcon = '$ICON_PATH/walletIcon.png';
  static const String rateIcon = '$ICON_PATH/rateIcon.png';
  static const String botIcon = '$ICON_PATH/botIcon.png';
  static const String userChat = '$ICON_PATH/userChat.png';
}

/*
*
Asset Helper
Actually, the other most of used component is image and I need to declare local image path in the class.
*  On this point, I’m going to implement a small singleton pattern design and
*  I called it this class always with this single instance.
* */
class ImageConstants {
  static ImageConstants? _instance;

  static ImageConstants get instance {
    _instance ??= ImageConstants._();
    return _instance!;
  }

  ImageConstants._();

  final String appIcon = 'icon/app_icon'.toPNG;
  final String markerUser = 'icon/ic_marker_user'.toPNG;
}

extension _ImageConstantsExtension on String {
  String get toPNG => 'assets/$this.png';
}
