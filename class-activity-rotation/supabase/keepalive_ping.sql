-- Run once in the Supabase SQL Editor.
-- This function performs a harmless database read and returns a constant.
create or replace function public.keepalive_ping()
returns integer
language sql
stable
security invoker
set search_path = public
as $$
  select 1;
$$;

revoke all on function public.keepalive_ping() from public;
grant execute on function public.keepalive_ping() to anon, authenticated;
