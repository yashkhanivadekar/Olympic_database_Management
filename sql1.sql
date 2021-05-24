<?xml version="1.0" encoding="UTF-8" ?>
<displays>
<display id="114e332c-0179-1000-800c-c0a800bffb63" type="" style="Table" enable="true">
	<name><![CDATA[Athlete Details]]></name>
	<description><![CDATA[All the details of the athlete and the athlete application would be approved or rejected based on the BMI index of the athlete]]></description>
	<tooltip><![CDATA[]]></tooltip>
	<drillclass><![CDATA[]]></drillclass>
	<CustomValues>
		<TYPE><![CDATA[horizontal]]></TYPE>
	</CustomValues>
	<query>
		<sql><![CDATA[SELECT athl_id,athl_name, athl_weight, athl_height, athl_gender, round(((athl_weight / athl_height / athl_height)*10000),2) as bmi  FROM athlete]]></sql>
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