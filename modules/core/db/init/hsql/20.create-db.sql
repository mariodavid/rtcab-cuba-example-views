-- begin CEV_CUSTOMER
alter table CEV_CUSTOMER add constraint FK_CEV_CUSTOMER_TYPE foreign key (TYPE_ID) references CEV_CUSTOMER_TYPE(ID)^
create index IDX_CEV_CUSTOMER_TYPE on CEV_CUSTOMER (TYPE_ID)^
-- end CEV_CUSTOMER
