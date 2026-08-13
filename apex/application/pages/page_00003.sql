prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'Transactions'
,p_alias=>'TRANSACTIONS'
,p_step_title=>'Transactions'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25422709004026111870)
,p_plug_name=>'Transactions'
,p_static_id=>'transactions'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    t.transaction_id,',
'',
'    t.transaction_date,',
'',
'    case',
unistr('        when t.transaction_type = ''INCOME'' then ''\2191 Income'''),
unistr('        when t.transaction_type = ''EXPENSE'' then ''\2193 Expense'''),
'        else initcap(lower(t.transaction_type))',
'    end as transaction_type,',
'',
'    c.category_name,',
'',
'    t.description,',
'',
'    t.amount,',
'',
'    case',
'        when t.source_type = ''MANUAL'' then ''Manual''',
'        when t.source_type = ''RECURRING'' then ''Recurring''',
'        else initcap(lower(t.source_type))',
'    end as source_type,',
'',
'    t.notes,',
'',
'    t.created_at',
'',
'from bf_transactions t',
'',
'join bf_categories c',
'    on c.category_id = t.category_id',
'',
'where t.app_user = v(''APP_USER'')',
'',
'order by',
'    t.transaction_date desc,',
'    t.transaction_id desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(25422709111079111870)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>25422709111079111870
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25422712332303111884)
,p_db_column_name=>'AMOUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FM$999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25422711559414111881)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25422713560243111888)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25422711987890111882)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4:P4_TRANSACTION_ID:#TRANSACTION_ID#'
,p_column_linktext=>'#DESCRIPTION#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25422713182831111887)
,p_db_column_name=>'NOTES'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25422712793277111885)
,p_db_column_name=>'SOURCE_TYPE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Source'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25422710732277111878)
,p_db_column_name=>'TRANSACTION_DATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD Mon YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25422710396782111875)
,p_db_column_name=>'TRANSACTION_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Transaction Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25422711165559111879)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(25426335057052165452)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TRANSACTION_ID:TRANSACTION_DATE:TRANSACTION_TYPE:CATEGORY_NAME:DESCRIPTION:AMOUNT:SOURCE_TYPE:NOTES:CREATED_AT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25130533826940279629)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(25422709004026111870)
,p_button_name=>'ADD_TRANSACTION'
,p_static_id=>'add-transaction'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Transaction'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4::'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25130534282400279633)
,p_name=>'Refresh Transactions After Dialog Close'
,p_static_id=>'refresh-transactions-after-dialog-close'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'body'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25130534326894279634)
,p_event_id=>wwv_flow_imp.id(25130534282400279633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25422709004026111870)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp.component_end;
end;
/
