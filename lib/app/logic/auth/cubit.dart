
import 'package:earthkeepers/app/logic/auth/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState>{
  AuthCubit():super(AuthInitialState());
  static AuthCubit get(context)=>BlocProvider.of(context);
  int selectIndex=0;
  changeCartIndex(
      val
      ){
    selectIndex=val;
    emit(ChangeCartCategory());
  }
}
