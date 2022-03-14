
import 'package:flutterly_bloc/constant/enums.dart';

abstract class InternetState{}

class InternetLoading extends InternetState{}
class InternetConnected extends InternetState{
  final ConnectionType connectionType;
  InternetConnected({required this.connectionType});

}
class InternetDisonnected extends InternetState{}
