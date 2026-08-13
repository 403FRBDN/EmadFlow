prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>'Add Savings Goal'
,p_alias=>'ADD-SAVINGS-GOAL'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Savings Goal'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27198474020204830142)
,p_plug_name=>'Savings Goal Details'
,p_static_id=>'savings-goal-details'
,p_title=>'Savings Goal Details'
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
 p_id=>wwv_flow_imp.id(27361670156135483502)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27198474020204830142)
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
 p_id=>wwv_flow_imp.id(27361671018122483511)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27198474020204830142)
,p_button_name=>'DELETE_GOAL'
,p_static_id=>'delete-goal'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'Are you sure you want to delete this savings goal? This cannot be undone.'
,p_button_condition=>'P8_GOAL_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27361670099616483501)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27198474020204830142)
,p_button_name=>'SAVE_GOAL'
,p_static_id=>'save-goal'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Goal'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27198474180051830143)
,p_name=>'P8_GOAL_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(27198474020204830142)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27198474204890830144)
,p_name=>'P8_GOAL_NAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27198474020204830142)
,p_prompt=>'Goal Name'
,p_placeholder=>'Example: Emergency Fund'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27198474868295830150)
,p_name=>'P8_NOTES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(27198474020204830142)
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
 p_id=>wwv_flow_imp.id(27198474486923830146)
,p_name=>'P8_SAVED_AMOUNT'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27198474020204830142)
,p_item_default=>'0'
,p_prompt=>'Already Saved'
,p_placeholder=>'Example: 1500.00'
,p_format_mask=>'FM9999999999990D00'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27198474526573830147)
,p_name=>'P8_START_DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27198474020204830142)
,p_prompt=>'Start Date'
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
 p_id=>wwv_flow_imp.id(27198474714816830149)
,p_name=>'P8_STATUS_CODE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(27198474020204830142)
,p_item_default=>'ACTIVE'
,p_prompt=>'Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Active;ACTIVE,Paused;PAUSED,Completed;COMPLETED'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27198474346813830145)
,p_name=>'P8_TARGET_AMOUNT'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27198474020204830142)
,p_prompt=>'Target Amount'
,p_placeholder=>'Example: 10000.00'
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
 p_id=>wwv_flow_imp.id(27198474688929830148)
