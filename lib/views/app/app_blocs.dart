// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:mabasa/data/repositories/ad/ad_repository.dart';
// import 'package:mabasa/data/repositories/category/category_repository.dart';
// import 'package:mabasa/data/repositories/chat/chat_repository.dart';
// import 'package:mabasa/data/repositories/location/location_repository.dart';
// import 'package:mabasa/data/repositories/people/people_repository.dart';
// import 'package:mabasa/data/repositories/report/report_repository.dart';
// import 'package:mabasa/data/repositories/subscription/subscription_repository.dart';
// import 'package:mabasa/data/repositories/user/user_repository.dart';
// import 'package:mabasa/logic/ad_bloc/ad_bloc.dart';
// import 'package:mabasa/logic/auth_bloc/authentication_bloc.dart';
// import 'package:mabasa/data/repositories/authentication/authentication_repository.dart';
// import 'package:mabasa/logic/category_bloc/category_bloc.dart';
// import 'package:mabasa/logic/chat_bloc/chat_bloc.dart';
// import 'package:mabasa/logic/location_bloc/location_bloc.dart';
// import 'package:mabasa/logic/people_bloc/people_bloc.dart';
// import 'package:mabasa/logic/report_bloc/report_bloc.dart';
// import 'package:mabasa/logic/subscription_bloc/subscription_bloc.dart';
// import 'package:mabasa/logic/user_bloc/user_bloc.dart';

// class AppBlocs extends StatelessWidget {
//   final Widget child;
//   const AppBlocs({
//     super.key,
//     required this.child,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => AuthenticationBloc(
//             authenticationRepository:
//                 RepositoryProvider.of<AuthenticationRepository>(context),
//           )..add(AuthenticationEventInitialize()),
//           lazy: false,
//         ),
//         BlocProvider(
//           create: (context) => UserBloc(
//             userRepository: RepositoryProvider.of<UserRepository>(context),
//           ),
//           lazy: false,
//         ),
//         BlocProvider(
//           create: (context) => LocationBloc(
//             locationRepository:
//                 RepositoryProvider.of<LocationRepository>(context),
//           )..add(LoadLocations()),
//           lazy: false,
//         ),
//         BlocProvider(
//           create: (context) => CategoryBloc(
//             categoryRepository:
//                 RepositoryProvider.of<CategoryRepository>(context),
//           )..add(LoadCategories()),
//           lazy: false,
//         ),
//         BlocProvider(
//           create: (context) => PeopleBloc(
//             peopleRepository: RepositoryProvider.of<PeopleRepository>(context),
//           ),
//           lazy: false,
//         ),
//         BlocProvider(
//           create: (context) => ChatBloc(
//             chatRepository: RepositoryProvider.of<ChatRepository>(context),
//           ),
//           lazy: false,
//         ),
//         BlocProvider(
//           create: (context) => AdBloc(
//             adRepository: RepositoryProvider.of<AdRepository>(context),
//           ),
//           lazy: false,
//         ),
//         BlocProvider(
//           create: (context) => SubscriptionBloc(
//             subscriptionRepository:
//                 RepositoryProvider.of<SubscriptionRepository>(context),
//           ),
//           lazy: false,
//         ),
//         BlocProvider(
//           create: (context) => ReportBloc(
//             reportRepository: RepositoryProvider.of<ReportRepository>(context),
//           ),
//           lazy: false,
//         ),
//       ],
//       child: child,
//     );
//   }
// }
