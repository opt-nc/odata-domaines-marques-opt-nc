-- Load confluence spaces
create
or replace table domaine (
    domain VARCHAR NOT NULL,
    marque_nom  VARCHAR NOT NULL UNIQUE,
    marque_description VARCHAR NOT NULL,
    url VARCHAR

);

insert into
    domaine (domain,marque_nom,marque_description,url)
from
    (
        from
            'data/domaines.csv'
    ) t;

from domaine;