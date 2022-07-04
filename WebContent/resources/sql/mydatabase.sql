show databases;
show tables;

desc menu;

create table menu(
	menu_name varchar(100) not null,
	menu_id varchar(100) not null,
	fileName varchar(20) not null,
	primary key (menu_id)
);

create table bread(
	bread_name varchar(100) not null,
	bread_id varchar(100) not null,
	fileName varchar(20) not null,
	primary key(bread_id)
);

create table cheese(
	cheese_name varchar(100) not null,
	cheese_id varchar(100) not null,
	fileName varchar(20) not null,
	primary key(cheese_id)
);

create table veg(
	veg_name varchar(100) not null,
	veg_id varchar(100) not null,
	fileName varchar(20) not null,
	primary key(veg_id)
);

create table sauce(
	sauce_name varchar(100) not null,
	sauce_id varchar(100) not null,
	fileName varchar(20) not null,
	primary key(sauce_id)
);

create table setorsingle(
	set_name varchar(100) not null,
	set_id varchar(100) not null,
	fileName varchar(20) not null,
	primary key(set_id)
);

alter table menu convert to character set utf8;
alter table bread convert to character set utf8;
alter table cheese convert to character set utf8;
alter table veg convert to character set utf8;
alter table sauce convert to character set utf8;
alter table setorsingle convert to character set utf8;

alter table menu change column fileName fileName varchar(100);
alter table bread change column fileName fileName varchar(100);
alter table cheese change column fileName fileName varchar(100);
alter table veg change column fileName fileName varchar(100);
alter table sauce change column fileName fileName varchar(100);
alter table setorsingle change column fileName fileName varchar(100);

insert into menu values('베지', 'menu_veggie', 'c:/Users/home/Desktop/image_project/menu_veggie.jpg');
insert into menu values('에그마요', 'menu_eggmayo', 'c:/Users/home/Desktop/image_project/menu_eggmayo.jpg');
insert into menu values('터키', 'menu_turkey', 'c:/Users/home/Desktop/image_project/menu_turkey.jpg');
insert into menu values('쉬림프', 'menu_shrimp', 'c:/Users/home/Desktop/image_project/menu_shrimp.jpg');
insert into menu values('이탈리안 비엠티', 'menu_bmt', 'c:/Users/home/Desktop/image_project/menu_bmt.jpg');

insert into bread values('화이트', 'bread_white', 'c:/Users/home/Desktop/image_project/bread_white.png');
insert into bread values('하티', 'bread_hearty', 'c:/Users/home/Desktop/image_project/bread_hearty.png');
insert into bread values('허니오트', 'bread_oat', 'c:/Users/home/Desktop/image_project/bread_oat.png');
insert into bread values('플랫브레드', 'bread_flat', 'c:/Users/home/Desktop/image_project/bread_flat.png');

insert into cheese values('아메리칸 치즈', 'cheese_american', 'c:/Users/home/Desktop/image_project/cheese_american.png');
insert into cheese values('슈레드 치즈', 'cheese_shredded', 'c:/Users/home/Desktop/image_project/cheese_shredded.png');

insert into veg values('양상추', 'veg_lettuce', 'c:/Users/home/Desktop/image_project/veg_lettuce.jpg');
insert into veg values('토마토', 'veg_tomato', 'c:/Users/home/Desktop/image_project/veg_tomato.jpg');
insert into veg values('양파', 'veg_onion', 'c:/Users/home/Desktop/image_project/veg_onion.jpg');
insert into veg values('피망', 'veg_pepper', 'c:/Users/home/Desktop/image_project/veg_pepper.jpg');
insert into veg values('올리브', 'veg_olive', 'c:/Users/home/Desktop/image_project/veg_olive.jpg');

insert into sauce values('스위트 칠리', 'sauce_swchili', 'c:/Users/home/Desktop/image_project/sauce_swchili.jpg');
insert into sauce values('스위트 어니언', 'sauce_swonion', 'c:/Users/home/Desktop/image_project/sauce_swonion.jpg');
insert into sauce values('핫 칠리', 'sauce_hotchili', 'c:/Users/home/Desktop/image_project/sauce_hotchili.jpg');
insert into sauce values('후추', 'sauce_pepper', 'c:/Users/home/Desktop/image_project/sauce_pepper.jpg');
insert into sauce values('올리브 오일', 'sauce_oliveoil', 'c:/Users/home/Desktop/image_project/sauce_oliveoil.jpg');

insert into setorsingle values('세트', 'set_set', 'c:/Users/home/Desktop/image_project/set_set.jpg');
insert into setorsingle values('단품', 'set_single', 'c:/Users/home/Desktop/image_project/set_single.jpg');

select * from menu;
select * from bread;
select * from cheese;
select * from veg;
select * from sauce;
select * from setorsingle;