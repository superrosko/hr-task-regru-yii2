DIR=$(cd "$(dirname "$0")" && pwd)
# shellcheck source=./conf/.configuration
. "$DIR/conf/.configuration"

echo "Install composer: "

docker-compose exec "$APP_NAME"-app composer global require fxp/composer-asset-plugin
docker-compose exec "$APP_NAME"-app composer install
