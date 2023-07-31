import 'package:app_auth/features/information/presentation/pages/main.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';
import 'features/information/data/datasources/contact_remote_datasource.dart';
import 'features/information/data/repositories/contact_repository_impl.dart';
import 'features/information/domain/usecases/get_contacts_usecases.dart';
import 'features/information/presentation/pages/contact_list_page.dart';
import 'features/information/presentation/pages/quiz_page.dart';

// User
import 'features/user/presentation/login_screen.dart';
import 'features/user/presentation/register_screen.dart';
import 'features/user/domain/usecases/user_usecase.dart';
import 'features/user/data/repositories/auth_repository_imp.dart';
import 'features/user/data/datasources/firebase_datasource.dart';
import 'features/user/presentation/homepage.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    
  );
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );
  

  runApp(
    MultiProvider(
      providers: [
        Provider<Dio>(create: (_) => Dio()),
        Provider<ContactRemoteDataSourceImpl>(
          create: (context) =>
              ContactRemoteDataSourceImpl(dio: context.read<Dio>()),
        ),
        Provider<ContactRepositoryImpl>(
          create: (context) => ContactRepositoryImpl(
            remoteDataSource: context.read<ContactRemoteDataSourceImpl>(),
          ),
        ),
        Provider<GetContactsUseCase>(
          create: (context) => GetContactsUseCase(
            contactRepository: context.read<ContactRepositoryImpl>(),
          ),
        ),
        Provider<SignUpUseCase>(
          create: (context) => SignUpUseCase(
            UserRepositoryImpl(
              FirebaseUserDataSource(
                firebaseAuth: FirebaseAuth.instance,
              ),
            ),
          ),
        ),
        Provider<SignInUseCase>(
          create: (context) => SignInUseCase(
            UserRepositoryImpl(
              FirebaseUserDataSource(
                firebaseAuth: FirebaseAuth.instance,
              ),
            ),
          ),
        ),
        Provider<SignOutUseCase>(
          create: (context) => SignOutUseCase(
            UserRepositoryImpl(
              FirebaseUserDataSource(
                firebaseAuth: FirebaseAuth.instance,
              ),
            ),
          ),
        ),
        ChangeNotifierProvider<AuthState>(
          create: (_) => AuthState(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class AuthState extends ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  void setLoggedIn(bool value) {
    _isLoggedIn = value;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disorders',
      initialRoute: '/home_page',
      routes: {
        '/': (context) => Main(),
        '/register': (context) => RegisterScreen(),
        '/contact_list': (context) => ContactListPage(),
        '/quiz': (context) => InfoEvaluation(),
        '/home_page': (context) => HomePage(),
        '/main': (context) => Main(),
        '/login_screen': (context) => LoginScreen(),
      },
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authState = context.read<AuthState>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú Principal'),
        actions: [
          IconButton(
            onPressed: () {
              authState.setLoggedIn(false);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Text('Bienvenido al Menú Principal'),
      ),
    );
  }
}