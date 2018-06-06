\c myitsdb;

insert into compagnies 
  ( id,
    name,
    created_at,
    update_at,
    status,
    deleted_at )
  values
  ( 1,
    'myits compagnies',
    now(),
    now(),
    'active',
    null );
