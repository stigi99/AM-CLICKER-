import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class UstawieniaWidget extends StatefulWidget {
  const UstawieniaWidget({Key? key}) : super(key: key);

  @override
  _UstawieniaWidgetState createState() => _UstawieniaWidgetState();
}

class _UstawieniaWidgetState extends State<UstawieniaWidget> {
  ApiCallResponse? oo;
  AudioPlayer? soundPlayer;
  int? countControllerValue;
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFF66B2FF),
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'Ustawienia',
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
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
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 30, 0, 0),
                          child: InkWell(
                            onDoubleTap: () async {
                              setDarkModeSetting(context, ThemeMode.dark);
                            },
                            child: FFButtonWidget(
                              onPressed: () async {
                                setDarkModeSetting(context, ThemeMode.light);
                              },
                              text: '',
                              icon: Icon(
                                Icons.wb_sunny_outlined,
                                size: 15,
                              ),
                              options: FFButtonOptions(
                                width: 50,
                                height: 50,
                                color: Color(0xFF66B2FF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.05, 0.1),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    40, 30, 0, 0),
                                child: Text(
                                  'Zmień tryb jasny/ciemny',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          soundPlayer ??= AudioPlayer();
                          if (soundPlayer!.playing) {
                            await soundPlayer!.stop();
                          }

                          soundPlayer!
                              .setAsset(
                                  'assets/audios/hatsune-miku-project-diva-arcade-future-tone.mp3')
                              .then((_) => soundPlayer!.play());
                        },
                        text: '',
                        icon: Icon(
                          Icons.volume_up,
                          size: 15,
                        ),
                        options: FFButtonOptions(
                          width: 50,
                          height: 50,
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
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(40, 20, 0, 0),
                          child: Text(
                            'Wyłącz/włącz dźwięk',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(110, 0, 0, 0),
                            child: Container(
                              width: 160,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: Color(0xFF9E9E9E),
                                  width: 1,
                                ),
                              ),
                              child: FlutterFlowCountController(
                                decrementIconBuilder: (enabled) => FaIcon(
                                  FontAwesomeIcons.minus,
                                  color: enabled
                                      ? Color(0xDD000000)
                                      : Color(0xFFEEEEEE),
                                  size: 20,
                                ),
                                incrementIconBuilder: (enabled) => FaIcon(
                                  FontAwesomeIcons.plus,
                                  color:
                                      enabled ? Colors.blue : Color(0xFFEEEEEE),
                                  size: 20,
                                ),
                                countBuilder: (count) => Text(
                                  count.toString(),
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                count: countControllerValue ??= 1,
                                updateCount: (count) => setState(
                                    () => countControllerValue = count),
                                stepSize: 1,
                                minimum: 1,
                                maximum: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          oo = await RankingCall.call(
                            miejsce: countControllerValue,
                          );

                          setState(() {});
                        },
                        text: 'Wyswietl statystyki osoby na powyzszym miejscu',
                        options: FFButtonOptions(
                          width: 390,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  valueOrDefault<String>(
                    RankingCall.miejsce(
                      (oo?.jsonBody ?? ''),
                    ).toString(),
                    '.',
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
                Text(
                  valueOrDefault<String>(
                    RankingCall.nick(
                      (oo?.jsonBody ?? ''),
                    ).toString(),
                    '.',
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
                Text(
                  valueOrDefault<String>(
                    RankingCall.ilosc(
                      (oo?.jsonBody ?? ''),
                    ).toString(),
                    '.',
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.05, 0),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(100, 100, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('tt');
                            },
                            text: 'Wróć',
                            options: FFButtonOptions(
                              width: 130,
                              height: 40,
                              color: Color(0xFFF1F8F8),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF66B2FF),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
