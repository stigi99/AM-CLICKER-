import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FrogerWidget extends StatefulWidget {
  const FrogerWidget({Key? key}) : super(key: key);

  @override
  _FrogerWidgetState createState() => _FrogerWidgetState();
}

class _FrogerWidgetState extends State<FrogerWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().update(() {
        FFAppState().nadgodzinydoawansu = () {
          if (FFAppState().przychodypoawansie > 10000) {
            return 0;
          } else if (FFAppState().przychodyponadgodzinach > 200000) {
            return 0;
          } else {
            return FFAppState().nadgodzinydoawansu;
          }
        }();
        FFAppState().przychodypoawansie =
            FFAppState().przychodypoawansie > 10000
                ? 0
                : FFAppState().przychodypoawansie;
        FFAppState().przychodyponadgodzinach =
            FFAppState().przychodyponadgodzinach > 200000
                ? 0
                : FFAppState().przychodyponadgodzinach;
      });
    });
  }

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
      backgroundColor: Color(0xFFF1F8F8),
      appBar: AppBar(
        backgroundColor: Color(0xFF66B2FF),
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(0, -0.05),
          child: Text(
            'Froger',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.05, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Image.asset(
                          'assets/images/1864472.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.05, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (FFAppState().ectsaktualne >= 1000.0) {
                              FFAppState().update(() {
                                FFAppState().frogerzatrudnienie =
                                    'Wez nadgodziny';
                                FFAppState().kosztnadgodzin =
                                    FFAppState().kosztnadgodzin + 1000;
                                FFAppState().aktualneprzychody =
                                    FFAppState().aktualneprzychody + 50;
                                FFAppState().ectsaktualne =
                                    FFAppState().ectsaktualne + -1000.0;
                                FFAppState().przychodyponadgodzinach =
                                    FFAppState().przychodyponadgodzinach +
                                        random_data.randomInteger(100, 1000);
                                FFAppState().przychodypoawansie =
                                    FFAppState().przychodypoawansie +
                                        random_data.randomInteger(100, 500);
                                FFAppState().nadgodzinydoawansu = 100000;
                                FFAppState().iloscnadgodzin =
                                    FFAppState().iloscnadgodzin + 1;
                              });
                            }
                          },
                          text: valueOrDefault<String>(
                            FFAppState().frogerzatrudnienie,
                            'Zatrudnij sie ',
                          ),
                          icon: Icon(
                            Icons.work,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            width: 200,
                            height: 70,
                            color: Color(0xFF66B2FF),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Roboto',
                                      color: Colors.white,
                                      fontSize: 20,
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
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Text(
                          'Koszt kolejnych nadgodzin',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Text(
                            FFAppState().kosztnadgodzin.toString(),
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Text(
                            'Aktualne przychody',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            FFAppState().aktualneprzychody.toString(),
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Text(
                            'Przychody po nadgodzinach',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            FFAppState().przychodyponadgodzinach.toString(),
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Text(
                            'Przychody po awansie',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            FFAppState().przychodypoawansie.toString(),
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Text(
                            'Pozostałe nadgodziny do awansu',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            FFAppState().nadgodzinydoawansu.toString(),
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 720.5,
                  height: 181.5,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F8F8),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.85, 0.55),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'tt',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 30),
                            ),
                          },
                        );
                      },
                      text: 'Powrót',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: Color(0xFFF1F8F8),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF66B2FF),
                                  fontSize: 20,
                                ),
                        borderSide: BorderSide(
                          color: Color(0xFF66B2FF),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
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
