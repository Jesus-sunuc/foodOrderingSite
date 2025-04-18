-- DROP SCHEMA lunch_box;

CREATE SCHEMA lunch_box;

-- DROP SEQUENCE lunch_box.category_id_seq;

-- =========================================
-- =============== Sequences================
-- =========================================

CREATE SEQUENCE lunch_box.category_id_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.category_id_seq1;

CREATE SEQUENCE lunch_box.category_id_seq1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.customer_id_seq;

CREATE SEQUENCE lunch_box.customer_id_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.customer_id_seq1;

CREATE SEQUENCE lunch_box.customer_id_seq1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.deal_id_seq;

CREATE SEQUENCE lunch_box.deal_id_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.deal_id_seq1;

CREATE SEQUENCE lunch_box.deal_id_seq1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.food_order_id_seq;

CREATE SEQUENCE lunch_box.food_order_id_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.food_order_id_seq1;

CREATE SEQUENCE lunch_box.food_order_id_seq1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.ingredient_id_seq;

CREATE SEQUENCE lunch_box.ingredient_id_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.ingredient_id_seq1;

CREATE SEQUENCE lunch_box.ingredient_id_seq1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.item_category_id_seq;

CREATE SEQUENCE lunch_box.item_category_id_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.item_category_id_seq1;

CREATE SEQUENCE lunch_box.item_category_id_seq1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.item_id_seq;

CREATE SEQUENCE lunch_box.item_id_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.item_id_seq1;

CREATE SEQUENCE lunch_box.item_id_seq1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.item_ingredient_id_seq;

CREATE SEQUENCE lunch_box.item_ingredient_id_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.item_ingredient_id_seq1;

CREATE SEQUENCE lunch_box.item_ingredient_id_seq1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.order_item_id_seq;

CREATE SEQUENCE lunch_box.order_item_id_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.order_item_id_seq1;

CREATE SEQUENCE lunch_box.order_item_id_seq1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.rewards_id_seq;

CREATE SEQUENCE lunch_box.rewards_id_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.rewards_id_seq1;

CREATE SEQUENCE lunch_box.rewards_id_seq1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.store_deal_id_seq;

CREATE SEQUENCE lunch_box.store_deal_id_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.store_deal_id_seq1;

CREATE SEQUENCE lunch_box.store_deal_id_seq1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.store_id_seq;

CREATE SEQUENCE lunch_box.store_id_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.store_id_seq1;

CREATE SEQUENCE lunch_box.store_id_seq1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
-- DROP SEQUENCE lunch_box.testing_identity_id_seq;

CREATE SEQUENCE lunch_box.testing_identity_id_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 2147483647
    START 1
    CACHE 1
    NO CYCLE;
    

    
-- =========================================
-- ========== Independent Tables ===========
-- =========================================
    
-- lunch_box.item definition

-- Drop table

-- DROP TABLE lunch_box.item;

CREATE TABLE lunch_box.item (
    id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    item_name varchar(40) NOT NULL,
    description text NULL,
    price numeric NOT NULL,
    image_url text NOT NULL,
    CONSTRAINT item_pkey PRIMARY KEY (id)
);	

-- lunch_box.category definition
    
-- Drop table

-- DROP TABLE lunch_box.category;

CREATE TABLE lunch_box.category (
    id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    category_name varchar(40) NULL,
    CONSTRAINT category_pkey PRIMARY KEY (id)
);


-- lunch_box.customer definition

-- Drop table

-- DROP TABLE lunch_box.customer;

CREATE TABLE lunch_box.customer (
    id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    cust_name varchar(40) NULL,
    email varchar(320) NOT NULL,
    phone varchar(20) NULL,
    CONSTRAINT customer_email_key UNIQUE (email),
    CONSTRAINT customer_pkey PRIMARY KEY (id)
);


-- lunch_box.store definition

-- Drop table

-- DROP TABLE lunch_box.store;

CREATE TABLE lunch_box.store (
    id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    address varchar(200) NOT NULL,
    phone varchar(20) NOT NULL,
    CONSTRAINT store_pkey PRIMARY KEY (id)
);

-- lunch_box.ingredient definition

-- Drop table

-- DROP TABLE lunch_box.ingredient;

CREATE TABLE lunch_box.ingredient (
    id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    ingredient_name varchar(40) NOT NULL,
    calories int4 NOT NULL,
    price numeric NOT NULL,
    image_url text NOT NULL,
    CONSTRAINT ingredient_pkey PRIMARY KEY (id)
);



-- =========================================
-- =========== Dependent Tables ============
-- =========================================

-- lunch_box.deal definition

-- Drop table

-- DROP TABLE lunch_box.deal;

CREATE TABLE lunch_box.deal (
    id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    deal_name varchar(40) NOT NULL,
    price_reduction numeric NOT NULL,
    item_id int4 NULL,
    CONSTRAINT deal_pkey PRIMARY KEY (id),
    CONSTRAINT deal_item_id_fkey FOREIGN KEY (item_id) REFERENCES lunch_box.item(id)
);


