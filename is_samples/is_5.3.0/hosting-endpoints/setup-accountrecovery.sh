echo "---------- Start Setting up accountrecoveryendpoint in a web server ----------"
echo "Please enter the path to your WSO2-IS installation."
echo "Example: /home/downloads/WSO2_Products/wso2is-5.3.0"
read WSO2_PATH

echo

if [ ! -d "${WSO2_PATH}" ]
  then
    echo "${WSO2_PATH} Directory does not exists. Please download and install the latest pack."
    exit;
 fi

echo "Please enter the path to your web-server server installation's webb-apps location."
echo "Example: /home/downloads/apache-tomcat-8.0.49/webapps"
read TOMCAT_PATH
echo

if [ ! -d "${TOMCAT_PATH}" ]
  then
   echo "Web server does not exist in the given location ${TOMCAT_PATH}."
   exit;
 fi

export IS_HOME=${WSO2_PATH}
export WEB_APP_HOME=${TOMCAT_PATH}
export WEB_APP_LIB=${WEB_APP_HOME}/accountrecoveryendpoint/WEB-INF/lib/

rm -rf ${WEB_APP_HOME}/accountrecoveryendpoint

cp $IS_HOME/repository/deployment/server/webapps/accountrecoveryendpoint.war ${WEB_APP_HOME}
unzip ${WEB_APP_HOME}/accountrecoveryendpoint.war -d ${WEB_APP_HOME}/accountrecoveryendpoint/

rm ${WEB_APP_HOME}/accountrecoveryendpoint.war

cp $IS_HOME/repository/components/plugins/commons-lang_2.6.0.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/encoder_1.2.0.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/com.google.gson_2.8.5.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/httpclient_4.3.6.wso2v2.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/httpcore_4.3.3.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/json_3.0.0.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.identity.mgt.stub_5.12.332.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.identity.user.registration.stub_5.12.332.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.base_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.identity.base_5.12.332.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.ui_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.identity.application.authentication.endpoint.util_5.12.332.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.identity.core_5.12.332.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.utils_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.user.core_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.user.api_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.logging_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/axis2_1.6.1.wso2v34.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/opensaml_2.6.4.wso2v5.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/jettison_1.3.4.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/neethi_2.0.4.wso2v5.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/wsdl4j_1.6.2.wso2v4.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.apache.commons.commons-codec_1.12.0.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/commons-collections_3.2.2.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.identity.mgt_5.12.332.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.tomcat.ext_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/javax.ws.rs-api-2.1.1.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/cxf-core-3.2.8.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/cxf-rt-frontend-jaxrs-3.2.8.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/cxf-rt-rs-client-3.2.8.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/cxf-rt-rs-extension-providers-3.2.8.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/cxf-rt-rs-extension-search-3.2.8.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/cxf-rt-rs-service-description-3.2.8.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/cxf-rt-transports-http-3.2.8.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/jackson-annotations-2.9.7.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/jackson-core-2.9.7.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/jackson-databind-2.9.7.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/jackson-jaxrs-base-2.9.7.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/jackson-jaxrs-json-provider-2.9.7.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/jackson-module-jaxb-annotations-2.9.7.jar $WEB_APP_LIB

echo "===================================================================================="
echo
echo "Follow the instruction in the original guide to proceed."
echo