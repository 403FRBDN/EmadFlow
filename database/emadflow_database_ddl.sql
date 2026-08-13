  CREATE TABLE "BF_CATEGORIES" 
   (	"CATEGORY_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"APP_USER" VARCHAR2(255 CHAR), 
	"CATEGORY_TYPE" VARCHAR2(10 CHAR) NOT NULL ENABLE, 
	"CATEGORY_NAME" VARCHAR2(80 CHAR) NOT NULL ENABLE, 
	"ICON_NAME" VARCHAR2(100 CHAR), 
	"DISPLAY_SEQUENCE" NUMBER DEFAULT 10 NOT NULL ENABLE, 
	"IS_SYSTEM" CHAR(1 CHAR) DEFAULT 'N' NOT NULL ENABLE, 
	"IS_ACTIVE" CHAR(1 CHAR) DEFAULT 'Y' NOT NULL ENABLE, 
	"CREATED_AT" TIMESTAMP (6) DEFAULT localtimestamp NOT NULL ENABLE, 
	"UPDATED_AT" TIMESTAMP (6) DEFAULT localtimestamp NOT NULL ENABLE, 
	 CONSTRAINT "BF_CATEGORIES_TYPE_CK" CHECK (category_type in ('INCOME', 'EXPENSE')) ENABLE, 
	 CONSTRAINT "BF_CATEGORIES_SYSTEM_CK" CHECK (is_system in ('Y', 'N')) ENABLE, 
	 CONSTRAINT "BF_CATEGORIES_ACTIVE_CK" CHECK (is_active in ('Y', 'N')) ENABLE, 
	 CONSTRAINT "BF_CATEGORIES_OWNER_CK" CHECK (  
            (is_system = 'Y' and app_user is null)  
            or  
            (is_system = 'N' and app_user is not null)  
        ) ENABLE, 
	 CONSTRAINT "BF_CATEGORIES_SEQUENCE_CK" CHECK (display_sequence >= 0) ENABLE, 
	 CONSTRAINT "BF_CATEGORIES_PK" PRIMARY KEY ("CATEGORY_ID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "BF_IOUS" 
   (	"IOU_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"APP_USER" VARCHAR2(255 CHAR) NOT NULL ENABLE, 
	"IOU_TYPE" VARCHAR2(10 CHAR) NOT NULL ENABLE, 
	"PERSON_NAME" VARCHAR2(120 CHAR) NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(200 CHAR) NOT NULL ENABLE, 
	"ORIGINAL_AMOUNT" NUMBER(14,2) NOT NULL ENABLE, 
	"IOU_DATE" DATE DEFAULT trunc(sysdate) NOT NULL ENABLE, 
	"DUE_DATE" DATE, 
	"NOTES" VARCHAR2(1000 CHAR), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT localtimestamp NOT NULL ENABLE, 
	"UPDATED_AT" TIMESTAMP (6) DEFAULT localtimestamp NOT NULL ENABLE, 
	 CONSTRAINT "BF_IOUS_TYPE_CK" CHECK (iou_type in ('LENT', 'BORROWED')) ENABLE, 
	 CONSTRAINT "BF_IOUS_AMOUNT_CK" CHECK (original_amount > 0) ENABLE, 
	 CONSTRAINT "BF_IOUS_DATES_CK" CHECK (  
            due_date is null  
            or due_date >= iou_date  
        ) ENABLE, 
	 CONSTRAINT "BF_IOUS_PK" PRIMARY KEY ("IOU_ID")
  USING INDEX  ENABLE, 
	 CONSTRAINT "BF_IOUS_OWNER_UK" UNIQUE ("IOU_ID", "APP_USER")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "BF_IOU_PAYMENTS" 
   (	"PAYMENT_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"IOU_ID" NUMBER NOT NULL ENABLE, 
	"APP_USER" VARCHAR2(255 CHAR) NOT NULL ENABLE, 
	"PAYMENT_DATE" DATE DEFAULT trunc(sysdate) NOT NULL ENABLE, 
	"PAYMENT_AMOUNT" NUMBER(14,2) NOT NULL ENABLE, 
	"NOTES" VARCHAR2(500 CHAR), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT localtimestamp NOT NULL ENABLE, 
	"UPDATED_AT" TIMESTAMP (6) DEFAULT localtimestamp NOT NULL ENABLE, 
	 CONSTRAINT "BF_IOU_PAYMENTS_AMOUNT_CK" CHECK (payment_amount > 0) ENABLE, 
	 CONSTRAINT "BF_IOU_PAYMENTS_PK" PRIMARY KEY ("PAYMENT_ID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "BF_RECURRING_ITEMS" 
   (	"RECURRING_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"APP_USER" VARCHAR2(255 CHAR) NOT NULL ENABLE, 
	"ITEM_TYPE" VARCHAR2(10 CHAR) NOT NULL ENABLE, 
	"CATEGORY_ID" NUMBER NOT NULL ENABLE, 
	"ITEM_NAME" VARCHAR2(120 CHAR) NOT NULL ENABLE, 
	"AMOUNT" NUMBER(14,2) NOT NULL ENABLE, 
	"FREQUENCY_CODE" VARCHAR2(20 CHAR) NOT NULL ENABLE, 
	"START_DATE" DATE NOT NULL ENABLE, 
	"END_DATE" DATE, 
	"NEXT_DUE_DATE" DATE NOT NULL ENABLE, 
	"IS_ACTIVE" CHAR(1 CHAR) DEFAULT 'Y' NOT NULL ENABLE, 
	"NOTES" VARCHAR2(1000 CHAR), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT localtimestamp NOT NULL ENABLE, 
	"UPDATED_AT" TIMESTAMP (6) DEFAULT localtimestamp NOT NULL ENABLE, 
	 CONSTRAINT "BF_RECURRING_TYPE_CK" CHECK (item_type in ('INCOME', 'EXPENSE')) ENABLE, 
	 CONSTRAINT "BF_RECURRING_AMOUNT_CK" CHECK (amount > 0) ENABLE, 
	 CONSTRAINT "BF_RECURRING_FREQUENCY_CK" CHECK (  
            frequency_code in (  
                'WEEKLY',  
                'FORTNIGHTLY',  
                'MONTHLY',  
                'QUARTERLY',  
                'YEARLY'  
            )  
        ) ENABLE, 
	 CONSTRAINT "BF_RECURRING_DATES_CK" CHECK (  
            end_date is null  
            or end_date >= start_date  
        ) ENABLE, 
	 CONSTRAINT "BF_RECURRING_ACTIVE_CK" CHECK (is_active in ('Y', 'N')) ENABLE, 
	 CONSTRAINT "BF_RECURRING_ITEMS_PK" PRIMARY KEY ("RECURRING_ID")
  USING INDEX  ENABLE, 
	 CONSTRAINT "BF_RECURRING_ITEMS_OWNER_UK" UNIQUE ("RECURRING_ID", "APP_USER")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "BF_SAVINGS_GOALS" 
   (	"GOAL_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"APP_USER" VARCHAR2(255 CHAR) NOT NULL ENABLE, 
	"GOAL_NAME" VARCHAR2(120 CHAR) NOT NULL ENABLE, 
	"TARGET_AMOUNT" NUMBER(14,2) NOT NULL ENABLE, 
	"SAVED_AMOUNT" NUMBER(14,2) DEFAULT 0 NOT NULL ENABLE, 
	"START_DATE" DATE DEFAULT trunc(sysdate) NOT NULL ENABLE, 
	"TARGET_DATE" DATE, 
	"STATUS_CODE" VARCHAR2(20 CHAR) DEFAULT 'ACTIVE' NOT NULL ENABLE, 
	"NOTES" VARCHAR2(1000 CHAR), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT localtimestamp NOT NULL ENABLE, 
	"UPDATED_AT" TIMESTAMP (6) DEFAULT localtimestamp NOT NULL ENABLE, 
	 CONSTRAINT "BF_SAVINGS_TARGET_CK" CHECK (target_amount > 0) ENABLE, 
	 CONSTRAINT "BF_SAVINGS_SAVED_CK" CHECK (saved_amount >= 0) ENABLE, 
	 CONSTRAINT "BF_SAVINGS_DATES_CK" CHECK (  
            target_date is null  
            or target_date >= start_date  
        ) ENABLE, 
	 CONSTRAINT "BF_SAVINGS_STATUS_CK" CHECK (  
            status_code in (  
                'ACTIVE',  
                'PAUSED',  
                'COMPLETED'  
            )  
        ) ENABLE, 
	 CONSTRAINT "BF_SAVINGS_GOALS_PK" PRIMARY KEY ("GOAL_ID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "BF_TRANSACTIONS" 
   (	"TRANSACTION_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"APP_USER" VARCHAR2(255 CHAR) NOT NULL ENABLE, 
	"TRANSACTION_TYPE" VARCHAR2(10 CHAR) NOT NULL ENABLE, 
	"CATEGORY_ID" NUMBER NOT NULL ENABLE, 
	"RECURRING_ID" NUMBER, 
	"TRANSACTION_DATE" DATE DEFAULT trunc(sysdate) NOT NULL ENABLE, 
	"AMOUNT" NUMBER(14,2) NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(200 CHAR) NOT NULL ENABLE, 
	"SOURCE_TYPE" VARCHAR2(20 CHAR) DEFAULT 'MANUAL' NOT NULL ENABLE, 
	"NOTES" VARCHAR2(1000 CHAR), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT localtimestamp NOT NULL ENABLE, 
	"UPDATED_AT" TIMESTAMP (6) DEFAULT localtimestamp NOT NULL ENABLE, 
	 CONSTRAINT "BF_TRANSACTIONS_TYPE_CK" CHECK (transaction_type in ('INCOME', 'EXPENSE')) ENABLE, 
	 CONSTRAINT "BF_TRANSACTIONS_AMOUNT_CK" CHECK (amount > 0) ENABLE, 
	 CONSTRAINT "BF_TRANSACTIONS_SOURCE_CK" CHECK (source_type in ('MANUAL', 'RECURRING')) ENABLE, 
	 CONSTRAINT "BF_TRANSACTIONS_PK" PRIMARY KEY ("TRANSACTION_ID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "BF_USER_PROFILE" 
   (	"APP_USER" VARCHAR2(255 CHAR) NOT NULL ENABLE, 
	"DISPLAY_NAME" VARCHAR2(100 CHAR), 
	"CURRENCY_CODE" VARCHAR2(3 CHAR) DEFAULT 'AUD' NOT NULL ENABLE, 
	"OPENING_BALANCE" NUMBER(14,2) DEFAULT 0 NOT NULL ENABLE, 
	"OPENING_BALANCE_DATE" DATE DEFAULT trunc(sysdate) NOT NULL ENABLE, 
	"CREATED_AT" TIMESTAMP (6) DEFAULT localtimestamp NOT NULL ENABLE, 
	"UPDATED_AT" TIMESTAMP (6) DEFAULT localtimestamp NOT NULL ENABLE, 
	"USER_EMAIL" VARCHAR2(320), 
	"AUTH_PROVIDER" VARCHAR2(30), 
	"LAST_LOGIN_AT" TIMESTAMP (6) WITH TIME ZONE, 
	"ONBOARDING_COMPLETED_YN" VARCHAR2(1) DEFAULT 'N' NOT NULL ENABLE, 
	"ONBOARDING_COMPLETED_AT" TIMESTAMP (6) WITH TIME ZONE, 
	 CONSTRAINT "BF_USER_PROFILE_CURRENCY_CK" CHECK (  
            currency_code = upper(currency_code)  
            and length(currency_code) = 3  
        ) ENABLE, 
	 CONSTRAINT "BF_USER_PROFILE_PK" PRIMARY KEY ("APP_USER")
  USING INDEX  ENABLE, 
	 CONSTRAINT "BF_USER_PROFILE_ONBOARD_CK" CHECK (
    onboarding_completed_yn in ('Y', 'N')
) ENABLE
   ) ;

  CREATE INDEX "BF_CATEGORIES_I1" ON "BF_CATEGORIES" ("APP_USER", "CATEGORY_TYPE", "IS_ACTIVE") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "BF_CATEGORIES_BU" 
before update on bf_categories  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
ALTER TRIGGER "BF_CATEGORIES_BU" ENABLE;

  ALTER TABLE "BF_IOUS" ADD CONSTRAINT "BF_IOUS_USER_FK" FOREIGN KEY ("APP_USER")
	  REFERENCES "BF_USER_PROFILE" ("APP_USER") ENABLE;

  CREATE INDEX "BF_IOUS_I1" ON "BF_IOUS" ("APP_USER", "DUE_DATE") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "BF_IOUS_BU" 
before update on bf_ious  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
ALTER TRIGGER "BF_IOUS_BU" ENABLE;

  ALTER TABLE "BF_IOU_PAYMENTS" ADD CONSTRAINT "BF_IOU_PAYMENTS_IOU_FK" FOREIGN KEY ("IOU_ID", "APP_USER")
	  REFERENCES "BF_IOUS" ("IOU_ID", "APP_USER") ENABLE;
  ALTER TABLE "BF_IOU_PAYMENTS" ADD CONSTRAINT "BF_IOU_PAYMENTS_USER_FK" FOREIGN KEY ("APP_USER")
	  REFERENCES "BF_USER_PROFILE" ("APP_USER") ENABLE;

  CREATE INDEX "BF_IOU_PAYMENTS_I1" ON "BF_IOU_PAYMENTS" ("APP_USER", "IOU_ID", "PAYMENT_DATE") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "BF_IOU_PAYMENTS_BU" 
before update on bf_iou_payments  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
ALTER TRIGGER "BF_IOU_PAYMENTS_BU" ENABLE;

  ALTER TABLE "BF_RECURRING_ITEMS" ADD CONSTRAINT "BF_RECURRING_CATEGORY_FK" FOREIGN KEY ("CATEGORY_ID")
	  REFERENCES "BF_CATEGORIES" ("CATEGORY_ID") ENABLE;
  ALTER TABLE "BF_RECURRING_ITEMS" ADD CONSTRAINT "BF_RECURRING_USER_FK" FOREIGN KEY ("APP_USER")
	  REFERENCES "BF_USER_PROFILE" ("APP_USER") ENABLE;

  CREATE INDEX "BF_RECURRING_ITEMS_I1" ON "BF_RECURRING_ITEMS" ("APP_USER", "IS_ACTIVE", "NEXT_DUE_DATE") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "BF_RECURRING_ITEMS_BU" 
before update on bf_recurring_items  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
ALTER TRIGGER "BF_RECURRING_ITEMS_BU" ENABLE;

  ALTER TABLE "BF_SAVINGS_GOALS" ADD CONSTRAINT "BF_SAVINGS_GOALS_USER_FK" FOREIGN KEY ("APP_USER")
	  REFERENCES "BF_USER_PROFILE" ("APP_USER") ENABLE;

  CREATE INDEX "BF_SAVINGS_GOALS_I1" ON "BF_SAVINGS_GOALS" ("APP_USER", "STATUS_CODE", "TARGET_DATE") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "BF_SAVINGS_GOALS_BU" 
before update on bf_savings_goals  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
ALTER TRIGGER "BF_SAVINGS_GOALS_BU" ENABLE;

  ALTER TABLE "BF_TRANSACTIONS" ADD CONSTRAINT "BF_TRANSACTIONS_CATEGORY_FK" FOREIGN KEY ("CATEGORY_ID")
	  REFERENCES "BF_CATEGORIES" ("CATEGORY_ID") ENABLE;
  ALTER TABLE "BF_TRANSACTIONS" ADD CONSTRAINT "BF_TRANSACTIONS_RECURRING_FK" FOREIGN KEY ("RECURRING_ID", "APP_USER")
	  REFERENCES "BF_RECURRING_ITEMS" ("RECURRING_ID", "APP_USER") ENABLE;
  ALTER TABLE "BF_TRANSACTIONS" ADD CONSTRAINT "BF_TRANSACTIONS_USER_FK" FOREIGN KEY ("APP_USER")
	  REFERENCES "BF_USER_PROFILE" ("APP_USER") ENABLE;

  CREATE INDEX "BF_TRANSACTIONS_I1" ON "BF_TRANSACTIONS" ("APP_USER", "TRANSACTION_DATE") 
  ;

  CREATE INDEX "BF_TRANSACTIONS_I2" ON "BF_TRANSACTIONS" ("APP_USER", "TRANSACTION_TYPE", "TRANSACTION_DATE") 
  ;

  CREATE INDEX "BF_TRANSACTIONS_I3" ON "BF_TRANSACTIONS" ("CATEGORY_ID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "BF_TRANSACTIONS_BU" 
before update on bf_transactions  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
ALTER TRIGGER "BF_TRANSACTIONS_BU" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "BF_USER_PROFILE_BU" 
before update on bf_user_profile  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
ALTER TRIGGER "BF_USER_PROFILE_BU" ENABLE;
create or replace package bf_auth_pkg as 
 
    procedure google_post_auth; 
 
end bf_auth_pkg;
/

























create or replace TRIGGER "BF_CATEGORIES_BU"  
before update on bf_categories  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
create or replace TRIGGER "BF_IOUS_BU"  
before update on bf_ious  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
create or replace TRIGGER "BF_IOU_PAYMENTS_BU"  
before update on bf_iou_payments  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
create or replace TRIGGER "BF_RECURRING_ITEMS_BU"  
before update on bf_recurring_items  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
create or replace TRIGGER "BF_SAVINGS_GOALS_BU"  
before update on bf_savings_goals  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
create or replace TRIGGER "BF_TRANSACTIONS_BU"  
before update on bf_transactions  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
create or replace TRIGGER "BF_USER_PROFILE_BU"  
before update on bf_user_profile  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/




  CREATE OR REPLACE FORCE EDITIONABLE VIEW "BF_V_ACCOUNT_SUMMARY" ("APP_USER", "DISPLAY_NAME", "CURRENCY_CODE", "OPENING_BALANCE", "OPENING_BALANCE_DATE", "TOTAL_INCOME", "TOTAL_EXPENSE", "CURRENT_BALANCE") AS 
  select  
    p.app_user,  
    p.display_name,  
    p.currency_code,  
    p.opening_balance,  
    p.opening_balance_date,  
  
    nvl(  
        sum(  
            case  
                when t.transaction_type = 'INCOME'  
                then t.amount  
                else 0  
            end  
        ),  
        0  
    ) as total_income,  
  
    nvl(  
        sum(  
            case  
                when t.transaction_type = 'EXPENSE'  
                then t.amount  
                else 0  
            end  
        ),  
        0  
    ) as total_expense,  
  
    p.opening_balance  
    +  
    nvl(  
        sum(  
            case  
                when t.transaction_type = 'INCOME'  
                then t.amount  
                else 0  
            end  
        ),  
        0  
    )  
    -  
    nvl(  
        sum(  
            case  
                when t.transaction_type = 'EXPENSE'  
                then t.amount  
                else 0  
            end  
        ),  
        0  
    ) as current_balance  
  
from bf_user_profile p  
  
left join bf_transactions t  
    on t.app_user = p.app_user  
    and t.transaction_date >= p.opening_balance_date  
  
group by  
    p.app_user,  
    p.display_name,  
    p.currency_code,  
    p.opening_balance,  
    p.opening_balance_date;

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "BF_V_IOU_SUMMARY" ("IOU_ID", "APP_USER", "IOU_TYPE", "PERSON_NAME", "DESCRIPTION", "ORIGINAL_AMOUNT", "IOU_DATE", "DUE_DATE", "NOTES", "AMOUNT_PAID", "OUTSTANDING_AMOUNT", "IOU_STATUS") AS 
  select  
    i.iou_id,  
    i.app_user,  
    i.iou_type,  
    i.person_name,  
    i.description,  
    i.original_amount,  
    i.iou_date,  
    i.due_date,  
    i.notes,  
  
    nvl(sum(p.payment_amount), 0) as amount_paid,  
  
    greatest(  
        i.original_amount - nvl(sum(p.payment_amount), 0),  
        0  
    ) as outstanding_amount,  
  
    case  
        when nvl(sum(p.payment_amount), 0) >= i.original_amount  
            then 'SETTLED'  
  
        when i.due_date is not null  
             and i.due_date < trunc(sysdate)  
            then 'OVERDUE'  
  
        when nvl(sum(p.payment_amount), 0) > 0  
            then 'PART PAID'  
  
        else 'OPEN'  
    end as iou_status  
  
from bf_ious i  
  
left join bf_iou_payments p  
    on p.iou_id = i.iou_id  
    and p.app_user = i.app_user  
  
group by  
    i.iou_id,  
    i.app_user,  
    i.iou_type,  
    i.person_name,  
    i.description,  
    i.original_amount,  
    i.iou_date,  
    i.due_date,  
    i.notes;

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "BF_V_RECURRING_FORECAST" ("RECURRING_ID", "APP_USER", "ITEM_TYPE", "CATEGORY_ID", "CATEGORY_NAME", "ITEM_NAME", "AMOUNT", "FREQUENCY_CODE", "OCCURRENCE_DATE", "START_DATE", "END_DATE", "NOTES", "SIGNED_AMOUNT") AS 
  with occurrence_numbers as (  
    select  
        level - 1 as occurrence_no  
    from dual  
    connect by level <= 60  
),  
  
expanded_occurrences as (  
    select  
        r.recurring_id,  
        r.app_user,  
        r.item_type,  
        r.category_id,  
        c.category_name,  
        r.item_name,  
        r.amount,  
        r.frequency_code,  
        r.start_date,  
        r.next_due_date,  
        r.end_date,  
        r.is_active,  
        r.notes,  
        n.occurrence_no,  
  
        case  
            when r.frequency_code = 'WEEKLY' then  
                r.next_due_date  
                + (7 * n.occurrence_no)  
  
            when r.frequency_code = 'FORTNIGHTLY' then  
                r.next_due_date  
                + (14 * n.occurrence_no)  
  
            when r.frequency_code = 'MONTHLY' then  
                add_months(  
                    r.next_due_date,  
                    n.occurrence_no  
                )  
  
            when r.frequency_code = 'QUARTERLY' then  
                add_months(  
                    r.next_due_date,  
                    3 * n.occurrence_no  
                )  
  
            when r.frequency_code = 'YEARLY' then  
                add_months(  
                    r.next_due_date,  
                    12 * n.occurrence_no  
                )  
        end as occurrence_date  
  
    from bf_recurring_items r  
  
    join bf_categories c  
        on c.category_id = r.category_id  
  
    cross join occurrence_numbers n  
  
    where r.is_active = 'Y'  
)  
  
select  
    recurring_id,  
    app_user,  
    item_type,  
    category_id,  
    category_name,  
    item_name,  
    amount,  
    frequency_code,  
    occurrence_date,  
    start_date,  
    end_date,  
    notes,  
  
    case  
        when item_type = 'INCOME' then amount  
        when item_type = 'EXPENSE' then -amount  
    end as signed_amount  
  
from expanded_occurrences  
  
where occurrence_date >= start_date  
  and (  
        end_date is null  
        or occurrence_date <= end_date  
      );

  CREATE OR REPLACE EDITIONABLE TRIGGER "BF_CATEGORIES_BU" 
before update on bf_categories  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
ALTER TRIGGER "BF_CATEGORIES_BU" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "BF_IOUS_BU" 
before update on bf_ious  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
ALTER TRIGGER "BF_IOUS_BU" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "BF_IOU_PAYMENTS_BU" 
before update on bf_iou_payments  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
ALTER TRIGGER "BF_IOU_PAYMENTS_BU" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "BF_RECURRING_ITEMS_BU" 
before update on bf_recurring_items  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
ALTER TRIGGER "BF_RECURRING_ITEMS_BU" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "BF_SAVINGS_GOALS_BU" 
before update on bf_savings_goals  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
ALTER TRIGGER "BF_SAVINGS_GOALS_BU" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "BF_TRANSACTIONS_BU" 
before update on bf_transactions  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
ALTER TRIGGER "BF_TRANSACTIONS_BU" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "BF_USER_PROFILE_BU" 
before update on bf_user_profile  
for each row  
begin  
    :new.updated_at := localtimestamp;  
end;
/
ALTER TRIGGER "BF_USER_PROFILE_BU" ENABLE;
create or replace package body bf_auth_pkg as 
 
    procedure google_post_auth is 
        l_app_user varchar2(255); 
        l_email    varchar2(320); 
        l_name     varchar2(255); 
    begin 
 
        l_app_user := v('APP_USER'); 
 
        l_email := lower( 
            trim( 
                apex_json.get_varchar2( 
                    p_path => 'email' 
                ) 
            ) 
        ); 
 
        l_name := trim( 
            apex_json.get_varchar2( 
                p_path => 'name' 
            ) 
        ); 
 
        if l_app_user is null then 
            raise_application_error( 
                -20100, 
                'Unable to determine the authenticated Google user.' 
            ); 
        end if; 
 
        if l_email is null then 
            raise_application_error( 
                -20101, 
                'Google did not provide an email address for this account.' 
            ); 
        end if; 
 
        merge into bf_user_profile p 
        using ( 
            select l_app_user as app_user 
            from dual 
        ) s 
        on ( 
            p.app_user = s.app_user 
        ) 
 
        when matched then 
            update set 
                p.user_email    = l_email, 
                p.auth_provider = 'GOOGLE', 
                p.last_login_at = systimestamp 
 
        when not matched then 
            insert ( 
                app_user, 
                display_name, 
                currency_code, 
                opening_balance, 
                opening_balance_date, 
                user_email, 
                auth_provider, 
                last_login_at 
            ) 
            values ( 
                l_app_user, 
                nvl(l_name, l_email), 
                'AUD', 
                0, 
                trunc( 
                    cast( 
                        systimestamp 
                        at time zone 'Australia/Melbourne' 
                        as date 
                    ) 
                ), 
                l_email, 
                'GOOGLE', 
                systimestamp 
            ); 
 
    end google_post_auth; 
 
end bf_auth_pkg;
/
















