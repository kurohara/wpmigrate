#!/bin/sh
. ./wpenv.sh
output=comments.sql
if [ "$1" != "" ];then
	output=$1
fi
mysqldump -u ${dbuser} -p${dbpasswd} ${dbname} wp_comments wp_commentmeta > ${output}

postmeta_condition="meta_key = '_feedback_akismet_values'"
mysqldump -u ${dbuser} -p${dbpasswd} ${dbname} --no-create-info --where="${postmeta_condition}" wp_postmeta >> ${output}

