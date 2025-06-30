#!/usr/bin/bash


if [ $# -lt 1 ]; then
				usage
				exit 1
fi

actual_rfc_url=""

if [ $# -eq 2 ]; then
	draft=$1
	version=$2
	rfc_url_template="https://datatracker.ietf.org/doc/DRAFT/VERSION/bibtex/"
	actual_rfc_url=${rfc_url_template/DRAFT/${draft}}
	actual_rfc_url=${actual_rfc_url/VERSION/${version}}
else
	rfc=$1
	rfc_url_template="https://datatracker.ietf.org/doc/rfcRFCN/bibtex/"
	actual_rfc_url=${rfc_url_template/RFCN/${rfc}}
fi

curl $actual_rfc_url
