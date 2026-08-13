prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_name=>'Add Transaction'
,p_alias=>'ADD-TRANSACTION'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Transaction'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25130532965486279620)
,p_plug_name=>'Transaction Details'
,p_static_id=>'transaction-details'
,p_title=>'Transaction Details'
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
 p_id=>wwv_flow_imp.id(25130533715129279628)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(25130532965486279620)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25130534660271279637)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(25130532965486279620)
,p_button_name=>'DELETE_TRANSACTION'
,p_static_id=>'delete-transaction'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Delete'
,p_button_execute_validations=>'N'
,p_confirm_message=>'Are you sure you want to delete this transaction? This cannot be undone.'
,p_confirm_style=>'danger'
,p_button_condition=>'P4_TRANSACTION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25130533676119279627)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(25130532965486279620)
,p_button_name=>'SAVE_TRANSACTION'
,p_static_id=>'save-transaction'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Save Transaction'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25130533323699279624)
,p_name=>'P4_AMOUNT'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(25130532965486279620)
,p_prompt=>'Amount'
,p_placeholder=>'Example: 125.50'
,p_format_mask=>'FM9999999999990D00'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0.01',
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25130533136124279622)
,p_name=>'P4_CATEGORY_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25130532965486279620)
,p_prompt=>'Category'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    category_name as display_value,',
'    category_id as return_value',
'from bf_categories',
'where category_type = :P4_TRANSACTION_TYPE',
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
,p_lov_null_value=>'Leave empty'
,p_lov_cascade_parent_items=>'P4_TRANSACTION_TYPE'
,p_ajax_items_to_submit=>'P4_TRANSACTION_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25130533431255279625)
,p_name=>'P4_DESCRIPTION'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(25130532965486279620)
,p_prompt=>'Description'
,p_placeholder=>'Example: Weekly groceries'
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
 p_id=>wwv_flow_imp.id(25130533587789279626)
,p_name=>'P4_NOTES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(25130532965486279620)
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
 p_id=>wwv_flow_imp.id(25130533205054279623)
,p_name=>'P4_TRANSACTION_DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25130532965486279620)
,p_prompt=>'Transaction Date'
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
 p_id=>wwv_flow_imp.id(25130534440345279635)
