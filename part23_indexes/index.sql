CREATE INDEX ON users(username);

DROP INDEX users_username_idx;

-- To check all indexes
SELECT relname, relkind
FROM pg_class
WHERE relkind='i';