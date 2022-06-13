import '../cliente/cliente_widget.dart';
import '../conclusiones/conclusiones_widget.dart';
import '../datosdeldesarrollador/datosdeldesarrollador_widget.dart';
import '../empleados/empleados_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import '../inicio/inicio_widget.dart';
import '../listadeempleados/listadeempleados_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HabitacionesWidget extends StatefulWidget {
  const HabitacionesWidget({Key key}) : super(key: key);

  @override
  _HabitacionesWidgetState createState() => _HabitacionesWidgetState();
}

class _HabitacionesWidgetState extends State<HabitacionesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFE2D84B),
        automaticallyImplyLeading: true,
        title: Text(
          'tipos de habitaciones',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFADA35A),
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
                          child: InicioWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.single_bed_rounded,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://github.com/marcosjavierfrancor/flutter-mis-imagenes/blob/main/999.jpg?raw=true',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'habitacion normal',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.network(
                              'https://github.com/marcosjavierfrancor/flutter-mis-imagenes/blob/main/99.jpg?raw=true',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'habitacion doble',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://github.com/marcosjavierfrancor/flutter-mis-imagenes/blob/main/2a.jpg?raw=true',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'habitacion shrek',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://github.com/marcosjavierfrancor/flutter-mis-imagenes/blob/main/1a.jpg?raw=truehttps://picsum.photos/seed/880/600',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'habitacion doble shrek',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://github.com/marcosjavierfrancor/flutter-mis-imagenes/blob/main/3a.jpg?raw=true',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'habitacion barbie',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://github.com/marcosjavierfrancor/flutter-mis-imagenes/blob/main/6.jpg?raw=true',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'dinohabitacion',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://github.com/marcosjavierfrancor/flutter-mis-imagenes/blob/main/9999.jpg?raw=true',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'habitacion de lujo',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://github.com/marcosjavierfrancor/flutter-mis-imagenes/blob/main/5.jpg?raw=true',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'habitacion de lujo shrek',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            'https://github.com/marcosjavierfrancor/flutter-mis-imagenes/blob/main/8.jpg?raw=true',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'super habiotacion',
                            style: FlutterFlowTheme.of(context).bodyText1,
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
    );
  }
}
