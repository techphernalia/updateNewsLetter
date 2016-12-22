create table app_users
(
	user_id int not null auto_increment primary key,
    user_email varchar(500) not null unique,
    user_name varchar(500) not null
);

create table app_products
(
	product_id int not null auto_increment primary key,
    product_name varchar(500) not null unique,
    product_is_draft BIT(1) not null default 1,
    product_requested_by int not null,
    product_requested_on varchar(20)
);

create table app_product_modules
(
	module_id int not null  auto_increment primary key,
	product_id int not null,
    module_name varchar(500) not null unique,
    module_is_draft BIT(1) not null default 1,
    module_requested_by int not null,
    module_requested_on varchar(20)
);

create table app_updates
(
	update_id int not null  auto_increment primary key,
    module_id int not null,
    update_title varchar(500) not null,
    update_description varchar(1000) not null,
    update_poster_id int not null,
    update_verifier_id int not null,
    update_status int not null,
    update_posted_on varchar(20),
    update_verified_on varchar(20),
    update_contact_person int not null
);

create table app_privileges
(
	privilege_id int not null,
    user_id int not null,
    module_id int not null default -1,
    product_id int not null default -1,
    user_role varchar(100),
    role_given_on varchar(20) not null,
    role_given_by int not null
);

create table app_subscription
(
	subscription_id int not null,
    product_id int not null,
    module_id int not null
);

create table app_mail_master
(
	master_id int not null auto_increment primary key,
    mail_id varchar(100) not null,
    master_status int not null,
	mail_count int not null,
    last_update_on varchar(20)
);

create table app_settings
(	
	setting_id int not null auto_increment primary key,
    setting_name varchar(500),
    setting_value varchar(500)
);