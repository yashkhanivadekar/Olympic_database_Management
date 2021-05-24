<?xml version="1.0" encoding="UTF-8" ?>
<displays>
<display id="113aa4dd-0179-1000-800b-c0a800bffb63" type="" style="Table" enable="true">
	<name><![CDATA[Sport Events]]></name>
	<description><![CDATA[Detailed report of all the event in the Olympics along with the venue and the year in which the olympics was hosted]]></description>
	<tooltip><![CDATA[]]></tooltip>
	<drillclass><![CDATA[]]></drillclass>
	<CustomValues>
		<TYPE><![CDATA[horizontal]]></TYPE>
	</CustomValues>
	<query>
		<sql><![CDATA[SELECT event_name, event_type, event_gender, venue_name, olym_year as Olympic_Year
FROM Event JOIN Sport ON event.sport_id = sport.sport_id
JOIN event_match on event.event_id = event_match.event_id
JOIN olympics on event_match.olym_id = olympics.olym_id
JOIN venue on venue.venue_id = event_match.venue_id order by olympic_year desc]]></sql>
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