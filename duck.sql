-- Load confluence spaces
create
or replace table domaine (
    domain VARCHAR NOT NULL,
    marque_nom  VARCHAR UNIQUE,-- NULL quand pas de marque associée (domaine réservé)
    marque_description VARCHAR,-- NULL quand pas de marque associée (domaine réservé)
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
