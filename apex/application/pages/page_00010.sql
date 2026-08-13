prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_name=>'Add IOU'
,p_alias=>'ADD-IOU'
,p_page_mode=>'MODAL'
,p_step_title=>'Add IOU'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27361671549175483516)
,p_plug_name=>'IOU Details'
,p_static_id=>'iou-details'
,p_title=>'IOU Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(27437375247442277806)
,p_name=>'Payment History'
,p_static_id=>'payment-history'
,p_title=>'Payment History'
,p_template=>4073835273271169698
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    payment_id,',
'    payment_date,',
'    payment_amount,',
'    notes',
'from bf_iou_payments',
'where iou_id = to_number(:P10_IOU_ID)',
'  and app_user = v(''APP_USER'')',
'order by',
'    payment_date desc,',
'    payment_id desc'))
,p_display_when_condition=>'P10_IOU_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No payments have been recorded for this IOU.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27437375689716277810)
,p_query_column_id=>4
,p_column_alias=>'NOTES'
,p_column_display_sequence=>40
,p_column_heading=>'Notes'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27437375559435277809)
,p_query_column_id=>3
,p_column_alias=>'PAYMENT_AMOUNT'
,p_column_display_sequence=>30
,p_column_heading=>'Amount'
,p_column_format=>'FM$999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27437375431621277808)
,p_query_column_id=>2
,p_column_alias=>'PAYMENT_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Payment Date'
,p_column_format=>'DD Mon YYYY'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27437375397194277807)
,p_query_column_id=>1
,p_column_alias=>'PAYMENT_ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27361672570735483526)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27361671549175483516)
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
 p_id=>wwv_flow_imp.id(27361673475539483535)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27361671549175483516)
,p_button_name=>'DELETE_IOU'
,p_static_id=>'delete-iou'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'Are you sure you want to delete this IOU? This cannot be undone.'
,p_button_condition=>'P10_IOU_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27361672466214483525)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27361671549175483516)
,p_button_name=>'SAVE_IOU'
,p_static_id=>'save-iou'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save IOU'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27361671939046483520)
,p_name=>'P10_DESCRIPTION'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27361671549175483516)
,p_prompt=>'Description'
,p_placeholder=>'Example: Shared holiday booking'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27361672226601483523)
,p_name=>'P10_DUE_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(27361671549175483516)
,p_prompt=>'Due Date'
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
 p_id=>wwv_flow_imp.id(27361672104273483522)
,p_name=>'P10_IOU_DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27361671549175483516)
,p_prompt=>'Date'
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
 p_id=>wwv_flow_imp.id(27361671606180483517)
,p_name=>'P10_IOU_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(27361671549175483516)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27361671709040483518)
,p_name=>'P10_IOU_TYPE'
,p_is_required=>true
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_imp.id(27361671549175483516)
,p_item_default=>'LENT'
,p_prompt=>'Type'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Money I Lent;LENT,Money I Borrowed;BORROWED'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '10',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27361672312579483524)
,p_name=>'P10_NOTES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(27361671549175483516)
,p_prompt=>'Notes'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
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
 p_id=>wwv_flow_imp.id(27361672098204483521)
,p_name=>'P10_ORIGINAL_AMOUNT'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27361671549175483516)
,p_prompt=>'Original Amount'
,p_placeholder=>'Example: 500.00'
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
 p_id=>wwv_flow_imp.id(27361671869042483519)
