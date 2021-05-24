<?xml version="1.0" encoding="UTF-8" ?>
<displays>
<display id="115c091d-0179-1000-800e-c0a800bffb63" type="" style="Chart" enable="true">
	<name><![CDATA[Average_Athlete_Stats]]></name>
	<description><![CDATA[Average of the details of all athletes ordered by their nationilities]]></description>
	<tooltip><![CDATA[]]></tooltip>
	<drillclass><![CDATA[]]></drillclass>
	<CustomValues>
		<TYPE><![CDATA[BAR_VERT_CLUST]]></TYPE>
	</CustomValues>
	<query>
		<sql><![CDATA[select 
    ntn_id,
    athl_gender,
    avg(athl_height) "avg_height (cm)",
    avg(athl_weight) "avg_weight (kg)",
    avg(TRUNC((MONTHS_BETWEEN(TO_DATE(TO_CHAR(sysdate, 'dd/mm/YYYY'), 'dd/mm/YYYY'), athl_dob) * 31) / 365)) "avg_age (years)"
    from athlete
group by ntn_id, athl_gender order by ntn_id]]></sql>
	</query>
		<pdf version="VERSION_1_7" compression="CONTENT">
			<docproperty title="null" author="null" subject="null" keywords="null" />
			<cell toppadding="2" bottompadding="2" leftpadding="2" rightpadding="2" horizontalalign="LEFT" verticalalign="TOP" wrap="true" />
			<column>
				<heading font="null" size="10" style="NORMAL" color="-16777216" rowshading="-1" labeling="FIRST_PAGE" />
				<footing font="null" size="10" style="NORMAL" color="-16777216" rowshading="-1" labeling="NONE" />
				<blob blob="NONE" zip="false" />
			</column>
			<table font="null" size="10" style="NORMAL" color="-16777216" userowshading="false" oddrowshading="-1" evenrowshading="-1" showborders="true" spacingbefore="12" spacingafter="12" horizontalalign="LEFT" />
			<header enable="false" generatedate="false">
				<data>
				null				</data>
			</header>
			<footer enable="false" generatedate="false">
				<data value="null" />
			</footer>
			<pagesetup papersize="LETTER" orientation="1" measurement="in" margintop="1.0" marginbottom="1.0" marginleft="1.0" marginright="1.0" />
		</pdf>
</display>
</displays>