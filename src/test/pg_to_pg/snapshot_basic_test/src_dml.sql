INSERT INTO default_table VALUES (default, 30, '2019-02-10 11:34:58', '2019-02-10 11:35:00', '10:20:11', '10:20:12', '2019-02-01', '$20', B'101', 32766, 2147483646, 9223372036854775806, 3.14, true, 3.14768, 1234.56, 'Test', '(0,0),(1,1)', '<(0,0),1>', '01:02:03', '{0,1,2}', '((0,0),(1,1))', '((0,0),(0,1),(0,2))', '(1,1)', '((0,0),(0,1),(1,1))', 'a', 'hello world', '{"key": 123}', '<doc><item>abc</item></doc>', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', B'101', '192.168.1.100', '192.168.1', '08:00:2b:01:02:03');
INSERT INTO default_table VALUES (default, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO numeric_table (si, i, bi, r, db, r_int, db_int, r_nan, db_nan, r_pinf, db_pinf, r_ninf, db_ninf, ss, bs, b, o) VALUES (1, 123456, 1234567890123, 3.3, 4.44, 3, 4, 'NaN', 'NaN', 'Infinity', 'Infinity', '-Infinity', '-Infinity', 1, 123, true, 4000000000)

INSERT INTO numeric_decimal_table (d, dzs, dvs, d_nn, n, nzs, nvs, d_int, dzs_int, dvs_int, n_int, nzs_int, nvs_int, d_nan, dzs_nan, dvs_nan, n_nan, nzs_nan, nvs_nan) VALUES (1.1, 10.11, 10.1111, 3.30, 22.22, 22.2, 22.2222, 1, 10, 10, 22, 22, 22, 'NaN', 'NaN', 'NaN', 'NaN', 'NaN', 'NaN')
INSERT INTO numeric_decimal_table (d, dzs, dvs, d_nn, n, nzs, nvs, d_int, dzs_int, dvs_int, n_int, nzs_int, nvs_int, d_nan, dzs_nan, dvs_nan, n_nan, nzs_nan, nvs_nan) VALUES (1.1, 10.11, 10.1111, 3.30, 22.22, 22.2, 22.2222, 1, 10, 10, 22, 22, 22, null, null, null, null, null, null)

INSERT INTO string_table (vc, vcv, ch, c, t, b, bnn, ct) VALUES ('žš', 'bb', 'cdef', 'abc', 'some text', E'\\000\\001\\002'::bytea, E'\\003\\004\\005'::bytea, 'Hello World')

INSERT INTO network_address_table (i) VALUES ('192.168.2.0/12')

INSERT INTO cidr_network_address_table (i) VALUES ('192.168.100.128/25');

INSERT INTO macaddr_table (m) VALUES ('08:00:2b:01:02:03');

INSERT INTO cash_table (csh) VALUES ('$1234.11')
INSERT INTO cash_table (csh) VALUES ('($1234.11)')
INSERT INTO cash_table (csh) VALUES (NULL)

INSERT INTO bitbin_table (ba, bol, bol2, bs, bs7, bv, bv2, bvl, bvunlimited1, bvunlimited2) VALUES (E'\\001\\002\\003'::bytea, '0'::bit(1), '1'::bit(1), '11'::bit(2), '1'::bit(7), '00'::bit(2), '000000110000001000000001'::bit(24),'1000000000000000000000000000000000000000000000000000000000000000'::bit(64), '101', '111011010001000110000001000000001')

INSERT INTO bytea_binmode_table (ba) VALUES (E'\\001\\002\\003'::bytea)

INSERT INTO time_table(ts, tsneg, ts_ms, ts_us, tz, date, date_pinf, date_ninf, ti, tip, ttf, ttz, tptz, it, ts_large, ts_large_us, ts_large_ms, tz_large, ts_max, ts_min, tz_max, tz_min, ts_pinf, ts_ninf, tz_pinf, tz_ninf) VALUES ('2016-11-04T13:51:30.123456'::TIMESTAMP, '1936-10-25T22:10:12.608'::TIMESTAMP, '2016-11-04T13:51:30.123456'::TIMESTAMP, '2016-11-04T13:51:30.123456'::TIMESTAMP, '2016-11-04T13:51:30.123456+02:00'::TIMESTAMPTZ, '2016-11-04'::DATE, 'infinity'::DATE, '-infinity'::DATE, '13:51:30'::TIME, '13:51:30.123'::TIME, '24:00:00'::TIME, '13:51:30.123789+02:00'::TIMETZ, '13:51:30.123+02:00'::TIMETZ, 'P1Y2M3DT4H5M6.78S'::INTERVAL,'21016-11-04T13:51:30.123456'::TIMESTAMP, '21016-11-04T13:51:30.123457'::TIMESTAMP, '21016-11-04T13:51:30.124'::TIMESTAMP,'21016-11-04T13:51:30.123456+07:00'::TIMESTAMPTZ,'294247-01-01T23:59:59.999999'::TIMESTAMP,'4713-12-31T23:59:59.999999 BC'::TIMESTAMP,'294247-01-01T23:59:59.999999+00:00'::TIMESTAMPTZ,'4714-12-31T23:59:59.999999Z BC'::TIMESTAMPTZ,'infinity'::TIMESTAMP,'-infinity'::TIMESTAMP,'infinity'::TIMESTAMPTZ,'-infinity'::TIMESTAMPTZ)
INSERT INTO time_table(ts, tsneg, ts_ms, ts_us, tz, date, date_pinf, date_ninf, ti, tip, ttf, ttz, tptz, it, ts_large, ts_large_us, ts_large_ms, tz_large, ts_max, ts_min, tz_max, tz_min, ts_pinf, ts_ninf, tz_pinf, tz_ninf) VALUES ('2016-11-04T13:51:30.123456'::TIMESTAMP, '1936-10-25T22:10:12.608'::TIMESTAMP, '2016-11-04T13:51:30.123456'::TIMESTAMP, '2016-11-04T13:51:30.123456'::TIMESTAMP, '2016-11-04T13:51:30.123456+02:00'::TIMESTAMPTZ, '2016-11-04'::DATE, '2016-11-04'::DATE, '2016-11-04'::DATE, '13:51:30'::TIME, '13:51:30.123'::TIME, '24:00:00'::TIME, '13:51:30.123789+02:00'::TIMETZ, '13:51:30.123+02:00'::TIMETZ, 'P1Y2M3DT4H5M6.78S'::INTERVAL,'21016-11-04T13:51:30.123456'::TIMESTAMP, '2016-11-04T13:51:30.123457'::TIMESTAMP, '2016-11-04T13:51:30.124'::TIMESTAMP,'2016-11-04T13:51:30.123456+07:00'::TIMESTAMPTZ,'2016-01-01T23:59:59.999999'::TIMESTAMP,'2016-12-31T23:59:59.999999 BC'::TIMESTAMP,'2016-01-01T23:59:59.999999+00:00'::TIMESTAMPTZ,'2016-12-31T23:59:59.999999Z BC'::TIMESTAMPTZ,'2016-12-31T23:59:59.999999Z BC'::TIMESTAMP,'2016-12-31T23:59:59.999999Z BC'::TIMESTAMP,'2016-12-31T23:59:59.999999Z BC'::TIMESTAMPTZ,'2016-12-31T23:59:59.999999Z BC'::TIMESTAMPTZ)

INSERT INTO text_table(j, jb, x, u) VALUES ('{"bar": "baz"}'::json, '{"bar": "baz"}'::jsonb, '<foo>bar</foo><foo>bar</foo>'::xml, 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11'::UUID)

INSERT INTO geom_table(p) VALUES ('(1,1)'::point)

INSERT INTO range_table (unbounded_exclusive_tsrange, bounded_inclusive_tsrange, unbounded_exclusive_tstzrange, bounded_inclusive_tstzrange, unbounded_exclusive_daterange, bounded_exclusive_daterange, int4_number_range, numerange, int8_number_range) VALUES ('[2019-03-31 15:30:00, infinity)', '[2019-03-31 15:30:00, 2019-04-30 15:30:00]', '[2017-06-05 11:29:12.549426+00,)', '[2017-06-05 11:29:12.549426+00, 2017-06-05 12:34:56.789012+00]', '[2019-03-31, infinity)', '[2019-03-31, 2019-04-30)', '[1000,6000)', '[5.3,6.3)', '[1000000,6000000)')

INSERT INTO array_table (int_array, bigint_array, text_array, char_array, varchar_array, date_array, numeric_array, varnumeric_array, citext_array, inet_array, cidr_array, macaddr_array, tsrange_array, tstzrange_array, daterange_array, int4range_array, numerange_array, int8range_array, uuid_array, json_array, jsonb_array, oid_array) VALUES ('{1,2,3}', '{1550166368505037572}', '{"one","two","three"}', '{"cone","ctwo","cthree"}', '{"vcone","vctwo","vcthree"}', '{2016-11-04,2016-11-05,2016-11-06}', '{1.2,3.4,5.6}', '{1.1,2.22,3.333}', '{"four","five","six"}', '{"192.168.2.0/12","192.168.1.1","192.168.0.2/1"}', '{"192.168.100.128/25", "192.168.0.0/25", "192.168.1.0/24"}', '{"08:00:2b:01:02:03", "08-00-2b-01-02-03", "08002b:010203"}','{"[2019-03-31 15:30:00, infinity)", "[2019-03-31 15:30:00, 2019-04-30 15:30:00]"}', '{"[2017-06-05 11:29:12.549426+00,)", "[2017-06-05 11:29:12.549426+00, 2017-06-05 12:34:56.789012+00]"}', '{"[2019-03-31, infinity)", "[2019-03-31, 2019-04-30)"}', '{"[1,6)", "[1,4)"}', '{"[5.3,6.3)", "[10.0,20.0)"}', '{"[1000000,6000000)", "[5000,9000)"}', '{"a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11", "f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11"}',array['{"bar": "baz"}','{"foo": "qux"}']::json[], array['{"bar": "baz"}','{"foo": "qux"}']::jsonb[], '{3,4000000000}')

INSERT INTO array_table_with_nulls (int_array, bigint_array, text_array, date_array, numeric_array, varnumeric_array, citext_array, inet_array, cidr_array, macaddr_array, tsrange_array, tstzrange_array, daterange_array, int4range_array, numerange_array, int8range_array, uuid_array, json_array, jsonb_array) VALUES (null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null)

INSERT INTO custom_table (lt, i, n, lt_array) VALUES ('Top.Collections.Pictures.Astronomy.Galaxies', '978-0-393-04002-9', NULL, '{"Ship.Frigate","Ship.Destroyer"}')

INSERT INTO hstore_table (hs) VALUES ('"key" => "val"'::hstore)

INSERT INTO hstore_table_mul (hs, hsarr) VALUES ('"key1" => "val1","key2" => "val2","key3" => "val3"', array['"key4" => "val4","key5" => NULL'::hstore, '"key6" => "val6"'])

INSERT INTO hstore_table_with_null (hs) VALUES ('"key1" => "val1","key2" => NULL')

INSERT INTO hstore_table_with_special (hs) VALUES ('"key_#1" => "val 1","key 2" =>" ##123 78"')

INSERT INTO circle_table (ccircle) VALUES ('((10, 20),10)'::circle)

INSERT INTO macaddr8_table (m) VALUES ('08:00:2b:01:02:03:04:05');

INSERT INTO public.postgis_table (p, ml) VALUES ('SRID=3187;POINT(174.9479 -36.7208)'::geometry, 'MULTILINESTRING((169.1321 -44.7032, 167.8974 -44.6414))'::geography)

INSERT INTO public.postgis_array_table (ga, gann) VALUES (ARRAY['GEOMETRYCOLLECTION EMPTY'::geometry, 'POLYGON((166.51 -46.64, 178.52 -46.64, 178.52 -34.45, 166.51 -34.45, 166.51 -46.64))'::geometry], ARRAY['GEOMETRYCOLLECTION EMPTY'::geometry, 'POLYGON((166.51 -46.64, 178.52 -46.64, 178.52 -34.45, 166.51 -34.45, 166.51 -46.64))'::geometry])

