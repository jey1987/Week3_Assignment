create table tbl_users
(
user_id bigint not null,
user_name varchar(100),
constraint pk_users PRIMARY KEY(user_id) 
);

create table tbl_groups
(
group_id bigint not null,
group_name varchar(100),
constraint pk_groups PRIMARY KEY(group_id)
);

create table tbl_rooms
(
room_id bigint not null,
room_name varchar(100),
constraint pk_rooms PRIMARY KEY(room_id)
);

create table tbl_user_groups
(
user_id bigint not null REFERENCES tbl_users(user_id),
group_id bigint not null REFERENCES tbl_groups(group_id),
CONSTRAINT pk_user_groups PRIMARY KEY (user_id,group_id)
);

create table tbl_group_rooms
(
room_id bigint not null REFERENCES tbl_users(room_id),
group_id bigint not null REFERENCES tbl_groups(group_id),
CONSTRAINT pk_user_groups PRIMARY KEY (room_id,group_id)
);