-- create view to display event match details

create or replace view event_match_details as 
SELECT event_name, event_type, event_gender, venue_name, olym_year as Olympic_Year
FROM Event JOIN Sport ON event.sport_id = sport.sport_id
JOIN event_match on event.event_id = event_match.event_id
JOIN olympics on event_match.olym_id = olympics.olym_id
JOIN venue on venue.venue_id = event_match.venue_id;

select * from event_match_details;


-- creaye view to display the current age of all athletes

create or replace view ath_age as 

select athl_name, extract (year from sysdate)-extract(year from ATHL_DOB) as age from athlete;

select * from ath_age;
