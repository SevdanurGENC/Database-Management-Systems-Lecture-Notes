-- birinci ders
create database bilmuh_vt
use bilmuh_vt

create table tbl_deneme(
id int not null,
ad varchar(30) not null,
soyad varchar(30) not null,
dtarihi date
)

select * from tbl_deneme

-- insert into TABLOISMI (ALAN ISIMLERI)
-- values (VERILER)

insert into tbl_deneme(id,ad,soyad,dtarihi)
values (1, 'Ali', 'Cengiz', '10-10-2024'),
(2, 'dgdfg', 'Cenrtyygiz', '10-10-2024'),
(3, 'dffg', 'Cengrtyriz', '10-10-2024'),
(4, 'hjgjj', 'try', '10-10-2024')


select *
from tbl_deneme
where ad='Ali' or soyad='try'



-- ikinci ders

create database okul_vt
use okul_vt

create table ogrenci(
ono int not null,
ad varchar(30),
soyad varchar(30),
bid int
)

create table bolum(
bid int not null, 
bad varchar(30) 
)

insert into bolum(bid,bad)
values (101, 'Bilgisayar Muhendisligi'),
(102, 'Ziraat Muhendisligi'),
(103, 'Endustri Muhendisligi')

insert into ogrenci(ono, ad, soyad, bid)
values (202401, 'Ayse', 'Yildiz', 101),
(202402, 'Nail', 'Coskun', 102),
(202403, 'Cengiz', 'Kemalogullari', 103)


select * from ogrenci
select * from bolum

select ono, ad, soyad, bad
from ogrenci, bolum
where ogrenci.bid = bolum.bid
