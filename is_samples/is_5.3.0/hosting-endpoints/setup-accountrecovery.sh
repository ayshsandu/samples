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

cp $IS_HOME/repository/components/plugins/org.wso2.carbon.base_4.4.11.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.identity.base_5.7.5.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.ui_4.4.11.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.identity.application.authentication.endpoint.util_5.7.5.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.identity.core_5.7.5.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.identity.user.registration.stub_5.7.5.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.utils_4.4.11.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.user.core_4.4.11.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.user.api_4.4.11.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.logging_4.4.11.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/httpcore_4.3.3.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/axis2_1.6.1.wso2v20.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/opensaml_2.6.4.wso2v3.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/jettison_1.3.4.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf/javax.ws.rs-api-2.0-m10.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf/cxf-bundle-2.7.16.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf/neethi-3.0.3.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf/wsdl4j-1.6.3.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/commons-codec_1.4.0.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/commons-collections_3.2.2.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/axiom_1.2.11.wso2v11.jar $WEB_APP_LIB

echo "===================================================================================="
echo
echo "Follow the instruction in the original guide to proceed."
echo