part of 'NotificationsImports.dart';
class NotificationsData{

  void moveToNews(BuildContext context){
   AutoRouter.of(context).push(const News());

  }

  void moveToOffers(BuildContext context){
   AutoRouter.of(context).push(const Offers());

  }

  void moveToTrips(BuildContext context){
  AutoRouter.of(context).push(const Trips());

  }
}