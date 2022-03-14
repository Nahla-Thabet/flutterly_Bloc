import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterly_bloc/constant/enums.dart';
import 'package:flutterly_bloc/logic/cubit/internet_states.dart';

import 'counter_cubit.dart';

class InternetCubit extends Cubit <InternetState>{
  InternetCubit() : super(InternetLoading());

  void emitIntrnetConnected( ConnectionType _connectionType)=>
      emitIntrnetConnected( InternetConnected(connectionType: _connectionType));



}