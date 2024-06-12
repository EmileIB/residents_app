import 'package:get_it/get_it.dart'; 
import 'package:injectable/injectable.dart';
import 'package:residents_app/injection.config.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/local_data/local_data_source.dart';

final GetIt getIt = GetIt.instance;
@InjectableInit(
  initializerName: 'init',
)
Future<void> configureDependencies() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<LocalDataSource>(
    LocalDataSourceSharedPreferences(sharedPreferences),
  );

  getIt.init(); 
}
