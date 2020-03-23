# DB deployment
The strategy that the project will use is to have a single PostgreSQL Database, but using the schemas to isolate all the set of tables and different accounts.

There are these components that will need a DB schema:
- WSO2 Identity server
- WSO2 API manager
- MICADO application
- Weblate translation management platform

All these components will be hosted on a single MICADO database and each will receive its own schema and a dedicated user; in this way each account will access and manage its own tables and there will be no confision or risk of interference between different softwares.