prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'My Profile'
,p_alias=>'MY-PROFILE'
,p_step_title=>'My Profile'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25126059053981913591)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(25118539410634098746)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25130531016554279601)
,p_plug_name=>'Profile Settings'
,p_static_id=>'new'
,p_title=>'Profile Settings'
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
 p_id=>wwv_flow_imp.id(25130531651424279607)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(25130531016554279601)
,p_button_name=>'SAVE_PROFILE'
,p_static_id=>'save-profile'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Profile'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(25130532114900279612)
,p_branch_name=>'Return to My Profile'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(25130531651424279607)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25130531103471279602)
,p_name=>'P2_APP_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25130531016554279601)
,p_item_default=>'v(''APP_USER'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Signed-in User'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25130531338648279604)
,p_name=>'P2_CURRENCY_CODE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25130531016554279601)
,p_item_default=>'AUD'
,p_prompt=>'Currency'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Australian Dollar (AUD);AUD'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25130531234936279603)
,p_name=>'P2_DISPLAY_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25130531016554279601)
,p_prompt=>'Display Name'
,p_placeholder=>'Enter your preferred name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25130531421251279605)
,p_name=>'P2_OPENING_BALANCE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(25130531016554279601)
,p_prompt=>'Opening Balance'
,p_placeholder=>'Example: 1500.00'
,p_format_mask=>'FM9999999999990D00'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25130531572033279606)
,p_name=>'P2_OPENING_BALANCE_DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(25130531016554279601)
,p_prompt=>'Balance As At'
,p_placeholder=>'DD/MM/YYYY'
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(25130531905290279610)
,p_validation_name=>'Opening Date Cannot Be Future'
,p_static_id=>'opening-date-cannot-be-future'
,p_validation_sequence=>10
,p_validation=>'to_date(:P2_OPENING_BALANCE_DATE, ''DD/MM/YYYY'') <= trunc(sysdate)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'The opening balance date cannot be in the future.'
,p_when_button_pressed=>wwv_flow_imp.id(25130531651424279607)
,p_associated_item=>wwv_flow_imp.id(25130531572033279606)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25130531818008279609)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Current User Profile'
,p_static_id=>'load-current-user-profile'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_app_user varchar2(255) := v(''APP_USER'');',
'begin',
'    /*',
'      Only load database values during an ordinary page display.',
'      Do not reload them while processing a submitted form.',
'    */',
'    if apex_application.g_request is null then',
'',
'        :P2_APP_USER := l_app_user;',
'',
'        begin',
'            select',
'                display_name,',
'                currency_code,',
'                to_char(',
'                    opening_balance,',
'                    ''FM9999999999990D00'',',
'                    ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'                ),',
'                to_char(',
'                    opening_balance_date,',
'                    ''DD/MM/YYYY''',
'                )',
'            into',
'                :P2_DISPLAY_NAME,',
'                :P2_CURRENCY_CODE,',
'                :P2_OPENING_BALANCE,',
'                :P2_OPENING_BALANCE_DATE',
'            from bf_user_profile',
'            where app_user = l_app_user;',
'',
'        exception',
'            when no_data_found then',
'                :P2_DISPLAY_NAME := null;',
'                :P2_CURRENCY_CODE := ''AUD'';',
'                :P2_OPENING_BALANCE := ''0.00'';',
'                :P2_OPENING_BALANCE_DATE :=',
'                    to_char(trunc(sysdate), ''DD/MM/YYYY'');',
'        end;',
'',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>25130531818008279609
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25130532018619279611)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Current User Profile'
,p_static_id=>'save-current-user-profile'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into bf_user_profile p',
'using (',
'    select',
'        v(''APP_USER'') as app_user,',
'        trim(:P2_DISPLAY_NAME) as display_name,',
'        upper(:P2_CURRENCY_CODE) as currency_code,',
'        apex_session_state.get_number(',
'            ''P2_OPENING_BALANCE''',
'        ) as opening_balance,',
'        to_date(',
'            :P2_OPENING_BALANCE_DATE,',
'            ''DD/MM/YYYY''',
'        ) as opening_balance_date',
'    from dual',
') s',
'on (',
'    p.app_user = s.app_user',
')',
'when matched then',
'    update set',
'        p.display_name         = s.display_name,',
'        p.currency_code        = s.currency_code,',
'        p.opening_balance      = s.opening_balance,',
'        p.opening_balance_date = s.opening_balance_date',
'when not matched then',
'    insert (',
'        app_user,',
'        display_name,',
'        currency_code,',
'        opening_balance,',
'        opening_balance_date',
'    )',
'    values (',
'        s.app_user,',
'        s.display_name,',
'        s.currency_code,',
'        s.opening_balance,',
'        s.opening_balance_date',
'    );'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'EmadFlow could not save your profile. Please review the entered values.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25130531651424279607)
,p_process_success_message=>'Your EmadFlow profile has been saved.'
,p_internal_uid=>25130532018619279611
);
wwv_flow_imp.component_end;
end;
/
