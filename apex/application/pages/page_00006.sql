prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'Add Recurring Item'
,p_alias=>'ADD-RECURRING-ITEM'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Recurring Item'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25130534935715279640)
,p_plug_name=>'Recurring Item Details'
,p_static_id=>'recurring-item-details'
,p_title=>'Recurring Item Details'
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
 p_id=>wwv_flow_imp.id(27198470106238830103)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(25130534935715279640)
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
 p_id=>wwv_flow_imp.id(27198471404570830116)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(25130534935715279640)
,p_button_name=>'DELETE_RECURRING'
,p_static_id=>'delete-recurring'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'Are you sure you want to delete this recurring item? This cannot be undone.'
,p_button_condition=>'P6_RECURRING_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27198470047219830102)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(25130534935715279640)
,p_button_name=>'SAVE_RECURRING'
,p_static_id=>'save-recurring'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Recurring Item'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25130535460688279645)
,p_name=>'P6_AMOUNT'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(25130534935715279640)
,p_prompt=>'Amount'
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
 p_id=>wwv_flow_imp.id(25130535273583279643)
,p_name=>'P6_CATEGORY_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25130534935715279640)
,p_prompt=>'Category'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    category_name as display_value,',
'    category_id as return_value',
'from bf_categories',
'where category_type = :P6_ITEM_TYPE',
'  and is_active = ''Y''',
'  and (',
'        is_system = ''Y''',
'        or app_user = v(''APP_USER'')',
'      )',
'order by',
'    is_system desc,',
'    display_sequence,',
'    category_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select a category'
,p_lov_cascade_parent_items=>'P6_ITEM_TYPE'
,p_ajax_items_to_submit=>'P6_ITEM_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25130535867489279649)
,p_name=>'P6_END_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(25130534935715279640)
,p_prompt=>'End Date'
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
 p_id=>wwv_flow_imp.id(25130535578293279646)
,p_name=>'P6_FREQUENCY_CODE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(25130534935715279640)
,p_prompt=>'Frequency'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Weekly;WEEKLY,Fortnightly;FORTNIGHTLY,Monthly;MONTHLY,Quarterly;QUARTERLY,Yearly;YEARLY'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select frequency'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25130535985019279650)
,p_name=>'P6_IS_ACTIVE'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(25130534935715279640)
,p_item_default=>'Y'
,p_prompt=>'Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Active;Y,Inactive;N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25130535373243279644)
,p_name=>'P6_ITEM_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25130534935715279640)
,p_prompt=>'Name'
,p_placeholder=>'Example: Salary or Netflix'
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
 p_id=>wwv_flow_imp.id(25130535105425279642)
,p_name=>'P6_ITEM_TYPE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25130534935715279640)
,p_item_default=>'EXPENSE'
,p_prompt=>'Type'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Income;INCOME,Expense;EXPENSE'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25130535707819279648)
,p_name=>'P6_NEXT_DUE_DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(25130534935715279640)
,p_prompt=>'Next Due Date'
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
 p_id=>wwv_flow_imp.id(27198469986372830101)
,p_name=>'P6_NOTES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(25130534935715279640)
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
 p_id=>wwv_flow_imp.id(25130535019263279641)
