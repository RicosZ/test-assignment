PGDMP                     	    z            postgres    13.8    13.8 
    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    13442    postgres    DATABASE     c   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Thai_Thailand.874';
    DROP DATABASE postgres;
                postgres    false            ?           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    2986                        2615    16394    product    SCHEMA        CREATE SCHEMA product;
    DROP SCHEMA product;
                postgres    false                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            ?           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    16418    product    TABLE     ?   CREATE TABLE product.product (
    "Gender" character(10),
    "Style" character(100),
    "Size" character(10),
    "Price" character(10)
);
    DROP TABLE product.product;
       product         heap    postgres    false    5            ?          0    16418    product 
   TABLE DATA           F   COPY product.product ("Gender", "Style", "Size", "Price") FROM stdin;
    product          postgres    false    202   O       ?   }   x???1@0??:9Ş??P??&Hal?$?W ?Qc?z?W?????ʹ???(!?????4k??)?ϊ?'??EŦ@??l?=1D?$??o?Cѣ??ΪeS?:?NF??QA???S?BJy Č?j     