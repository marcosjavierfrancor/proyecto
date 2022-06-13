import '../cliente/cliente_widget.dart';
import '../datosdeldesarrollador/datosdeldesarrollador_widget.dart';
import '../empleados/empleados_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../habitaciones/habitaciones_widget.dart';
import '../home_page/home_page_widget.dart';
import '../inicio/inicio_widget.dart';
import '../listadeempleados/listadeempleados_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConclusionesWidget extends StatefulWidget {
  const ConclusionesWidget({Key key}) : super(key: key);

  @override
  _ConclusionesWidgetState createState() => _ConclusionesWidgetState();
}

class _ConclusionesWidgetState extends State<ConclusionesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFE2D84B),
        automaticallyImplyLeading: true,
        title: Text(
          'conclusiones',
          style: FlutterFlowTheme.of(context).title1,
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFFFF4AF),
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
                          child: InicioWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.menu_book,
                      ),
                      title: Text(
                        'inicio',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                    child: Container(
                      width: 300,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Color(0xFFD3F751),
                      ),
                      child: Text(
                        'interesante proyecto que se realizo en este semestre me gusto mucho disfrutar de hacer este proyecto que tiene todo lo que se pidio',
                        style: FlutterFlowTheme.of(context).subtitle1,
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
