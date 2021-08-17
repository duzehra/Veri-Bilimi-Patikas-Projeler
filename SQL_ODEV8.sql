-- 1. Test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100))

-- 2. Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (name, birthday, email) values ('Claudian Wetter', '1967-12-10', 'cwetter0@aol.com');
insert into employee (name, birthday, email) values ('Wilbur Housbie', null, 'whousbie1@macromedia.com');
insert into employee (name, birthday, email) values ('Jodie Deekes', '1964-07-02', 'jdeekes2@samsung.com');
insert into employee (name, birthday, email) values ('Karissa Scholer', '1981-12-01', 'kscholer3@reference.com');
insert into employee (name, birthday, email) values ('Auguste Sheridan', '1977-06-24', 'asheridan4@utexas.edu');
insert into employee (name, birthday, email) values ('Jerry Ruggen', '1957-04-19', 'jruggen5@accuweather.com');
insert into employee (name, birthday, email) values ('Vania Lebbern', '1985-02-10', 'vlebbern6@simplemachines.org');
insert into employee (name, birthday, email) values ('Redd Synan', '1989-02-28', 'rsynan7@howstuffworks.com');
insert into employee (name, birthday, email) values ('Charlton Zanre', '1982-07-19', 'czanre8@a8.net');
insert into employee (name, birthday, email) values ('Parrnell Backhouse', '1962-06-25', 'pbackhouse9@princeton.edu');
insert into employee (name, birthday, email) values ('Brig Thurber', '1956-03-09', 'bthurbera@photobucket.com');
insert into employee (name, birthday, email) values ('Miguelita Saffin', '1966-08-19', 'msaffinb@bloglines.com');
insert into employee (name, birthday, email) values ('Harley Thackham', '1990-03-27', 'hthackhamc@intel.com');
insert into employee (name, birthday, email) values ('Archie Pawelke', '1974-09-09', 'apawelked@forbes.com');
insert into employee (name, birthday, email) values ('Cathrine Sogg', '1987-10-16', 'csogge@salon.com');
insert into employee (name, birthday, email) values ('Grant Flinders', null, 'gflindersf@mac.com');
insert into employee (name, birthday, email) values ('Nester Stafford', '1981-11-03', 'nstaffordg@marketwatch.com');
insert into employee (name, birthday, email) values ('Kala Bartlomiejczyk', '1972-08-31', 'kbartlomiejczykh@vistaprint.com');
insert into employee (name, birthday, email) values ('Mar Dekeyser', '1989-06-30', 'mdekeyseri@alexa.com');
insert into employee (name, birthday, email) values ('Bartie Drain', '1969-08-04', 'bdrainj@marketwatch.com');
insert into employee (name, birthday, email) values ('Nataniel Founds', '1974-05-06', 'nfoundsk@hao123.com');
insert into employee (name, birthday, email) values ('Rodolfo Renihan', '1954-01-12', 'rrenihanl@gov.uk');
insert into employee (name, birthday, email) values ('Rafa Blackster', '1967-07-15', 'rblacksterm@buzzfeed.com');
insert into employee (name, birthday, email) values ('Ruthie Groucock', '1985-08-24', 'rgroucockn@nydailynews.com');
insert into employee (name, birthday, email) values ('Broddie Edler', '1962-04-13', 'bedlero@engadget.com');
insert into employee (name, birthday, email) values ('Daniela Costain', '1988-06-07', 'dcostainp@mediafire.com');
insert into employee (name, birthday, email) values ('Ole Ryal', null, 'oryalq@smh.com.au');
insert into employee (name, birthday, email) values ('Mellicent Carlson', '1969-06-18', 'mcarlsonr@ihg.com');
insert into employee (name, birthday, email) values ('Ian Wallwood', null, 'iwallwoods@amazonaws.com');
insert into employee (name, birthday, email) values ('Halie Thoumas', null, 'hthoumast@hostgator.com');
insert into employee (name, birthday, email) values ('Horton Paule', '1966-04-15', 'hpauleu@noaa.gov');
insert into employee (name, birthday, email) values ('Sherlock Aickin', '1960-02-07', 'saickinv@amazon.com');
insert into employee (name, birthday, email) values ('Robin MacGragh', '1958-10-25', 'rmacgraghw@msu.edu');
insert into employee (name, birthday, email) values ('Wells Fellibrand', null, 'wfellibrandx@meetup.com');
insert into employee (name, birthday, email) values ('Lemmie Nell', '1984-03-18', 'lnelly@mapquest.com');
insert into employee (name, birthday, email) values ('Iorgo Hayesman', '1990-12-01', 'ihayesmanz@ucoz.com');
insert into employee (name, birthday, email) values ('Westleigh Ower', '1956-09-23', 'wower10@ebay.co.uk');
insert into employee (name, birthday, email) values ('Batsheva Finnis', null, 'bfinnis11@accuweather.com');
insert into employee (name, birthday, email) values ('Shaylah Valentine', '1980-02-13', 'svalentine12@netvibes.com');
insert into employee (name, birthday, email) values ('Lexine Oxenham', '1988-08-30', 'loxenham13@newsvine.com');
insert into employee (name, birthday, email) values ('Flemming Santen', '1984-02-24', 'fsanten14@hc360.com');
insert into employee (name, birthday, email) values ('Julie Pennigar', '1968-07-21', 'jpennigar15@cbc.ca');
insert into employee (name, birthday, email) values ('Mattias Mougel', '1970-04-25', 'mmougel16@tinypic.com');
insert into employee (name, birthday, email) values ('Ertha Conford', '1987-08-06', 'econford17@wikipedia.org');
insert into employee (name, birthday, email) values ('Marybeth Daye', '1972-01-23', 'mdaye18@ted.com');
insert into employee (name, birthday, email) values ('Valma Berwick', '1967-07-12', 'vberwick19@youku.com');
insert into employee (name, birthday, email) values ('Hobart Rolinson', '1988-08-21', 'hrolinson1a@drupal.org');
insert into employee (name, birthday, email) values ('Nevin McAllan', '1981-12-03', 'nmcallan1b@issuu.com');
insert into employee (name, birthday, email) values ('Johnette Dykes', '1989-02-04', 'jdykes1c@nasa.gov');
insert into employee (name, birthday, email) values ('Lovell Snelle', '1960-12-23', 'lsnelle1d@java.com');

-- 3. Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET birthday = '1995-09-06'
WHERE id = 2;

UPDATE employee
SET name = 'Alain Bass',
	email = 'abass@hotmail.com'
WHERE name = 'Lovell Snelle';

UPDATE employee
SET birthday = '1985-11-09'
WHERE birthday = '1974-05-06';

UPDATE employee
SET birthday = '1988-08-30',
	email = 'jodiedeekes@gmail.com'
WHERE email = 'jdeekes2@samsung.com';

UPDATE employee
SET name = 'Auguste Mitchy',
	email = 'mitchy@outlook.com'
WHERE id = 7;

-- 4. Sütunların her birine göre  ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE id = 4;

DELETE FROM employee
WHERE name = 'Westleigh Ower'
RETURNING *;

DELETE FROM employee
WHERE email = 'bdrainj@marketwatch.com'
RETURNING id, name;

DELETE FROM employee
WHERE name = 'Mar Dekeyser' AND email = 'mdekeyseri@alexa.com';

DELETE FROM employee
WHERE birthday = '1989-06-30'
RETURNING name;
