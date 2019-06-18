echo "---------- Start Setting up authenticationendpoint in a web server ----------"
echo "Please enter the path to your WSO2-IS installation."
echo "Example: /home/downloads/WSO2_Products/wso2is-5.4.0"
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
export WEB_APP_LIB=${WEB_APP_HOME}/authenticationendpoint/WEB-INF/lib/

rm -rf ${WEB_APP_HOME}/authenticationendpoint

cp $IS_HOME/repository/deployment/server/webapps/authenticationendpoint.war ${WEB_APP_HOME}
unzip ${WEB_APP_HOME}/authenticationendpoint.war -d ${WEB_APP_HOME}/authenticationendpoint/

cp $IS_HOME/repository/components/plugins/abdera_1.0.0.wso2v3.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/ant_1.7.0.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/axiom_1.2.11.wso2v13.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/axis2_1.6.1.wso2v34.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/bcprov-jdk15on_1.60.0.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/commons-cli_1.2.0.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/commons-collections_3.2.2.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/commons-dbcp_1.4.0.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/commons-fileupload_1.3.3.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/commons-httpclient_3.1.0.wso2v6.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/commons-io_2.4.0.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/commons-lang_2.6.0.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/commons-pool_1.5.6.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/compass_2.0.1.wso2v2.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/encoder_1.2.0.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/com.google.gson_2.8.5.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/hazelcast_3.5.4.wso2v2.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/httpclient_4.3.6.wso2v2.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/httpcore_4.3.3.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/javax.cache.wso2_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/jdbc-pool_7.0.81.wso2v2.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/joda-time_2.9.4.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/json_3.0.0.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/neethi_2.0.4.wso2v5.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/opensaml_2.6.4.wso2v5.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.eclipse.equinox.http.helper_1.1.0.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.base_4.4.11.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.eclipse.osgi_3.9.1.v20130814-1242.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.eclipse.osgi.services_3.3.100.v20130513-1956.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.base_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.core_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.crypto.api_1.0.3.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.database.utils_2.0.9.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.identity.application.common_5.12.332.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.identity.base_5.12.332.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.identity.template.mgt_5.12.332.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.logging_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.queuing_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.registry.api_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/org.wso2.carbon.registry.core_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.securevault_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.user.api_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.user.core_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.utils_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.securevault_1.0.0.wso2v2.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/rampart-core_1.6.1.wso2v28.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/slf4j.api_1.7.21.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/tomcat-catalina-ha_7.0.93.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/tomcat-servlet-api_7.0.93.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/wsdl4j_1.6.2.wso2v4.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/XmlSchema_1.4.7.wso2v6.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.ui_4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.identity.application.authentication.endpoint.util_5.12.332.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.identity.core_5.12.332.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/org.wso2.carbon.identity.user.registration.stub_5.12.332.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/plugins/jettison_1.3.4.wso2v1.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/javax.ws.rs-api-2.1.1.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/cxf-core-3.2.8.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/cxf-rt-frontend-jaxrs-3.2.8.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/cxf-rt-rs-client-3.2.8.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/cxf-rt-rs-extension-providers-3.2.8.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/cxf-rt-rs-extension-search-3.2.8.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/cxf-rt-rs-service-description-3.2.8.jar $WEB_APP_LIB
cp $IS_HOME/lib/runtimes/cxf3/cxf-rt-transports-http-3.2.8.jar $WEB_APP_LIB
cp $IS_HOME/bin/org.wso2.carbon.bootstrap-4.4.38.jar $WEB_APP_LIB
cp $IS_HOME/bin/tomcat-juli-7.0.93.jar $WEB_APP_LIB
cp $IS_HOME/lib/xercesImpl-2.8.1.wso2v2.jar $WEB_APP_LIB
cp $IS_HOME/lib/endorsed/geronimo-jta_1.1_spec-1.1.jar $WEB_APP_LIB
cp $IS_HOME/lib/endorsed/stax2-api-3.1.4.jar $WEB_APP_LIB
cp $IS_HOME/lib/endorsed/woodstox-core-asl-4.4.1.jar $WEB_APP_LIB
cp $IS_HOME/repository/components/tools/forget-me/lib/log4j-1.2.17.jar $WEB_APP_LIB


rm -rf ${WEB_APP_HOME}/authenticationendpoint.war

echo
echo "Please Open ${WEB_APP_HOME}/authenticationendpoint/WEB-INF/web.xml file and make"
echo "following changes to point to Identity Server URLs"
echo
echo "===================================================================================="
echo "..."
echo "   <context-param>"
echo "      <param-name>IdentityManagementEndpointContextURL</param-name>"
echo "     <param-value>https://localhost:9443/accountrecoveryendpoint</param-value>"
echo "   </context-param>"
echo "   <context-param>"
echo "      <param-name>AccountRecoveryRESTEndpointURL</param-name>"
echo "    <param-value>https://localhost:9443/t/tenant-domain/api/identity/user/v0.9/</param-value>"
echo "   </context-param>"
echo "..."
echo "   <context-param>"
echo "      <param-name>IdentityServerEndpointContextURL</param-name>"
echo "      <param-value>https://localhost:9443</param-value>"
echo "   </context-param>"
echo "..."

echo "===================================================================================="
echo
echo "Follow the instruction in the original guide to proceed."
echo
echo "------------ End Setting up authenticationendpoint in a separate server ------------"
