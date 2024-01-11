import '/backend/supabase/supabase.dart';
import '/components/staff_table_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/web_app/0globals/side_nav/side_nav_widget.dart';
import 'dart:async';
import 'staff_widget.dart' show StaffWidget;
import 'package:flutter/material.dart';

class StaffModel extends FlutterFlowModel<StaffWidget> {
  ///  Local state fields for this page.

  bool addNewStaffWindow = false;

  UsersRow? staffTable;

  String? selectedID;

  bool viewStaff = false;

  bool editStaff = false;

  bool autoSaved = false;

  bool formStarted = false;

  String? newlyAddedStaffID = '';

  DateTime? dob;

  bool newRowAdded = false;

  bool addingNewStaff = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for userListSearch widget.
  FocusNode? userListSearchFocusNode;
  TextEditingController? userListSearchController;
  String? Function(BuildContext, String?)? userListSearchControllerValidator;
  // State field(s) for FilterDropDown widget.
  String? filterDropDownValue;
  FormFieldController<String>? filterDropDownValueController;
  // Models for staffTableRow dynamic component.
  late FlutterFlowDynamicModels<StaffTableRowModel> staffTableRowModels;
  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // State field(s) for text-first_name-add widget.
  FocusNode? textFirstNameAddFocusNode1;
  TextEditingController? textFirstNameAddController1;
  String? Function(BuildContext, String?)? textFirstNameAddController1Validator;
  // State field(s) for text-middle_name-add widget.
  FocusNode? textMiddleNameAddFocusNode1;
  TextEditingController? textMiddleNameAddController1;
  String? Function(BuildContext, String?)?
      textMiddleNameAddController1Validator;
  // State field(s) for text-last_name-add widget.
  FocusNode? textLastNameAddFocusNode1;
  TextEditingController? textLastNameAddController1;
  String? Function(BuildContext, String?)? textLastNameAddController1Validator;
  DateTime? datePicked1;
  // State field(s) for Gender-DropDown-add widget.
  String? genderDropDownAddValue1;
  FormFieldController<String>? genderDropDownAddValueController1;
  // State field(s) for phone-TextField-add widget.
  FocusNode? phoneTextFieldAddFocusNode1;
  TextEditingController? phoneTextFieldAddController1;
  String? Function(BuildContext, String?)?
      phoneTextFieldAddController1Validator;
  // State field(s) for email-TextField-add widget.
  FocusNode? emailTextFieldAddFocusNode1;
  TextEditingController? emailTextFieldAddController1;
  String? Function(BuildContext, String?)?
      emailTextFieldAddController1Validator;
  // State field(s) for address-TextField-add widget.
  FocusNode? addressTextFieldAddFocusNode1;
  TextEditingController? addressTextFieldAddController1;
  String? Function(BuildContext, String?)?
      addressTextFieldAddController1Validator;
  // State field(s) for Suburb-TextField-add widget.
  FocusNode? suburbTextFieldAddFocusNode1;
  TextEditingController? suburbTextFieldAddController1;
  String? Function(BuildContext, String?)?
      suburbTextFieldAddController1Validator;
  // State field(s) for postcode-TextField-add widget.
  FocusNode? postcodeTextFieldAddFocusNode1;
  TextEditingController? postcodeTextFieldAddController1;
  String? Function(BuildContext, String?)?
      postcodeTextFieldAddController1Validator;
  // State field(s) for state-DropDown-add widget.
  String? stateDropDownAddValue1;
  FormFieldController<String>? stateDropDownAddValueController1;
  // State field(s) for emerg-contact-name-1 widget.
  FocusNode? emergContactName1FocusNode1;
  TextEditingController? emergContactName1Controller1;
  String? Function(BuildContext, String?)?
      emergContactName1Controller1Validator;
  // State field(s) for emerg-contact-phone-1 widget.
  FocusNode? emergContactPhone1FocusNode1;
  TextEditingController? emergContactPhone1Controller1;
  String? Function(BuildContext, String?)?
      emergContactPhone1Controller1Validator;
  // State field(s) for emerg-contact-email-1 widget.
  FocusNode? emergContactEmail1FocusNode1;
  TextEditingController? emergContactEmail1Controller1;
  String? Function(BuildContext, String?)?
      emergContactEmail1Controller1Validator;
  // State field(s) for emerg-contact-name-2 widget.
  FocusNode? emergContactName2FocusNode1;
  TextEditingController? emergContactName2Controller1;
  String? Function(BuildContext, String?)?
      emergContactName2Controller1Validator;
  // State field(s) for emerg-contact-phone-2 widget.
  FocusNode? emergContactPhone2FocusNode1;
  TextEditingController? emergContactPhone2Controller1;
  String? Function(BuildContext, String?)?
      emergContactPhone2Controller1Validator;
  // State field(s) for emerg-contact-email-2 widget.
  FocusNode? emergContactEmail2FocusNode1;
  TextEditingController? emergContactEmail2Controller1;
  String? Function(BuildContext, String?)?
      emergContactEmail2Controller1Validator;
  // State field(s) for additionalnotes-TextField-add widget.
  FocusNode? additionalnotesTextFieldAddFocusNode1;
  TextEditingController? additionalnotesTextFieldAddController1;
  String? Function(BuildContext, String?)?
      additionalnotesTextFieldAddController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController17;
  String? Function(BuildContext, String?)? textController17Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController18;
  String? Function(BuildContext, String?)? textController18Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController19;
  String? Function(BuildContext, String?)? textController19Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController20;
  String? Function(BuildContext, String?)? textController20Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController21;
  String? Function(BuildContext, String?)? textController21Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController22;
  String? Function(BuildContext, String?)? textController22Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController23;
  String? Function(BuildContext, String?)? textController23Validator;
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;
  // State field(s) for text-first_name widget.
  FocusNode? textFirstNameFocusNode;
  TextEditingController? textFirstNameController;
  String? Function(BuildContext, String?)? textFirstNameControllerValidator;
  // State field(s) for text-middle_name widget.
  FocusNode? textMiddleNameFocusNode;
  TextEditingController? textMiddleNameController;
  String? Function(BuildContext, String?)? textMiddleNameControllerValidator;
  // State field(s) for text-last_name widget.
  FocusNode? textLastNameFocusNode;
  TextEditingController? textLastNameController;
  String? Function(BuildContext, String?)? textLastNameControllerValidator;
  // State field(s) for date-DOB widget.
  FocusNode? dateDOBFocusNode;
  TextEditingController? dateDOBController;
  String? Function(BuildContext, String?)? dateDOBControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController28;
  String? Function(BuildContext, String?)? textController28Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController29;
  String? Function(BuildContext, String?)? textController29Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode10;
  TextEditingController? textController30;
  String? Function(BuildContext, String?)? textController30Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode11;
  TextEditingController? textController31;
  String? Function(BuildContext, String?)? textController31Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode12;
  TextEditingController? textController32;
  String? Function(BuildContext, String?)? textController32Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode13;
  TextEditingController? textController33;
  String? Function(BuildContext, String?)? textController33Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode14;
  TextEditingController? textController34;
  String? Function(BuildContext, String?)? textController34Validator;
  // State field(s) for PlanTypeDropDown widget.
  String? planTypeDropDownValue;
  FormFieldController<String>? planTypeDropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode15;
  TextEditingController? textController35;
  String? Function(BuildContext, String?)? textController35Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode16;
  TextEditingController? textController36;
  String? Function(BuildContext, String?)? textController36Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode17;
  TextEditingController? textController37;
  String? Function(BuildContext, String?)? textController37Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode18;
  TextEditingController? textController38;
  String? Function(BuildContext, String?)? textController38Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode19;
  TextEditingController? textController39;
  String? Function(BuildContext, String?)? textController39Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode20;
  TextEditingController? textController40;
  String? Function(BuildContext, String?)? textController40Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode21;
  TextEditingController? textController41;
  String? Function(BuildContext, String?)? textController41Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode22;
  TextEditingController? textController42;
  String? Function(BuildContext, String?)? textController42Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode23;
  TextEditingController? textController43;
  String? Function(BuildContext, String?)? textController43Validator;
  // State field(s) for PageView widget.
  PageController? pageViewController3;

