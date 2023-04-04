// ignore_for_file: constant_identifier_names

enum ImageConstants {
  ic_onboard,
  ic_logo,
  ic_google,
  ic_facebook,
  ;

  String get toPath => 'assets/images/$name.png';
}
