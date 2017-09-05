#!/bin/bash

# AWS CLI requires Python 2.6.5, this script also requires Python 2.6+ or newer
if which aws > /dev/null 2>&1;
then
    AWSCLI_VERSION=`python -c "import awscli; print(awscli.__version__)"`
    if [[ "$AWSCLI_VERSION" < "1.11.132" ]] ;
    then
        echo "Please update your version of the AWS CLI."
        exit 0
    fi
else
    echo "Please install and configure the AWS CLI."
    echo "http://docs.aws.amazon.com/cli/latest/userguide/installing.html"
    exit 0
fi

ARGS=""

while [[ $# -gt 1 ]]
do
key="$1"
case "$key" in
    -U|--username)
    USERNAME="$2"
    shift
    ;;
    -i|--clusterid)
    CLUSTER_ID="$2"
    shift
    ;;
    -r|--region)
    REGION="$2"
    shift
    ;;
    -h|--host)
    HOST="$2"
    shift
    ;;
    *)
    ARGS="$ARGS $1"
    ;;
esac
shift
done

ARGS="$ARGS $@"


if [ "$HOST" != "" ] && [ "$CLUSTER_ID" != "" ] ;
then
    echo "Specify either Host or Cluster Identifier, not both."
    exit 0
fi

if [ "$CLUSTER_ID" != "" ] ;
then
    if [ "$REGION" == "" ] ;
    then
        CLUSTER_INFO=`aws redshift describe-clusters --cluster-identifier "$CLUSTER_ID"` || exit 0
        CREDS=`aws redshift get-cluster-credentials --db-user "$USERNAME" --cluster-identifier "$CLUSTER_ID"`
    else
        CLUSTER_INFO=`aws redshift describe-clusters --cluster-identifier "$CLUSTER_ID" --region="$REGION"` || exit 0
        CREDS=`aws redshift get-cluster-credentials --db-user "$USERNAME" --cluster-identifier "$CLUSTER_ID" --region="$REGION"`
    fi

    CLUSTER_ENDPOINT=`echo "$CLUSTER_INFO" | python -c "import sys, json;print(json.load(sys.stdin)['Clusters'][0]['Endpoint']['Address'])"`
    DBPWD=`echo "$CREDS" | python -c "import sys, json; print(json.load(sys.stdin)['DbPassword'])"`
    DBUSER=`echo "$CREDS" | python -c "import sys, json; print(json.load(sys.stdin)['DbUser'])"`

    ARGS="$ARGS -U $DBUSER -h $CLUSTER_ENDPOINT"
else
    ARGS="$ARGS -U $USERNAME -h $HOST"
fi

PGPASSWORD="$DBPWD" psql ${ARGS}
