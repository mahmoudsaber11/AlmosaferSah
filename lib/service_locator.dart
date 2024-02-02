import 'package:get_it/get_it.dart';

final GetIt serviceLocator = GetIt.instance;

class ServiceLocator {
  Future<void> setupServiceLocator() async {
    await _setupForExternal();
    _setupForeCore();
    _setupForRepos();
    _setupForCubits();
  }

  Future<void> _setupForExternal() async {}
}

void _setupForeCore() {}

void _setupForRepos() {}

void _setupForCubits() {}
