#!/bin/bash
mysqladmin -u root password "${MYSQL_ROOT_PASS}"
mysql -u root -p${MYSQL_ROOT_PASS} -e "create database ${MYSQL_DB}"
