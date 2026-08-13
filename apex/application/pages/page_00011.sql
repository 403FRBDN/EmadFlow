prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.2'
,p_default_workspace_id=>25107497146013559697
,p_default_application_id=>156207
,p_default_id_offset=>8982783537607029
,p_default_owner=>'WKSP_EMADFLOW'
);
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Record IOU Payment'
,p_alias=>'RECORD-IOU-PAYMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Record IOU Payment'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27361673721433483538)
,p_plug_name=>'Payment Details'
,p_static_id=>'payment-details'
,p_title=>'Payment Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27362474785459483548)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(27361673721433483538)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27362474636488483547)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(27361673721433483538)
,p_button_name=>'SAVE_PAYMENT'
,p_static_id=>'save-payment'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Payment'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27362474159324483542)
,p_name=>'P11_AMOUNT_PAID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27361673721433483538)
,p_prompt=>'Amount Paid'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27361673864641483539)
,p_name=>'P11_IOU_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(27361673721433483538)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27437375144680277805)
,p_name=>'P11_IOU_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27361673721433483538)
,p_prompt=>'Type'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27362474509284483546)
,p_name=>'P11_NOTES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(27361673721433483538)
,p_prompt=>'Notes'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27362474049846483541)
,p_name=>'P11_ORIGINAL_AMOUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27361673721433483538)
,p_prompt=>'Original Amount'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27362474221114483543)
,p_name=>'P11_OUTSTANDING_AMOUNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27361673721433483538)
,p_prompt=>'Outstanding'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27362474474573483545)
,p_name=>'P11_PAYMENT_AMOUNT'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(27361673721433483538)
,p_prompt=>'Payment Amount'
,p_placeholder=>'Example: 100.00'
,p_format_mask=>'FM9999999999990D00'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0.01',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27362474300178483544)
,p_name=>'P11_PAYMENT_DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(27361673721433483538)
,p_prompt=>'Payment Date'
,p_format_mask=>'DD/MM/YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27362473955591483540)
,p_name=>'P11_PERSON_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27361673721433483538)
,p_prompt=>'Type'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27362474831328483549)
,p_name=>'New'
,p_static_id=>'new'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27362474785459483548)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27362474905763483550)
,p_event_id=>wwv_flow_imp.id(27362474831328483549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-dialog-cancel'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27437375013619277804)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog After Payment Save'
,p_static_id=>'close-dialog-after-payment-save'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27362474636488483547)
,p_internal_uid=>27437375013619277804
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27437374791583277801)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load IOU Payment Summary'
,p_static_id=>'load-iou-payment-summary'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P11_IOU_ID is not null then',
'',
'        select',
'            person_name,',
'',
'            case iou_type',
'                when ''LENT'' then ''Money I Lent''',
'                when ''BORROWED'' then ''Money I Borrowed''',
'            end,',
'',
'            ''$'' ||',
'            to_char(',
'                original_amount,',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            ),',
'',
'            ''$'' ||',
'            to_char(',
'                amount_paid,',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            ),',
'',
'            ''$'' ||',
'            to_char(',
'                outstanding_amount,',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            )',
'',
'        into',
'            :P11_PERSON_NAME,',
'            :P11_IOU_TYPE,',
'            :P11_ORIGINAL_AMOUNT,',
'            :P11_AMOUNT_PAID,',
'            :P11_OUTSTANDING_AMOUNT',
'',
'        from bf_v_iou_summary',
'',
'        where iou_id = to_number(:P11_IOU_ID)',
'          and app_user = v(''APP_USER'');',
'',
'    end if;',
'',
'exception',
'    when no_data_found then',
'        :P11_IOU_ID := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>27437374791583277801
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27437374934824277803)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Current User IOU Payment'
,p_static_id=>'save-current-user-iou-payment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_payment_amount     number;',
'    l_payment_date       date;',
'    l_original_amount    number;',
'    l_amount_paid        number;',
'    l_outstanding_amount number;',
'    l_iou_date           date;',
'begin',
'    ---------------------------------------------------------------------------',
'    -- Read amount',
'    ---------------------------------------------------------------------------',
'    l_payment_amount :=',
'        apex_session_state.get_number(''P11_PAYMENT_AMOUNT'');',
'',
'    if l_payment_amount is null',
'       or l_payment_amount <= 0',
'    then',
'        raise_application_error(',
'            -20080,',
'            ''Payment Amount must be greater than zero.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- Payment date',
'    ---------------------------------------------------------------------------',
'    l_payment_date :=',
'        to_date(',
'            :P11_PAYMENT_DATE,',
'            ''DD/MM/YYYY''',
'        );',
'',
'    ---------------------------------------------------------------------------',
'    -- Re-read the TRUE current IOU balance from the database.',
'    -- Never trust the display-only page values.',
'    ---------------------------------------------------------------------------',
'    select',
'        original_amount,',
'        amount_paid,',
'        outstanding_amount,',
'        iou_date',
'',
'    into',
'        l_original_amount,',
'        l_amount_paid,',
'        l_outstanding_amount,',
'        l_iou_date',
'',
'    from bf_v_iou_summary',
'',
'    where iou_id = to_number(:P11_IOU_ID)',
'      and app_user = v(''APP_USER'');',
'',
'    ---------------------------------------------------------------------------',
'    -- Validate payment date',
'    ---------------------------------------------------------------------------',
'    if l_payment_date < l_iou_date then',
'        raise_application_error(',
'            -20081,',
'            ''Payment Date cannot be earlier than the IOU Date.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- Prevent payments against settled IOUs',
'    ---------------------------------------------------------------------------',
'    if l_outstanding_amount <= 0 then',
'        raise_application_error(',
'            -20082,',
'            ''This IOU has already been fully settled.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- Prevent overpayment',
'    ---------------------------------------------------------------------------',
'    if l_payment_amount > l_outstanding_amount then',
'        raise_application_error(',
'            -20083,',
'            ''Payment Amount cannot be greater than the outstanding balance.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- Insert payment',
'    ---------------------------------------------------------------------------',
'    insert into bf_iou_payments (',
'        iou_id,',
'        app_user,',
'        payment_date,',
'        payment_amount,',
'        notes',
'    )',
'    values (',
'        to_number(:P11_IOU_ID),',
'        v(''APP_USER''),',
'        l_payment_date,',
'        l_payment_amount,',
'        trim(:P11_NOTES)',
'    );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27362474636488483547)
,p_process_success_message=>'Payment recorded.'
,p_internal_uid=>27437374934824277803
);
wwv_flow_imp.component_end;
end;
/
