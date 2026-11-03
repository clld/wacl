# Releasing the WACL clld app

Clone and install the software:
```shell
git clone https://github.com/clld/wacl
git clone --branch v1.0.1 --depth 1 https://github.com/cldf-datasets/wacl wacl-cldf
git clone --branch v5.3 --depth 1 https://github.com/glottolog/glottolog
cd wacl
pip install -e .[test]
```

Reload the database:
```shell
clld initdb development.ini --cldf ../wacl-cldf/cldf/StructureDataset-metadata.json --glottolog ../glottolog
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
pg_dump -xO --compress gzip:9 wacl > wacl.sql.gz
```

