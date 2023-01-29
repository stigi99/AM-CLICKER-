import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF08585C),
      drawer: Drawer(
        elevation: 16,
        child: Align(
          alignment: AlignmentDirectional(0, 0),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Align(
                alignment: AlignmentDirectional(-0.05, 0.15),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 20),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(
                        'Froger',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 30),
                          ),
                        },
                      );
                    },
                    text: 'Froger',
                    options: FFButtonOptions(
                      width: 190,
                      height: 40,
                      color: Color(0xFF66B2FF),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.05, -0.1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('KadraDydaktyczna');
                    },
                    text: 'Kadra Dydaktyczna',
                    options: FFButtonOptions(
                      width: 190,
                      height: 40,
                      color: Color(0xFF66B2FF),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.05, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('ulepszenia');
                    },
                    text: 'Ulepszenia',
                    options: FFButtonOptions(
                      width: 190,
                      height: 40,
                      color: Color(0xFF66B2FF),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFFF1F8F8),
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.05, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('Statystyki');
                    },
                    text: 'Statystyki',
                    options: FFButtonOptions(
                      width: 190,
                      height: 40,
                      color: Color(0xFF66B2FF),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.05, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('ustawienia');
                    },
                    text: 'Ustawienia',
                    options: FFButtonOptions(
                      width: 190,
                      height: 40,
                      color: Color(0xFF66B2FF),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.05, 0.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('Odrodzenia');
                    },
                    text: 'Odrodzenie',
                    options: FFButtonOptions(
                      width: 190,
                      height: 40,
                      color: Color(0xFF66B2FF),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF66B2FF),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.calendar_view_day_outlined,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: Text(
          'PSKlicker',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 391.1,
                  height: 440.3,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.17, -0.91),
                        child: Text(
                          'LICZBA ECTS',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 40,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.21, -0.65),
                        child: Text(
                          FFAppState().ectsaktualne.toString(),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 40,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.99, 1.86),
                        child: InkWell(
                          onTap: () async {
                            FFAppState().update(() {
                              FFAppState().ectsaktualne =
                                  FFAppState().ectsaktualne +
                                      FFAppState().przyrostects;
                              FFAppState().ectsclicked =
                                  FFAppState().ectsclicked +
                                      FFAppState().przyrostects;
                            });
                          },
                          child: Image.asset(
                            'assets/images/ects.png',
                            width: 383.1,
                            height: 387.6,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 419.1,
                  height: 220.8,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.97, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('Bonus');
                          },
                          text: 'Wytrząśnij Nagrodę',
                          options: FFButtonOptions(
                            width: 200,
                            height: 100,
                            color: Color(0xFF66B2FF),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.71, -0.43),
                        child: Text(
                          'ECTS/s',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 25,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.95, 0.16),
                        child: InkWell(
                          onTap: () async {},
                          child: Text(
                            FFAppState().ectsnasekunde.toString(),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
