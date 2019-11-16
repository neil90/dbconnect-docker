#!/bin/sh
cat << EOF > ~/.databricks-connect
{
    "host": "$SHARD",
    "cluster_id": "$CLUSTERID",
    "port": "$PORT",
    "ord_id": "$ORGID",
    "token": "$TOKEN"
}
EOF

exec "$@"