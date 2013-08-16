export HS_STATIC=$HOME/code/work/handshake/Handshake/djserver/handshake/static

export CWD=`pwd`

cd $CWD/node_modules/swagger-client
Cake bake
cd $CWD

mkdir -p $HS_STATIC/tastypie_swagger/
mkdir -p $HS_STATIC/tastypie_swagger/js/lib/
mkdir -p $HS_STATIC/tastypie_swagger/css/

Cake dist
cp dist/swagger*.js $HS_STATIC/tastypie_swagger/js/
cp dist/lib/*.js $HS_STATIC/tastypie_swagger/js/lib/
cp node_modules/swagger-client/lib/swagger.js $HS_STATIC/tastypie_swagger/js/lib/
cp dist/css/* $HS_STATIC/tastypie_swagger/css/
