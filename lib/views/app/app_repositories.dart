// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:mabasa/data/repositories/ad/ad_provider.dart';
// import 'package:mabasa/data/repositories/ad/ad_repository.dart';
// import 'package:mabasa/data/repositories/authentication/authentication_provider.dart';
// import 'package:mabasa/data/repositories/authentication/authentication_repository.dart';
// import 'package:mabasa/data/repositories/category/category_provider.dart';
// import 'package:mabasa/data/repositories/category/category_repository.dart';
// import 'package:mabasa/data/repositories/chat/chat_provider.dart';
// import 'package:mabasa/data/repositories/chat/chat_repository.dart';
// import 'package:mabasa/data/repositories/location/location_provider.dart';
// import 'package:mabasa/data/repositories/location/location_repository.dart';
// import 'package:mabasa/data/repositories/people/people_provider.dart';
// import 'package:mabasa/data/repositories/people/people_repository.dart';
// import 'package:mabasa/data/repositories/report/report_provider.dart';
// import 'package:mabasa/data/repositories/report/report_repository.dart';
// import 'package:mabasa/data/repositories/subscription/subscription_provider.dart';
// import 'package:mabasa/data/repositories/subscription/subscription_repository.dart';
// import 'package:mabasa/data/repositories/user/user_provider.dart';
// import 'package:mabasa/data/repositories/user/user_repository.dart';

// class AppRepositories extends StatelessWidget {
//   final Widget appBlocs;
//   const AppRepositories({
//     Key? key,
//     required this.appBlocs,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MultiRepositoryProvider(
//       providers: [
//         RepositoryProvider(
//           create: (context) => AuthenticationRepository(
//             authenticationProvider: AuthenticationProvider(),
//           ),
//         ),
//         RepositoryProvider(
//           create: (context) => UserRepository(
//             userProvider: UserProvider(),
//           ),
//         ),
//         RepositoryProvider(
//           create: (context) => LocationRepository(
//             locationProvider: LocationProvider(),
//           ),
//         ),
//         RepositoryProvider(
//           create: (context) => CategoryRepository(
//             categoryProvider: CategoryProvider(),
//           ),
//         ),
//         RepositoryProvider(
//           create: (context) => PeopleRepository(
//             peopleProvider: PeopleProvider(),
//           ),
//         ),
//         RepositoryProvider(
//           create: (context) => ChatRepository(
//             chatProvider: ChatProvider(),
//           ),
//         ),
//         RepositoryProvider(
//           create: (context) => AdRepository(
//             adProvider: AdProvider(),
//           ),
//         ),
//         RepositoryProvider(
//           create: (context) => SubscriptionRepository(
//             subscriptionProvider: SubscriptionProvider(),
//           ),
//         ),
//         RepositoryProvider(
//           create: (context) => ReportRepository(
//             reportProvider: ReportProvider(),
//           ),
//         ),
//       ],
//       child: appBlocs,
//     );
//   }
// }
