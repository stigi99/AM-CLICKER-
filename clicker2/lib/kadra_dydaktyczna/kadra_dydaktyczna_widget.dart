import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class KadraDydaktycznaWidget extends StatefulWidget {
  const KadraDydaktycznaWidget({Key? key}) : super(key: key);

  @override
  _KadraDydaktycznaWidgetState createState() => _KadraDydaktycznaWidgetState();
}

class _KadraDydaktycznaWidgetState extends State<KadraDydaktycznaWidget> {
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
        title: Text(
          'Kadra Dydaktyczna',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Container(
                  width: 406.6,
                  height: 296.6,
                  decoration: BoxDecoration(
                    color: Color(0xFF08585C),
                    border: Border.all(
                      color: Color(0xFF66B2FF),
                      width: 10,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.04, 0.8),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pop();
                          },
                          text: 'Ekran glowny',
                          options: FFButtonOptions(
                            width: 170,
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
                      Align(
                        alignment: AlignmentDirectional(-0.06, -0.27),
                        child: Container(
                          width: 335.5,
                          height: 134.5,
                          decoration: BoxDecoration(),
                          child: GridView(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 1,
                            ),
                            scrollDirection: Axis.vertical,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.userGraduate,
                                color: Colors.black,
                                size: 100,
                              ),
                              FaIcon(
                                FontAwesomeIcons.userAstronaut,
                                color: Colors.black,
                                size: 100,
                              ),
                              FaIcon(
                                FontAwesomeIcons.userTie,
                                color: Colors.black,
                                size: 100,
                              ),
                              Text(
                                valueOrDefault<String>(
                                  FFAppState().Magister.toString(),
                                  'Liczba magistrów',
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                              Text(
                                valueOrDefault<String>(
                                  FFAppState().Doktor.toString(),
                                  'Liczba doktorów',
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                              Text(
                                valueOrDefault<String>(
                                  FFAppState().Profesor.toString(),
                                  'Liczba profesorow',
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.05, -0.94),
                        child: Text(
                          'Aktywna kadra',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 25,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.01, -0.99),
                child: Container(
                  width: 406.7,
                  height: 479.9,
                  decoration: BoxDecoration(
                    color: Color(0xFF08585C),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          children: [
                            Container(
                              width: 100,
                              height: 33.4,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                border: Border.all(
                                  color: Color(0xFF66B2FF),
                                  width: 5,
                                ),
                              ),
                              child: Text(
                                'Dostępni',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50.1,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                border: Border.all(
                                  color: Color(0xFF66B2FF),
                                  width: 5,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Text(
                                    'Magister - 250 Pskoin\nBonus ECTS na sekunde:500 Bonus ECTS za klik:0',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.95, 0.05),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      icon: Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 30,
                                      ),
                                      onPressed: () async {
                                        if (FFAppState().Pskoin >= 250) {
                                          FFAppState().update(() {
                                            FFAppState().Pskoin =
                                                FFAppState().Pskoin + -250;
                                            FFAppState().ectsnasekunde =
                                                FFAppState().ectsnasekunde +
                                                    500.0;
                                            FFAppState().osobywkadrze =
                                                FFAppState().osobywkadrze + 1;
                                          });
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50.1,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                border: Border.all(
                                  color: Color(0xFF66B2FF),
                                  width: 5,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Text(
                                    'Magister inżynier informatyki - 650 Pskoin\nBonus ECTS na sekunde:700 Bonus ECTS za klik:200',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.95, 0.05),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      icon: Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 30,
                                      ),
                                      onPressed: () async {
                                        if (FFAppState().Pskoin >= 650) {
                                          FFAppState().update(() {
                                            FFAppState().Pskoin =
                                                FFAppState().Pskoin + -650;
                                            FFAppState().ectsnasekunde =
                                                FFAppState().ectsnasekunde +
                                                    700.0;
                                            FFAppState().osobywkadrze =
                                                FFAppState().osobywkadrze + 1;
                                            FFAppState().przyrostects =
                                                FFAppState().przyrostects +
                                                    200.0;
                                          });
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50.1,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                border: Border.all(
                                  color: Color(0xFF66B2FF),
                                  width: 5,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Text(
                                    'Magister inzynier budownictwa - 700 Pskoin\nBonus ECTS na sekunde:300 Bonus ECTS za klik:600',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.95, 0.05),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      icon: Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 30,
                                      ),
                                      onPressed: () async {
                                        if (FFAppState().Pskoin >= 700) {
                                          FFAppState().update(() {
                                            FFAppState().Pskoin =
                                                FFAppState().Pskoin + -700;
                                            FFAppState().ectsnasekunde =
                                                FFAppState().ectsnasekunde +
                                                    300.0;
                                            FFAppState().osobywkadrze =
                                                FFAppState().osobywkadrze + 1;
                                            FFAppState().przyrostects =
                                                FFAppState().przyrostects +
                                                    600.0;
                                          });
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50.1,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                border: Border.all(
                                  color: Color(0xFF66B2FF),
                                  width: 5,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Text(
                                    'Doktor - 1000 Pskoin\nBonus ECTS na sekunde:1500 Bonus ECTS za klik:0',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.95, 0.05),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      icon: Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 30,
                                      ),
                                      onPressed: () async {
                                        if (FFAppState().Pskoin >= 1000) {
                                          FFAppState().update(() {
                                            FFAppState().Pskoin =
                                                FFAppState().Pskoin + -1000;
                                            FFAppState().ectsnasekunde =
                                                FFAppState().ectsnasekunde +
                                                    1500.0;
                                            FFAppState().osobywkadrze =
                                                FFAppState().osobywkadrze + 1;
                                          });
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50.1,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                border: Border.all(
                                  color: Color(0xFF66B2FF),
                                  width: 5,
                                ),
                              ),
                              child: Text(
                                'Dostępni po odrodzeniu',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                    ),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50.1,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                border: Border.all(
                                  color: Color(0xFF66B2FF),
                                  width: 5,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Text(
                                    'Doktor\nBonus ECTS na sekunde:2500 Bonus ECTS za klik:0',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.95, 0.05),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      icon: Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50.1,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                border: Border.all(
                                  color: Color(0xFF66B2FF),
                                  width: 5,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Text(
                                    'Doktor inżynier\nBonus ECTS na sekunde:3000 Bonus ECTS za klik:0',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.95, 0.05),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      icon: Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50.1,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                border: Border.all(
                                  color: Color(0xFF66B2FF),
                                  width: 5,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Text(
                                    'Profesor nadzwyczajny\nBonus ECTS na sekunde:0 Bonus ECTS za klik:10000',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.95, 0.05),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      icon: Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50.1,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                border: Border.all(
                                  color: Color(0xFF66B2FF),
                                  width: 5,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Text(
                                    'Profesor zwyczajny\nBonus ECTS na sekunde:10000 Bonus ECTS za klik:0',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.95, 0.05),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      icon: Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
