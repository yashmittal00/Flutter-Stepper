import 'package:app_test_1/bloc/response_bloc.dart';
import 'package:app_test_1/bloc/response_event.dart';
import 'package:app_test_1/bloc/response_state.dart';
import 'package:app_test_1/presentation/common_widget/appraisal_card.dart';
import 'package:app_test_1/presentation/common_widget/button.dart';
import 'package:app_test_1/presentation/common_widget/stepper.dart';
import 'package:app_test_1/presentation/common_widget/verify_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

String? title;

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    final responsBloc = BlocProvider.of<ResponseBloc>(context);
    responsBloc.add(FetchDataEvent());
  }

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    /// monitor network fetch
    await Future.delayed(const Duration(milliseconds: 1000));

    /// if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    /// monitor network fetch
    await Future.delayed(const Duration(milliseconds: 1000));

    /// if failed,use loadFailed(),if no data return,use LoadNodata()
    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
          leading: const Icon(Icons.arrow_back, color: Colors.black),
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Container(
            padding: const EdgeInsets.symmetric(vertical: 30),
            constraints: const BoxConstraints(maxWidth: 280),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Oro gold loan appointment',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        height: 1.6,
                      ),
                ),
                Text(
                  'Loans taken in the same doorstep visit will be grouped together.',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 12,
                        height: 1.6,
                        fontWeight: FontWeight.w600,
                        color: const Color(0XFF919191),
                      ),
                ),
              ],
            ),
          ),
        ),
        body: SmartRefresher(
          enablePullDown: true,
          controller: _refreshController,
          onRefresh: _onRefresh,
          onLoading: _onLoading,
          child: BlocBuilder<ResponseBloc, ResponseState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppraisalCard(),
                          Padding(
                            padding: const EdgeInsets.only(top: 24, bottom: 8),
                            child: Text(
                              '3 Simple Steps to get your Gold Loan',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0XFF919191),
                                    height: 1.6,
                                  ),
                            ),
                          ),
                          const StepperWidget()
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          useRootNavigator: true,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(12),
                            ),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          builder: (bottomSheetContext) {
                            return VerifyBottomSheet();
                          },
                        );
                      },
                      child: const Button(),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
