import 'package:fimber/fimber.dart';
import 'package:firedart/firedart.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../data/repository/auth_repository.dart';
import '../store/hive_store.dart';
import '../store/token_adapter.dart';

final l = GetIt.instance;

extension Locator on GetIt {
  Future<void> initDependencies() async {
    Fimber.d('');
    _initLogging();
    await _initHive();
    await _initFirebase();
    await _initRepositories();
  }

  void _initLogging() {
    Fimber.d('');
    Fimber.plantTree(DebugTree(useColors: true));
  }

  Future<void> _initHive() async {
    final dir = '${(await getApplicationDocumentsDirectory()).path}\\checklist';
    Fimber.d('application directory: $dir');
    final hive = Hive
      ..init(dir)
      ..registerAdapter(TokenAdapter());
    registerLazySingleton(() => hive);
  }

  Future<void> _initFirebase() async {
    Fimber.d('');
    // TODO: remove throw
    throw 'setup your firebase project';
    final firebaseAuth = FirebaseAuth.initialize(
      '', // TODO: put your firebase for web api key here
      await HiveStore.create(),
    );
    registerLazySingleton(() => firebaseAuth);
  }

  Future<void> _initRepositories() async {
    Fimber.d('');
    registerLazySingleton(() => AuthRepository(get()));
  }
}