,p_name=>'P8_TARGET_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27198474020204830142)
,p_prompt=>'Target Date'
,p_format_mask=>'DD/MM/YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>50
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27361670239036483503)
,p_name=>'Cancel Savings Goal Dialog'
,p_static_id=>'cancel-savings-goal-dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27361670156135483502)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27361670325514483504)
,p_event_id=>wwv_flow_imp.id(27361670239036483503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-dialog-cancel'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27361671297989483513)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog After Goal Delete'
,p_static_id=>'close-dialog-after-goal-delete'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27361671018122483511)
,p_internal_uid=>27361671297989483513
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27361670699827483507)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog After Goal Save'
,p_static_id=>'close-dialog-after-goal-save'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27361670099616483501)
,p_internal_uid=>27361670699827483507
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27361671150584483512)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Current User Savings Goal'
,p_static_id=>'delete-current-user-savings-goal'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P8_GOAL_ID is null then',
'        raise_application_error(',
'            -20050,',
'            ''No savings goal was selected for deletion.''',
'        );',
'    end if;',
'',
'    delete from bf_savings_goals',
'    where goal_id = to_number(:P8_GOAL_ID)',
'      and app_user = v(''APP_USER'');',
'',
'    if sql%rowcount <> 1 then',
'        raise_application_error(',
'            -20051,',
'            ''The savings goal could not be deleted.''',
'        );',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27361671018122483511)
,p_process_success_message=>'Savings goal deleted.'
,p_internal_uid=>27361671150584483512
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27361670933530483510)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Savings Goal for Edit'
,p_static_id=>'load-savings-goal-for-edit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P8_GOAL_ID is not null',
'       and apex_application.g_request is null',
'    then',
'        select',
'            goal_name,',
'            to_char(',
'                target_amount,',
'                ''FM9999999999990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            ),',
'            to_char(',
'                saved_amount,',
'                ''FM9999999999990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            ),',
'            to_char(start_date, ''DD/MM/YYYY''),',
'            to_char(target_date, ''DD/MM/YYYY''),',
'            status_code,',
'            notes',
'        into',
'            :P8_GOAL_NAME,',
'            :P8_TARGET_AMOUNT,',
'            :P8_SAVED_AMOUNT,',
'            :P8_START_DATE,',
'            :P8_TARGET_DATE,',
'            :P8_STATUS_CODE,',
'            :P8_NOTES',
'        from bf_savings_goals',
'        where goal_id = to_number(:P8_GOAL_ID)',
'          and app_user = v(''APP_USER'');',
'    end if;',
'',
'exception',
'    when no_data_found then',
'        :P8_GOAL_ID := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>27361670933530483510
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27361670530480483506)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Current User Savings Goal'
,p_static_id=>'save-current-user-savings-goal'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_target_amount number;',
'    l_saved_amount  number;',
'    l_start_date    date;',
'    l_target_date   date;',
'    l_status_code   varchar2(20);',
'begin',
'    ---------------------------------------------------------------------------',
'    -- Amounts',
'    ---------------------------------------------------------------------------',
'    l_target_amount :=',
'        apex_session_state.get_number(''P8_TARGET_AMOUNT'');',
'',
'    l_saved_amount :=',
'        apex_session_state.get_number(''P8_SAVED_AMOUNT'');',
'',
'    if l_target_amount is null',
'       or l_target_amount <= 0',
'    then',
'        raise_application_error(',
'            -20040,',
'            ''Target Amount must be greater than zero.''',
'        );',
'    end if;',
'',
'    if l_saved_amount is null',
'       or l_saved_amount < 0',
'    then',
'        raise_application_error(',
'            -20041,',
'            ''Already Saved cannot be negative.''',
'        );',
'    end if;',
'',
'    if l_saved_amount > l_target_amount then',
'        raise_application_error(',
'            -20042,',
'            ''Already Saved cannot be greater than the Target Amount.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- Dates',
'    ---------------------------------------------------------------------------',
'    l_start_date :=',
'        to_date(:P8_START_DATE, ''DD/MM/YYYY'');',
'',
'    if :P8_TARGET_DATE is not null then',
'        l_target_date :=',
'            to_date(:P8_TARGET_DATE, ''DD/MM/YYYY'');',
'    else',
'        l_target_date := null;',
'    end if;',
'',
'    if l_target_date is not null',
'       and l_target_date < l_start_date',
'    then',
'        raise_application_error(',
'            -20043,',
'            ''Target Date cannot be earlier than Start Date.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- Status',
'    ---------------------------------------------------------------------------',
'    if :P8_STATUS_CODE is null',
'       or :P8_STATUS_CODE not in (',
'            ''ACTIVE'',',
'            ''PAUSED'',',
'            ''COMPLETED''',
'       )',
'    then',
'        raise_application_error(',
'            -20044,',
'            ''Please select a valid savings goal status.''',
'        );',
'    end if;',
'',
'    l_status_code := :P8_STATUS_CODE;',
'',
'    ---------------------------------------------------------------------------',
'    -- Completion rules',
'    ---------------------------------------------------------------------------',
'    if l_saved_amount >= l_target_amount then',
'        l_status_code := ''COMPLETED'';',
'',
'    elsif l_status_code = ''COMPLETED'' then',
'        raise_application_error(',
'            -20045,',
'            ''A savings goal can only be completed after the target amount has been reached.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- EDIT EXISTING',
'    ---------------------------------------------------------------------------',
'    if :P8_GOAL_ID is not null then',
'',
'        update bf_savings_goals',
'        set',
'            goal_name     = trim(:P8_GOAL_NAME),',
'            target_amount = l_target_amount,',
'            saved_amount  = l_saved_amount,',
'            start_date    = l_start_date,',
'            target_date   = l_target_date,',
'            status_code   = l_status_code,',
'            notes         = trim(:P8_NOTES)',
'        where goal_id = to_number(:P8_GOAL_ID)',
'          and app_user = v(''APP_USER'');',
'',
'        if sql%rowcount <> 1 then',
'            raise_application_error(',
'                -20046,',
'                ''The savings goal could not be updated.''',
'            );',
'        end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- ADD NEW',
'    ---------------------------------------------------------------------------',
'    else',
'',
'        insert into bf_savings_goals (',
'            app_user,',
'            goal_name,',
'            target_amount,',
'            saved_amount,',
'            start_date,',
'            target_date,',
'            status_code,',
'            notes',
'        )',
'        values (',
'            v(''APP_USER''),',
'            trim(:P8_GOAL_NAME),',
'            l_target_amount,',
'            l_saved_amount,',
'            l_start_date,',
'            l_target_date,',
'            l_status_code,',
'            trim(:P8_NOTES)',
'        );',
'',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27361670099616483501)
,p_process_success_message=>'Savings goal saved.'
,p_internal_uid=>27361670530480483506
);
wwv_flow_imp.component_end;
end;
/