,p_name=>'P10_PERSON_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27361671549175483516)
,p_prompt=>'Person'
,p_placeholder=>'Example: Alex'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>120
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27361672654037483527)
,p_name=>'Cancel IOU Dialog'
,p_static_id=>'cancel-iou-dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27361672570735483526)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27361672717228483528)
,p_event_id=>wwv_flow_imp.id(27361672654037483527)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-dialog-cancel'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27361673648031483537)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog After IOU Delete'
,p_static_id=>'close-dialog-after-iou-delete'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27361673475539483535)
,p_internal_uid=>27361673648031483537
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27361673084551483531)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog After IOU Save'
,p_static_id=>'close-dialog-after-iou-save'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27361672466214483525)
,p_internal_uid=>27361673084551483531
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27361673543722483536)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Current User IOU'
,p_static_id=>'delete-current-user-iou'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10_IOU_ID is null then',
'        raise_application_error(',
'            -20070,',
'            ''No IOU was selected for deletion.''',
'        );',
'    end if;',
'',
'    delete from bf_ious',
'    where iou_id = to_number(:P10_IOU_ID)',
'      and app_user = v(''APP_USER'');',
'',
'    if sql%rowcount <> 1 then',
'        raise_application_error(',
'            -20071,',
'            ''The IOU could not be deleted.''',
'        );',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27361673475539483535)
,p_process_success_message=>'IOU deleted.'
,p_internal_uid=>27361673543722483536
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27361673384753483534)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load IOU for Edit'
,p_static_id=>'load-iou-for-edit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10_IOU_ID is not null',
'       and apex_application.g_request is null',
'    then',
'        select',
'            iou_type,',
'            person_name,',
'            description,',
'            to_char(',
'                original_amount,',
'                ''FM9999999999990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            ),',
'            to_char(iou_date, ''DD/MM/YYYY''),',
'            to_char(due_date, ''DD/MM/YYYY''),',
'            notes',
'        into',
'            :P10_IOU_TYPE,',
'            :P10_PERSON_NAME,',
'            :P10_DESCRIPTION,',
'            :P10_ORIGINAL_AMOUNT,',
'            :P10_IOU_DATE,',
'            :P10_DUE_DATE,',
'            :P10_NOTES',
'        from bf_ious',
'        where iou_id = to_number(:P10_IOU_ID)',
'          and app_user = v(''APP_USER'');',
'    end if;',
'',
'exception',
'    when no_data_found then',
'        :P10_IOU_ID := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>27361673384753483534
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27361672954796483530)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Current User IOU'
,p_static_id=>'save-current-user-iou'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_amount     number;',
'    l_iou_date   date;',
'    l_due_date   date;',
'begin',
'    ---------------------------------------------------------------------------',
'    -- Validate type',
'    ---------------------------------------------------------------------------',
'    if :P10_IOU_TYPE is null',
'       or :P10_IOU_TYPE not in (''LENT'', ''BORROWED'')',
'    then',
'        raise_application_error(',
'            -20060,',
'            ''Please select a valid IOU type.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- Validate amount',
'    ---------------------------------------------------------------------------',
'    l_amount :=',
'        apex_session_state.get_number(''P10_ORIGINAL_AMOUNT'');',
'',
'    if l_amount is null or l_amount <= 0 then',
'        raise_application_error(',
'            -20061,',
'            ''Original Amount must be greater than zero.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- Dates',
'    ---------------------------------------------------------------------------',
'    l_iou_date :=',
'        to_date(:P10_IOU_DATE, ''DD/MM/YYYY'');',
'',
'    if :P10_DUE_DATE is not null then',
'        l_due_date :=',
'            to_date(:P10_DUE_DATE, ''DD/MM/YYYY'');',
'    else',
'        l_due_date := null;',
'    end if;',
'',
'    if l_due_date is not null',
'       and l_due_date < l_iou_date',
'    then',
'        raise_application_error(',
'            -20062,',
'            ''Due Date cannot be earlier than the IOU Date.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- EDIT EXISTING IOU',
'    ---------------------------------------------------------------------------',
'    if :P10_IOU_ID is not null then',
'',
'        update bf_ious',
'        set',
'            iou_type        = :P10_IOU_TYPE,',
'            person_name     = trim(:P10_PERSON_NAME),',
'            description     = trim(:P10_DESCRIPTION),',
'            original_amount = l_amount,',
'            iou_date        = l_iou_date,',
'            due_date        = l_due_date,',
'            notes           = trim(:P10_NOTES)',
'        where iou_id = to_number(:P10_IOU_ID)',
'          and app_user = v(''APP_USER'');',
'',
'        if sql%rowcount <> 1 then',
'            raise_application_error(',
'                -20063,',
'                ''The IOU could not be updated.''',
'            );',
'        end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- ADD NEW IOU',
'    ---------------------------------------------------------------------------',
'    else',
'',
'        insert into bf_ious (',
'            app_user,',
'            iou_type,',
'            person_name,',
'            description,',
'            original_amount,',
'            iou_date,',
'            due_date,',
'            notes',
'        )',
'        values (',
'            v(''APP_USER''),',
'            :P10_IOU_TYPE,',
'            trim(:P10_PERSON_NAME),',
'            trim(:P10_DESCRIPTION),',
'            l_amount,',
'            l_iou_date,',
'            l_due_date,',
'            trim(:P10_NOTES)',
'        );',
'',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27361672466214483525)
,p_process_success_message=>'IOU saved.'
,p_internal_uid=>27361672954796483530
);
wwv_flow_imp.component_end;
end;
/
