import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<LoginSubmitEvent>(submit);
  }
  FutureOr<void> submit(
      LoginSubmitEvent event, Emitter<LoginState> emit) async {
    print(event.toString());
  }
}
