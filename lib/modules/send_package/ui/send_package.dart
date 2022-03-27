import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muevete_paquete/modules/send_package/ui/send_package_controller.dart';
import 'package:muevete_paquete/widgets/widget.dart';
import 'package:get/get.dart';

class SendPackage extends GetResponsiveView<SendPackageController> {
  @override
  Widget? phone();
  Widget? tablet();
  Widget? desktop();
  Widget? watch();

  SendPackage() {
    Get.put(SendPackageController());
  }
  final accountKey = new GlobalKey<FormState>(debugLabel: '_SomeState');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            padding: EdgeInsets.symmetric(vertical: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6.0,
                    offset: Offset(0.0, 5.0),
                    spreadRadius: 3.0)
              ],
            ),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 1,
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.04,
                            ),
                            Text(
                              'Enviar Paquete',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Form(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  _createContenido(),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  _createPeso(),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  _createPrioritario(),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  _createTipoEnvoltura(),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  _createPuntosAduanales(),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  _createEstado(),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  _createFragil(),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  _createDireccionEntrega(),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  _createPrice(),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  Row(children: [
                                    _cancelButton(),
                                    Spacer(),
                                    _submitButton(),
                                  ])
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
          ),
        ),
      ),
      floatingActionButton: Container(
        height: MediaQuery.of(context).size.height * 1,
        child: const WhatsappButton(),
      ),
      persistentFooterButtons: [
        CreateFooter(),
      ],
    );
  }

  _createContenido() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Contenido',
      ),
    );
  }

  _createPeso() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Peso',
      ),
    );
  }

  _createPrioritario() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Prioritario',
      ),
    );
  }

  _createTipoEnvoltura() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Tipo de Envoltura',
      ),
    );
  }

  _createPuntosAduanales() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Puntos Aduanales',
      ),
    );
  }

  _createEstado() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Estado',
      ),
    );
  }

  _createFragil() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Frágil',
      ),
    );
  }

  _createDireccionEntrega() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Dirección de Entrega',
      ),
    );
  }

  _createPrice() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Precio',
      ),
    );
  }

  _submitButton() {
    return MaterialButton(
      child: FaIcon(FontAwesomeIcons.arrowRight, color: Colors.white),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 0.0,
      color: Colors.blue,
      onPressed: () {},
    );
  }

  _cancelButton() {
    return MaterialButton(
      child: FaIcon(FontAwesomeIcons.arrowLeft, color: Colors.white),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 0.0,
      color: Colors.blue,
      onPressed: () {},
    );
  }
}
