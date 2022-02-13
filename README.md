```bash
rails new st
cd st

cat << EOF > config/database.yml
development:
  primary:
    database: st
    adapter: postgresql
  voyager:
    database: voyager
    adapter: postgresql
    migrations_paths: db/voyager_migrate
EOF

rails db:setup
rails g model article title
rails g model character name --database voyager
rails db:migrate
```

```
❯ tree db/
db/
├── migrate
│   └── 20220213184420_create_articles.rb
├── schema.rb
├── seeds.rb
├── voyager_migrate
│   └── 20220213184421_create_characters.rb
└── voyager_schema.rb
```

```bash
rails plugin new ops --mountable
cd ops/
sed 's/TODO//g; s/spec.metadata/#spec.metadata/g' ops.gemspec -i
bundle

bin/rails g model planet name --database=voyager
```

```
      invoke  active_record
      create    db/migrate/20220213184803_create_ops_planets.rb
      create    app/models/ops/planet.rb
      invoke    test_unit
      create      test/models/ops/planet_test.rb
      create      test/fixtures/ops/planets.yml
```

```
❯ bin/rails g model plan name --database=voyager
      invoke  active_record
      create    db/voyager_migrate/20220213184907_create_plans.rb
      create    app/models/plan.rb
      invoke    test_unit
      create      test/models/plan_test.rb
      create      test/fixtures/plans.yml
```
