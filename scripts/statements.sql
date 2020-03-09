CREATE STREAM `foo-bar` (id VARCHAR) WITH (kafka_topic='foo', value_format='JSON', partitions=1);
INSERT INTO `foo-bar` (id) VALUES ('123');
CREATE STREAM `foo-too` AS SELECT * FROM `foo-bar`;
