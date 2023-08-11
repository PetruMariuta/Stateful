#!/bin/bash

get_data() {
data_from_file3=$(kubectl exec -it stateful3-0 -- cat /fisiere/file3.md)


html_data="<pre>${data_from_file3}</pre>"

echo $html_data
kubectl exec -it stateful5-0 -- sh -c "echo '${html_data}' > /var/www/html/index.html"

}

get_data