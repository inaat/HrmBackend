-- SQLINES DEMO *** sktop version to convert large SQL scripts,
-- SQLINES DEMO *** ny issues with Online conversion.

-- SQLINES DEMO *** act us at support@sqlines.comUSE [pis_babatin]
GO
/* SQLINES DEMO *** le [dbo].[acc_costcenter_dtl]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE acc_costcenter_dtl(
	`company_id` nvarchar(4) NOT NULL,
	`branch_id` nvarchar(4) NOT NULL,
	`dept_id` nvarchar(3) NOT NULL,
	`section_id` nvarchar(3) NOT NULL,
	`costcenter_id` nvarchar(4) NOT NULL,
	`gl_id` nvarchar(20) NOT NULL,
	`update_status` nvarchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `PK_acc_costcenter_dtl` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`dept_id` ASC,
	`section_id` ASC,
	`costcenter_id` ASC,
	`gl_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[acc_costcenter_hdr]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE acc_costcenter_hdr(
	`company_id` nvarchar(4) NOT NULL,
	`branch_id` nvarchar(4) NOT NULL,
	`dept_id` nvarchar(3) NOT NULL,
	`section_id` nvarchar(3) NOT NULL,
	`costcenter_id` nvarchar(4) NOT NULL,
	`costcentername_en` nvarchar(30) NULL,
	`costcentername_ar` nvarchar(30) NULL,
	`costcenterstatus` nvarchar(1) NULL,
	`update_status` nvarchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`storecc` nvarchar(1) NULL,
 CONSTRAINT `PK_acc_costcenter_hdr` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`dept_id` ASC,
	`section_id` ASC,
	`costcenter_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[appfonts]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE appfonts(
	`fontface` varchar(50) NOT NULL,
 CONSTRAINT `appfonts_PK` PRIMARY KEY
(
	`fontface` ASC
)
);
/* SQLINES DEMO *** le [dbo].[appmessages]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE appmessages(
	`applicationid` int NOT NULL,
	`msgid` int NOT NULL,
	`msgtitle_e` varchar(75) NULL,
	`msgtitle_a` varchar(75) NULL,
	`msgtext_e` varchar(300) NULL,
	`msgtext_a` varchar(300) NULL,
	`msgbutton` varchar(17) NULL,
	`msgicon` varchar(12) NULL,
 CONSTRAINT `PK_appmessages` PRIMARY KEY
(
	`applicationid` ASC,
	`msgid` ASC
)
);
/* SQLINES DEMO *** le [dbo].[ar_dataobject]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS OFF */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE ar_dataobject(
	`applicationid` decimal(4, 0) NOT NULL,
	`windowid` decimal(4, 0) NOT NULL,
	`dataobjectid` decimal(10, 0) NOT NULL,
	`dataobjectname` varchar(100) NULL,
	`dataobjectitemname` varchar(100) NULL,
	`dataobjectitem_etext` varchar(200) NULL,
	`dataobjectitem_atext` varchar(200) NULL,
	`dataobjectitem_expos` int NULL,
	`dataobjectitem_axpos` int NULL,
	`dataobjectitem_textalign` varchar(2) NULL,
	`dataobjectitemstyletype` varchar(30) NULL,
	`dataobjectitemproperty` varchar(200) NULL,
	`dataobjectitemcodevalue` varchar(100) NULL,
	`overwrite` varchar(2) NULL,
	`righttoleft` varchar(2) NULL,
 CONSTRAINT `ar_dataobject_x` PRIMARY KEY
(
	`applicationid` ASC,
	`windowid` ASC,
	`dataobjectid` ASC
)
);
/* SQLINES DEMO *** le [dbo].[ar_dbupdate]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE ar_dbupdate(
	`applicationid` decimal(5, 0) NOT NULL,
	`updcode` decimal(5, 0) AUTO_INCREMENT NOT NULL,
	`upd_desc` nvarchar(256) NULL,
	`upd_sqlloc` nvarchar(100) NULL,
	`upd_date` datetime(3) NULL,
	`createdby` nvarchar(20) NULL,
 CONSTRAINT `PK_ar_dbupdate` PRIMARY KEY
(
	`applicationid` ASC,
	`updcode` ASC
)
);
/* SQLINES DEMO *** le [dbo].[ar_dbupdate_hdr]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE ar_dbupdate_hdr(
	`application` nvarchar(3) NOT NULL,
	`updlastno` numeric(18, 0) NULL,
	`updsqlname` nvarchar(250) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `PK_ar_dbupdate_hdr` PRIMARY KEY
(
	`application` ASC
)
);
/* SQLINES DEMO *** le [dbo].[ar_menuobject]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE ar_menuobject(
	`applicationid` decimal(4, 0) NOT NULL,
	`windowid` decimal(4, 0) NOT NULL,
	`menuitemid` decimal(4, 0) NOT NULL,
	`menuitemname` varchar(100) NULL,
	`menuitem_etext` varchar(100) NULL,
	`menuitem_atext` varchar(100) NULL,
	`menuitem_emicrohelp` varchar(100) NULL,
	`menuitem_amicrohelp` varchar(100) NULL,
	`menuitem_etoolbartext` varchar(100) NULL,
	`menuitem_atoolbartext` varchar(100) NULL,
	`menuitem_property` varchar(100) NULL,
	`menuitemclassname` varchar(100) NULL,
	`overwrite` varchar(1) NULL,
 CONSTRAINT `ar_menuobject_PK` PRIMARY KEY
(
	`applicationid` ASC,
	`windowid` ASC,
	`menuitemid` ASC
)
);
/* SQLINES DEMO *** le [dbo].[ar_sysappmessages]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE ar_sysappmessages(
	`applicationid` int NOT NULL,
	`msgid` int NOT NULL,
	`msgtitle_e` varchar(75) NULL,
	`msgtitle_a` varchar(75) NULL,
	`msgtext_e` varchar(300) NULL,
	`msgtext_a` varchar(300) NULL,
	`msgbutton` varchar(17) NULL,
	`msgicon` varchar(12) NULL,
 CONSTRAINT `ar_sysappmessages_PK` PRIMARY KEY
(
	`applicationid` ASC,
	`msgid` ASC
)
);
/* SQLINES DEMO *** le [dbo].[ar_window]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE ar_window(
	`applicationid` decimal(4, 0) NOT NULL,
	`windowid` decimal(4, 0) NOT NULL,
	`windowclass` varchar(75) NULL,
	`windowproperty` varchar(75) NULL,
	`windowtitle_e` varchar(100) NULL,
	`windowtitle_a` varchar(100) NULL,
	`translatedflag` int NULL,
	`overwrite` varchar(1) NULL,
	`cacheflag` char(1) NULL,
 CONSTRAINT `ar_window_PK` PRIMARY KEY
(
	`applicationid` ASC,
	`windowid` ASC
)
);
/* SQLINES DEMO *** le [dbo].[ar_windowobject]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE ar_windowobject(
	`applicationid` decimal(4, 0) NOT NULL,
	`windowid` decimal(4, 0) NOT NULL,
	`windowobjectid` decimal(4, 0) NOT NULL,
	`windowobjectname` varchar(100) NULL,
	`windowobject_etext` varchar(300) NULL,
	`windowobject_atext` varchar(300) NULL,
	`windowobject_expos` int NULL,
	`windowobject_axpos` int NULL,
	`windowobject_textalign` varchar(1) NULL,
	`windowobjectprop` varchar(300) NULL,
	`windowobjecttype` varchar(32) NULL,
	`overwrite` varchar(1) NULL,
 CONSTRAINT `ar_windowobject_PK` PRIMARY KEY
(
	`applicationid` ASC,
	`windowid` ASC,
	`windowobjectid` ASC
)
);
/* SQLINES DEMO *** le [dbo].[att_id]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE att_id(
	`Att_id` varchar(50) NULL,
	`Emp_id` varchar(50) NULL
);
/* SQLINES DEMO *** le [dbo].[co_fyear_ms]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE co_fyear_ms(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(3) NOT NULL,
	`fyear_id` int NOT NULL,
	`fyear_desc` varchar(30) NOT NULL,
	`start_gdate` Datetime NOT NULL,
	`start_hdate` varchar(10) NOT NULL,
	`end_gdate` Datetime NOT NULL,
	`end_hdate` varchar(10) NOT NULL,
	`close_gdate` Datetime NULL,
	`close_hdate` varchar(10) NULL,
	`no_of_periods` decimal(2, 0) NULL,
	`type_of_periods` varchar(1) NULL,
	`duration_of_periods` decimal(2, 0) NULL,
	`balances_only` varchar(1) NULL,
 CONSTRAINT `co_fyear_ms_PK` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`fyear_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[dateconverter]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE dateconverter(
	`gregorian` Datetime NOT NULL,
	`hijri` varchar(10) NOT NULL
);
/* SQLINES DEMO *** le [dbo].[doc_columnselect]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE doc_columnselect(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`id` numeric(18, 0) AUTO_INCREMENT NOT NULL,
	`doc_id` varchar(4) NOT NULL,
	`column_name` varchar(30) NULL,
	`column_desc_en` varchar(100) NULL,
	`column_desc_ar` varchar(100) NULL,
	`doc_seq` int NULL,
	`formatting` varchar(20) NULL,
	`type` char(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
	`both_lang` varchar(1) NULL,
	`lang_seq` int NULL,
 CONSTRAINT `PK_doc_columnselect` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`id` ASC,
	`doc_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[doc_empinfo_fields]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE doc_empinfo_fields(
	`company_id` varchar(10) NULL,
	`branch_id` varchar(10) NULL,
	`id` numeric(18, 0) NOT NULL,
	`columnname` varchar(30) NULL,
	`columnnamedisp_en` varchar(50) NULL,
	`columnnamedisp_ar` varchar(50) NULL,
	`type` char(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `PK_doc_empinfo_fields` PRIMARY KEY
(
	`id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[doc_generated]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE doc_generated(
	`company_id` varchar(4) NULL,
	`branch_id` varchar(4) NULL,
	`doc_index` numeric(18, 0) AUTO_INCREMENT NOT NULL,
	`doc_empid` varchar(20) NULL,
	`doc_id` varchar(5) NULL,
	`serial_id` varchar(50) NULL,
	`v1` varchar(100) NULL,
	`v2` varchar(100) NULL,
	`v3` varchar(100) NULL,
	`v4` varchar(100) NULL,
	`v5` varchar(100) NULL,
	`v6` varchar(100) NULL,
	`v7` varchar(100) NULL,
	`v8` varchar(100) NULL,
	`v9` varchar(100) NULL,
	`v10` varchar(100) NULL,
	`dt_gen` datetime(3) NULL,
	`doc_filename` varchar(150) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
	`req_no` numeric(18, 0) NULL
);
/* SQLINES DEMO *** le [dbo].[doc_mailmerge_temp]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE doc_mailmerge_temp(
	`datetoday` nvarchar(11) NULL,
	`datetoday_h` nvarchar(11) NULL,
	`employee_id` varchar(20) NULL,
	`designation` varchar(40) NULL,
	`designation_en` varchar(40) NOT NULL,
	`country` varchar(40) NULL,
	`country_en` varchar(40) NULL,
	`nationality` varchar(40) NULL,
	`nationality_en` varchar(40) NULL,
	`religion` varchar(30) NULL,
	`religion_en` varchar(30) NULL,
	`company` varchar(50) NULL,
	`company_en` varchar(50) NULL,
	`branch` varchar(50) NULL,
	`branch_en` varchar(50) NULL,
	`department` varchar(40) NULL,
	`department_en` varchar(40) NULL,
	`sponsor_name` varchar(40) NULL,
	`sponsor_name_en` varchar(40) NULL,
	`firstname` varchar(45) NULL,
	`firstname_en` varchar(45) NULL,
	`middlename` varchar(45) NULL,
	`middlename_en` varchar(45) NULL,
	`lastname` varchar(45) NULL,
	`lastname_en` varchar(45) NULL,
	`civil_status` varchar(200) NULL,
	`civil_status_en` varchar(200) NULL,
	`gender` varchar(200) NULL,
	`gender_en` varchar(200) NULL,
	`birthdate` nvarchar(11) NULL,
	`birthplace` varchar(20) NULL,
	`email_address` varchar(60) NULL,
	`iqama_position` varchar(40) NULL,
	`iqama_position_en` varchar(40) NULL,
	`remark1` varchar(750) NULL,
	`remark2` varchar(750) NULL,
	`hireddate` nvarchar(11) NULL,
	`city` varchar(30) NULL,
	`city_en` varchar(30) NULL,
	`contract` varchar(200) NULL,
	`contract_en` varchar(200) NULL,
	`insurance` varchar(3) NULL,
	`iqama_no` varchar(15) NULL,
	`mobile_no` nvarchar(15) NULL,
	`section` varchar(40) NULL,
	`section_en` varchar(40) NULL,
	`grandname` varchar(30) NULL,
	`grandname_en` varchar(30) NULL,
	`basic_salary` nvarchar(20) NULL,
	`id_picture` nvarchar(4000) NULL,
	`housing` nvarchar(20) NULL,
	`transpo` nvarchar(20) NULL,
	`monthly_pay` nvarchar(20) NULL,
	`fixed_benefits` nvarchar(20) NULL,
	`ticket_allow` nvarchar(20) NULL,
	`medical_ins` nvarchar(20) NULL,
	`loan` nvarchar(20) NULL,
	`car_loan` nvarchar(20) NULL,
	`car_ins` nvarchar(20) NULL,
	`lwop` nvarchar(20) NULL,
	`other_benefits` nvarchar(20) NOT NULL,
	`ticket` nvarchar(20) NOT NULL,
	`phone` nvarchar(20) NOT NULL,
	`total_netpay` nvarchar(20) NOT NULL,
	`food` nvarchar(20) NOT NULL,
	`empstart` nvarchar(11) NULL,
	`vacdays` nvarchar(10) NULL,
	`monthlydue` nvarchar(10) NULL,
	`worknature` nvarchar(20) NOT NULL,
	`additional` nvarchar(20) NOT NULL,
	`resallow` nvarchar(20) NOT NULL,
	`lvallow` nvarchar(20) NOT NULL,
	`comallow` nvarchar(20) NOT NULL,
	`telben` nvarchar(20) NOT NULL,
	`carben` nvarchar(20) NOT NULL,
	`gosi_no` varchar(15) NULL,
	`bank_no` varchar(50) NULL,
	`car` nvarchar(20) NOT NULL,
	`bonus` nvarchar(20) NOT NULL,
	`doc_id001` nvarchar(50) NULL,
	`doc_id002` nvarchar(50) NULL,
	`doc_no001` nvarchar(50) NULL,
	`doc_no002` nvarchar(50) NULL,
	`place_issued001` nvarchar(50) NULL,
	`place_issued002` nvarchar(50) NULL,
	`place_issued_en001` nvarchar(50) NULL,
	`place_issued_en002` nvarchar(50) NULL,
	`dateissued001` nvarchar(50) NULL,
	`dateissued002` nvarchar(50) NULL,
	`dateexpire001` nvarchar(50) NULL,
	`dateexpire002` nvarchar(50) NULL,
	`originalsponsor001` nvarchar(50) NULL,
	`originalsponsor002` nvarchar(50) NULL,
	`B004` nvarchar(50) NULL,
	`B009` nvarchar(50) NULL,
	`B010` nvarchar(50) NULL,
	`B011` nvarchar(50) NULL,
	`B012` nvarchar(50) NULL,
	`B013` nvarchar(50) NULL,
	`B014` nvarchar(50) NULL,
	`B015` nvarchar(50) NULL,
	`B016` nvarchar(50) NULL,
	`B017` nvarchar(50) NULL,
	`B018` nvarchar(50) NULL,
	`B019` nvarchar(50) NULL,
	`B020` nvarchar(50) NULL,
	`B021` nvarchar(50) NULL,
	`BEOS` nvarchar(50) NULL
);
/* SQLINES DEMO *** le [dbo].[doc_runtime_variables]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE doc_runtime_variables(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`doc_id` varchar(4) NOT NULL,
	`var_no` varchar(3) NOT NULL,
	`value` varchar(150) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
	`vname` varchar(60) NULL,
 CONSTRAINT `PK_doc_runtime_variables` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`doc_id` ASC,
	`var_no` ASC
)
);
/* SQLINES DEMO *** le [dbo].[fozan_cpynams]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE fozan_cpynams(
	`payroll_no` varchar(10) NOT NULL,
	`emp_name` varchar(100) NULL,
	`dept_code` varchar(10) NULL,
	`nationality` varchar(10) NULL,
	`position_code` varchar(10) NULL,
	`remarks` varchar(150) NULL,
	`emp_id` varchar(10) NOT NULL
);
/* SQLINES DEMO *** le [dbo].[generateduniquenbr]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE generateduniquenbr(
	`TableName` varchar(60) NOT NULL,
	`ColumnName` varchar(60) NOT NULL,
	`LastNbrUsed` int NOT NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
 CONSTRAINT `generateduniquenbr_PK` PRIMARY KEY
(
	`TableName` ASC,
	`ColumnName` ASC,
	`company_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[greg_hijri_actual]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE greg_hijri_actual(
	`hirji_date` varchar(10) NOT NULL,
	`internal_date` decimal(6, 0) NOT NULL,
	`greg_date` Datetime NOT NULL,
 CONSTRAINT `greg_hijri_actual_PK` PRIMARY KEY
(
	`hirji_date` ASC,
	`internal_date` ASC,
	`greg_date` ASC
)
);
/* SQLINES DEMO *** le [dbo].[greg_hijri_actual2]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE greg_hijri_actual2(
	`hijri_date` varchar(10) NOT NULL,
	`internal_date` decimal(6, 0) NOT NULL,
	`greg_date` Datetime NOT NULL
);
/* SQLINES DEMO *** le [dbo].[hijri_date_table]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE hijri_date_table(
	`tot_days` decimal(5, 0) NOT NULL,
	`days_in_month` varchar(12) NOT NULL,
	`hijri_year` int NULL
);
/* SQLINES DEMO *** le [dbo].[inj_bugmonitor]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE inj_bugmonitor(
	`errorseqno` bigint AUTO_INCREMENT NOT NULL,
	`applicationid` decimal(18, 0) NULL,
	`errordate` datetime(3) NULL,
	`errordesc` nvarchar(100) NULL,
	`errortype` char(1) NULL,
	`reportedby` nvarchar(30) NULL,
	`developer` nvarchar(30) NULL,
	`versionno` nvarchar(20) NULL,
	`testedby` nvarchar(30) NULL,
	`testeddt` datetime(3) NULL,
 CONSTRAINT `PK_inj_bugmonitor` PRIMARY KEY
(
	`errorseqno` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_banks]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_banks(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`bank_id` varchar(3) NOT NULL,
	`city_id` varchar(3) NULL,
	`country_id` varchar(3) NULL,
	`bankname_en` varchar(75) NULL,
	`bankname_ar` varchar(75) NULL,
	`accounttype` varchar(3) NULL,
	`currencytype` varchar(3) NULL,
	`accountno` varchar(50) NULL,
	`gl_acct_id` varchar(30) NULL,
	`address1` varchar(100) NULL,
	`address2` varchar(100) NULL,
	`address3` varchar(100) NULL,
	`address4` varchar(100) NULL,
	`update_status` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
	`bank_code` nvarchar(10) NULL,
	`bank_file` nvarchar(3) NULL,
	`payment_type` nvarchar(5) NULL,
 CONSTRAINT `m_banks_PK` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`bank_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_beneficiaryordependents]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_beneficiaryordependents(
	`company_id` varchar(4) NOT NULL,
	`beneficiary_id` varchar(3) NOT NULL,
	`beneficiary_desc` varchar(30) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`beneficiary_desc_ara` varchar(30) NULL,
	`branch_id` varchar(3) NOT NULL,
 CONSTRAINT `m_beneficiaryordependents_PK` PRIMARY KEY
(
	`company_id` ASC,
	`beneficiary_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_benefitpost]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_benefitpost(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`benefit_id` varchar(3) NOT NULL,
	`post_id` varchar(3) NOT NULL,
	`user_id` nvarchar(20) NULL,
	`update_status` varchar(3) NULL,
	`last_update` Datetime NULL,
	`from_amt` decimal(12, 2) NULL,
	`to_amt` decimal(12, 2) NULL,
 CONSTRAINT `m_benefitpost_PK` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`benefit_id` ASC,
	`post_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_benefits]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_benefits(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`benefit_id` varchar(3) NOT NULL,
	`benefitdesc_e` varchar(50) NULL,
	`benefitdesc_a` varchar(50) NULL,
	`finalsetflag` varchar(2) NULL,
	`moneyvalueflag` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`update_status` varchar(1) NULL,
	`last_update` Datetime NULL,
	`holidayflag` varchar(2) NULL,
	`printable` varchar(1) NULL,
	`parentbenefit` varchar(3) NULL,
	`modifyflag` varchar(1) NULL,
	`gl_id` varchar(30) NULL,
	`credit_glid` varchar(30) NULL,
	`showinreport` nvarchar(1) NULL,
	`mulfactor` nvarchar(1) NULL,
	`percent_frsalary` numeric(10, 2) NULL,
	`mb` char(1) NULL,
 CONSTRAINT `m_benefits_PK` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`benefit_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_branch]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_branch(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`branch_name_eng` varchar(50) NULL,
	`branch_name_arab` varchar(50) NULL,
	`branch_manager_eng` varchar(50) NULL,
	`branch_manager_arab` varchar(50) NULL,
	`add_1` varchar(150) NULL,
	`add_2` varchar(50) NULL,
	`add_3` varchar(50) NULL,
	`add_4` varchar(50) NULL,
	`postal_code` varchar(10) NULL,
	`state_region` varchar(15) NULL,
	`phone_1` varchar(50) NULL,
	`phone_2` varchar(20) NULL,
	`phone_3` varchar(20) NULL,
	`fax_1` varchar(50) NULL,
	`fax_2` varchar(20) NULL,
	`email` varchar(40) NULL,
	`web_site` varchar(50) NULL,
	`status` varchar(1) NULL,
	`city_id` varchar(3) NULL,
	`country_id` varchar(3) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`remarks` varchar(500) NULL,
	`default_emp` varchar(100) NULL,
	`remarks2` nvarchar(255) NULL,
	`remarks3` nvarchar(255) NULL,
 CONSTRAINT `m_branch_PK` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_city]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_city(
	`city_id` varchar(3) NOT NULL,
	`city_name_eng` varchar(30) NULL,
	`city_name_ara` varchar(30) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`region` varchar(40) NULL,
	`country_id` varchar(3) NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NULL,
	`ticket_value` decimal(12, 2) NULL,
 CONSTRAINT `m_city_PK` PRIMARY KEY
(
	`city_id` ASC,
	`company_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_company]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_company(
	`company_id` varchar(4) NOT NULL,
	`comp_name_eng` varchar(50) NULL,
	`comp_name_arab` varchar(50) NULL,
	`comp_name_reg` varchar(50) NULL,
	`comp_name_reg_arab` varchar(50) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`incorporation_date` Datetime NULL,
	`incorporation_date_hijri` varchar(10) NULL,
	`type_of_business` varchar(100) NULL,
	`type_of_business_ara` varchar(100) NULL,
	`no_br` int NULL,
 CONSTRAINT `m_company_PK` PRIMARY KEY
(
	`company_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_company_sched]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_company_sched(
	`company_id` varchar(4) NOT NULL,
	`cosched_id` varchar(7) NOT NULL,
	`sched_desc_en` varchar(50) NOT NULL,
	`sched_desc_ar` varchar(50) NOT NULL,
	`from_date` datetime(3) NOT NULL,
	`from_date_h` varchar(10) NOT NULL,
	`to_date` datetime(3) NOT NULL,
	`to_date_h` varchar(10) NOT NULL,
	`no_work` varchar(1) NOT NULL,
	`for_schedule` char(50) NOT NULL,
	`paid_overtime` varchar(1) NOT NULL,
	`user_id` varchar(20) NOT NULL,
	`last_update` datetime(3) NOT NULL,
	`update_status` varchar(1) NOT NULL,
 CONSTRAINT `PK_m_company_sched` PRIMARY KEY
(
	`cosched_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_country]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_country(
	`country_id` varchar(3) NOT NULL,
	`country_name_eng` varchar(40) NULL,
	`country_name_ara` varchar(40) NULL,
	`nationality_eng` varchar(40) NULL,
	`nationality_arab` varchar(40) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(3) NULL,
 CONSTRAINT `m_country_PK` PRIMARY KEY
(
	`country_id` ASC,
	`company_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_currencies]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_currencies(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`currency_id` varchar(3) NOT NULL,
	`currencyname_en` varchar(50) NULL,
	`currencyname_ar` varchar(50) NULL,
	`exchange_rate` decimal(6, 4) NULL,
	`update_status` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `m_currencies_PK` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`currency_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_ddlb]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_ddlb(
	`applicationid` int NOT NULL,
	`ddlbno` int NOT NULL,
	`ddlbseqno` int NOT NULL,
	`displayvalue_e` varchar(200) NULL,
	`displayvalue_a` varchar(200) NULL,
	`datavalue_char` varchar(10) NULL,
	`datavalue_int` int NULL,
	`remarks` varchar(100) NULL,
	`addedby` varchar(50) NULL,
 CONSTRAINT `m_ddlb_PK` PRIMARY KEY
(
	`applicationid` ASC,
	`ddlbno` ASC,
	`ddlbseqno` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_deductions]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_deductions(
	`company_id` varchar(4) NOT NULL,
	`deduction_id` varchar(3) NOT NULL,
	`deduction_desc` varchar(30) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`deduction_desc_ara` varchar(30) NULL,
	`branch_id` varchar(3) NOT NULL,
	`printable` varchar(1) NULL,
	`parentdeduction` varchar(3) NULL,
	`modifyflag` varchar(1) NULL,
	`gl_id` varchar(30) NULL,
	`credit_glid` varchar(30) NULL,
	`showinreport` nvarchar(1) NULL,
	`request` char(1) NULL,
	`mb` char(1) NULL,
 CONSTRAINT `m_deductions_PK` PRIMARY KEY
(
	`company_id` ASC,
	`deduction_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_department]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_department(
	`department_id` varchar(3) NOT NULL,
	`depart_desc` varchar(40) NULL,
	`depart_manager_eng` varchar(40) NULL,
	`depart_manager_arab` varchar(40) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`depart_desc_ara` varchar(40) NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(3) NOT NULL,
	`acctgbranch` varchar(4) NULL,
	`fabranch` nvarchar(4) NULL,
 CONSTRAINT `m_department_PK` PRIMARY KEY
(
	`department_id` ASC,
	`company_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_deptsection]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_deptsection(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`dept_id` varchar(3) NOT NULL,
	`section_id` varchar(3) NOT NULL,
	`status` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`update_status` varchar(1) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `m_deptsection_PK` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`dept_id` ASC,
	`section_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_documents]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_documents(
	`doc_id` varchar(5) NOT NULL,
	`doc_desc` varchar(40) NULL,
	`renew_flag` varchar(1) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`doc_desc_ara` varchar(40) NULL,
	`branch_id` varchar(4) NOT NULL,
	`co_flag` varchar(1) NULL,
	`company_id` varchar(4) NOT NULL,
	`hijriflag` varchar(2) NULL,
	`daystoexpire` int NULL,
	`substitution` nvarchar(5) NULL,
 CONSTRAINT `m_documents_PK` PRIMARY KEY
(
	`doc_id` ASC,
	`branch_id` ASC,
	`company_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_education]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_education(
	`company_id` varchar(4) NOT NULL,
	`educ_id` varchar(4) NOT NULL,
	`educ_desc` varchar(40) NULL,
	`educ_remark` varchar(40) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`educ_desc_ara` varchar(40) NULL,
	`branch_id` varchar(4) NOT NULL,
 CONSTRAINT `m_education_PK` PRIMARY KEY
(
	`company_id` ASC,
	`educ_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_employee]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_employee(
	`emp_id` varchar(20) NOT NULL,
	`position_id` varchar(3) NULL,
	`country_id` varchar(3) NULL,
	`religion_id` varchar(3) NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`dept_id` varchar(3) NULL,
	`sponsor_id` varchar(3) NULL,
	`firstname_eng` varchar(45) NULL,
	`middlename_eng` varchar(45) NULL,
	`lastname_eng` varchar(45) NULL,
	`firstname_ara` varchar(45) NULL,
	`middlename_ara` varchar(45) NULL,
	`lastname_ara` varchar(45) NULL,
	`civil_status` varchar(1) NULL,
	`sex` varchar(1) NULL,
	`birthdate` datetime(3) NULL,
	`birthplace` varchar(20) NULL,
	`email_address` varchar(60) NULL,
	`position_asper_iqama` varchar(30) NULL,
	`remark2` varchar(750) NULL,
	`remark1` varchar(750) NULL,
	`emp_status` varchar(3) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`hireddate` datetime(3) NULL,
	`city_id` varchar(3) NULL,
	`dt_onloc` datetime(3) NULL,
	`contract` varchar(3) NULL,
	`insurance` varchar(3) NULL,
	`birthdate_h` varchar(10) NULL,
	`hireddate_h` varchar(10) NULL,
	`section` varchar(3) NULL,
	`hijri_age` decimal(5, 2) NULL,
	`bankaccount_no` varchar(30) NULL,
	`grandname_en` varchar(30) NULL,
	`grandname_ar` varchar(30) NULL,
	`iqama_no` varchar(15) NULL,
	`mobile_no` nvarchar(15) NULL,
	`costcenter_id` nvarchar(4) NULL,
	`attendance_no` nvarchar(20) NULL,
	`report_to_pos` nvarchar(3) NULL,
	`report_to_emp` nvarchar(20) NULL,
	`shift_id` nvarchar(40) NULL,
	`use_ms_glid` char(1) NULL,
	`lang` nvarchar(1) NULL,
	`badgeno` nvarchar(1) NULL,
	`attuser` nvarchar(20) NULL,
	`securityuser_id` nvarchar(20) NULL,
	`delegate` nvarchar(1) NULL,
 CONSTRAINT `m_employee_PK` PRIMARY KEY
(
	`emp_id` ASC,
	`company_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_evaluation]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_evaluation(
	`eval_id` varchar(3) NOT NULL,
	`evaluation_desc` varchar(30) NOT NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`evaluation_desc_ara` varchar(30) NULL,
	`eval_cycle` varchar(15) NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`max_mark` int NULL,
 CONSTRAINT `m_evaluation_PK` PRIMARY KEY
(
	`eval_id` ASC,
	`company_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_evaluationpost]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_evaluationpost(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`eval_id` varchar(3) NOT NULL,
	`position_id` varchar(3) NOT NULL,
	`user_id` nvarchar(20) NULL,
	`update_status` varchar(3) NULL,
	`last_update` Datetime NULL,
	`max_mark` int NULL,
 CONSTRAINT `PK_m_evaluationpost` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`eval_id` ASC,
	`position_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_evaluationtype]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_evaluationtype(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`evaltype_id` varchar(3) NOT NULL,
	`evaltype_desc` varchar(30) NOT NULL,
	`evaltype_desc_ara` varchar(30) NOT NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `PK_m_evaluationtype` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`evaltype_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_filter_dtl]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_filter_dtl(
	`report_id` int NOT NULL,
	`filter_sr_no` int NOT NULL,
	`filter_line_no` int NOT NULL,
	`colname` varchar(50) NULL,
	`oper` varchar(10) NULL,
	`colvalue` varchar(256) NULL,
	`and_or` varchar(3) NULL,
	`col_gdate` Datetime NULL,
	`col_hdate` varchar(10) NULL,
	`col_number` decimal(15, 4) NULL,
	`col_type` varchar(10) NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`colorig` varchar(50) NULL,
	`colhflag` varchar(10) NULL,
 CONSTRAINT `m_filter_dtl_PK` PRIMARY KEY
(
	`report_id` ASC,
	`filter_sr_no` ASC,
	`filter_line_no` ASC,
	`company_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_filter_hdr]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_filter_hdr(
	`report_id` int NOT NULL,
	`filter_sr_no` int NOT NULL,
	`filter_english_desc` varchar(75) NULL,
	`filter_arabic_desc` varchar(75) NULL,
	`filter_text` varchar(1500) NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
 CONSTRAINT `m_filter_hdr_PK` PRIMARY KEY
(
	`report_id` ASC,
	`filter_sr_no` ASC,
	`company_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_gosi]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_gosi(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`gosi_id` decimal(4, 0) NOT NULL,
	`yearmonth_id_gr` varchar(10) NULL,
	`yearmonth_id_hi` varchar(10) NULL,
	`gosisaudi_employee` decimal(5, 2) NULL,
	`gosisaudi_company` decimal(5, 2) NULL,
	`gosinonsaudi_employee` decimal(5, 2) NULL,
	`gosinonsaudi_company` decimal(5, 2) NULL,
	`currentflag` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`update_status` varchar(1) NULL,
	`last_update` datetime(3) NULL,
	`comments` varchar(200) NULL,
 CONSTRAINT `m_gosi_PK` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`gosi_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_govt_files]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_govt_files(
	`company_id` varchar(4) NOT NULL,
	`document_type` varchar(30) NULL,
	`document_no_ara` varchar(20) NULL,
	`place_issued` varchar(20) NULL,
	`date_issued` Datetime NULL,
	`expiry_date` Datetime NULL,
	`remark1` varchar(20) NULL,
	`remark2` varchar(20) NULL,
	`level` varchar(10) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`document_no` varchar(20) NULL,
	`branch_id` varchar(3) NOT NULL,
	`document_id` varchar(3) NOT NULL,
	`issuing_authority` varchar(100) NULL,
	`doc_r_no` varchar(5) NOT NULL,
	`dt_issued_h` varchar(10) NULL,
	`dt_exp_h` varchar(10) NULL,
	`doc_rmk` varchar(250) NULL,
	`currentflag` nvarchar(1) NOT NULL,
	`dept_id` nvarchar(3) NULL,
	`section_id` nvarchar(3) NULL,
 CONSTRAINT `m_govt_files_PK` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`document_id` ASC,
	`doc_r_no` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_leave]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_leave(
	`company_id` varchar(4) NOT NULL,
	`leave_id` varchar(3) NOT NULL,
	`leave_desc` varchar(40) NULL,
	`leave_desc_ara` varchar(40) NULL,
	`leave_duration` int NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` Datetime NULL,
	`branch_id` varchar(4) NOT NULL,
	`requirevisa` varchar(1) NULL,
	`withpay` varchar(1) NULL,
	`operator` char(1) NULL,
	`wsettlement` varchar(1) NULL,
	`status` char(1) NULL,
	`extra_leavecalc` char(1) NULL,
	`request` char(1) NULL,
 CONSTRAINT `m_leave_PK` PRIMARY KEY
(
	`company_id` ASC,
	`leave_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_percentage]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_percentage(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`percent_id` varchar(3) NOT NULL,
	`percent_fr` int NULL,
	`percent_to` int NULL,
	`percent_desc_en` varchar(30) NULL,
	`percent_desc_ar` varchar(30) NULL,
	`percent_value` int NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `PK_m_percentage` PRIMARY KEY
(
	`percent_id` ASC,
	`company_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_position]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_position(
	`company_id` varchar(4) NOT NULL,
	`position_id` varchar(3) NOT NULL,
	`designation_desc` varchar(40) NOT NULL,
	`level` varchar(2) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`designation_desc_ara` varchar(40) NULL,
	`branch_id` varchar(4) NOT NULL,
 CONSTRAINT `m_position_PK` PRIMARY KEY
(
	`company_id` ASC,
	`position_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_preferences]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_preferences(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(3) NOT NULL,
	`pref_id` int NOT NULL,
	`emp_no_system` varchar(1) NULL,
	`min_contract_months` int NULL,
	`max_contract_months` int NULL,
	`vacation_freq_contract` int NULL,
	`vacation_per_month` int NULL,
	`termination_notice` int NULL,
	`resignation_notice` int NULL,
	`service_award_less60` int NULL,
	`service_award_more60` int NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`branch_flag` int NULL,
	`branch_no` int NULL,
	`cost_center_flag` int NULL,
	`cost_center_system` varchar(2) NULL,
	`account_link_flag` varchar(1) NULL,
	`date_flag` varchar(1) NULL,
	`tvflag` varchar(1) NULL,
	`nameoption` varchar(1) NULL,
	`noofdaysin_year` int NULL,
	`endofyearcalculation` varchar(1) NULL,
	`endofperioddate_gr` Datetime NULL,
	`endofperioddate_hi` varchar(10) NULL,
	`endservicebase` varchar(3) NULL,
	`gosinonsaudi` decimal(5, 2) NULL,
	`gosisaudi` decimal(5, 2) NULL,
	`hourspermonth` int NULL,
	`gosisaudicompany` decimal(5, 2) NULL,
	`gosinonsaudicompany` decimal(5, 2) NULL,
	`gosipayrollflag` varchar(1) NULL,
	`fontface` varchar(50) NULL,
	`fontstyle` varchar(1) NULL,
	`fontsize` int NULL,
	`fontface_en` varchar(50) NULL,
	`fontstyle_en` varchar(1) NULL,
	`fontsize_en` int NULL,
	`glid_bank` varchar(30) NULL,
	`glid_cash` varchar(30) NULL,
	`glid_onhold` varchar(30) NULL,
	`dayspermonth` int NULL,
	`tardinessfactor` decimal(5, 2) NULL,
	`absentfactor` decimal(5, 2) NULL,
	`subledger_id` nvarchar(8) NULL,
	`payrollrounding` char(1) NULL,
	`maptoacctgbranch` char(10) NULL,
	`effectivestartdate_gr` Datetime NULL,
	`effectivestartdate_hi` char(10) NULL,
	`accumulated` char(1) NULL,
	`calc_ot_outsidepayroll` char(1) NULL,
	`include_ot_inpayroll` char(1) NULL,
	`posttoacct_ot_outsidepayroll` char(1) NULL,
	`no_yearend` char(1) NULL,
	`entry_overtime` varchar(1) NULL,
	`previous_month` varchar(1) NULL,
	`monthly_pay` varchar(1) NULL,
	`attendance_mc` varchar(1) NULL,
	`return_date` varchar(1) NULL,
	`addvacdays` varchar(1) NULL,
	`fa_link_flag` varchar(1) NULL,
	`isforward_vacdaysbal` char(1) NULL,
	`use_latestsalarycalc` char(1) NULL,
	`currentvacdays` char(1) NULL,
	`include_vacdays` char(1) NULL,
	`split_payroll` char(1) NULL,
	`post_ticket` nvarchar(1) NULL,
	`full_housing` nvarchar(1) NULL,
	`costcenter_based_timing` char(1) NULL,
	`use_twoglacct_inbenefits` char(1) NULL,
	`calculate_extraleave` char(1) NULL,
	`full_absent` nvarchar(1) NULL,
	`days_only` char(1) NULL,
	`include_eos` char(1) NULL,
	`othourspermonth` char(1) NULL,
	`auto_calc_gosi` char(1) NULL,
	`gosi_days` numeric(18, 2) NULL,
 CONSTRAINT `m_preferences_PK` PRIMARY KEY
(
	`company_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_recordmodification]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_recordmodification(
	`modificationid` varchar(4) NOT NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`modificationdescription_en` varchar(40) NULL,
	`modificationdescription_ar` varchar(40) NULL,
	`flag1` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`update_status` varchar(1) NULL,
	`last_update` Datetime NULL,
 CONSTRAINT `m_recordmodification_PK` PRIMARY KEY
(
	`modificationid` ASC,
	`company_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_religion]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_religion(
	`religion_id` varchar(3) NOT NULL,
	`religion_desc` varchar(30) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`religion_desc_ara` varchar(30) NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(3) NULL,
 CONSTRAINT `m_religion_PK` PRIMARY KEY
(
	`religion_id` ASC,
	`company_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_savedrpt]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_savedrpt(
	`company_id` nvarchar(4) NOT NULL,
	`branch_id` nvarchar(4) NOT NULL,
	`dept_id` nvarchar(3) NOT NULL,
	`section_id` nvarchar(3) NOT NULL,
	`rptno` int NOT NULL,
	`rptsrno` int NOT NULL,
	`rpttitle_en` nvarchar(100) NULL,
	`rpttitle_ar` nvarchar(100) NULL,
	`arg1` nvarchar(20) NULL,
	`arg2` nvarchar(20) NULL,
	`arg3` nvarchar(20) NULL,
	`arg4` nvarchar(20) NULL,
	`arg5` nvarchar(20) NULL,
	`arg6` nvarchar(20) NULL,
	`arg7` nvarchar(20) NULL,
	`arg8` nvarchar(20) NULL,
	`arg9` nvarchar(20) NULL,
	`arg10` nvarchar(20) NULL,
	`arg11` nvarchar(20) NULL,
	`arg12` nvarchar(20) NULL,
	`arg13` nvarchar(20) NULL,
	`arg14` nvarchar(20) NULL,
	`arg15` nvarchar(20) NULL,
	`arg16` nvarchar(20) NULL,
	`arg17` nvarchar(20) NULL,
	`arg18` nvarchar(20) NULL,
	`arg19` nvarchar(20) NULL,
	`arg20` nvarchar(20) NULL,
	`arg21` nvarchar(20) NULL,
	`arg22` nvarchar(20) NULL,
	`arg23` nvarchar(20) NULL,
	`arg24` nvarchar(20) NULL,
	`arg25` nvarchar(20) NULL,
	`arg26` nvarchar(20) NULL,
	`arg27` nvarchar(20) NULL,
	`arg28` nvarchar(20) NULL,
	`arg29` nvarchar(20) NULL,
	`arg30` nvarchar(20) NULL,
	`arg31` nvarchar(20) NULL,
	`arg32` nvarchar(20) NULL,
	`arg33` nvarchar(20) NULL,
	`arg34` nvarchar(20) NULL,
	`arg35` nvarchar(20) NULL,
	`arg36` nvarchar(20) NULL,
	`arg37` nvarchar(20) NULL,
	`arg38` nvarchar(20) NULL,
	`arg39` nvarchar(20) NULL,
	`arg40` nvarchar(20) NULL,
	`arg41` nvarchar(20) NULL,
	`arg42` nvarchar(20) NULL,
	`arg43` nvarchar(20) NULL,
	`arg44` nvarchar(20) NULL,
	`arg45` nvarchar(20) NULL,
	`arg46` nvarchar(20) NULL,
	`arg47` nvarchar(20) NULL,
	`arg48` nvarchar(20) NULL,
	`arg49` nvarchar(20) NULL,
	`arg50` nvarchar(20) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `PK_m_savedrpt` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`dept_id` ASC,
	`section_id` ASC,
	`rptno` ASC,
	`rptsrno` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_savedrpt_dtl]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_savedrpt_dtl(
	`company_id` nvarchar(4) NOT NULL,
	`branch_id` nvarchar(4) NOT NULL,
	`dept_id` nvarchar(3) NOT NULL,
	`section_id` nvarchar(3) NOT NULL,
	`rptno` int NOT NULL,
	`rptsrno` int NOT NULL,
	`rptdtlno` int NOT NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`colname` nvarchar(50) NULL,
	`oper` nvarchar(10) NULL,
	`colvalue` nvarchar(256) NULL,
	`and_or` nvarchar(3) NULL,
	`col_gdate` datetime(3) NULL,
	`col_hdate` nvarchar(10) NULL,
	`col_number` numeric(18, 0) NULL,
	`col_type` nvarchar(5) NULL,
	`colorig` nvarchar(50) NULL,
	`colhflag` nvarchar(10) NULL,
	`col_gdttm` datetime(3) NULL,
 CONSTRAINT `PK_m_savedrpt_dtl` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`dept_id` ASC,
	`section_id` ASC,
	`rptno` ASC,
	`rptsrno` ASC,
	`rptdtlno` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_savedrpt_extend]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_savedrpt_extend(
	`company_id` nvarchar(4) NOT NULL,
	`branch_id` nvarchar(4) NOT NULL,
	`dept_id` nvarchar(3) NOT NULL,
	`section_id` nvarchar(3) NOT NULL,
	`rptno` int NOT NULL,
	`rptsrno` int NOT NULL,
	`rptdtlno` int NOT NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`colname_a` nvarchar(50) NULL,
	`oper` nvarchar(10) NULL,
	`colname_b` nvarchar(50) NULL,
	`and_or` nvarchar(3) NULL,
	`percentage` char(1) NULL,
	`factor` int NULL,
 CONSTRAINT `PK_m_savedrpt_extend` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`dept_id` ASC,
	`section_id` ASC,
	`rptno` ASC,
	`rptsrno` ASC,
	`rptdtlno` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_section]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_section(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`section_id` varchar(4) NOT NULL,
	`sectiondesc_e` varchar(40) NULL,
	`sectiondesc_a` varchar(40) NULL,
	`update_status` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
	`dept_id` varchar(4) NULL,
 CONSTRAINT `m_section_PK` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`section_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_sponsor]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_sponsor(
	`sponsor_id` varchar(3) NOT NULL,
	`sponsor_name_eng` varchar(40) NULL,
	`sponsor_name_ara` varchar(40) NULL,
	`sponsor_address` varchar(70) NULL,
	`sponsor_telno` varchar(30) NULL,
	`contact_person_eng` varchar(40) NULL,
	`contact_peson_ara` varchar(40) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`sponsorno` nvarchar(15) NULL,
 CONSTRAINT `m_sponsor_PK` PRIMARY KEY
(
	`sponsor_id` ASC,
	`company_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_stdletters]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_stdletters(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`doc_id` varchar(4) NOT NULL,
	`doc_name` varchar(50) NULL,
	`doc_desc` varchar(50) NULL,
	`word_doc` varchar(200) NULL,
	`doc_type` varchar(2) NULL,
	`doc_name_ar` varchar(50) NULL,
	`doc_desc_ar` varchar(50) NULL,
	`doc_template` varchar(200) NULL,
	`serial_id` varchar(10) NULL,
	`update_status` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
	`request` char(1) NULL,
 CONSTRAINT `PK_m_stdletters` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`doc_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_subscription]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_subscription(
	`id` nvarchar(3) NOT NULL,
	`company_id` nvarchar(3) NOT NULL,
	`subscription_no` nvarchar(20) NOT NULL,
	`update_status` nchar(1) NOT NULL,
	`user_id` nvarchar(20) NOT NULL,
	`last_update` datetime(3) NOT NULL,
	`description_en` nvarchar(50) NULL,
	`description_ar` nvarchar(50) NULL,
 CONSTRAINT `PK_m_subscription` PRIMARY KEY
(
	`id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_time_logs]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_time_logs(
	`logid` numeric(18, 0) AUTO_INCREMENT NOT NULL,
	`company_id` varchar(3) NOT NULL,
	`monthyear_id` varchar(20) NOT NULL,
	`mc_no` varchar(20) NOT NULL,
	`logindate` datetime(3) NOT NULL,
	`state` varchar(2) NOT NULL,
	`location` varchar(20) NULL,
	`machine_id` varchar(20) NULL,
	`update_status` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
	`modify_state` varchar(2) NULL,
	`modify_logindate` datetime(3) NULL,
	`remarks` varchar(100) NULL,
	`from_logindate` datetime(3) NULL,
	`attendance_id` numeric(18, 0) NOT NULL,
 CONSTRAINT `PK_m_time_logs` PRIMARY KEY
(
	`logid` ASC,
	`company_id` ASC,
	`monthyear_id` ASC,
	`mc_no` ASC,
	`logindate` ASC,
	`state` ASC,
	`attendance_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_timelog_periods]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_timelog_periods(
	`period_id` numeric(18, 0) AUTO_INCREMENT NOT NULL,
	`company_id` varchar(3) NOT NULL,
	`monthyear_id` varchar(10) NOT NULL,
	`fromdate` datetime(3) NOT NULL,
	`todate` datetime(3) NOT NULL,
	`update_status` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `PK_m_timelog_periods` PRIMARY KEY
(
	`monthyear_id` ASC,
	`fromdate` ASC,
	`todate` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_timeshifts]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_timeshifts(
	`company_id` varchar(3) NOT NULL,
	`shiftid` varchar(3) NOT NULL,
	`shiftname_en` varchar(50) NULL,
	`shiftname_ar` varchar(50) NULL,
	`sch1` varchar(3) NULL,
	`sch2` varchar(3) NULL,
	`sch3` varchar(3) NULL,
	`sch4` varchar(3) NULL,
	`sch5` varchar(3) NULL,
	`sch6` varchar(3) NULL,
	`sch7` varchar(3) NULL,
	`sch8` varchar(3) NULL,
	`sch9` varchar(3) NULL,
	`sch10` varchar(3) NULL,
	`sch11` varchar(3) NULL,
	`sch12` varchar(3) NULL,
	`cycle` int NULL,
	`units` varchar(1) NULL,
	`update_status` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `PK_m_timeshifts` PRIMARY KEY
(
	`company_id` ASC,
	`shiftid` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_timeshiftschedule]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_timeshiftschedule(
	`company_id` varchar(3) NOT NULL,
	`shiftschedid` numeric(18, 0) AUTO_INCREMENT NOT NULL,
	`shiftid` varchar(30) NOT NULL,
	`sched_id` varchar(3) NOT NULL,
	`workday` varchar(80) NOT NULL,
	`update_status` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
	`format` nvarchar(3) NULL,
	`from_date` datetime(3) NULL,
	`to_date` datetime(3) NULL,
	`from_date_g` datetime(3) NULL,
	`to_date_g` datetime(3) NULL,
	`from_date_h` nvarchar(10) NULL,
	`to_date_h` nvarchar(10) NULL,
 CONSTRAINT `PK_m_timeshiftschedule` PRIMARY KEY
(
	`company_id` ASC,
	`shiftschedid` ASC,
	`shiftid` ASC,
	`sched_id` ASC,
	`workday` ASC
)
);
/* SQLINES DEMO *** le [dbo].[m_timetable]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE m_timetable(
	`company_id` varchar(3) NOT NULL,
	`sched_id` varchar(3) NOT NULL,
	`schedname_en` varchar(50) NOT NULL,
	`schedname_ar` varchar(50) NOT NULL,
	`starttime` datetime(3) NOT NULL,
	`endtime` datetime(3) NOT NULL,
	`lateminutes` int NULL,
	`earlyminute` numeric(10, 2) NULL,
	`checkin` int NULL,
	`checkout` int NULL,
	`update_status` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
	`overtime` varchar(1) NULL,
	`flex_time` varchar(1) NULL,
	`hpd` numeric(10, 2) NULL,
	`dayoff` numeric(18, 2) NULL,
	`cosched_id` nvarchar(7) NULL,
	`ignore_aw` varchar(1) NULL,
	`absent_factor` numeric(9, 2) NULL,
	`inbegin` datetime(3) NULL,
	`inend` datetime(3) NULL,
	`outbegin` datetime(3) NULL,
	`outend` datetime(3) NULL,
	`extramins_overtime` varchar(1) NULL,
	`no_log_penalty` numeric(18, 2) NULL,
	`monthly_grace_period` numeric(18, 2) NULL,
	`no_late` varchar(1) NULL,
	`no_absent` varchar(1) NULL,
	`no_ot` varchar(1) NULL,
 CONSTRAINT `PK_m_timetable` PRIMARY KEY
(
	`company_id` ASC,
	`sched_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[messages]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE messages(
	`msgid` varchar(40) NOT NULL,
	`msgtitle` varchar(255) NOT NULL,
	`msgtext` varchar(255) NOT NULL,
	`msgicon` varchar(12) NOT NULL,
	`msgbutton` varchar(17) NOT NULL,
	`msgdefaultbutton` int NOT NULL,
	`msgseverity` int NOT NULL,
	`msgprint` varchar(1) NOT NULL,
	`msguserinput` varchar(1) NOT NULL,
 CONSTRAINT `messages_PK` PRIMARY KEY
(
	`msgid` ASC
)
);
/* SQLINES DEMO *** le [dbo].[pbcatcol]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE pbcatcol(
	`pbc_tnam` varchar(129) NOT NULL,
	`pbc_tid` int NULL,
	`pbc_ownr` varchar(129) NOT NULL,
	`pbc_cnam` varchar(129) NOT NULL,
	`pbc_cid` smallint NULL,
	`pbc_labl` varchar(254) NULL,
	`pbc_lpos` smallint NULL,
	`pbc_hdr` varchar(254) NULL,
	`pbc_hpos` smallint NULL,
	`pbc_jtfy` smallint NULL,
	`pbc_mask` varchar(31) NULL,
	`pbc_case` smallint NULL,
	`pbc_hght` smallint NULL,
	`pbc_wdth` smallint NULL,
	`pbc_ptrn` varchar(31) NULL,
	`pbc_bmap` varchar(1) NULL,
	`pbc_init` varchar(254) NULL,
	`pbc_cmnt` varchar(254) NULL,
	`pbc_edit` varchar(31) NULL,
	`pbc_tag` varchar(254) NULL
);
/* SQLINES DEMO *** le [dbo].[pbcatedt]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE pbcatedt(
	`pbe_name` varchar(30) NOT NULL,
	`pbe_edit` varchar(254) NULL,
	`pbe_type` smallint NULL,
	`pbe_cntr` int NULL,
	`pbe_seqn` smallint NOT NULL,
	`pbe_flag` int NULL,
	`pbe_work` varchar(32) NULL
);
/* SQLINES DEMO *** le [dbo].[pbcatfmt]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE pbcatfmt(
	`pbf_name` varchar(30) NOT NULL,
	`pbf_frmt` varchar(254) NULL,
	`pbf_type` smallint NULL,
	`pbf_cntr` int NULL
);
/* SQLINES DEMO *** le [dbo].[pbcattbl]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE pbcattbl(
	`pbt_tnam` varchar(129) NOT NULL,
	`pbt_tid` int NULL,
	`pbt_ownr` varchar(129) NOT NULL,
	`pbd_fhgt` smallint NULL,
	`pbd_fwgt` smallint NULL,
	`pbd_fitl` varchar(1) NULL,
	`pbd_funl` varchar(1) NULL,
	`pbd_fchr` smallint NULL,
	`pbd_fptc` smallint NULL,
	`pbd_ffce` varchar(18) NULL,
	`pbh_fhgt` smallint NULL,
	`pbh_fwgt` smallint NULL,
	`pbh_fitl` varchar(1) NULL,
	`pbh_funl` varchar(1) NULL,
	`pbh_fchr` smallint NULL,
	`pbh_fptc` smallint NULL,
	`pbh_ffce` varchar(18) NULL,
	`pbl_fhgt` smallint NULL,
	`pbl_fwgt` smallint NULL,
	`pbl_fitl` varchar(1) NULL,
	`pbl_funl` varchar(1) NULL,
	`pbl_fchr` smallint NULL,
	`pbl_fptc` smallint NULL,
	`pbl_ffce` varchar(18) NULL,
	`pbt_cmnt` varchar(254) NULL
);
/* SQLINES DEMO *** le [dbo].[pbcatvld]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE pbcatvld(
	`pbv_name` varchar(30) NOT NULL,
	`pbv_vald` varchar(254) NULL,
	`pbv_type` smallint NULL,
	`pbv_cntr` int NULL,
	`pbv_msg` varchar(254) NULL
);
/* SQLINES DEMO *** le [dbo].[rs_lastcommit]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE rs_lastcommit(
	`origin` int NOT NULL,
	`origin_qid` binary(36) NULL,
	`secondary_qid` binary(36) NULL,
	`origin_time` datetime(3) NULL,
	`commit_time` datetime(3) NULL
);
/* SQLINES DEMO *** le [dbo].[rs_threads]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE rs_threads(
	`id` int NOT NULL,
	`seq` int NULL
);
/* SQLINES DEMO *** le [dbo].[sms_empinfo_temp]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE sms_empinfo_temp(
	`datetoday` nvarchar(11) NULL,
	`datetoday_h` nvarchar(11) NULL,
	`employee_id` varchar(20) NULL,
	`designation` varchar(40) NULL,
	`designation_en` varchar(40) NOT NULL,
	`country` varchar(40) NULL,
	`country_en` varchar(40) NULL,
	`nationality` varchar(40) NULL,
	`nationality_en` varchar(40) NULL,
	`religion` varchar(30) NULL,
	`religion_en` varchar(30) NULL,
	`company` varchar(50) NULL,
	`company_en` varchar(50) NULL,
	`branch` varchar(50) NULL,
	`branch_en` varchar(50) NULL,
	`department` varchar(40) NULL,
	`department_en` varchar(40) NULL,
	`sponsor_name` varchar(40) NULL,
	`sponsor_name_en` varchar(40) NULL,
	`firstname` varchar(45) NULL,
	`firstname_en` varchar(45) NULL,
	`middlename` varchar(45) NULL,
	`middlename_en` varchar(45) NULL,
	`lastname` varchar(45) NULL,
	`lastname_en` varchar(45) NULL,
	`civil_status` varchar(200) NULL,
	`civil_status_en` varchar(200) NULL,
	`gender` varchar(200) NULL,
	`gender_en` varchar(200) NULL,
	`birthdate` nvarchar(11) NULL,
	`birthplace` varchar(20) NULL,
	`email_address` varchar(60) NULL,
	`iqama_position` varchar(40) NULL,
	`iqama_position_en` varchar(40) NULL,
	`remark1` varchar(750) NULL,
	`remark2` varchar(750) NULL,
	`hireddate` nvarchar(11) NULL,
	`city` varchar(30) NULL,
	`city_en` varchar(30) NULL,
	`contract` varchar(200) NULL,
	`contract_en` varchar(200) NULL,
	`insurance` varchar(3) NULL,
	`iqama_no` varchar(15) NULL,
	`mobile_no` nvarchar(15) NULL,
	`section` varchar(40) NULL,
	`section_en` varchar(40) NULL,
	`grandname` varchar(30) NULL,
	`grandname_en` varchar(30) NULL,
	`basic_salary` nvarchar(20) NULL,
	`housing` nvarchar(20) NULL,
	`transpo` nvarchar(20) NULL,
	`monthly_pay` nvarchar(20) NULL,
	`fixed_benefits` nvarchar(20) NULL,
	`ticket_allow` nvarchar(20) NULL,
	`medical_ins` nvarchar(20) NULL,
	`loan` nvarchar(20) NULL,
	`car_loan` nvarchar(20) NULL,
	`car_ins` nvarchar(20) NULL,
	`lwop` nvarchar(20) NULL
);
/* SQLINES DEMO *** le [dbo].[sms_message]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE sms_message(
	`appid` char(3) NOT NULL,
	`transid` nvarchar(5) NOT NULL,
	`msgid` nvarchar(30) NOT NULL,
	`message` Nvarchar(475) NOT NULL,
	`mobile` nchar(20) NOT NULL,
	`status` nvarchar(10) NOT NULL,
	`message_type` char(2) NOT NULL,
	`created` datetime(3) NOT NULL,
	`last_update` datetime(3) NOT NULL,
	`msginfo` nvarchar(100) NULL,
	`contactinfo` nchar(60) NULL,
	`msgstatusid` varchar(10) NULL,
	`emp_id` varchar(20) NULL,
	`seq_no` numeric(18, 0) AUTO_INCREMENT NOT NULL,
	`transsource` nchar(30) NULL,
 CONSTRAINT `PK_sms_message` PRIMARY KEY
(
	`seq_no` ASC,
	`appid` ASC,
	`transid` ASC,
	`msgid` ASC
)
);
/* SQLINES DEMO *** le [dbo].[sms_template_dtl]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE sms_template_dtl(
	`template_id` varchar(5) NOT NULL,
	`seq_id` int NOT NULL,
	`entity_name_en` varchar(60) NOT NULL,
	`entity_name_ar` varchar(60) NOT NULL,
	`entity_type` char(1) NOT NULL,
	`text_en` nvarchar(255) NOT NULL,
	`text_ar` nvarchar(255) NOT NULL,
	`payrollentity_id` varchar(3) NULL,
	`payrollentitytype_id` varchar(1) NULL,
	`empinfocolumn_name` varchar(60) NULL,
	`user_id` nvarchar(20) NOT NULL,
	`last_update` datetime(3) NOT NULL,
 CONSTRAINT `PK_sms_template_dtl` PRIMARY KEY
(
	`template_id` ASC,
	`seq_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[sms_template_hdr]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE sms_template_hdr(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`template_id` varchar(5) NOT NULL,
	`template_name_en` varchar(60) NOT NULL,
	`template_name_ar` varchar(60) NOT NULL,
	`template_type` char(1) NOT NULL,
	`template_status` char(1) NOT NULL,
	`user_id` nvarchar(20) NOT NULL,
	`last_update` datetime(3) NOT NULL,
	`update_status` char(1) NOT NULL,
	`windowid` decimal(4, 0) NULL,
	`windowobjectid` decimal(4, 0) NULL,
	`windowobject_en` varchar(60) NULL,
	`windowobject_ar` varchar(60) NULL,
	`auto` char(1) NULL,
	`both` char(1) NULL,
	`transtatus` nvarchar(5) NULL,
 CONSTRAINT `PK_sms_template_hdr` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`template_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[sms_unicode_value]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE sms_unicode_value(
	`HEX` nvarchar(20) NOT NULL,
	`UNICODE` nvarchar(20) NULL,
	`CHARACTER` nvarchar(50) NULL,
 CONSTRAINT `PK_sms_unicode_value` PRIMARY KEY
(
	`HEX` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_applicationform]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_applicationform(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`dept_id` varchar(4) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`apptype_srno` bigint NOT NULL,
	`apptype` char(3) NOT NULL,
	`appsubtype` char(3) NOT NULL,
	`appdate_g` datetime(3) NOT NULL,
	`appdate_h` nvarchar(10) NOT NULL,
	`doc_id` nvarchar(5) NULL,
	`sub_doc_id` nvarchar(15) NULL,
	`doc_no` nvarchar(15) NULL,
	`doc_expirydth` nvarchar(10) NULL,
	`doc_period` int NULL,
	`iqamano` char(15) NULL,
	`iqamaexpdt` char(10) NULL,
	`sponsorno` char(15) NULL,
	`portno` char(15) NULL,
	`portentrydt` char(10) NULL,
	`portentry` nvarchar(15) NULL,
	`sponsortype` char(1) NULL,
	`sponsorname` nvarchar(35) NULL,
	`sponsoraddress` nvarchar(35) NULL,
	`telno` nvarchar(15) NULL,
	`sponsortype2` char(1) NULL,
	`sponsorname2` nvarchar(35) NULL,
	`sponsoraddress2` nvarchar(35) NULL,
	`sponsortelno2` nvarchar(15) NULL,
	`sponsorno_2` char(10) NULL,
	`last_update` datetime(3) NULL,
	`user_id` nvarchar(20) NULL,
	`update_status` varchar(1) NULL,
	`emp_dep_id` varchar(10) NULL,
 CONSTRAINT `PK_t_applicationform` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`dept_id` ASC,
	`emp_id` ASC,
	`apptype_srno` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_att_uploadfromcsv]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_att_uploadfromcsv(
	`trans_id` numeric(18, 0) AUTO_INCREMENT NOT NULL,
	`company_id` nvarchar(3) NOT NULL,
	`branch_id` nvarchar(3) NOT NULL,
	`emp_id` nvarchar(20) NOT NULL,
	`monthyear` nvarchar(6) NOT NULL,
	`trans_gdate` datetime(3) NOT NULL,
	`trans_hdate` nvarchar(10) NOT NULL,
	`absentdays` numeric(18, 2) NOT NULL,
	`late` numeric(18, 2) NOT NULL,
	`vac_hours` numeric(18, 2) NOT NULL,
	`overtime` numeric(18, 2) NOT NULL,
	`user_id` nvarchar(20) NOT NULL,
	`last_update` datetime(3) NOT NULL,
	`update_status` nvarchar(1) NOT NULL,
 CONSTRAINT `PK_t_att_uploadfromcsv` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`emp_id` ASC,
	`monthyear` ASC,
	`trans_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_attendance_genemp]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_attendance_genemp(
	`monthyear_id` varchar(10) NOT NULL,
	`dept_id` varchar(3) NOT NULL,
	`sect_id` varchar(3) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
 CONSTRAINT `PK_t_attendance_genemp` PRIMARY KEY
(
	`monthyear_id` ASC,
	`dept_id` ASC,
	`sect_id` ASC,
	`emp_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_bended_main_remarks]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_bended_main_remarks(
	`company_id` nvarchar(3) NOT NULL,
	`branch_id` nvarchar(3) NOT NULL,
	`monthyear_id` nvarchar(6) NOT NULL,
	`remarks1` nvarchar(255) NULL,
	`remarks2` nvarchar(255) NULL,
 CONSTRAINT `PK_t_bended_main_remarks` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`monthyear_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_benefit_maintenance]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_benefit_maintenance(
	`company_id` nvarchar(3) NOT NULL,
	`branch_id` nvarchar(3) NOT NULL,
	`emp_id` nvarchar(20) NOT NULL,
	`contract_no` nvarchar(3) NOT NULL,
	`monthyear_id` nvarchar(6) NOT NULL,
	`benefit_id` nvarchar(3) NOT NULL,
	`factor` numeric(18, 5) NULL,
	`benefit_amt` numeric(18, 5) NULL,
	`payflag` char(1) NULL,
	`currentflag` char(1) NULL,
	`postedflag` char(1) NULL,
	`update_status` char(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `PK_t_benefit_maintenance` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`emp_id` ASC,
	`contract_no` ASC,
	`monthyear_id` ASC,
	`benefit_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_benefits]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_benefits(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`benefit_id` varchar(3) NOT NULL,
	`contractno` varchar(3) NOT NULL,
	`benefit_amt` decimal(18, 5) NULL,
	`benefiteffectivedate_g` datetime(3) NULL,
	`benefiteffectivedate_h` varchar(10) NULL,
	`benefitenddate` datetime(3) NULL,
	`benefitenddate_h` varchar(10) NULL,
	`benefitremark` varchar(200) NULL,
	`paymentscheme` varchar(2) NULL,
	`finalsetflag` varchar(1) NULL,
	`moneyvalue` varchar(1) NULL,
	`noofdays` int NULL,
	`user_id` varchar(20) NULL,
	`update_status` varchar(1) NULL,
	`last_update` datetime(3) NULL,
	`return_towork` char(1) NULL,
	`monthly_pay` char(1) NULL,
	`absence_pay` char(1) NULL,
	`late_pay` char(1) NULL,
 CONSTRAINT `t_benefits_PK` PRIMARY KEY
(
	`emp_id` ASC,
	`company_id` ASC,
	`branch_id` ASC,
	`benefit_id` ASC,
	`contractno` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_costcenter_based_timings]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_costcenter_based_timings(
	`timing_id` numeric(18, 0) AUTO_INCREMENT NOT NULL,
	`company_id` char(4) NOT NULL,
	`branch_id` char(4) NOT NULL,
	`emp_id` char(20) NOT NULL,
	`monthyear_id` char(6) NOT NULL,
	`trans_gdate` datetime(3) NOT NULL,
	`trans_hdate` char(10) NOT NULL,
	`costcenter_id` char(4) NOT NULL,
	`contract_dailyhrs` numeric(18, 2) NULL,
	`is_workhrs` char(1) NULL,
	`work_total` numeric(18, 2) NULL,
	`absent_hrs` numeric(18, 2) NULL,
	`overtime_hrs` numeric(18, 2) NULL,
	`state` char(1) NULL,
	`update_status` char(1) NULL,
	`user_id` char(20) NULL,
	`last_update` datetime(3) NULL,
	`posttopayroll` nvarchar(1) NULL,
 CONSTRAINT `PK_t_costcenter_based_timings` PRIMARY KEY
(
	`timing_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_deduction_maintenance]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_deduction_maintenance(
	`company_id` nvarchar(3) NOT NULL,
	`branch_id` nvarchar(3) NOT NULL,
	`emp_id` nvarchar(20) NOT NULL,
	`contract_no` nvarchar(3) NOT NULL,
	`monthyear_id` nvarchar(6) NOT NULL,
	`deduction_id` nvarchar(3) NOT NULL,
	`factor` numeric(18, 2) NULL,
	`deduction_amt` numeric(18, 2) NULL,
	`payflag` char(1) NULL,
	`currentflag` char(1) NULL,
	`postedflag` char(1) NULL,
	`update_status` char(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `PK_t_deduction_maintenance` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`emp_id` ASC,
	`contract_no` ASC,
	`monthyear_id` ASC,
	`deduction_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_deductions]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_deductions(
	`emp_id` varchar(20) NOT NULL,
	`deduction_id` varchar(3) NOT NULL,
	`deduction_amt` decimal(12, 2) NULL,
	`deduction_startdate` datetime(3) NULL,
	`deduction_enddate` datetime(3) NULL,
	`no_of_payments` int NULL,
	`deduction_remarks` varchar(100) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`tot_amt_tobe_paid` decimal(12, 2) NULL,
	`tot_amt_paid` decimal(12, 2) NULL,
	`loan_dt` datetime(3) NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`deduction_startdate_h` varchar(10) NULL,
	`deduction_enddate_h` varchar(10) NULL,
	`loan_dt_h` varchar(10) NULL,
	`deduction_no` varchar(3) NOT NULL,
	`contractno` varchar(3) NOT NULL,
	`paidflag` varchar(3) NULL,
	`to_be_paid` decimal(9, 2) NULL,
	`leave_no` varchar(3) NULL,
	`req_no` int NULL,
	`created_date` datetime(3) NULL,
 CONSTRAINT `t_deductions_PK` PRIMARY KEY
(
	`emp_id` ASC,
	`deduction_id` ASC,
	`company_id` ASC,
	`branch_id` ASC,
	`deduction_no` ASC,
	`contractno` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_delegate_approval]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_delegate_approval(
	`company_id` nvarchar(4) NOT NULL,
	`branch_id` nvarchar(4) NOT NULL,
	`request_type` nvarchar(3) NOT NULL,
	`user_id` nvarchar(20) NOT NULL,
	`delegate_user` nvarchar(20) NULL,
	`from_date` datetime(3) NULL,
	`from_date_h` nvarchar(10) NULL,
	`to_date` datetime(3) NULL,
	`to_date_h` nvarchar(10) NULL,
	`last_update` datetime(3) NULL,
	`update_status` nvarchar(1) NULL,
 CONSTRAINT `PK_t_delegate_approval_1` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`request_type` ASC,
	`user_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_dependents]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_dependents(
	`emp_id` varchar(20) NOT NULL,
	`beneficiary_id` varchar(3) NOT NULL,
	`emp_dep_id` varchar(5) NOT NULL,
	`dep_name_eng` varchar(40) NULL,
	`dep_name_arab` varchar(40) NULL,
	`dep_computer_no` varchar(15) NULL,
	`birthdate` Datetime NULL,
	`address_tel` varchar(40) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`birthdate_h` varchar(10) NULL,
	`dep_fname_eng` varchar(40) NULL,
	`dep_mname_eng` varchar(40) NULL,
	`dep_lname_eng` varchar(40) NULL,
	`dep_gname_eng` varchar(40) NULL,
	`dep_mname_arab` varchar(40) NULL,
	`dep_lname_arab` varchar(40) NULL,
	`dep_gname_arab` varchar(40) NULL,
	`picturename` varchar(150) NULL,
 CONSTRAINT `t_dependents_PK` PRIMARY KEY
(
	`emp_id` ASC,
	`beneficiary_id` ASC,
	`emp_dep_id` ASC,
	`company_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_documents]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_documents(
	`emp_id` varchar(20) NOT NULL,
	`doc_id` varchar(5) NOT NULL,
	`doc_no` varchar(15) NULL,
	`place_issued` varchar(15) NULL,
	`date_issued` Datetime NULL,
	`expiration_date` Datetime NULL,
	`renew_flag` varchar(1) NULL,
	`issuing_authority` varchar(40) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`dept_id` varchar(3) NULL,
	`noof_ren` int NULL,
 CONSTRAINT `t_documents_PK` PRIMARY KEY
(
	`emp_id` ASC,
	`doc_id` ASC,
	`company_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_education]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_education(
	`emp_id` varchar(20) NOT NULL,
	`educ_id` varchar(4) NOT NULL,
	`educ_from` Datetime NULL,
	`educ_to` Datetime NULL,
	`school` varchar(100) NULL,
	`course` varchar(100) NULL,
	`school_address` varchar(100) NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`educ_no` varchar(3) NOT NULL,
	`educ_from_h` varchar(10) NULL,
	`educ_to_h` varchar(10) NULL,
	`update_status` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `t_education_PK` PRIMARY KEY
(
	`emp_id` ASC,
	`educ_id` ASC,
	`company_id` ASC,
	`branch_id` ASC,
	`educ_no` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_emp_address]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_emp_address(
	`emp_id` varchar(20) NOT NULL,
	`addr_id` varchar(3) NOT NULL,
	`address_1` varchar(200) NULL,
	`address_2` varchar(200) NULL,
	`address_3` varchar(30) NULL,
	`tel_no` varchar(30) NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`loc_address_1` varchar(150) NULL,
	`loc_address_2` varchar(150) NULL,
	`loc_address_3` varchar(150) NULL,
	`home_address_1` varchar(150) NULL,
	`home_address_2` varchar(150) NULL,
	`home_address_3` varchar(150) NULL,
	`local_country` varchar(3) NULL,
	`home_country` varchar(3) NULL,
	`local_city` varchar(3) NULL,
	`home_city` varchar(3) NULL,
	`local_postal_code` varchar(100) NULL,
	`home_postal_code` varchar(100) NULL,
	`local_mobile` varchar(30) NULL,
	`home_mobile` varchar(30) NULL,
	`local_tel` varchar(30) NULL,
	`home_tel` varchar(30) NULL,
 CONSTRAINT `t_emp_address_PK` PRIMARY KEY
(
	`emp_id` ASC,
	`addr_id` ASC,
	`company_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_employee_gosi]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_employee_gosi(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`gosi_no` varchar(15) NULL,
	`salary_for_gosi` decimal(12, 2) NULL,
	`gosi_amt_insalary` decimal(12, 2) NULL,
	`remarks` varchar(100) NULL,
	`date_commence_g` datetime(3) NULL,
	`date_commence_h` varchar(10) NULL,
	`user_id` varchar(20) NULL,
	`update_status` varchar(2) NULL,
	`last_update` datetime(3) NULL,
	`subscription_no` varchar(20) NULL,
	`nopayroll` nvarchar(1) NULL,
 CONSTRAINT `t_employee_gosi_PK` PRIMARY KEY
(
	`emp_id` ASC,
	`company_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_employee_overtime]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_employee_overtime(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`dept_id` varchar(3) NOT NULL,
	`section_id` varchar(3) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`contract_no` varchar(3) NOT NULL,
	`monthyear_id` varchar(10) NOT NULL,
	`overtime_id` varchar(10) NOT NULL,
	`overtime_amt` decimal(12, 5) NULL,
	`overtime_date_g` datetime(3) NULL,
	`overtime_date_h` varchar(10) NULL,
	`payflag` char(1) NULL,
	`currentflag` char(1) NULL,
	`postedflag` char(1) NULL,
	`overtimehrs_percentage` decimal(12, 5) NULL,
	`overtimehrs` decimal(18, 2) NULL,
	`noofdaysinmonth` decimal(18, 2) NULL,
	`calc_flag` char(1) NULL,
	`current_salary` decimal(18, 5) NULL,
	`update_status` char(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`payroll_monthyear` varchar(10) NULL,
 CONSTRAINT `PK_t_employee_overtime` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`dept_id` ASC,
	`section_id` ASC,
	`emp_id` ASC,
	`contract_no` ASC,
	`monthyear_id` ASC,
	`overtime_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_employment]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_employment(
	`emp_id` varchar(20) NOT NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`contractno` varchar(3) NOT NULL,
	`startdate` Datetime NULL,
	`enddate` Datetime NULL,
	`contractduration` decimal(2, 0) NULL,
	`timeunitduration` varchar(1) NULL,
	`currentflag` varchar(1) NULL,
	`contractstatus` varchar(2) NULL,
	`contracttype` varchar(3) NULL,
	`contractfamilyflag` varchar(1) NULL,
	`terminateflag` varchar(1) NULL,
	`terminationdate` Datetime NULL,
	`terminationnoticedate` Datetime NULL,
	`terminationeffectivedate` Datetime NULL,
	`contractcreatedby` varchar(30) NULL,
	`contractdate` Datetime NULL,
	`terminatedby` varchar(30) NULL,
	`terminatedwhen` Datetime NULL,
	`terminationtype` varchar(2) NULL,
	`contractremark` varchar(200) NULL,
	`terminationremark` varchar(200) NULL,
	`startdate_h` varchar(10) NULL,
	`enddate_h` varchar(10) NULL,
	`terminationdate_h` varchar(10) NULL,
	`terminationnoticedate_h` varchar(10) NULL,
	`terminationeffectivedate_h` varchar(10) NULL,
	`terminatedwhen_h` varchar(10) NULL,
	`contractcreatedby_h` varchar(10) NULL,
	`finalsetflag` varchar(1) NULL,
	`bankaccountno` varchar(50) NULL,
	`bankid` varchar(3) NULL,
	`vacationdays` int NULL,
	`user_id` varchar(20) NULL,
	`update_status` varchar(1) NULL,
	`last_update` Datetime NULL,
	`work_city` varchar(3) NULL,
	`vacationduedate` Datetime NULL,
	`vacationduedate_h` varchar(10) NULL,
	`vacation_monthdue` numeric(10, 2) NULL,
	`renew` int NULL,
	`rank` varchar(5) NULL,
	`workhrs` int NULL,
	`nologin` varchar(1) NULL,
 CONSTRAINT `t_employment_PK` PRIMARY KEY
(
	`emp_id` ASC,
	`company_id` ASC,
	`branch_id` ASC,
	`contractno` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_evaluation]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_evaluation(
	`emp_id` varchar(20) NOT NULL,
	`eval_id` varchar(3) NOT NULL,
	`rating1` varchar(15) NULL,
	`rating2` varchar(15) NULL,
	`rating3` varchar(15) NULL,
	`rating4` varchar(15) NULL,
	`com_recom` varchar(150) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`eval_no` varchar(3) NOT NULL,
	`eval_from` Datetime NULL,
	`eval_to` Datetime NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`eval_from_h` varchar(10) NULL,
	`eval_to_h` varchar(10) NULL,
	`contractno` varchar(3) NOT NULL,
	`rate_value` int NULL,
	`max_mark` int NULL,
 CONSTRAINT `t_evaluation_PK` PRIMARY KEY
(
	`emp_id` ASC,
	`eval_id` ASC,
	`eval_no` ASC,
	`company_id` ASC,
	`branch_id` ASC,
	`contractno` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_evaluation_mstr]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_evaluation_mstr(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`contractno` varchar(3) NOT NULL,
	`eval_no` char(3) NOT NULL,
	`eval_from` Datetime NOT NULL,
	`eval_to` Datetime NOT NULL,
	`eval_from_h` varchar(10) NULL,
	`eval_to_h` varchar(10) NULL,
	`eval_created` Datetime NOT NULL,
	`eval_created_h` varchar(10) NULL,
	`evaltype_id` varchar(3) NOT NULL,
	`remarks` varchar(256) NULL,
	`achievements` varchar(256) NULL,
	`recommendations` varchar(256) NULL,
	`emp_notes` varchar(256) NULL,
	`evaluator_emp_id` varchar(20) NOT NULL,
	`evaluation_dt` Datetime NULL,
	`evaluation_dt_h` varchar(10) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `PK_t_evaluation_mstr` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`emp_id` ASC,
	`contractno` ASC,
	`eval_no` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_experience]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_experience(
	`emp_id` varchar(20) NOT NULL,
	`ex_id` varchar(3) NOT NULL,
	`ex_co` varchar(45) NULL,
	`ex_address` varchar(60) NULL,
	`ex_pos` varchar(30) NULL,
	`ex_from` Datetime NULL,
	`ex_to` Datetime NULL,
	`ex_salary` varchar(10) NULL,
	`reason_forleaving` varchar(60) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`ex_from_h` varchar(10) NULL,
	`ex_to_h` varchar(10) NULL,
 CONSTRAINT `t_experience_PK` PRIMARY KEY
(
	`emp_id` ASC,
	`ex_id` ASC,
	`company_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_image_path]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_image_path(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`doc_id` varchar(4) NOT NULL,
	`sub_doc_id` varchar(4) NOT NULL,
	`image_no` int NOT NULL,
	`image_filename` varchar(100) NULL,
	`image_type` varchar(2) NULL,
 CONSTRAINT `t_image_path_PK` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`emp_id` ASC,
	`doc_id` ASC,
	`sub_doc_id` ASC,
	`image_no` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_issuedbenefits]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_issuedbenefits(
	`company_id` nvarchar(4) NOT NULL,
	`branch_id` nvarchar(4) NOT NULL,
	`emp_id` char(20) NOT NULL,
	`benefit_id` char(3) NOT NULL,
	`contractno` char(3) NOT NULL,
	`fiscalyear` char(4) NOT NULL,
	`period` char(2) NOT NULL,
	`benefit_amt` decimal(18, 5) NULL,
	`dept_id` nvarchar(3) NULL,
	`section_id` nvarchar(3) NULL,
	`paydate_g` datetime(3) NULL,
	`paydate_h` nvarchar(10) NULL,
	`reference` nvarchar(20) NULL,
	`user_id` varchar(20) NULL,
	`update_status` varchar(1) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `PK_t_issuedbenefits` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`emp_id` ASC,
	`benefit_id` ASC,
	`contractno` ASC,
	`fiscalyear` ASC,
	`period` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_leave]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_leave(
	`emp_id` varchar(20) NOT NULL,
	`leave_id` varchar(10) NOT NULL,
	`leave_remark` varchar(150) NULL,
	`leave_duration` decimal(10, 3) NULL,
	`leave_startdate` Datetime NULL,
	`leave_enddate` Datetime NULL,
	`leave_balance` decimal(10, 3) NULL,
	`leave_backtowork_date` datetime(3) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` Datetime NULL,
	`leave_no` varchar(3) NOT NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`dept_id` varchar(3) NOT NULL,
	`leaveapplication_dt` Datetime NULL,
	`leaveapplication_dt_h` varchar(10) NULL,
	`leave_startdate_h` varchar(10) NULL,
	`leave_enddate_h` varchar(10) NULL,
	`leave_backtowork_date_h` varchar(10) NULL,
	`reentryexitvisa_no` varchar(20) NULL,
	`leavestatus` varchar(1) NULL,
	`contractno` varchar(3) NOT NULL,
	`vacationvalue` decimal(12, 2) NULL,
	`ticketvalue` decimal(12, 2) NULL,
	`endservicevalue` decimal(12, 2) NULL,
	`payrollflag` varchar(1) NULL,
	`salarybeforeleave` decimal(12, 2) NULL,
	`vacationvaluepaid` decimal(12, 2) NULL,
	`ticketvaluepaid` decimal(12, 2) NULL,
	`endservicevaluepaid` decimal(12, 2) NULL,
	`unused_days` decimal(10, 3) NULL,
	`begbal_setup` char(1) NULL,
	`vacationduedate` Datetime NULL,
	`vacationduedate_h` varchar(10) NULL,
	`vacationdays` decimal(10, 3) NULL,
	`leavedue_days` decimal(10, 3) NULL,
	`req_no` int NULL,
	`daysreq` decimal(10, 3) NULL,
	`isvduepaid` varchar(1) NULL,
	`monthlysalary` decimal(18, 2) NULL,
	`fullsalary` varchar(1) NULL,
	`period_covered` char(1) NULL,
	`workfrom` datetime(3) NULL,
	`workfrom_h` varchar(10) NULL,
	`workto` datetime(3) NULL,
	`workto_h` varchar(10) NULL,
	`paiddays` numeric(18, 2) NULL,
	`grantdays` numeric(18, 2) NULL,
	`monthdue` numeric(18, 2) NULL,
	`date_created` datetime(3) NULL,
	`remaining_balance` numeric(18, 2) NULL,
 CONSTRAINT `PK_t_leave` PRIMARY KEY
(
	`emp_id` ASC,
	`leave_id` ASC,
	`leave_no` ASC,
	`company_id` ASC,
	`branch_id` ASC,
	`dept_id` ASC,
	`contractno` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_leave_begbal]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_leave_begbal(
	`emp_id` varchar(20) NOT NULL,
	`leave_duration` numeric(10, 2) NULL,
	`leave_startdate` Datetime NULL,
	`leave_backtowork_date` Datetime NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` Datetime NULL,
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`dept_id` varchar(3) NOT NULL,
	`leave_startdate_h` varchar(10) NULL,
	`leave_backtowork_date_h` varchar(10) NULL,
	`vacationvalue` decimal(12, 2) NULL,
	`ticketvalue` decimal(12, 2) NULL,
	`endservicevalue` decimal(12, 2) NULL,
	`leave_no` varchar(3) NULL,
	`extradays_balance` int NULL,
 CONSTRAINT `PK_t_leave_begbal` PRIMARY KEY
(
	`emp_id` ASC,
	`company_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_leave_deductions]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_leave_deductions(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`contract_no` varchar(3) NOT NULL,
	`leave_no` varchar(10) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`deduction_id` varchar(3) NOT NULL,
	`deduction_no` varchar(3) NOT NULL,
	`empded_no` nvarchar(3) NOT NULL,
	`deduction_amount` decimal(15, 2) NULL,
	`balance_amt` decimal(15, 2) NULL,
	`to_be_paid` decimal(15, 2) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`installment_amt` decimal(15, 2) NULL,
 CONSTRAINT `PK_t_leave_deductions_1` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`contract_no` ASC,
	`leave_no` ASC,
	`emp_id` ASC,
	`deduction_id` ASC,
	`deduction_no` ASC,
	`empded_no` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_modification]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_modification(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`dept_id` varchar(4) NOT NULL,
	`section_id` varchar(4) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`modificationid` varchar(4) NOT NULL,
	`modification_no` int NOT NULL,
	`modificationdate_gr` Datetime NULL,
	`modificationdate_hi` varchar(10) NULL,
	`from_information_en` varchar(100) NULL,
	`to_information_en` varchar(100) NULL,
	`from_value` decimal(20, 4) NULL,
	`to_value` decimal(20, 4) NULL,
	`modification_fromdate_g` Datetime NULL,
	`modification_fromdate_h` varchar(10) NULL,
	`modification_todate_g` Datetime NULL,
	`modification_todate_h` varchar(10) NULL,
	`effectivity_date_g` Datetime NULL,
	`effectivity_date_h` varchar(10) NULL,
	`modified_by` varchar(30) NULL,
	`authorized_by` varchar(30) NULL,
	`flag1` varchar(1) NULL,
	`keynotomodify` varchar(20) NULL,
	`from_information_ar` varchar(100) NULL,
	`to_information_ar` varchar(100) NULL,
	`comments` varchar(200) NULL,
	`user_id` varchar(20) NULL,
	`update_status` varchar(1) NULL,
	`last_update` datetime(3) NULL,
	`doc_id` varchar(5) NULL,
	`subdoc_id` varchar(15) NULL,
	`contract_no` varchar(3) NULL,
 CONSTRAINT `t_modification_PK` PRIMARY KEY
(
	`modificationid` ASC,
	`emp_id` ASC,
	`company_id` ASC,
	`branch_id` ASC,
	`dept_id` ASC,
	`section_id` ASC,
	`modification_no` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_modify_benefitdeduction]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_modify_benefitdeduction(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`modtype` varchar(1) NOT NULL,
	`modificationid` varchar(3) NOT NULL,
	`modificationno` varchar(3) NOT NULL,
	`contractno` varchar(3) NOT NULL,
	`from_value` decimal(12, 2) NULL,
	`to_value` decimal(12, 2) NULL,
	`lastpaymentdate_gr` Datetime NULL,
	`lastpaymentdate_hi` varchar(10) NULL,
	`modificationdate_gr` Datetime NULL,
	`modificationdate_hi` varchar(10) NULL,
	`comments` varchar(100) NULL,
	`update_status` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
	`effectivity_date_gr` Datetime NULL,
	`effectivity_date_hi` varchar(10) NULL,
	`paymentscheme` varchar(2) NULL,
	`moneyvalue` varchar(1) NULL,
	`finalsetflag` varchar(1) NULL,
	`return_towork` char(1) NULL,
	`monthly_pay` char(1) NULL,
	`absence_pay` char(1) NULL,
	`late_pay` char(1) NULL,
 CONSTRAINT `t_modify_benefitdeduction_PK` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`emp_id` ASC,
	`modtype` ASC,
	`modificationid` ASC,
	`modificationno` ASC,
	`contractno` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_payded_details]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_payded_details(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`dept_id` varchar(3) NOT NULL,
	`section_id` varchar(3) NOT NULL,
	`costcenter_id` nvarchar(4) NOT NULL,
	`transfer_no` nvarchar(4) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`contract_no` varchar(3) NOT NULL,
	`monthyear_id` varchar(10) NOT NULL,
	`for_deduction_id` varchar(3) NOT NULL,
	`benefit_id` varchar(3) NOT NULL,
	`benefit_amt` decimal(18, 5) NULL,
 CONSTRAINT `PK_t_payded_details` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`dept_id` ASC,
	`section_id` ASC,
	`costcenter_id` ASC,
	`transfer_no` ASC,
	`emp_id` ASC,
	`contract_no` ASC,
	`monthyear_id` ASC,
	`for_deduction_id` ASC,
	`benefit_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_payroll_benefits]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_payroll_benefits(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`dept_id` varchar(3) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`contract_no` varchar(3) NOT NULL,
	`monthyear_id` varchar(10) NOT NULL,
	`benefit_id` varchar(10) NOT NULL,
	`benefit_amt` decimal(18, 5) NULL,
	`payroll_date_gr` datetime(3) NULL,
	`payroll_date_hi` varchar(10) NULL,
	`payflag` varchar(1) NULL,
	`currentflag` varchar(1) NULL,
	`update_status` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
	`postedflag` varchar(1) NULL,
	`overtimehrs_percentage` decimal(5, 2) NULL,
	`section_id` varchar(3) NOT NULL,
	`from_overtime` varchar(3) NULL,
	`costcenter_id` nvarchar(4) NOT NULL,
	`transfer_no` nvarchar(4) NOT NULL,
 CONSTRAINT `t_payroll_benefits_PK` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`dept_id` ASC,
	`section_id` ASC,
	`emp_id` ASC,
	`contract_no` ASC,
	`monthyear_id` ASC,
	`benefit_id` ASC,
	`costcenter_id` ASC,
	`transfer_no` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_payroll_deductions]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_payroll_deductions(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`dept_id` varchar(3) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`contract_no` varchar(3) NOT NULL,
	`monthyear_id` varchar(10) NOT NULL,
	`deduction_id` varchar(3) NOT NULL,
	`deduction_no` varchar(3) NOT NULL,
	`deduction_amt` decimal(15, 2) NULL,
	`postflag` varchar(1) NULL,
	`currentflag` varchar(1) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`balance_amt` decimal(15, 2) NULL,
	`section_id` varchar(3) NOT NULL,
	`mfactor` decimal(3, 2) NULL,
	`is_amsource` varchar(1) NULL,
	`costcenter_id` nvarchar(4) NOT NULL,
	`transfer_no` nvarchar(4) NOT NULL,
 CONSTRAINT `t_payroll_deductions_PK` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`dept_id` ASC,
	`section_id` ASC,
	`emp_id` ASC,
	`contract_no` ASC,
	`monthyear_id` ASC,
	`deduction_id` ASC,
	`deduction_no` ASC,
	`costcenter_id` ASC,
	`transfer_no` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_payroll_netpay]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_payroll_netpay(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`dept_id` varchar(3) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`contract_no` varchar(3) NOT NULL,
	`monthyear_id` varchar(6) NOT NULL,
	`netpay_amt` decimal(12, 2) NULL,
	`total_benefits` decimal(12, 2) NULL,
	`total_deductions` decimal(12, 2) NULL,
	`currentflag` varchar(1) NULL,
	`postedflag` varchar(1) NULL,
	`remarks` varchar(300) NULL,
	`paymentstatus` varchar(1) NULL,
	`last_update` datetime(3) NULL,
	`user_id` varchar(20) NULL,
	`update_status` varchar(3) NULL,
	`payrolldate_gr` datetime(3) NULL,
	`payrolldate_hi` varchar(10) NULL,
	`section_id` varchar(3) NOT NULL,
	`serial_no` numeric(18, 0) NULL,
	`costcenter_id` nvarchar(4) NOT NULL,
	`transfer_no` nvarchar(4) NOT NULL,
	`bankaccountno` varchar(50) NULL,
	`bankid` varchar(3) NULL,
 CONSTRAINT `t_payroll_netpay_PK` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`dept_id` ASC,
	`section_id` ASC,
	`emp_id` ASC,
	`contract_no` ASC,
	`monthyear_id` ASC,
	`costcenter_id` ASC,
	`transfer_no` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_positionreqlevel]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_positionreqlevel(
	`company_id` nvarchar(4) NOT NULL,
	`branch_id` nvarchar(4) NOT NULL,
	`position_id` nvarchar(3) NOT NULL,
	`reqlevel_id` nvarchar(5) NOT NULL,
	`remarks` nvarchar(255) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `PK_t_positionreqlevel` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`position_id` ASC,
	`reqlevel_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_request]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_request(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`contract_no` varchar(3) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`request_no` numeric(18, 0) AUTO_INCREMENT NOT NULL,
	`request_type` varchar(3) NOT NULL,
	`request_typeid` varchar(10) NULL,
	`current_contract` char(10) NULL,
	`new_contract` char(10) NULL,
	`current_value` decimal(9, 2) NULL,
	`new_value` decimal(9, 2) NULL,
	`request_date` Datetime NULL,
	`request_date_h` varchar(10) NULL,
	`action_date` Datetime NULL,
	`action_date_h` varchar(10) NULL,
	`noofdays` int NULL,
	`startdate` Datetime NULL,
	`startdate_h` varchar(10) NULL,
	`enddate` Datetime NULL,
	`enddate_h` varchar(10) NULL,
	`exit_reentry` char(1) NULL,
	`reentry_days` int NULL,
	`exittype` char(1) NULL,
	`remarks` varchar(256) NULL,
	`notes` varchar(512) NULL,
	`request_status` char(1) NULL,
	`user_id` varchar(20) NULL,
	`update_status` varchar(1) NULL,
	`last_update` datetime(3) NULL,
	`balancedays` int NULL,
	`purpose` nvarchar(255) NULL,
	`leavestart_g` datetime(3) NULL,
	`leavestart_h` nvarchar(10) NULL,
	`returndate_g` datetime(3) NULL,
	`returndate_h` nvarchar(10) NULL,
	`lastworkto_g` datetime(3) NULL,
	`lastworkto_h` nvarchar(10) NULL,
	`leave_extra` numeric(18, 2) NULL,
	`leaveduedate_g` datetime(3) NULL,
	`leaveduedate_h` nvarchar(10) NULL,
	`no_of_daysdue` numeric(18, 2) NULL,
	`day` numeric(1, 0) NULL,
	`file_attached` nvarchar(1) NULL,
	`replacement` nvarchar(100) NULL,
	`ticket` nvarchar(1) NULL,
	`status_ok` nvarchar(1) NULL,
	`executed_by` nvarchar(20) NULL,
	`date_apprej` datetime(3) NULL,
	`date_executed` datetime(3) NULL,
	`leavedaysdue` numeric(18, 2) NULL,
	`eservice_no` nvarchar(5) NULL,
 CONSTRAINT `t_request_PK` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`contract_no` ASC,
	`emp_id` ASC,
	`request_no` ASC,
	`request_type` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_request_approval]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_request_approval(
	`company_id` nvarchar(4) NOT NULL,
	`branch_id` nvarchar(4) NOT NULL,
	`reqlevel_id` nvarchar(5) NOT NULL,
	`workflow_id` nvarchar(5) NOT NULL,
	`emp_id` nvarchar(20) NOT NULL,
	`request_no` numeric(18, 0) NOT NULL,
	`request_type` nvarchar(3) NOT NULL,
	`request_typeid` nvarchar(10) NOT NULL,
	`approval_no` nvarchar(3) NOT NULL,
	`approver_type` nvarchar(1) NOT NULL,
	`approver` nvarchar(20) NOT NULL,
	`action_status` nvarchar(1) NULL,
	`note` nvarchar(255) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`update_status` nvarchar(1) NULL,
 CONSTRAINT `PK_t_request_approval` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`reqlevel_id` ASC,
	`workflow_id` ASC,
	`emp_id` ASC,
	`request_no` ASC,
	`request_type` ASC,
	`request_typeid` ASC,
	`approval_no` ASC,
	`approver_type` ASC,
	`approver` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_request_level]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_request_level(
	`company_id` nvarchar(4) NOT NULL,
	`branch_id` nvarchar(4) NOT NULL,
	`reqlevel_id` nvarchar(5) NOT NULL,
	`remarks` nvarchar(255) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`update_status` nvarchar(1) NULL,
 CONSTRAINT `PK_t_request_level` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`reqlevel_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_request_level_dtl]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_request_level_dtl(
	`company_id` nvarchar(4) NOT NULL,
	`branch_id` nvarchar(4) NOT NULL,
	`line_no` nvarchar(3) NOT NULL,
	`reqlevel_id` nvarchar(5) NOT NULL,
	`request_type` nvarchar(3) NOT NULL,
	`request_typeid` nvarchar(10) NOT NULL,
	`workflow_id` nvarchar(5) NOT NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`update_status` nvarchar(1) NULL,
 CONSTRAINT `PK_t_request_level_dtl` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`line_no` ASC,
	`reqlevel_id` ASC,
	`request_type` ASC,
	`request_typeid` ASC,
	`workflow_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_settle_deductions]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_settle_deductions(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`contract_no` varchar(3) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`deduction_id` varchar(3) NOT NULL,
	`deduction_no` varchar(3) NOT NULL,
	`empded_no` nvarchar(3) NOT NULL,
	`deduction_amount` decimal(15, 2) NULL,
	`balance_amt` decimal(15, 2) NULL,
	`to_be_paid` decimal(15, 2) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`trans_date_g` datetime(3) NULL,
	`trans_date_h` nvarchar(10) NULL,
 CONSTRAINT `PK_t_settle_deductions` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`contract_no` ASC,
	`emp_id` ASC,
	`deduction_id` ASC,
	`deduction_no` ASC,
	`empded_no` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_settlement]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_settlement(
	`branch_id` varchar(4) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`company_id` varchar(4) NOT NULL,
	`dept_id` varchar(3) NULL,
	`basic_sal` decimal(6, 2) NULL,
	`house_al` decimal(6, 2) NULL,
	`less5_flg` varchar(1) NULL,
	`daily_inc` decimal(6, 2) NULL,
	`final_set` decimal(8, 2) NULL,
	`update_status` varchar(1) NULL,
	`last_update` Datetime NULL,
	`user_id` nvarchar(20) NULL,
	`hireddate` Datetime NULL,
	`separationdate` Datetime NULL,
	`n_year` int NULL,
	`n_month` int NULL,
	`n_day` int NULL,
	`hireddate_h` varchar(10) NULL,
	`separationdate_h` varchar(10) NULL,
	`settlement_id` varchar(3) NOT NULL,
	`contractno` varchar(3) NULL,
 CONSTRAINT `t_settlement_PK` PRIMARY KEY
(
	`emp_id` ASC,
	`company_id` ASC,
	`branch_id` ASC,
	`settlement_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_settlement_dedcancel]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_settlement_dedcancel(
	`company_id` varchar(10) NOT NULL,
	`branch_id` varchar(10) NOT NULL,
	`emp_id` varchar(10) NOT NULL,
	`contract_no` varchar(3) NOT NULL,
	`leave_no` varchar(3) NOT NULL,
	`deduction_no` varchar(3) NOT NULL,
	`user_id` varchar(20) NULL,
	`update_status` varchar(2) NULL,
	`last_update` datetime(3) NULL,
	`deduction_id` varchar(3) NULL,
 CONSTRAINT `PK_t_settlement_dedcancel` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`emp_id` ASC,
	`contract_no` ASC,
	`leave_no` ASC,
	`deduction_no` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_settlement_hist]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_settlement_hist(
	`company_id` varchar(10) NOT NULL,
	`branch_id` varchar(10) NOT NULL,
	`seq_no` int NOT NULL,
	`emp_id` varchar(10) NOT NULL,
	`contract_no` varchar(10) NOT NULL,
	`actual_amt` decimal(18, 2) NOT NULL,
	`due_amt` decimal(18, 2) NOT NULL,
	`type` char(1) NOT NULL,
	`period_fr` datetime(3) NULL,
	`period_to` datetime(3) NULL,
	`benefit_id` varchar(3) NULL,
	`leave_no` varchar(3) NOT NULL,
	`period_fr_h` varchar(10) NULL,
	`period_to_h` varchar(10) NULL,
	`user_id` varchar(20) NULL,
	`update_status` varchar(2) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `PK_t_settlement_hist` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`seq_no` ASC,
	`emp_id` ASC,
	`contract_no` ASC,
	`type` ASC,
	`leave_no` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_signee]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_signee(
	`sign_no` int NOT NULL,
	`company_id` nvarchar(3) NOT NULL,
	`sign_name` nvarchar(100) NULL,
	`sign_name_ar` nvarchar(100) NULL,
	`position` nvarchar(100) NULL,
	`position_ar` nvarchar(100) NULL,
 CONSTRAINT `PK_t_signature` PRIMARY KEY
(
	`sign_no` ASC,
	`company_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_sub_document]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_sub_document(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`doc_id` varchar(5) NOT NULL,
	`sub_doc_id` varchar(15) NOT NULL,
	`sub_doc_desc` varchar(25) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`doc_no` varchar(25) NULL,
	`place_issued` varchar(15) NULL,
	`issuing_authority` varchar(40) NULL,
	`renew_flag` varchar(1) NULL,
	`dept_id` varchar(3) NOT NULL,
	`dateissued` datetime(3) NULL,
	`dateexpire` datetime(3) NULL,
	`currentflag` varchar(1) NULL,
	`notes` varchar(250) NULL,
	`dateissued_hijri` varchar(10) NULL,
	`dateexpire_hijri` varchar(10) NULL,
	`visavalidity` int NULL,
	`portentry` varchar(30) NULL,
	`dateentry` Datetime NULL,
	`originalsponsor` varchar(30) NULL,
	`remark` varchar(256) NULL,
	`dateentry_h` varchar(10) NULL,
	`validityunit` varchar(10) NULL,
	`dependentsno` decimal(2, 0) NULL,
	`country_id` varchar(4) NULL,
	`sponsor_no` nvarchar(15) NULL,
	`return_date` datetime(3) NULL,
	`return_date_h` varchar(10) NULL,
	`dependents` varchar(1) NULL,
	`emp_dep_id` varchar(10) NULL,
 CONSTRAINT `t_sub_document_PK` PRIMARY KEY
(
	`emp_id` ASC,
	`doc_id` ASC,
	`sub_doc_id` ASC,
	`company_id` ASC,
	`branch_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_time_attendance]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_time_attendance(
	`attendance_id` numeric(18, 0) AUTO_INCREMENT NOT NULL,
	`company_id` varchar(3) NOT NULL,
	`monthyear_id` varchar(20) NOT NULL,
	`logindate` datetime(3) NOT NULL,
	`shiftid` char(30) NOT NULL,
	`sched_id` varchar(3) NOT NULL,
	`update_status` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `PK_t_time_attendance` PRIMARY KEY
(
	`attendance_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_time_attendance_cor]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_time_attendance_cor(
	`attendance_id` numeric(18, 0) AUTO_INCREMENT NOT NULL,
	`company_id` varchar(3) NOT NULL,
	`monthyear_id` varchar(20) NOT NULL,
	`logindate` datetime(3) NOT NULL,
	`shiftid` char(30) NOT NULL,
	`sched_id` varchar(3) NOT NULL,
	`update_status` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `PK_t_time_attendance_cor` PRIMARY KEY
(
	`attendance_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_time_attsummary]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_time_attsummary(
	`trans_id` numeric(18, 0) AUTO_INCREMENT NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`company_id` varchar(3) NOT NULL,
	`monthyear_id` varchar(20) NOT NULL,
	`logindate` datetime(3) NOT NULL,
	`late` decimal(18, 2) NOT NULL,
	`absent` decimal(18, 2) NOT NULL,
	`overtime` decimal(18, 2) NOT NULL,
	`totalhours` decimal(18, 2) NOT NULL,
	`update_status` varchar(1) NOT NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NOT NULL,
	`extrahour` decimal(18, 2) NOT NULL,
	`gpday` decimal(18, 2) NOT NULL,
	`hpd` decimal(18, 2) NULL,
	`late_toabsent` numeric(9, 2) NULL,
	`absent_latefactor` numeric(9, 2) NULL,
	`absent_preffactor` numeric(9, 2) NULL,
	`csv_absent` numeric(18, 2) NULL,
	`csv_late` numeric(18, 2) NULL,
	`csv_vachours` numeric(18, 2) NULL,
	`csv_overtime` numeric(18, 2) NULL,
	`actualtotalhours` numeric(18, 2) NULL,
 CONSTRAINT `PK_t_time_attsummary` PRIMARY KEY
(
	`trans_id` ASC,
	`emp_id` ASC,
	`company_id` ASC,
	`monthyear_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_time_attsummary2]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_time_attsummary2(
	`trans_id` numeric(18, 0) AUTO_INCREMENT NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`company_id` varchar(3) NOT NULL,
	`monthyear_id` varchar(20) NOT NULL,
	`late` decimal(18, 2) NOT NULL,
	`absent` decimal(18, 2) NOT NULL,
	`overtime` decimal(18, 2) NOT NULL,
	`totalhours` decimal(18, 2) NOT NULL,
	`update_status` varchar(1) NOT NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NOT NULL,
	`extrahour` decimal(18, 2) NOT NULL,
	`gpday` decimal(18, 2) NOT NULL,
	`hpd` decimal(18, 2) NULL,
	`late_toabsent` numeric(9, 2) NULL,
	`absent_latefactor` numeric(9, 2) NULL,
	`absent_preffactor` numeric(9, 2) NULL,
	`csv_absent` numeric(18, 2) NULL,
	`csv_late` numeric(18, 2) NULL,
	`csv_vachours` numeric(18, 2) NULL,
	`csv_overtime` numeric(18, 2) NULL,
	`nologin` nvarchar(1) NULL,
	`actualtotalhours` numeric(18, 2) NULL,
 CONSTRAINT `PK_t_time_attsummary2` PRIMARY KEY
(
	`trans_id` ASC,
	`emp_id` ASC,
	`company_id` ASC,
	`monthyear_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_time_notabsent]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_time_notabsent(
	`transid` numeric(18, 0) AUTO_INCREMENT NOT NULL,
	`company_id` varchar(3) NOT NULL,
	`am_no` varchar(20) NOT NULL,
	`monthyear_id` varchar(10) NOT NULL,
	`logindate` datetime(3) NOT NULL,
	`shiftid` varchar(30) NOT NULL,
	`sched_id` varchar(3) NOT NULL,
	`update_status` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
 CONSTRAINT `PK_t_time_notabsent` PRIMARY KEY
(
	`transid` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_timeattendance]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_timeattendance(
	`logid` numeric(18, 0) NOT NULL,
	`company_id` varchar(3) NOT NULL,
	`monthyear_id` varchar(20) NULL,
	`mc_no` varchar(20) NOT NULL,
	`session_login` datetime(3) NULL,
	`session_state` varchar(2) NULL,
	`logindate` datetime(3) NOT NULL,
	`state` varchar(2) NOT NULL,
	`update_status` varchar(1) NULL,
	`user_id` varchar(20) NULL,
	`last_update` datetime(3) NULL,
	`remarks` varchar(100) NULL
);
/* SQLINES DEMO *** le [dbo].[t_transfer]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_transfer(
	`company_id` varchar(4) NOT NULL,
	`branch_id` varchar(4) NOT NULL,
	`dept_id` varchar(3) NOT NULL,
	`emp_id` varchar(20) NOT NULL,
	`transfer_id` varchar(4) NOT NULL,
	`transfer_no` varchar(3) NOT NULL,
	`notice_date` Datetime NULL,
	`notice_date_h` varchar(10) NULL,
	`effectivity_date` Datetime NULL,
	`effectivity_date_h` varchar(10) NULL,
	`from_branch` varchar(4) NULL,
	`to_branch` varchar(4) NULL,
	`from_dept` varchar(3) NULL,
	`to_dept` varchar(3) NULL,
	`remark` varchar(200) NULL,
	`update_status` varchar(1) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`from_section` varchar(3) NULL,
	`to_section` varchar(3) NULL,
	`transfer_status` varchar(1) NULL,
	`from_costcenter` nvarchar(4) NULL,
	`to_costcenter` nvarchar(4) NULL,
	`include_cc` nvarchar(1) NULL,
 CONSTRAINT `t_transfer_PK` PRIMARY KEY
(
	`emp_id` ASC,
	`transfer_id` ASC,
	`company_id` ASC,
	`branch_id` ASC,
	`transfer_no` ASC,
	`dept_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_wfsetup_dtl]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_wfsetup_dtl(
	`company_id` nvarchar(4) NOT NULL,
	`branch_id` nvarchar(4) NOT NULL,
	`workflow_id` nvarchar(5) NOT NULL,
	`approval_no` nvarchar(3) NOT NULL,
	`approver_type` nvarchar(1) NOT NULL,
	`approver` nvarchar(20) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`update_status` nvarchar(1) NULL,
	`pos_emp_id` nvarchar(20) NULL,
 CONSTRAINT `PK_t_wfsetup_dtl` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`workflow_id` ASC,
	`approval_no` ASC,
	`approver_type` ASC
)
);
/* SQLINES DEMO *** le [dbo].[t_wfsetup_hdr]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE t_wfsetup_hdr(
	`company_id` nvarchar(4) NOT NULL,
	`branch_id` nvarchar(4) NOT NULL,
	`workflow_id` nvarchar(5) NOT NULL,
	`remarks` nvarchar(255) NULL,
	`user_id` nvarchar(20) NULL,
	`last_update` datetime(3) NULL,
	`update_status` nvarchar(1) NULL,
 CONSTRAINT `PK_t_wfsetup_hdr` PRIMARY KEY
(
	`company_id` ASC,
	`branch_id` ASC,
	`workflow_id` ASC
)
);
/* SQLINES DEMO *** le [dbo].[tmp_conflicts]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE tmp_conflicts(
	`schedid1` varchar(3) NOT NULL,
	`schedid2` varchar(3) NOT NULL,
	`from_date` datetime(3) NULL,
	`to_date` datetime(3) NULL,
	`from_date2` datetime(3) NULL,
	`to_date2` datetime(3) NULL,
 CONSTRAINT `PK_tmp_conflicts` PRIMARY KEY
(
	`schedid1` ASC,
	`schedid2` ASC
)
);
/* SQLINES DEMO *** le [dbo].[upd_att]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE upd_att(
	`emp_id` nchar(10) NULL,
	`att_id` nchar(10) NULL
);
/* SQLINES DEMO *** le [dbo].[Upd_gosi2020]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE Upd_gosi2020(
	`emp_id` varchar(50) NULL,
	`sub_id` varchar(50) NULL,
	`sub` varchar(50) NULL,
	`gosi_no` varchar(50) NULL,
	`name` varchar(50) NULL,
	`salary_gosi` nvarchar(50) NULL,
	`iqama_no` varchar(50) NULL,
	`nationalty` varchar(50) NULL,
	`date` varchar(50) NULL,
	`Column 9` varchar(50) NULL
);
/* SQLINES DEMO *** le [dbo].[Upd_gosi2020D]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE Upd_gosi2020D(
	`emp_id` varchar(50) NULL,
	`sub_id` varchar(50) NULL,
	`sub` varchar(50) NULL,
	`gosi_no` varchar(50) NULL,
	`name` varchar(50) NULL,
	`salary` varchar(50) NULL,
	`iqama_no` varchar(50) NULL,
	`nationalty` varchar(50) NULL,
	`date` varchar(50) NULL,
	`Column 9` varchar(50) NULL
);
/* SQLINES DEMO *** le [dbo].[Upd_gosi2020U]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE Upd_gosi2020U(
	`emp_id` varchar(50) NULL,
	`sub_id` varchar(50) NULL,
	`sub` varchar(50) NULL,
	`gosi_no` varchar(50) NULL,
	`name` varchar(50) NULL,
	`salary_G` varchar(50) NULL,
	`iqama_no` varchar(50) NULL,
	`nationalty` varchar(50) NULL,
	`date` varchar(50) NULL,
	`Column 9` varchar(50) NULL
);
/* SQLINES DEMO *** le [dbo].[upd_greghijri]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE upd_greghijri(
	`seqid` numeric(18, 0) AUTO_INCREMENT NOT NULL,
	`gdate` datetime(3) NOT NULL,
	`hdate` nvarchar(10) NOT NULL,
 CONSTRAINT `PK_upd_greghijri` PRIMARY KEY
(
	`seqid` ASC,
	`gdate` ASC,
	`hdate` ASC
)
);
/* SQLINES DEMO *** le [dbo].[upd_userid]    Script Date: 1/12/2021 9:08:17 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE upd_userid(
	`emp_id` varchar(50) NULL,
	`user_id` varchar(50) NULL
);
ALTER TABLE `dbo`.`acc_costcenter_hdr` ADD  CONSTRAINT `DF_acc_costcenter_hdr_storecc`  DEFAULT (N'N') FOR `storecc`
GO
ALTER TABLE `dbo`.`ar_dbupdate` ADD  CONSTRAINT `DF_ar_dbupdate_upd_date`  DEFAULT (now(3)) FOR `upd_date`
GO
ALTER TABLE `dbo`.`inj_bugmonitor` ADD  CONSTRAINT `DF_inj_bugmonitor_errordate`  DEFAULT (now(3)) FOR `errordate`
GO
ALTER TABLE `dbo`.`m_benefitpost` ADD  CONSTRAINT `DF_m_benefitpost_from_amt`  DEFAULT (0) FOR `from_amt`
GO
ALTER TABLE `dbo`.`m_benefitpost` ADD  CONSTRAINT `DF_m_benefitpost_to_amt`  DEFAULT (0) FOR `to_amt`
GO
ALTER TABLE `dbo`.`m_benefits` ADD  CONSTRAINT `DF_m_benefits_mulfactor`  DEFAULT ('N') FOR `mulfactor`
GO
ALTER TABLE `dbo`.`m_benefits` ADD  CONSTRAINT `DF_m_benefits_mb`  DEFAULT ('N') FOR `mb`
GO
ALTER TABLE `dbo`.`m_company_sched` ADD  CONSTRAINT `DF_m_company_sched_no_work`  DEFAULT ('Y') FOR `no_work`
GO
ALTER TABLE `dbo`.`m_company_sched` ADD  CONSTRAINT `DF_m_company_sched_for_schedule`  DEFAULT ('') FOR `for_schedule`
GO
ALTER TABLE `dbo`.`m_company_sched` ADD  CONSTRAINT `DF_m_company_sched_paid_overtime`  DEFAULT ('N') FOR `paid_overtime`
GO
ALTER TABLE `dbo`.`m_company_sched` ADD  CONSTRAINT `DF_m_company_sched_last_update`  DEFAULT (now(3)) FOR `last_update`
GO
ALTER TABLE `dbo`.`m_deductions` ADD  CONSTRAINT `DF_m_deductions_request`  DEFAULT ('N') FOR `request`
GO
ALTER TABLE `dbo`.`m_deductions` ADD  CONSTRAINT `DF_m_deductions_mb`  DEFAULT ('N') FOR `mb`
GO
ALTER TABLE `dbo`.`m_employee` ADD  CONSTRAINT `DF_m_employee_firstname_eng`  DEFAULT ('') FOR `firstname_eng`
GO
ALTER TABLE `dbo`.`m_employee` ADD  CONSTRAINT `DF_m_employee_middlename_eng`  DEFAULT ('') FOR `middlename_eng`
GO
ALTER TABLE `dbo`.`m_employee` ADD  CONSTRAINT `DF_m_employee_lastname_eng`  DEFAULT ('') FOR `lastname_eng`
GO
ALTER TABLE `dbo`.`m_employee` ADD  CONSTRAINT `DF_m_employee_firstname_ara`  DEFAULT ('') FOR `firstname_ara`
GO
ALTER TABLE `dbo`.`m_employee` ADD  CONSTRAINT `DF_m_employee_middlename_ara`  DEFAULT ('') FOR `middlename_ara`
GO
ALTER TABLE `dbo`.`m_employee` ADD  CONSTRAINT `DF_m_employee_lastname_ara`  DEFAULT ('') FOR `lastname_ara`
GO
ALTER TABLE `dbo`.`m_employee` ADD  CONSTRAINT `DF_m_employee_grandname_en`  DEFAULT ('') FOR `grandname_en`
GO
ALTER TABLE `dbo`.`m_employee` ADD  CONSTRAINT `DF_m_employee_grandname_ar`  DEFAULT ('') FOR `grandname_ar`
GO
ALTER TABLE `dbo`.`m_employee` ADD  CONSTRAINT `DF_m_employee_use_ms_glid`  DEFAULT ('N') FOR `use_ms_glid`
GO
ALTER TABLE `dbo`.`m_employee` ADD  CONSTRAINT `DF_m_employee_lang`  DEFAULT (N'E') FOR `lang`
GO
ALTER TABLE `dbo`.`m_govt_files` ADD  CONSTRAINT `DF_m_govt_files_currentflag`  DEFAULT (N'Y') FOR `currentflag`
GO
ALTER TABLE `dbo`.`m_leave` ADD  CONSTRAINT `DF_m_leave_withpay`  DEFAULT ('N') FOR `withpay`
GO
ALTER TABLE `dbo`.`m_leave` ADD  CONSTRAINT `DF__m_leave__wsettle__38EE7070`  DEFAULT ('N') FOR `wsettlement`
GO
ALTER TABLE `dbo`.`m_leave` ADD  CONSTRAINT `DF_m_leave_request`  DEFAULT ('N') FOR `request`
GO
ALTER TABLE `dbo`.`m_preferences` ADD  CONSTRAINT `DF_m_preferences_payrollrounding`  DEFAULT ('N') FOR `payrollrounding`
GO
ALTER TABLE `dbo`.`m_preferences` ADD  CONSTRAINT `DF_m_preferences_calc_ot_outsidepayroll`  DEFAULT ('N') FOR `calc_ot_outsidepayroll`
GO
ALTER TABLE `dbo`.`m_preferences` ADD  CONSTRAINT `DF_m_preferences_include_ot_inpayroll`  DEFAULT ('N') FOR `include_ot_inpayroll`
GO
ALTER TABLE `dbo`.`m_preferences` ADD  CONSTRAINT `DF_m_preferences_posttoacct_ot_outsidepayroll`  DEFAULT ('N') FOR `posttoacct_ot_outsidepayroll`
GO
ALTER TABLE `dbo`.`m_preferences` ADD  CONSTRAINT `DF__m_prefere__no_ye__37FA4C37`  DEFAULT ('N') FOR `no_yearend`
GO
ALTER TABLE `dbo`.`m_preferences` ADD  CONSTRAINT `DF_m_preferences_monthly_pay`  DEFAULT ('N') FOR `monthly_pay`
GO
ALTER TABLE `dbo`.`m_preferences` ADD  CONSTRAINT `DF_m_preferences_attendance_mc`  DEFAULT ('N') FOR `attendance_mc`
GO
ALTER TABLE `dbo`.`m_preferences` ADD  CONSTRAINT `DF_m_preferences_fa_link_flag`  DEFAULT ('N') FOR `fa_link_flag`
GO
ALTER TABLE `dbo`.`m_preferences` ADD  CONSTRAINT `DF_m_preferences_isforward_vacdaysbal`  DEFAULT ('N') FOR `isforward_vacdaysbal`
GO
ALTER TABLE `dbo`.`m_preferences` ADD  CONSTRAINT `DF_m_preferences_use_latestsalarycalc`  DEFAULT ('N') FOR `use_latestsalarycalc`
GO
ALTER TABLE `dbo`.`m_preferences` ADD  CONSTRAINT `DF_m_preferences_currentvacdays`  DEFAULT ('Y') FOR `currentvacdays`
GO
ALTER TABLE `dbo`.`m_stdletters` ADD  CONSTRAINT `DF_m_stdletters_last_update`  DEFAULT (now(3)) FOR `last_update`
GO
ALTER TABLE `dbo`.`m_stdletters` ADD  CONSTRAINT `DF_m_stdletters_request`  DEFAULT ('N') FOR `request`
GO
ALTER TABLE `dbo`.`m_time_logs` ADD  CONSTRAINT `DF_m_time_logs_last_update`  DEFAULT (now(3)) FOR `last_update`
GO
ALTER TABLE `dbo`.`m_time_logs` ADD  CONSTRAINT `DF_m_time_logs_attendance_id`  DEFAULT ((0)) FOR `attendance_id`
GO
ALTER TABLE `dbo`.`m_timelog_periods` ADD  CONSTRAINT `DF_m_timelog_periods_last_update`  DEFAULT (now(3)) FOR `last_update`
GO
ALTER TABLE `dbo`.`m_timeshifts` ADD  CONSTRAINT `DF_m_timeshifts_last_update`  DEFAULT (now(3)) FOR `last_update`
GO
ALTER TABLE `dbo`.`m_timetable` ADD  CONSTRAINT `DF_m_timetable_lateminutes`  DEFAULT (0) FOR `lateminutes`
GO
ALTER TABLE `dbo`.`m_timetable` ADD  CONSTRAINT `DF_m_timetable_earlyminute`  DEFAULT (0) FOR `earlyminute`
GO
ALTER TABLE `dbo`.`m_timetable` ADD  CONSTRAINT `DF_m_timetable_checkin`  DEFAULT (0) FOR `checkin`
GO
ALTER TABLE `dbo`.`m_timetable` ADD  CONSTRAINT `DF_m_timetable_checkout`  DEFAULT (0) FOR `checkout`
GO
ALTER TABLE `dbo`.`m_timetable` ADD  CONSTRAINT `DF_m_timetable_last_update`  DEFAULT (now(3)) FOR `last_update`
GO
ALTER TABLE `dbo`.`m_timetable` ADD  CONSTRAINT `DF_m_timetable_flex_time`  DEFAULT ('N') FOR `flex_time`
GO
ALTER TABLE `dbo`.`m_timetable` ADD  CONSTRAINT `DF_m_timetable_hpd`  DEFAULT (0) FOR `hpd`
GO
ALTER TABLE `dbo`.`m_timetable` ADD  CONSTRAINT `DF_m_timetable_no_late`  DEFAULT ('N') FOR `no_late`
GO
ALTER TABLE `dbo`.`m_timetable` ADD  CONSTRAINT `DF_m_timetable_no_absent`  DEFAULT ('N') FOR `no_absent`
GO
ALTER TABLE `dbo`.`m_timetable` ADD  CONSTRAINT `DF_m_timetable_no_ot`  DEFAULT ('N') FOR `no_ot`
GO
ALTER TABLE `dbo`.`t_applicationform` ADD  CONSTRAINT `DF_t_applicationform_apptype_srno`  DEFAULT (1) FOR `apptype_srno`
GO
ALTER TABLE `dbo`.`t_att_uploadfromcsv` ADD  CONSTRAINT `DF_t_att_uploadfromcsv_trans_gdate`  DEFAULT (now(3)) FOR `trans_gdate`
GO
ALTER TABLE `dbo`.`t_att_uploadfromcsv` ADD  CONSTRAINT `DF_t_att_uploadfromcsv_absentdays`  DEFAULT ((0)) FOR `absentdays`
GO
ALTER TABLE `dbo`.`t_att_uploadfromcsv` ADD  CONSTRAINT `DF_t_att_uploadfromcsv_late`  DEFAULT ((0)) FOR `late`
GO
ALTER TABLE `dbo`.`t_att_uploadfromcsv` ADD  CONSTRAINT `DF_t_att_uploadfromcsv_vac_hours`  DEFAULT ((0)) FOR `vac_hours`
GO
ALTER TABLE `dbo`.`t_att_uploadfromcsv` ADD  CONSTRAINT `DF_t_att_uploadfromcsv_overtime`  DEFAULT ((0)) FOR `overtime`
GO
ALTER TABLE `dbo`.`t_att_uploadfromcsv` ADD  CONSTRAINT `DF_t_att_uploadfromcsv_last_update`  DEFAULT (now(3)) FOR `last_update`
GO
ALTER TABLE `dbo`.`t_att_uploadfromcsv` ADD  CONSTRAINT `DF_t_att_uploadfromcsv_update_status`  DEFAULT (N'N') FOR `update_status`
GO
ALTER TABLE `dbo`.`t_costcenter_based_timings` ADD  CONSTRAINT `DF_t_costcenter_based_timings_posttopayroll`  DEFAULT (N'N') FOR `posttopayroll`
GO
ALTER TABLE `dbo`.`t_employee_gosi` ADD  CONSTRAINT `DF_t_employee_gosi_nopayroll`  DEFAULT (N'N') FOR `nopayroll`
GO
ALTER TABLE `dbo`.`t_employee_overtime` ADD  CONSTRAINT `DF_t_employee_overtime_calc_flag`  DEFAULT ('N') FOR `calc_flag`
GO
ALTER TABLE `dbo`.`t_employee_overtime` ADD  CONSTRAINT `DF_t_employee_overtime_current_salary_1`  DEFAULT (0) FOR `current_salary`
GO
ALTER TABLE `dbo`.`t_employment` ADD  CONSTRAINT `DF_t_employment_renew`  DEFAULT (0) FOR `renew`
GO
ALTER TABLE `dbo`.`t_employment` ADD  CONSTRAINT `DF_t_employment_nologin`  DEFAULT ('N') FOR `nologin`
GO
ALTER TABLE `dbo`.`t_issuedbenefits` ADD  CONSTRAINT `DF__t_issuedb__benef__3552E9B6`  DEFAULT ((0)) FOR `benefit_amt`
GO
ALTER TABLE `dbo`.`t_leave` ADD  CONSTRAINT `DF_t_leave_date_created`  DEFAULT (now(3)) FOR `date_created`
GO
ALTER TABLE `dbo`.`t_payroll_benefits` ADD  CONSTRAINT `DF_t_payroll_benefits_costcenter_id`  DEFAULT ('0000') FOR `costcenter_id`
GO
ALTER TABLE `dbo`.`t_payroll_benefits` ADD  CONSTRAINT `DF_t_payroll_benefits_transfer_no`  DEFAULT ('000') FOR `transfer_no`
GO
ALTER TABLE `dbo`.`t_payroll_deductions` ADD  CONSTRAINT `DF_t_payroll_deductions_mfactor`  DEFAULT (0) FOR `mfactor`
GO
ALTER TABLE `dbo`.`t_payroll_deductions` ADD  CONSTRAINT `DF_t_payroll_deductions_costcenter_id`  DEFAULT ('0000') FOR `costcenter_id`
GO
ALTER TABLE `dbo`.`t_payroll_deductions` ADD  CONSTRAINT `DF_t_payroll_deductions_transfer_no`  DEFAULT ('000') FOR `transfer_no`
GO
ALTER TABLE `dbo`.`t_payroll_netpay` ADD  CONSTRAINT `DF_t_payroll_netpay_serial_no`  DEFAULT (0) FOR `serial_no`
GO
ALTER TABLE `dbo`.`t_payroll_netpay` ADD  CONSTRAINT `DF_t_payroll_netpay_costcenter_id`  DEFAULT ('0000') FOR `costcenter_id`
GO
ALTER TABLE `dbo`.`t_payroll_netpay` ADD  CONSTRAINT `DF_t_payroll_netpay_transfer_no`  DEFAULT ('000') FOR `transfer_no`
GO
ALTER TABLE `dbo`.`t_request` ADD  CONSTRAINT `DF_t_request_current_value`  DEFAULT ((0)) FOR `current_value`
GO
ALTER TABLE `dbo`.`t_request` ADD  CONSTRAINT `DF_t_request_new_value`  DEFAULT ((0)) FOR `new_value`
GO
ALTER TABLE `dbo`.`t_request` ADD  CONSTRAINT `DF_t_request_request_status`  DEFAULT ('N') FOR `request_status`
GO
ALTER TABLE `dbo`.`t_request` ADD  CONSTRAINT `DF_t_request_balancedays`  DEFAULT ((0)) FOR `balancedays`
GO
ALTER TABLE `dbo`.`t_request` ADD  CONSTRAINT `DF_t_request_status_ok`  DEFAULT (N'N') FOR `status_ok`
GO
ALTER TABLE `dbo`.`t_request_level_dtl` ADD  CONSTRAINT `DF_t_request_level_dtl_request_typeid`  DEFAULT ('000') FOR `request_typeid`
GO
ALTER TABLE `dbo`.`t_settlement_hist` ADD  CONSTRAINT `DF_t_settlement_hist_actual_amt`  DEFAULT (0) FOR `actual_amt`
GO
ALTER TABLE `dbo`.`t_settlement_hist` ADD  CONSTRAINT `DF_t_settlement_hist_due_amt`  DEFAULT (0) FOR `due_amt`
GO
ALTER TABLE `dbo`.`t_sub_document` ADD  CONSTRAINT `DF_t_sub_document_dependents`  DEFAULT ('N') FOR `dependents`
GO
ALTER TABLE `dbo`.`t_time_attsummary` ADD  CONSTRAINT `DF_t_time_attsummary_late`  DEFAULT (0) FOR `late`
GO
ALTER TABLE `dbo`.`t_time_attsummary` ADD  CONSTRAINT `DF_t_time_attsummary_absent`  DEFAULT (0) FOR `absent`
GO
ALTER TABLE `dbo`.`t_time_attsummary` ADD  CONSTRAINT `DF_t_time_attsummary_overtime`  DEFAULT (0) FOR `overtime`
GO
ALTER TABLE `dbo`.`t_time_attsummary` ADD  CONSTRAINT `DF_t_time_attsummary_totalhours`  DEFAULT (0) FOR `totalhours`
GO
ALTER TABLE `dbo`.`t_time_attsummary` ADD  CONSTRAINT `DF_t_time_attsummary_last_update`  DEFAULT (now(3)) FOR `last_update`
GO
ALTER TABLE `dbo`.`t_time_attsummary` ADD  CONSTRAINT `DF_t_time_attsummary_extrahour`  DEFAULT (0) FOR `extrahour`
GO
ALTER TABLE `dbo`.`t_time_attsummary` ADD  CONSTRAINT `DF_t_time_attsummary_hpd`  DEFAULT (0) FOR `hpd`
GO
ALTER TABLE `dbo`.`t_time_attsummary2` ADD  CONSTRAINT `DF_t_time_attsummary2_late`  DEFAULT ((0)) FOR `late`
GO
ALTER TABLE `dbo`.`t_time_attsummary2` ADD  CONSTRAINT `DF_t_time_attsummary2_absent`  DEFAULT ((0)) FOR `absent`
GO
ALTER TABLE `dbo`.`t_time_attsummary2` ADD  CONSTRAINT `DF_t_time_attsummary2_overtime`  DEFAULT ((0)) FOR `overtime`
GO
ALTER TABLE `dbo`.`t_time_attsummary2` ADD  CONSTRAINT `DF_t_time_attsummary2_totalhours`  DEFAULT ((0)) FOR `totalhours`
GO
ALTER TABLE `dbo`.`t_time_attsummary2` ADD  CONSTRAINT `DF_t_time_attsummary2_last_update`  DEFAULT (now(3)) FOR `last_update`
GO
ALTER TABLE `dbo`.`t_time_attsummary2` ADD  CONSTRAINT `DF_t_time_attsummary2_extrahour`  DEFAULT ((0)) FOR `extrahour`
GO
ALTER TABLE `dbo`.`t_time_attsummary2` ADD  CONSTRAINT `DF_t_time_attsummary2_hpd`  DEFAULT ((0)) FOR `hpd`
GO
ALTER TABLE `dbo`.`t_time_notabsent` ADD  CONSTRAINT `DF_t_time_notabsent_company_id`  DEFAULT (now(3)) FOR `company_id`
GO
ALTER TABLE `dbo`.`t_time_notabsent` ADD  CONSTRAINT `DF_t_time_notabsent_last_update`  DEFAULT (now(3)) FOR `last_update`
GO
ALTER TABLE `dbo`.`t_transfer` ADD  CONSTRAINT `DF_t_transfer_include_cc`  DEFAULT (N'N') FOR `include_cc`
GO
ALTER TABLE `dbo`.`doc_columnselect`  WITH CHECK ADD  CONSTRAINT `FK_doc_columnselect_m_stdletters` FOREIGN KEY(`company_id`, `branch_id`, `doc_id`)
REFERENCES m_stdletters (`company_id`, `branch_id`, `doc_id`)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE `dbo`.`doc_columnselect` CHECK CONSTRAINT `FK_doc_columnselect_m_stdletters`
GO
