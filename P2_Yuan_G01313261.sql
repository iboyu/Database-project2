create table Branches(
  branch_id varchar2(50) not null,
  b_location varchar2(50),
  opening_hours varchar2(50),
  branch_name varchar2(50),
  primary key(branch_id)
);

create table Offers(
  offer_id varchar2(20) not null,
  action varchar2(50),
  o_date date,
  o_description varchar2(100),
  primary key(offer_id)
);

create table Transactions(
  tref varchar2(50) not null,
  amount number(38,2),
  t_date date,
  t_time varchar2(20),
  t_points number(30,0),
  t_description varchar2(100),
  cashier_name varchar2(20),
  primary key(tref)
 );
 
 create table  Offers_Transactions(
   offer_id varchar2(20),
   tref varchar2(50),
   primary key(offer_id,tref),
   foreign key(offer_id) references Offers,
   foreign key(tref) references Transactions
);

create table Products(
  prod_id varchar2(20) not null,
  prod_points number(38,0),
  price number(38,2),
  prod_name varchar2(20),
  primary key(prod_id)
);

create table Contain(
  tref varchar2(50),
  prod_id varchar2(20),
  quantity number(38,2),
  primary key(tref, prod_id),
  foreign key(tref) references Transactions,
  foreign key(prod_id) references Products
);

create table Families(
  family_id varchar2(20) not null,
  num_members number(38,0),
  family_name varchar2(20),
  primary key(family_id)
);

create table Point_Account(
  point_acct_no varchar2(20) not null,
  num_of_points number(38,0),
  primary key(point_acct_no)
);

create table Family_Add(
  point_acct_no varchar2(20),
  family_id varchar2(20),
  percent_added varchar2(10),
  primary key(point_acct_no, family_id),
  foreign key(point_acct_no) references Point_Account,
  foreign key(family_id) references Families
);

create table Customers(
  cid varchar2(20) not null,
  cname varchar2(20),
  phone varchar2(20),
  gender varchar2(20),
  ssn varchar2(11) not null,
  occupation varchar2(20),
  dob date,
  email varchar2(20),
  is_member varchar2(5),
  mstatus varchar2(10),
  primary key(cid)
);

create table address(
  cid varchar2(20),
  street varchar2(20),
  apt varchar2(5),
  city varchar2(10),
  state varchar2(10),
  zip varchar2(5),
  primary key(cid,street),
  foreign key(cid) references Customers
);

create table Cards(
  card_id varchar2(20) not null,
  status varchar2(20),
  exp_date date,
  primary key(card_id)
);

create table Assigned(
  card_id varchar2(20),
  cid varchar2(20),
  c_date date,
  primary key(card_id,cid),
  foreign key(card_id) references Cards,
  foreign key(cid) references Customers
);

create table Prizes(
  prize_id varchar2(20) not null,
  p_description varchar2(100),
  points_needed number(38,0),
  primary key(prize_id)
);

create table Prizes_Customers(
  prize_id varchar2(20),
  cid varchar2(20),
  quantity number(38,0),
  r_date date,
  primary key(prize_id,cid),
  foreign key(prize_id) references Prizes,
  foreign key(cid) references Customers
);

create table ExchangeCenters(
  center_id varchar2(20) not null,
  c_location varchar2(50),
  center_name varchar2(20),
  primary key (center_id)
);

create table Login(
  username varchar2(30) not null,
  passwd varchar2(30),
  primary key(username)
);



















  
  
  