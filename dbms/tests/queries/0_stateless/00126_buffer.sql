DROP TABLE IF EXISTS test.buffer;
DROP TABLE IF EXISTS test.null_sink;

CREATE TABLE test.null_sink (a UInt8, b String, c Array(UInt32)) ENGINE = Null;
CREATE TABLE test.buffer (a UInt8, b String, c Array(UInt32)) ENGINE = Buffer(test, null_sink, 1, 1000, 1000, 1000, 1000, 1000000, 1000000);

INSERT INTO test.buffer VALUES (1, '2', [3]);

SELECT a, b, c FROM test.buffer ORDER BY a, b, c;
SELECT b, c, a FROM test.buffer ORDER BY a, b, c;
SELECT c, a, b FROM test.buffer ORDER BY a, b, c;
SELECT a, c, b FROM test.buffer ORDER BY a, b, c;
SELECT b, a, c FROM test.buffer ORDER BY a, b, c;
SELECT c, b, a FROM test.buffer ORDER BY a, b, c;
SELECT a, b FROM test.buffer ORDER BY a, b, c;
SELECT b, c FROM test.buffer ORDER BY a, b, c;
SELECT c, a FROM test.buffer ORDER BY a, b, c;
SELECT a, c FROM test.buffer ORDER BY a, b, c;
SELECT b, a FROM test.buffer ORDER BY a, b, c;
SELECT c, b FROM test.buffer ORDER BY a, b, c;
SELECT a FROM test.buffer ORDER BY a, b, c;
SELECT b FROM test.buffer ORDER BY a, b, c;
SELECT c FROM test.buffer ORDER BY a, b, c;

INSERT INTO test.buffer (c, b, a) VALUES ([7], '8', 9);

SELECT a, b, c FROM test.buffer ORDER BY a, b, c;
SELECT b, c, a FROM test.buffer ORDER BY a, b, c;
SELECT c, a, b FROM test.buffer ORDER BY a, b, c;
SELECT a, c, b FROM test.buffer ORDER BY a, b, c;
SELECT b, a, c FROM test.buffer ORDER BY a, b, c;
SELECT c, b, a FROM test.buffer ORDER BY a, b, c;
SELECT a, b FROM test.buffer ORDER BY a, b, c;
SELECT b, c FROM test.buffer ORDER BY a, b, c;
SELECT c, a FROM test.buffer ORDER BY a, b, c;
SELECT a, c FROM test.buffer ORDER BY a, b, c;
SELECT b, a FROM test.buffer ORDER BY a, b, c;
SELECT c, b FROM test.buffer ORDER BY a, b, c;
SELECT a FROM test.buffer ORDER BY a, b, c;
SELECT b FROM test.buffer ORDER BY a, b, c;
SELECT c FROM test.buffer ORDER BY a, b, c;

INSERT INTO test.buffer (a, c) VALUES (11, [33]);

SELECT a, b, c FROM test.buffer ORDER BY a, b, c;
SELECT b, c, a FROM test.buffer ORDER BY a, b, c;
SELECT c, a, b FROM test.buffer ORDER BY a, b, c;
SELECT a, c, b FROM test.buffer ORDER BY a, b, c;
SELECT b, a, c FROM test.buffer ORDER BY a, b, c;
SELECT c, b, a FROM test.buffer ORDER BY a, b, c;
SELECT a, b FROM test.buffer ORDER BY a, b, c;
SELECT b, c FROM test.buffer ORDER BY a, b, c;
SELECT c, a FROM test.buffer ORDER BY a, b, c;
SELECT a, c FROM test.buffer ORDER BY a, b, c;
SELECT b, a FROM test.buffer ORDER BY a, b, c;
SELECT c, b FROM test.buffer ORDER BY a, b, c;
SELECT a FROM test.buffer ORDER BY a, b, c;
SELECT b FROM test.buffer ORDER BY a, b, c;
SELECT c FROM test.buffer ORDER BY a, b, c;

DROP TABLE test.buffer;
DROP TABLE test.null_sink;
