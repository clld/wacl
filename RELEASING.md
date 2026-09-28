# Releasing the WACL clld app

Clone and install the software:
```shell
git clone https://github.com/clld/wacl
cd wacl
pip install -e .[test]
```

Reload the database:
```shell
clld initdb development.ini --cldf ../wacl-cldf/cldf/StructureDataset-metadata.json --glottolog ../../glottolog/glottolog
```

Make sure tests pass.
```shell
pytest
```

Store the tested requirements:
```shell
pip freeze > requirements.txt
```

Store a db dump:
```shell
pg_dump -xO wacl > wacl.sql
```

