DROP SCHEMA IF EXISTS "data" CASCADE;
CREATE SCHEMA "data" AUTHORIZATION "postgres";
SET search_path TO "data";
START TRANSACTION;
SET standard_conforming_strings=off;
SET escape_string_warning=off;
SET CONSTRAINTS ALL DEFERRED;
CREATE TABLE dashboard (
    id bigserial,
    version integer NOT NULL,
    slug character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    data text NOT NULL,
    org_id bigint NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL,
    updated_by integer,
    created_by integer,
    PRIMARY KEY ("id"),
    UNIQUE (org_id, slug)
);
-- Owner-Alter-Table --
ALTER TABLE "dashboard" OWNER TO "postgres";
-- Post-data save --
COMMIT;
START TRANSACTION;
-- Sequences --
-- Full Text keys --
COMMIT;
