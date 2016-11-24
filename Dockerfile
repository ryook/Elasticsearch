#
# Elasticsearch 5.0 Dockerfile
#
# https://github.com/ryook/Elasticsearch/
#

# pull base image
FROM elasticsearch:5.0

# install Plugins
RUN bin/elasticsearch-plugin install analysis-kuromoji
RUN bin/elasticsearch-plugin install analysis-icu

VOLUME /usr/share/elasticsearch/data

EXPOSE 9200 9300
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["elasticsearch"]
