import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UlepszeniaWidget extends StatefulWidget {
  const UlepszeniaWidget({Key? key}) : super(key: key);

  @override
  _UlepszeniaWidgetState createState() => _UlepszeniaWidgetState();
}

class _UlepszeniaWidgetState extends State<UlepszeniaWidget> {
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
          'Ulepszenia',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 418,
                  height: 29,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
                Container(
                  width: 379.7,
                  height: 377.7,
                  decoration: BoxDecoration(
                    color: Color(0xFF08585C),
                  ),
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Praca zdalna';
                            FFAppState().opisobjasnienie =
                                'Połączenie z internetem pozwala ci na studiowanie na odległość… cóż, przynajmniej myślą że to ty.';
                            FFAppState().kosztulepszenia = '100';
                          });
                        },
                        onDoubleTap: () async {
                          if (FFAppState().ectsaktualne > 100.0) {
                            FFAppState().update(() {
                              FFAppState().ectsaktualne =
                                  FFAppState().ectsaktualne + -100.0;
                              FFAppState().przyrostects =
                                  FFAppState().przyrostects + 10.0;
                              FFAppState().ilosculepszen =
                                  FFAppState().ilosculepszen + 1;
                            });
                          }
                        },
                        child: Image.asset(
                          'assets/images/mcatd_1.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Eduroam';
                            FFAppState().opisobjasnienie =
                                'Uczelnia otwiera przed tobą nowe drzwi, darmowe Wi-Fi, tylko odrobinę wolniejsze od domowego.';
                            FFAppState().kosztulepszenia = '100';
                          });
                        },
                        onDoubleTap: () async {
                          if (FFAppState().ectsaktualne > 100.0) {
                            FFAppState().update(() {
                              FFAppState().ectsaktualne =
                                  FFAppState().ectsaktualne + -100.0;
                              FFAppState().przyrostects =
                                  FFAppState().przyrostects + 15.0;
                              FFAppState().ilosculepszen =
                                  FFAppState().ilosculepszen + 1;
                            });
                          }
                        },
                        child: Image.asset(
                          'assets/images/9hsjc_2.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Maszty 6G';
                            FFAppState().opisobjasnienie =
                                'Najnowsza technologia telekomunikacji. Maszty 6G rozpoczynają pracę. NFZ zaleca noszenie foliowych czapeczek.';
                            FFAppState().kosztulepszenia = '1000';
                          });
                        },
                        onDoubleTap: () async {
                          if (FFAppState().ectsaktualne > 1000.0) {
                            FFAppState().update(() {
                              FFAppState().ectsaktualne =
                                  FFAppState().ectsaktualne + -1000.0;
                              FFAppState().przyrostects =
                                  FFAppState().przyrostects + 100.0;
                              FFAppState().ilosculepszen =
                                  FFAppState().ilosculepszen + 1;
                            });
                          }
                        },
                        child: Image.asset(
                          'assets/images/albfo_3.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Bramki NYAND';
                            FFAppState().opisobjasnienie =
                                'Udało ci się zaprojektować autorskie bramki logiczne, zaskakująco dobrze działają w studenckich warunkach. Jakby tylko można było pozbyć się tego miałczenia.';
                            FFAppState().kosztulepszenia = '1000';
                          });
                        },
                        onDoubleTap: () async {
                          if (FFAppState().ectsaktualne > 1000.0) {
                            FFAppState().update(() {
                              FFAppState().ectsaktualne =
                                  FFAppState().ectsaktualne + -1000.0;
                              FFAppState().przyrostects =
                                  FFAppState().przyrostects + 200.0;
                              FFAppState().ilosculepszen =
                                  FFAppState().ilosculepszen + 1;
                            });
                          }
                        },
                        child: Image.asset(
                          'assets/images/34rbv_6.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Uczelniany transport 1';
                            FFAppState().opisobjasnienie =
                                'Za twoim wstawiennictwem uruchomiono ruchome schody na uczelni, zamiast się skupiać na wchodzeniu po schodach możesz teraz skupić się na nauce.';
                            FFAppState().kosztulepszenia = '10000';
                          });
                        },
                        onDoubleTap: () async {
                          if (FFAppState().ectsaktualne > 100.0) {
                            FFAppState().update(() {
                              FFAppState().ectsaktualne =
                                  FFAppState().ectsaktualne + -100.0;
                              FFAppState().przyrostects =
                                  FFAppState().przyrostects + 10.0;
                              FFAppState().ilosculepszen =
                                  FFAppState().ilosculepszen + 1;
                            });
                          }
                        },
                        child: Image.asset(
                          'assets/images/bfy6z_7.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Bagaż +1';
                            FFAppState().opisobjasnienie =
                                'Po latach wyrzeczeń wreszcie mogłeś sobie pozwolić na lepszy plecak, szkoda że dalej pusty.';
                            FFAppState().kosztulepszenia = '10000';
                          });
                        },
                        onDoubleTap: () async {
                          if (FFAppState().ectsaktualne > 100.0) {
                            FFAppState().update(() {
                              FFAppState().ectsaktualne =
                                  FFAppState().ectsaktualne + -100.0;
                              FFAppState().przyrostects =
                                  FFAppState().przyrostects + 10.0;
                              FFAppState().ilosculepszen =
                                  FFAppState().ilosculepszen + 1;
                            });
                          }
                        },
                        child: Image.asset(
                          'assets/images/4y87x_8.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Wolny rynek';
                            FFAppState().opisobjasnienie =
                                'Ten śmieszny pan z telewizji dostał się na fotel prezydencki. Dziesięciolatki wzniosły toast kompotem.';
                            FFAppState().kosztulepszenia = '10000';
                          });
                        },
                        onDoubleTap: () async {
                          if (FFAppState().ectsaktualne > 100.0) {
                            FFAppState().update(() {
                              FFAppState().ectsaktualne =
                                  FFAppState().ectsaktualne + -100.0;
                              FFAppState().przyrostects =
                                  FFAppState().przyrostects + 10.0;
                              FFAppState().ilosculepszen =
                                  FFAppState().ilosculepszen + 1;
                            });
                          }
                        },
                        child: Image.asset(
                          'assets/images/qesi6_9.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Kontrola własności';
                            FFAppState().opisobjasnienie =
                                'Studenckie bagaże są regularnie sprawdzane co zajmuje bardzo dużo czasu. Pierwszy raz jesteś szczęśliwy z pustego plecaka.';
                            FFAppState().kosztulepszenia = '10000';
                          });
                        },
                        onDoubleTap: () async {
                          if (FFAppState().ectsaktualne > 100.0) {
                            FFAppState().update(() {
                              FFAppState().ectsaktualne =
                                  FFAppState().ectsaktualne + -100.0;
                              FFAppState().przyrostects =
                                  FFAppState().przyrostects + 10.0;
                              FFAppState().ilosculepszen =
                                  FFAppState().ilosculepszen + 1;
                            });
                          }
                        },
                        child: Image.asset(
                          'assets/images/10.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Uczelniany transport 2';
                            FFAppState().opisobjasnienie =
                                'Rozwój uczelni nie ustaje, ruchome schody poruszają się o 15% szybciej. Nie wiesz co zrobić z zaoszczędzonym czasem.';
                            FFAppState().kosztulepszenia = '10000';
                          });
                        },
                        onDoubleTap: () async {
                          if (FFAppState().ectsaktualne > 100.0) {
                            FFAppState().update(() {
                              FFAppState().ectsaktualne =
                                  FFAppState().ectsaktualne + -100.0;
                              FFAppState().przyrostects =
                                  FFAppState().przyrostects + 10.0;
                              FFAppState().ilosculepszen =
                                  FFAppState().ilosculepszen + 1;
                            });
                          }
                        },
                        child: Image.asset(
                          'assets/images/11.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Garderoba studenta';
                            FFAppState().opisobjasnienie =
                                'Każdy człowiek sukcesu ma identyczne zestawy ubrań żeby zaoszczędzić czas na wyborze. Jeden zestaw to też jeden typ zestawu.';
                            FFAppState().kosztulepszenia = '1000000';
                          });
                        },
                        onDoubleTap: () async {
                          if (FFAppState().ectsaktualne > 100.0) {
                            FFAppState().update(() {
                              FFAppState().ectsaktualne =
                                  FFAppState().ectsaktualne + -100.0;
                              FFAppState().przyrostects =
                                  FFAppState().przyrostects + 10.0;
                              FFAppState().ilosculepszen =
                                  FFAppState().ilosculepszen + 1;
                            });
                          }
                        },
                        child: Image.asset(
                          'assets/images/12.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Zdrowy sen';
                            FFAppState().opisobjasnienie =
                                'Stężenie kofeiny w żyłach osiągnęło poziom który pozwala ci tworzyć nieskończoną energię. Sen jest dla słabych.';
                            FFAppState().kosztulepszenia = '20000';
                          });
                        },
                        onDoubleTap: () async {
                          if (FFAppState().ectsaktualne > 100.0) {
                            FFAppState().update(() {
                              FFAppState().ectsaktualne =
                                  FFAppState().ectsaktualne + -100.0;
                              FFAppState().przyrostects =
                                  FFAppState().przyrostects + 10.0;
                              FFAppState().ilosculepszen =
                                  FFAppState().ilosculepszen + 1;
                            });
                          }
                        },
                        child: Image.asset(
                          'assets/images/13.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Rybka musi pić';
                            FFAppState().opisobjasnienie = 'Boost przychodów';
                            FFAppState().kosztulepszenia = '3000000';
                          });
                        },
                        onDoubleTap: () async {
                          if (FFAppState().ectsaktualne == 3000000.0) {
                            FFAppState().update(() {
                              FFAppState().aktualneprzychody =
                                  FFAppState().aktualneprzychody + 1000;
                            });
                          }
                        },
                        child: Image.asset(
                          'assets/images/14.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Okno na świat';

                            FFAppState().kosztulepszenia = '400000';
                          });
                        },
                        child: Image.asset(
                          'assets/images/15.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Miejsce dla studentów';

                            FFAppState().kosztulepszenia = '200000000';
                          });
                        },
                        child: Image.asset(
                          'assets/images/16.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Aktywne radio';

                            FFAppState().kosztulepszenia = '2000000';
                          });
                        },
                        child: Image.asset(
                          'assets/images/17.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Prognoza niepogody';

                            FFAppState().kosztulepszenia = '2000000';
                          });
                        },
                        child: Image.asset(
                          'assets/images/18.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Elektryka prąd nie...';

                            FFAppState().kosztulepszenia = '4000000';
                          });
                        },
                        child: Image.asset(
                          'assets/images/19.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Zaniżanie oczekiwań';

                            FFAppState().kosztulepszenia = '60000000';
                          });
                        },
                        child: Image.asset(
                          'assets/images/20.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Higiena pracy';

                            FFAppState().kosztulepszenia = '60000000';
                          });
                        },
                        child: Image.asset(
                          'assets/images/21.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Pewnego razu w PŚK';
                          });
                        },
                        child: Image.asset(
                          'assets/images/22.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Organizacja wszechczasu';
                          });
                        },
                        child: Image.asset(
                          'assets/images/23.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().opistytul = 'Wirus DZ13-K4N';
                          });
                        },
                        child: Image.asset(
                          'assets/images/24.png',
                          width: 101.1,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {});
                        },
                        child: Image.asset(
                          'assets/images/25.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {});
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(2),
                          child: Image.asset(
                            'assets/images/x5rbw_5.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {});
                        },
                        child: Image.asset(
                          'assets/images/ml88i_4.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 425.4,
                  height: 65.5,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      'OPIS',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 25,
                          ),
                    ),
                  ),
                ),
                Container(
                  width: 420,
                  height: 271.1,
                  decoration: BoxDecoration(
                    color: Color(0xFF08585C),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -0.95),
                        child: Text(
                          FFAppState().opistytul,
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.03, -0.31),
                        child: Text(
                          FFAppState().opisobjasnienie,
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.01, 0.85),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pop();
                          },
                          text: 'Powrót',
                          options: FFButtonOptions(
                            width: 130,
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
                        alignment: AlignmentDirectional(0.01, 0.38),
                        child: Text(
                          FFAppState().kosztulepszenia,
                          style: FlutterFlowTheme.of(context).bodyText1,
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
