part of 'WhoWeAreImports.dart';
class WhoWeAreData{

  void moveToCEOSpeech(BuildContext context){
   AutoRouter.of(context).push(const CEOSpeech());
  }
  void moveToMembers(BuildContext context){
   AutoRouter.of(context).push(const Members());
  }

  void moveToHistory(BuildContext context){
  AutoRouter.of(context).push(const History());
  }
  void moveToAboutUs(BuildContext context){
  AutoRouter.of(context).push(const AboutUs());
  }
}