,p_name=>'P4_TRANSACTION_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(25130532965486279620)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25130533050299279621)
,p_name=>'P4_TRANSACTION_TYPE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25130532965486279620)
,p_item_default=>'EXPENSE'
,p_prompt=>'Transaction Type'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Income;INCOME,Expense;EXPENSE'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25130534895973279639)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog After Delete'
,p_static_id=>'close-dialog-after-delete'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25130534660271279637)
,p_internal_uid=>25130534895973279639
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25130534048211279631)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog After Save'
,p_static_id=>'close-dialog-after-save'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25130533676119279627)
,p_internal_uid=>25130534048211279631
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25130534133440279632)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog on Cancel'
,p_static_id=>'close-dialog-on-cancel'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25130533715129279628)
,p_internal_uid=>25130534133440279632
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25130534707691279638)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Current User Transaction'
,p_static_id=>'delete-current-user-transaction'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P4_TRANSACTION_ID is null then',
'        raise_application_error(',
'            -20010,',
'            ''No transaction was selected for deletion.''',
'        );',
'    end if;',
'',
'    delete from bf_transactions',
'    where transaction_id = to_number(:P4_TRANSACTION_ID)',
'      and app_user = v(''APP_USER'');',
'',
'    if sql%rowcount <> 1 then',
'        raise_application_error(',
'            -20011,',
'            ''The transaction could not be deleted.''',
'        );',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25130534660271279637)
,p_process_success_message=>'Transaction deleted.'
,p_internal_uid=>25130534707691279638
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25130533925963279630)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Current User Transaction'
,p_static_id=>'insert-current-user-transaction'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_amount           number;',
'    l_transaction_date date;',
'    l_category_count   number;',
'begin',
'    ---------------------------------------------------------------------------',
'    -- Validate transaction type',
'    ---------------------------------------------------------------------------',
'    if :P4_TRANSACTION_TYPE is null',
'       or :P4_TRANSACTION_TYPE not in (''INCOME'', ''EXPENSE'')',
'    then',
'        raise_application_error(',
'            -20001,',
'            ''Please select a valid transaction type.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- Validate amount',
'    ---------------------------------------------------------------------------',
'    l_amount :=',
'        apex_session_state.get_number(''P4_AMOUNT'');',
'',
'    if l_amount is null or l_amount <= 0 then',
'        raise_application_error(',
'            -20002,',
'            ''The transaction amount must be greater than zero.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- Convert date',
'    ---------------------------------------------------------------------------',
'    l_transaction_date :=',
'        to_date(:P4_TRANSACTION_DATE, ''DD/MM/YYYY'');',
'',
'    ---------------------------------------------------------------------------',
'    -- Verify selected category belongs to the correct type and is accessible',
'    ---------------------------------------------------------------------------',
'    select count(*)',
'    into l_category_count',
'    from bf_categories',
'    where category_id = to_number(:P4_CATEGORY_ID)',
'      and category_type = :P4_TRANSACTION_TYPE',
'      and is_active = ''Y''',
'      and (',
'            is_system = ''Y''',
'            or app_user = v(''APP_USER'')',
'          );',
'',
'    if l_category_count <> 1 then',
'        raise_application_error(',
'            -20003,',
'            ''The selected category is not valid for this transaction type.''',
'        );',
'    end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- EDIT EXISTING TRANSACTION',
'    ---------------------------------------------------------------------------',
'    if :P4_TRANSACTION_ID is not null then',
'',
'        update bf_transactions',
'        set',
'            transaction_type = :P4_TRANSACTION_TYPE,',
'            category_id      = to_number(:P4_CATEGORY_ID),',
'            transaction_date = l_transaction_date,',
'            amount           = l_amount,',
'            description      = trim(:P4_DESCRIPTION),',
'            notes            = trim(:P4_NOTES)',
'        where transaction_id = to_number(:P4_TRANSACTION_ID)',
'          and app_user = v(''APP_USER'');',
'',
'        if sql%rowcount <> 1 then',
'            raise_application_error(',
'                -20004,',
'                ''The transaction could not be updated.''',
'            );',
'        end if;',
'',
'    ---------------------------------------------------------------------------',
'    -- ADD NEW TRANSACTION',
'    ---------------------------------------------------------------------------',
'    else',
'',
'        insert into bf_transactions (',
'            app_user,',
'            transaction_type,',
'            category_id,',
'            transaction_date,',
'            amount,',
'            description,',
'            source_type,',
'            notes',
'        )',
'        values (',
'            v(''APP_USER''),',
'            :P4_TRANSACTION_TYPE,',
'            to_number(:P4_CATEGORY_ID),',
'            l_transaction_date,',
'            l_amount,',
'            trim(:P4_DESCRIPTION),',
'            ''MANUAL'',',
'            trim(:P4_NOTES)',
'        );',
'',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25130533676119279627)
,p_process_success_message=>'Transaction saved.'
,p_internal_uid=>25130533925963279630
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25130534598695279636)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Transaction for Edit'
,p_static_id=>'load-transaction-for-edit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P4_TRANSACTION_ID is not null',
'       and apex_application.g_request is null',
'    then',
'        select',
'            transaction_type,',
'            category_id,',
'            to_char(transaction_date, ''DD/MM/YYYY''),',
'            to_char(',
'                amount,',
'                ''FM9999999999990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            ),',
'            description,',
'            notes',
'        into',
'            :P4_TRANSACTION_TYPE,',
'            :P4_CATEGORY_ID,',
'            :P4_TRANSACTION_DATE,',
'            :P4_AMOUNT,',
'            :P4_DESCRIPTION,',
'            :P4_NOTES',
'        from bf_transactions',
'        where transaction_id = :P4_TRANSACTION_ID',
'          and app_user = v(''APP_USER'');',
'    end if;',
'',
'exception',
'    when no_data_found then',
'        :P4_TRANSACTION_ID := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>25130534598695279636
);
wwv_flow_imp.component_end;
end;
/
