\c myitsdb;

insert into users
  ( id,
    email,
    name,
    birthdate,
    profile_picture,
    last_connected_at,
    created_at,
    update_at,
    status,
    deleted_at )
  values
  ( 1,
    'phil@oudard.org',
    'Phil Barney',
    '1964-04-01',
    '/data/profiles/pictures/phil877267867919.jpg',
    now(),
    now(),
    now(),
    'active',
    null )
;