  int get pageViewCurrentIndex3 => pageViewController3 != null &&
          pageViewController3!.hasClients &&
          pageViewController3!.page != null
      ? pageViewController3!.page!.round()
      : 0;
  // State field(s) for text-first_name-add widget.
  FocusNode? textFirstNameAddFocusNode2;
  TextEditingController? textFirstNameAddController2;
  String? Function(BuildContext, String?)? textFirstNameAddController2Validator;
  // State field(s) for text-middle_name-add widget.
  FocusNode? textMiddleNameAddFocusNode2;
  TextEditingController? textMiddleNameAddController2;
  String? Function(BuildContext, String?)?
      textMiddleNameAddController2Validator;
  // State field(s) for text-last_name-add widget.
  FocusNode? textLastNameAddFocusNode2;
  TextEditingController? textLastNameAddController2;
  String? Function(BuildContext, String?)? textLastNameAddController2Validator;
  DateTime? datePicked2;
  // State field(s) for Gender-DropDown-add widget.
  String? genderDropDownAddValue2;
  FormFieldController<String>? genderDropDownAddValueController2;
  // State field(s) for phone-TextField-add widget.
  FocusNode? phoneTextFieldAddFocusNode2;
  TextEditingController? phoneTextFieldAddController2;
  String? Function(BuildContext, String?)?
      phoneTextFieldAddController2Validator;
  // State field(s) for email-TextField-add widget.
  FocusNode? emailTextFieldAddFocusNode2;
  TextEditingController? emailTextFieldAddController2;
  String? Function(BuildContext, String?)?
      emailTextFieldAddController2Validator;
  // State field(s) for address-TextField-add widget.
  FocusNode? addressTextFieldAddFocusNode2;
  TextEditingController? addressTextFieldAddController2;
  String? Function(BuildContext, String?)?
      addressTextFieldAddController2Validator;
  // State field(s) for Suburb-TextField-add widget.
  FocusNode? suburbTextFieldAddFocusNode2;
  TextEditingController? suburbTextFieldAddController2;
  String? Function(BuildContext, String?)?
      suburbTextFieldAddController2Validator;
  // State field(s) for postcode-TextField-add widget.
  FocusNode? postcodeTextFieldAddFocusNode2;
  TextEditingController? postcodeTextFieldAddController2;
  String? Function(BuildContext, String?)?
      postcodeTextFieldAddController2Validator;
  // State field(s) for state-DropDown-add widget.
  String? stateDropDownAddValue2;
  FormFieldController<String>? stateDropDownAddValueController2;
  // State field(s) for emerg-contact-name-1 widget.
  FocusNode? emergContactName1FocusNode2;
  TextEditingController? emergContactName1Controller2;
  String? Function(BuildContext, String?)?
      emergContactName1Controller2Validator;
  // State field(s) for emerg-contact-phone-1 widget.
  FocusNode? emergContactPhone1FocusNode2;
  TextEditingController? emergContactPhone1Controller2;
  String? Function(BuildContext, String?)?
      emergContactPhone1Controller2Validator;
  // State field(s) for emerg-contact-email-1 widget.
  FocusNode? emergContactEmail1FocusNode2;
  TextEditingController? emergContactEmail1Controller2;
  String? Function(BuildContext, String?)?
      emergContactEmail1Controller2Validator;
  // State field(s) for emerg-contact-name-2 widget.
  FocusNode? emergContactName2FocusNode2;
  TextEditingController? emergContactName2Controller2;
  String? Function(BuildContext, String?)?
      emergContactName2Controller2Validator;
  // State field(s) for emerg-contact-phone-2 widget.
  FocusNode? emergContactPhone2FocusNode2;
  TextEditingController? emergContactPhone2Controller2;
  String? Function(BuildContext, String?)?
      emergContactPhone2Controller2Validator;
  // State field(s) for emerg-contact-email-2 widget.
  FocusNode? emergContactEmail2FocusNode2;
  TextEditingController? emergContactEmail2Controller2;
  String? Function(BuildContext, String?)?
      emergContactEmail2Controller2Validator;
  // State field(s) for additionalnotes-TextField-add widget.
  FocusNode? additionalnotesTextFieldAddFocusNode2;
  TextEditingController? additionalnotesTextFieldAddController2;
  String? Function(BuildContext, String?)?
      additionalnotesTextFieldAddController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode24;
  TextEditingController? textController59;
  String? Function(BuildContext, String?)? textController59Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode25;
  TextEditingController? textController60;
  String? Function(BuildContext, String?)? textController60Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode26;
  TextEditingController? textController61;
  String? Function(BuildContext, String?)? textController61Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode27;
  TextEditingController? textController62;
  String? Function(BuildContext, String?)? textController62Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode28;
  TextEditingController? textController63;
  String? Function(BuildContext, String?)? textController63Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode29;
  TextEditingController? textController64;
  String? Function(BuildContext, String?)? textController64Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode30;
  TextEditingController? textController65;
  String? Function(BuildContext, String?)? textController65Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    staffTableRowModels = FlutterFlowDynamicModels(() => StaffTableRowModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
    userListSearchFocusNode?.dispose();
    userListSearchController?.dispose();

    staffTableRowModels.dispose();
    textFirstNameAddFocusNode1?.dispose();
    textFirstNameAddController1?.dispose();

    textMiddleNameAddFocusNode1?.dispose();
    textMiddleNameAddController1?.dispose();

    textLastNameAddFocusNode1?.dispose();
    textLastNameAddController1?.dispose();

    phoneTextFieldAddFocusNode1?.dispose();
    phoneTextFieldAddController1?.dispose();

    emailTextFieldAddFocusNode1?.dispose();
    emailTextFieldAddController1?.dispose();

    addressTextFieldAddFocusNode1?.dispose();
    addressTextFieldAddController1?.dispose();

    suburbTextFieldAddFocusNode1?.dispose();
    suburbTextFieldAddController1?.dispose();

    postcodeTextFieldAddFocusNode1?.dispose();
    postcodeTextFieldAddController1?.dispose();

    emergContactName1FocusNode1?.dispose();
    emergContactName1Controller1?.dispose();

    emergContactPhone1FocusNode1?.dispose();
    emergContactPhone1Controller1?.dispose();

    emergContactEmail1FocusNode1?.dispose();
    emergContactEmail1Controller1?.dispose();

    emergContactName2FocusNode1?.dispose();
    emergContactName2Controller1?.dispose();

    emergContactPhone2FocusNode1?.dispose();
    emergContactPhone2Controller1?.dispose();

    emergContactEmail2FocusNode1?.dispose();
    emergContactEmail2Controller1?.dispose();

    additionalnotesTextFieldAddFocusNode1?.dispose();
    additionalnotesTextFieldAddController1?.dispose();

    textFieldFocusNode1?.dispose();
    textController17?.dispose();

    textFieldFocusNode2?.dispose();
    textController18?.dispose();

    textFieldFocusNode3?.dispose();
    textController19?.dispose();

    textFieldFocusNode4?.dispose();
    textController20?.dispose();

    textFieldFocusNode5?.dispose();
    textController21?.dispose();

    textFieldFocusNode6?.dispose();
    textController22?.dispose();

    textFieldFocusNode7?.dispose();
    textController23?.dispose();

    textFirstNameFocusNode?.dispose();
    textFirstNameController?.dispose();

    textMiddleNameFocusNode?.dispose();
    textMiddleNameController?.dispose();

    textLastNameFocusNode?.dispose();
    textLastNameController?.dispose();

    dateDOBFocusNode?.dispose();
    dateDOBController?.dispose();

    textFieldFocusNode8?.dispose();
    textController28?.dispose();

    textFieldFocusNode9?.dispose();
    textController29?.dispose();

    textFieldFocusNode10?.dispose();
    textController30?.dispose();

    textFieldFocusNode11?.dispose();
    textController31?.dispose();

    textFieldFocusNode12?.dispose();
    textController32?.dispose();

    textFieldFocusNode13?.dispose();
    textController33?.dispose();

    textFieldFocusNode14?.dispose();
    textController34?.dispose();

    textFieldFocusNode15?.dispose();
    textController35?.dispose();

    textFieldFocusNode16?.dispose();
    textController36?.dispose();

    textFieldFocusNode17?.dispose();
    textController37?.dispose();

    textFieldFocusNode18?.dispose();
    textController38?.dispose();

    textFieldFocusNode19?.dispose();
    textController39?.dispose();

    textFieldFocusNode20?.dispose();
    textController40?.dispose();

    textFieldFocusNode21?.dispose();
    textController41?.dispose();

    textFieldFocusNode22?.dispose();
    textController42?.dispose();

    textFieldFocusNode23?.dispose();
    textController43?.dispose();

    textFirstNameAddFocusNode2?.dispose();
    textFirstNameAddController2?.dispose();

    textMiddleNameAddFocusNode2?.dispose();
    textMiddleNameAddController2?.dispose();

    textLastNameAddFocusNode2?.dispose();
    textLastNameAddController2?.dispose();

    phoneTextFieldAddFocusNode2?.dispose();
    phoneTextFieldAddController2?.dispose();

    emailTextFieldAddFocusNode2?.dispose();
    emailTextFieldAddController2?.dispose();

    addressTextFieldAddFocusNode2?.dispose();
    addressTextFieldAddController2?.dispose();

    suburbTextFieldAddFocusNode2?.dispose();
    suburbTextFieldAddController2?.dispose();

    postcodeTextFieldAddFocusNode2?.dispose();
    postcodeTextFieldAddController2?.dispose();

    emergContactName1FocusNode2?.dispose();
    emergContactName1Controller2?.dispose();

    emergContactPhone1FocusNode2?.dispose();
    emergContactPhone1Controller2?.dispose();

    emergContactEmail1FocusNode2?.dispose();
    emergContactEmail1Controller2?.dispose();

    emergContactName2FocusNode2?.dispose();
    emergContactName2Controller2?.dispose();

    emergContactPhone2FocusNode2?.dispose();
    emergContactPhone2Controller2?.dispose();

    emergContactEmail2FocusNode2?.dispose();
    emergContactEmail2Controller2?.dispose();

    additionalnotesTextFieldAddFocusNode2?.dispose();
    additionalnotesTextFieldAddController2?.dispose();

    textFieldFocusNode24?.dispose();
    textController59?.dispose();

    textFieldFocusNode25?.dispose();
    textController60?.dispose();

    textFieldFocusNode26?.dispose();
    textController61?.dispose();

    textFieldFocusNode27?.dispose();
    textController62?.dispose();

    textFieldFocusNode28?.dispose();
    textController63?.dispose();

    textFieldFocusNode29?.dispose();
    textController64?.dispose();

    textFieldFocusNode30?.dispose();
    textController65?.dispose();
  }

  /// Action blocks are added here.

  Future updateNewStaffActionBlock(BuildContext context) async {
    while (addNewStaffWindow) {
      if (addNewStaffWindow) {
        if (addingNewStaff) {
          return;
        }

        autoSaved = true;
        await UsersTable().update(
          data: {
            'first_name': textFirstNameAddController1.text,
            'middle_name': textMiddleNameAddController1.text,
            'last_name': textLastNameAddController1.text,
            'date_of_birth': supaSerialize<DateTime>(datePicked1),
            'user_email': emailTextFieldAddController1.text,
            'phone_number': phoneTextFieldAddController1.text,
            'gender': genderDropDownAddValue1,
            'home_address': addressTextFieldAddController1.text,
            'suburb': suburbTextFieldAddController1.text,
            'post_code': int.tryParse(postcodeTextFieldAddController1.text),
            'state': stateDropDownAddValue1,
            'additional_note': '',
          },
          matchingRows: (rows) => rows.eq(
            'id',
            newlyAddedStaffID,
          ),
        );
        autoSaved = true;
      }
    }
  }

  /// Additional helper methods are added here.
}
