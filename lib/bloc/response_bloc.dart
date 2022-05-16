import 'package:app_test_1/bloc/response_event.dart';
import 'package:app_test_1/bloc/response_state.dart';
import 'package:app_test_1/model/response.dart';
import 'package:app_test_1/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// This class is used for demonstrating bloc pattern use case by requesting network calls
class ResponseBloc extends Bloc<ResponseEvent, ResponseState> {
  Response data = Response();
  ResponseBloc() : super(ResponseInitialState()) {
    on<FetchDataEvent>((event, emit) async {
      data = await Repository().fetch();
      emit(FetchDataState());
    });
    on<LoadingEvent>((event, emit) {
      emit(LoadingState());
    });
  }
}
