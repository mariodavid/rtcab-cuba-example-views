-- begin CEV_CUSTOMER
alter table CEV_CUSTOMER add constraint FK_CEV_CUSTOMER_TYPE foreign key (TYPE_ID) references CEV_CUSTOMER_TYPE(ID)^
create index IDX_CEV_CUSTOMER_TYPE on CEV_CUSTOMER (TYPE_ID)^
-- end CEV_CUSTOMER
-- begin CEV_ORDER
alter table CEV_ORDER add constraint FK_CEV_ORDER_CUSTOMER foreign key (CUSTOMER_ID) references CEV_CUSTOMER(ID)^
create index IDX_CEV_ORDER_CUSTOMER on CEV_ORDER (CUSTOMER_ID)^
-- end CEV_ORDER
