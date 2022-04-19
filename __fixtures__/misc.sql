CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
CREATE EXTENSION IF NOT EXISTS plpgsql;

CREATE INDEX index_email_logs_on_created_at ON public.email_logs USING btree (created_at DESC);
CREATE INDEX index_email_logs_on_created_at ON public.email_logs USING btree (created_at DESC, another_prop ASC);


ALTER TABLE "Customer" ADD CONSTRAINT myconstraint
  FOREIGN KEY ("SupportRepId") REFERENCES "Employee" ("EmployeeId") ON DELETE NO ACTION ON UPDATE NO ACTION;