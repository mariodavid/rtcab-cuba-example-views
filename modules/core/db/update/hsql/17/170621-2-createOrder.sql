alter table CEV_ORDER add constraint FK_CEV_ORDER_CUSTOMER foreign key (CUSTOMER_ID) references CEV_CUSTOMER(ID);
create index IDX_CEV_ORDER_CUSTOMER on CEV_ORDER (CUSTOMER_ID);
