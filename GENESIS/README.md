# GENESIS

Project documentation : 


## Repository structure

This repo contains inside GENESIS

```
.
|
├── snowflake                       - Folder of database management modules
│   └── db_setup                       - Contains DDL script to setup database (schemas, roles, ext. stages, privileges)
│   └── db_loading                     - Contains DDL script to create sources views connected to the datalake through ext. stages
├── transformation                  - Folder of integration modules
│   └── genesis                         - Contains all transformations models done using dbt framework
```


## Install

1. Clone the repository with ssh or https
2. Run the following command (the one adapt to your os) to create a virtual environment and install required packages
```bash
$ make install # Linux
$ make install_windows # Windows
```

Your environment is setup ! 

Also, do not forget to work inside the virtual environment :
```bash
$ cd ~
$ source ./pyenv/bin/activate # Linux
$ source ./pyenv/Scripts/activate # Windows
```

Additional information about setup can be found [here](https://sanofi.atlassian.net/wiki/spaces/QCDATA/pages/63651245071/DBT+Data+Build+Tool#Installation-of-dbt)

Now you're ready to transform your data :)

## How-to-work-with

### Snowflake 
Documentation about Snowflake access and usage can be found [here](https://sanofi.atlassian.net/l/cp/Q7jd07wL)

### dbt
The transformation tool used is dbt. The documentation can be found [here](https://sanofi.atlassian.net/wiki/spaces/QCDATA/pages/63651245071/DBT+Data+Build+Tool)

