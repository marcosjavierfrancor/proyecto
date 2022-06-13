import '../cliente/cliente_widget.dart';
import '../conclusiones/conclusiones_widget.dart';
import '../datosdeldesarrollador/datosdeldesarrollador_widget.dart';
import '../empleados/empleados_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import '../habitaciones/habitaciones_widget.dart';
import '../home_page/home_page_widget.dart';
import '../listadeempleados/listadeempleados_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFBEF697),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            scaffoldKey.currentState.openDrawer();
          },
          child: Icon(
            Icons.drag_handle_sharp,
            color: Colors.black,
            size: 24,
          ),
        ),
        title: Text(
          '          HOTEL\nEl cuchitril De Shrek',
          textAlign: TextAlign.start,
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Noto Serif',
                color: Color(0xFF2C6907),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFCCFF97),
      drawer: Drawer(
        elevation: 16,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.network(
                  'https://github.com/marcosjavierfrancor/flutter-mis-imagenes/blob/main/hola.jpg?raw=true',
                  width: MediaQuery.of(context).size.width * 0.81,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'menu de inicio',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  InkWell(
                    onTap: () async {
                      await Navigator.pushAndRemoveUntil(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: ClienteWidget(),
                        ),
                        (r) => false,
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                      ),
                      title: Text(
                        'registro del cliente',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      tileColor: Color(0xFFCCFF97),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: EmpleadosWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.park,
                      ),
                      title: Text(
                        'empleado',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                      tileColor: Color(0xFFCCFF97),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: ListadeempleadosWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.list,
                      ),
                      title: Text(
                        'lista de empleados',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                      tileColor: Color(0xFFCCFF97),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: DatosdeldesarrolladorWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.location_history,
                      ),
                      title: Text(
                        'datos del desarrollador',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      tileColor: Color(0xFFCCFF97),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: HabitacionesWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.single_bed_rounded,
                      ),
                      title: Text(
                        'lista de habitaciones',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      tileColor: Color(0xFFCCFF97),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: ConclusionesWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.menu_book,
                      ),
                      title: Text(
                        'concluciones',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      tileColor: Color(0xFFCCFF97),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 30),
                          reverseDuration: Duration(milliseconds: 30),
                          child: HomePageWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.settings_power,
                      ),
                      title: Text(
                        'cerrar sesion',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      tileColor: Color(0xFFCCFF97),
                      dense: false,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: 1000,
            height: 1001,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/hola.jpg',
                ).image,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'ven a conocer nuestro hotel 5 estrellas',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF5FFF00),
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Shrek_lass_nach_-_panoramio.jpg/800px-Shrek_lass_nach_-_panoramio.jpg',
                        width: 350,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Text(
                    'esta ubicado en muy muy lejano',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF5FFF00),
                          fontSize: 20,
                        ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    child: Image.network(
                      'https://github.com/marcosjavierfrancor/flutter-mis-imagenes/blob/main/asasa.jpg?raw=true',
                      width: 300,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    'cerrado los jueves porque damos clases de lucha',
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF5FFF00),
                        ),
                  ),
                  Image.network(
                    'https://github.com/marcosjavierfrancor/flutter-mis-imagenes/blob/main/hola.jpg?raw=true',
                    width: 250,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF8C8C8C),
                    ),
                    child: Text(
                      'disfruta de nuestro mejor hotel con tematica de shrek',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF6DFF00),
                          ),
                    ),
                  ),
                  FlutterFlowYoutubePlayer(
                    url: 'https://www.youtube.com/watch?v=em9lziI07M4',
                    autoPlay: false,
                    looping: true,
                    mute: false,
                    showControls: true,
                    showFullScreen: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
