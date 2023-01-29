import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class UstawieniaWidget extends StatefulWidget {
  const UstawieniaWidget({Key? key}) : super(key: key);

  @override
  _UstawieniaWidgetState createState() => _UstawieniaWidgetState();
}

class _UstawieniaWidgetState extends State<UstawieniaWidget> {
  AudioPlayer? soundPlayer;
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
          onTap: () => FocusScope.of(context).unfocus(),
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
                        child: FFButtonWidget(
                          onPressed: () async {
                            setDarkModeSetting(context, ThemeMode.system);
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
                          Align(
                            alignment: AlignmentDirectional(-0.05, 0.1),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(40, 30, 0, 0),
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
                            .setUrl('')
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
                  Align(
                    alignment: AlignmentDirectional(0.05, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(240, 550, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('HomePage');
                        },
                        text: 'Wróć',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: Color(0xFFF1F8F8),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
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
            ],
          ),
        ),
      ),
    );
  }
}