,p_name=>'P6_RECURRING_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(25130534935715279640)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25130535652772279647)
,p_name=>'P6_START_DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(25130534935715279640)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27198470216686830104)
,p_name=>'Cancel Recurring Dialog'
,p_static_id=>'cancel-recurring-dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27198470106238830103)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27198470344422830105)
,p_event_id=>wwv_flow_imp.id(27198470216686830104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-dialog-cancel'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27198470739490830109)
,p_name=>'Refresh Recurring Items After Dialog Close'
,p_static_id=>'refresh-recurring-items-after-dialog-close'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'body'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27198470815146830110)
,p_event_id=>wwv_flow_imp.id(27198470739490830109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25130534935715279640)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27198471628377830118)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog After Recurring Delete'
,p_static_id=>'close-dialog-after-recurring-delete'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27198471404570830116)
,p_internal_uid=>27198471628377830118
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27198470636797830108)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog After Recurring Save'
,p_static_id=>'close-dialog-after-recurring-save'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27198470047219830102)
,p_internal_uid=>27198470636797830108
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27198471537453830117)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Current User Recurring Item'
,p_static_id=>'delete-current-user-recurring-item'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P6_RECURRING_ID is null then',
'        raise_application_error(',
'            -20030,',
'            ''No recurring item was selected for deletion.''',
'        );',
'    end if;',
'',
'    delete from bf_recurring_items',
'    where recurring_id = to_number(:P6_RECURRING_ID)',
'      and app_user = v(''APP_USER'');',
'',
'    if sql%rowcount <> 1 then',
'        raise_application_error(',
'            -20031,',
'            ''The recurring item could not be deleted.''',
'        );',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27198471404570830116)
,p_process_success_message=>'Recurring item deleted.'
,p_internal_uid=>27198471537453830117
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27198471300416830115)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Recurring Item for Edit'
,p_static_id=>'load-recurring-item-for-edit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P6_RECURRING_ID is not null',
'       and apex_application.g_request is null',
'    then',
'        select',
'            item_type,',
'            category_id,',
'            item_name,',
'            to_char(',
'                amount,',
'                ''FM9999999999990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            ),',
'            frequency_code,',
'            to_char(start_date, ''DD/MM/YYYY''),',
'            to_char(next_due_date, ''DD/MM/YYYY''),',
'            to_char(end_date, ''DD/MM/YYYY''),',
'            is_active,',
'            notes',
'        into',
'            :P6_ITEM_TYPE,',
'            :P6_CATEGORY_ID,',
'            :P6_ITEM_NAME,',
'            :P6_AMOUNT,',
'            :P6_FREQUENCY_CODE,',
'            :P6_START_DATE,',
'            :P6_NEXT_DUE_DATE,',
'            :P6_END_DATE,',
'            :P6_IS_ACTIVE,',
'            :P6_NOTES',
'        from bf_recurring_items',
'        where recurring_id = to_number(:P6_RECURRING_ID)',
'          and app_user = v(''APP_USER'');',
'    end if;',
'',
'exception',
'    when no_data_found then',
'        :P6_RECURRING_ID := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>27198471300416830115
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27198470503689830107)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Current User Recurring Item'
,p_static_id=>'save-current-user-recurring-item'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_amount          number;',
'    l_start_date      date;',
'    l_next_due_date   date;',
'    l_end_date        date;',
'    l_category_count  number;',
'begin',
'    ---------------------------------------------------------------------------',
'    -- Validate Type',
'    ---------------------------------------------------------------------------',
'    if :P6_ITEM_TYPE is null',
'       or :P6_ITEM_TYPE not in (''INCOME'', ''EXPENSE'')',
'    then',
'        raise_application_error(',
'            -20020,',
'            ''Please select a valid recurring item type.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- Validate Amount',
'    ---------------------------------------------------------------------------',
'    l_amount := apex_session_state.get_number(''P6_AMOUNT'');',
'',
'    if l_amount is null or l_amount <= 0 then',
'        raise_application_error(',
'            -20021,',
'            ''Amount must be greater than zero.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- Validate Frequency',
'    ---------------------------------------------------------------------------',
'    if :P6_FREQUENCY_CODE not in (',
'        ''WEEKLY'',',
'        ''FORTNIGHTLY'',',
'        ''MONTHLY'',',
'        ''QUARTERLY'',',
'        ''YEARLY''',
'    )',
'    then',
'        raise_application_error(',
'            -20022,',
'            ''Please select a valid frequency.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- Convert Dates',
'    ---------------------------------------------------------------------------',
'    l_start_date :=',
'        to_date(:P6_START_DATE, ''DD/MM/YYYY'');',
'',
'    l_next_due_date :=',
'        to_date(:P6_NEXT_DUE_DATE, ''DD/MM/YYYY'');',
'',
'    if :P6_END_DATE is not null then',
'        l_end_date :=',
'            to_date(:P6_END_DATE, ''DD/MM/YYYY'');',
'    else',
'        l_end_date := null;',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- Date Relationships',
'    ---------------------------------------------------------------------------',
'    if l_next_due_date < l_start_date then',
'        raise_application_error(',
'            -20023,',
'            ''Next Due Date cannot be earlier than Start Date.''',
'        );',
'    end if;',
'',
'    if l_end_date is not null',
'       and l_end_date < l_start_date',
'    then',
'        raise_application_error(',
'            -20024,',
'            ''End Date cannot be earlier than Start Date.''',
'        );',
'    end if;',
'',
'    if l_end_date is not null',
'       and l_next_due_date > l_end_date',
'    then',
'        raise_application_error(',
'            -20025,',
'            ''Next Due Date cannot be later than End Date.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- Validate Status',
'    ---------------------------------------------------------------------------',
'    if :P6_IS_ACTIVE is null',
'       or :P6_IS_ACTIVE not in (''Y'', ''N'')',
'    then',
'        raise_application_error(',
'            -20026,',
'            ''Please select a valid status.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- Validate Category',
'    ---------------------------------------------------------------------------',
'    select count(*)',
'    into l_category_count',
'    from bf_categories',
'    where category_id = to_number(:P6_CATEGORY_ID)',
'      and category_type = :P6_ITEM_TYPE',
'      and is_active = ''Y''',
'      and (',
'            is_system = ''Y''',
'            or app_user = v(''APP_USER'')',
'          );',
'',
'    if l_category_count <> 1 then',
'        raise_application_error(',
'            -20027,',
'            ''The selected category is not valid for this recurring item.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- EDIT EXISTING',
'    ---------------------------------------------------------------------------',
'    if :P6_RECURRING_ID is not null then',
'',
'        update bf_recurring_items',
'        set',
'            item_type      = :P6_ITEM_TYPE,',
'            category_id    = to_number(:P6_CATEGORY_ID),',
'            item_name      = trim(:P6_ITEM_NAME),',
'            amount         = l_amount,',
'            frequency_code = :P6_FREQUENCY_CODE,',
'            start_date     = l_start_date,',
'            next_due_date  = l_next_due_date,',
'            end_date       = l_end_date,',
'            is_active      = :P6_IS_ACTIVE,',
'            notes          = trim(:P6_NOTES)',
'        where recurring_id = to_number(:P6_RECURRING_ID)',
'          and app_user = v(''APP_USER'');',
'',
'        if sql%rowcount <> 1 then',
'            raise_application_error(',
'                -20028,',
'                ''The recurring item could not be updated.''',
'            );',
'        end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- ADD NEW',
'    ---------------------------------------------------------------------------',
'    else',
'',
'        insert into bf_recurring_items (',
'            app_user,',
'            item_type,',
'            category_id,',
'            item_name,',
'            amount,',
'            frequency_code,',
'            start_date,',
'            end_date,',
'            next_due_date,',
'            is_active,',
'            notes',
'        )',
'        values (',
'            v(''APP_USER''),',
'            :P6_ITEM_TYPE,',
'            to_number(:P6_CATEGORY_ID),',
'            trim(:P6_ITEM_NAME),',
'            l_amount,',
'            :P6_FREQUENCY_CODE,',
'            l_start_date,',
'            l_end_date,',
'            l_next_due_date,',
'            :P6_IS_ACTIVE,',
'            trim(:P6_NOTES)',
'        );',
'',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27198470047219830102)
,p_process_success_message=>'Recurring item saved.'
,p_internal_uid=>27198470503689830107
);
wwv_flow_imp.component_end;
end;
/