-- lunch_box.food_order definition

-- Drop table

-- DROP TABLE lunch_box.food_order;

CREATE TABLE lunch_box.food_order (
    id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    order_date date NOT NULL,
    cust_id int4 NOT NULL,
    subtotal numeric NOT NULL,
    tax numeric NOT NULL,
    CONSTRAINT food_order_pkey PRIMARY KEY (id),
    CONSTRAINT food_order_cust_id_fkey FOREIGN KEY (cust_id) REFERENCES lunch_box.customer(id)
);


-- lunch_box.item_category definition

-- Drop table

-- DROP TABLE lunch_box.item_category;

CREATE TABLE lunch_box.item_category (
    id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    item_id int4 NULL,
    category_id int4 NULL,
    CONSTRAINT item_category_pkey PRIMARY KEY (id),
    CONSTRAINT item_category_category_id_fkey FOREIGN KEY (category_id) REFERENCES lunch_box.category(id),
    CONSTRAINT item_category_item_id_fkey FOREIGN KEY (item_id) REFERENCES lunch_box.item(id)
);


-- lunch_box.item_ingredient definition

-- Drop table

-- DROP TABLE lunch_box.item_ingredient;

CREATE TABLE lunch_box.item_ingredient (
    id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    item_id int4 NULL,
    ingredient_id int4 NULL,
    CONSTRAINT item_ingredient_pkey PRIMARY KEY (id),
    CONSTRAINT item_ingredient_ingredient_id_fkey FOREIGN KEY (ingredient_id) REFERENCES lunch_box.ingredient(id),
    CONSTRAINT item_ingredient_item_id_fkey FOREIGN KEY (item_id) REFERENCES lunch_box.item(id)
);


-- lunch_box.order_item definition

-- Drop table

-- DROP TABLE lunch_box.order_item;

CREATE TABLE lunch_box.order_item (
    id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    item_id int4 NOT NULL,
    order_id int4 NOT NULL,
    CONSTRAINT order_item_pkey PRIMARY KEY (id),
    CONSTRAINT order_item_item_id_fkey FOREIGN KEY (item_id) REFERENCES lunch_box.item(id),
    CONSTRAINT order_item_order_id_fkey FOREIGN KEY (order_id) REFERENCES lunch_box.food_order(id)
);


-- lunch_box.rewards definition

-- Drop table

-- DROP TABLE lunch_box.rewards;

CREATE TABLE lunch_box.rewards (
    id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    points int4 NOT NULL,
    cust_id int4 NOT NULL,
    CONSTRAINT rewards_pkey PRIMARY KEY (id),
    CONSTRAINT rewards_cust_id_fkey FOREIGN KEY (cust_id) REFERENCES lunch_box.customer(id)
);


-- lunch_box.store_deal definition

-- Drop table

-- DROP TABLE lunch_box.store_deal;

CREATE TABLE lunch_box.store_deal (
    id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    deal_id int4 NULL,
    store_id int4 NULL,
    CONSTRAINT store_deal_pkey PRIMARY KEY (id),
    CONSTRAINT store_deal_deal_id_fkey FOREIGN KEY (deal_id) REFERENCES lunch_box.deal(id),
    CONSTRAINT store_deal_store_id_fkey FOREIGN KEY (store_id) REFERENCES lunch_box.store(id)
);



-- =========================================
-- ============== Procedures ===============
-- =========================================

-- DROP PROCEDURE lunch_box.generate_item(int4);

CREATE OR REPLACE PROCEDURE lunch_box.generate_item(IN complexity integer)
LANGUAGE plpgsql
AS $procedure$
declare
    runcount int := 0;
    newitem varchar;
    price numeric := 0;
    ingredients record;
begin                
    while (newitem is null and runcount <= 20) loop
    for ingredients in select ing.*
            from lunch_box.ingredient ing
            order by random(),ingredient_name asc
            limit complexity
    loop
        newitem := Concat(newitem, ingredients.ingredient_name);
        price := price + ingredients.price;
    end loop;
    
        if exists (select 1 from item where item_name = newitem) then
            ingredients := null;
            newitem := null;
            price := 0;
        end if;
        runcount := runcount + 1;
    end loop;
    if (newitem is not null) then
    call insert_item(newitem, '',price, '' );
    end if;
end;
$procedure$
;

-- DROP PROCEDURE lunch_box.insert_item(varchar, text, numeric, text);

CREATE OR REPLACE PROCEDURE lunch_box.insert_item(IN item_name character varying, IN description text, IN price numeric, IN image_url text)
LANGUAGE sql
AS $procedure$
    insert into lunch_box.item (item_name, description, price, image_url) values (
    item_name,
    description,
    price,
    image_url
    )
$procedure$
;