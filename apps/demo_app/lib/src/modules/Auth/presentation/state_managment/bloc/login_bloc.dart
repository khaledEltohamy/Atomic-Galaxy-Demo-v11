// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/error/error_model.dart';
import '../../../domain/entities/login_request_entity.dart';
import '../../../domain/entities/login_response_entity.dart';
import '../../../domain/usecases/login_use_case.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this.useCase) : super(const InitialLoginState()) {
    on<FetchLoginEvent>(_onFetch);
  }
  final LoginUseCase useCase;

  Future<void> _onFetch(
    FetchLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoadingLoginState());
    final result = await useCase(event.request);
    result.fold(
      (failure) => emit(ErrorLoginState(ErrorModel.fromFailure(failure))),
      (response) => emit(SuccessLoginState(response)),
    );
  }
}
