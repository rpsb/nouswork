#Getting environment variables
source ./env_variables.sh

#Echo statements
echo "----- Build variables -----"
echo `java -version`
cd $JENKINS_WORKSPAGE/fdBrokerage
SVN_REV=`svn info | grep "Revision" | awk '{print $2}'`
LOCAL_REPO=`grep -oP '(?<=<localRepository>).*?(?=</localRepository>)' $SETTINGS_FILE`
echo "Release Version :"$VERSION_NUMBER
echo "SVN Revision Number : "$SVN_REV
JAR_VERSION=$VERSION_NUMBER-$SVN_REV
echo "Jar Version : "$JAR_VERSION
echo "Local Repository : "$LOCAL_REPO

#Dynamic Versioning
#--POM Changes--
#VERSION_NUMBER=8.2.1
cd $JENKINS_WORKSPAGE/fdBrokerage
SVN_REV=`svn info | grep "Revision" | awk '{print $2}'`
LOCAL_REPO=`grep -oP '(?<=<localRepository>).*?(?=</localRepository>)' $SETTINGS_FILE`
echo "Release Version :"$VERSION_NUMBER
echo "SVN Revision Number : "$SVN_REV
echo "Local Repository : "$LOCAL_REPO
#versioning
cd $JENKINS_WORKSPAGE/fdxObjectParser
OP_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdxUnitTesting
UT_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdUtil
FU_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdQuote
FQ_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdPerformanceAccrual
PA_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdEJB
FE_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdPershingBulkOrder
BO_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdLPLPreTrade
PT_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdOrderVerifyCompliance
VC_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdAppClients
AC_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdPershingCrossTrading
CT_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdBroadridgeWS
BW_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/perOrdersPollEngine
PE_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdPershingOrderProcessing
PO_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/AFixOrderProcessor
AF_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/APartialAllocationProcess
AP_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/BustOrderProcessor
BP_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/CustodianOrderProcessor
CO_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdBenchMarksClient
BC_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdBillingClients
FB_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdBlendUpdate
BU_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdBulkAllocationProcess
BA_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdDynamicModelClient
DM_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdOrderExpirationProcess
EP_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdPendingTransactionPerformance
TP_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdPerformanceClient
FP_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdPeriodicFundTransfers
FT_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdProcessFixMessages
PF_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/MFOrderSweeper
MF_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdSecurityAllocationModelFileUploader
SA_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdSlvBalAdjustment
SL_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdTaxLotsAppClient
TL_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdTradeExceptionSweeper
TE_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdTransactionAllocationProcess
FA_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdWashSaleProcess
WS_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fixAllocationEngine
AE_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/wsWeb
WW_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdSSO
SS_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdWeb
WE_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/FDwsWeb
EB_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdUser
US_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdEJB
EJ_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdOrderStub
OS_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
#cleaning up brokerage repo before building
rm -rf $LOCAL_REPO/com/fd/brokerage
cd $JENKINS_WORKSPAGE/fdBrokerage
cp pom.xml temp_pom.xml
#dynamic versioning - adding release number - build number
sed 's/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.version>'$VERSION_NUMBER-$SVN_REV'<\/fdxlibraries.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.op.version>'$VERSION_NUMBER-$OP_VERSION'<\/fdxlibraries.op.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ut.version>'$VERSION_NUMBER-$UT_VERSION'<\/fdxlibraries.ut.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.fu.version>'$VERSION_NUMBER-$FU_VERSION'<\/fdxlibraries.fu.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.fq.version>'$VERSION_NUMBER-$FQ_VERSION'<\/fdxlibraries.fq.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.pa.version>'$VERSION_NUMBER-$PA_VERSION'<\/fdxlibraries.pa.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.fe.version>'$VERSION_NUMBER-$FE_VERSION'<\/fdxlibraries.fe.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.bo.version>'$VERSION_NUMBER-$BO_VERSION'<\/fdxlibraries.bo.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.pt.version>'$VERSION_NUMBER-$PT_VERSION'<\/fdxlibraries.pt.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.vc.version>'$VERSION_NUMBER-$VC_VERSION'<\/fdxlibraries.vc.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ac.version>'$VERSION_NUMBER-$AC_VERSION'<\/fdxlibraries.ac.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ct.version>'$VERSION_NUMBER-$CT_VERSION'<\/fdxlibraries.ct.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.bw.version>'$VERSION_NUMBER-$BW_VERSION'<\/fdxlibraries.bw.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.pe.version>'$VERSION_NUMBER-$PE_VERSION'<\/fdxlibraries.pe.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.po.version>'$VERSION_NUMBER-$PO_VERSION'<\/fdxlibraries.po.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.af.version>'$VERSION_NUMBER-$AF_VERSION'<\/fdxlibraries.af.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ap.version>'$VERSION_NUMBER-$AP_VERSION'<\/fdxlibraries.ap.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.bp.version>'$VERSION_NUMBER-$BP_VERSION'<\/fdxlibraries.bp.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.co.version>'$VERSION_NUMBER-$CO_VERSION'<\/fdxlibraries.co.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.bc.version>'$VERSION_NUMBER-$BC_VERSION'<\/fdxlibraries.bc.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.fb.version>'$VERSION_NUMBER-$FB_VERSION'<\/fdxlibraries.fb.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.bu.version>'$VERSION_NUMBER-$BU_VERSION'<\/fdxlibraries.bu.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ba.version>'$VERSION_NUMBER-$BA_VERSION'<\/fdxlibraries.ba.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.dm.version>'$VERSION_NUMBER-$DM_VERSION'<\/fdxlibraries.dm.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ep.version>'$VERSION_NUMBER-$EP_VERSION'<\/fdxlibraries.ep.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.tp.version>'$VERSION_NUMBER-$TP_VERSION'<\/fdxlibraries.tp.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.fp.version>'$VERSION_NUMBER-$FP_VERSION'<\/fdxlibraries.fp.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ft.version>'$VERSION_NUMBER-$FT_VERSION'<\/fdxlibraries.ft.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.pf.version>'$VERSION_NUMBER-$PF_VERSION'<\/fdxlibraries.pf.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.mf.version>'$VERSION_NUMBER-$MF_VERSION'<\/fdxlibraries.mf.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.sa.version>'$VERSION_NUMBER-$SA_VERSION'<\/fdxlibraries.sa.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.sl.version>'$VERSION_NUMBER-$SL_VERSION'<\/fdxlibraries.sl.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.tl.version>'$VERSION_NUMBER-$TL_VERSION'<\/fdxlibraries.tl.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.te.version>'$VERSION_NUMBER-$TE_VERSION'<\/fdxlibraries.te.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.fa.version>'$VERSION_NUMBER-$FA_VERSION'<\/fdxlibraries.fa.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ws.version>'$VERSION_NUMBER-$WS_VERSION'<\/fdxlibraries.ws.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ae.version>'$VERSION_NUMBER-$AE_VERSION'<\/fdxlibraries.ae.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ww.version>'$VERSION_NUMBER-$WW_VERSION'<\/fdxlibraries.ww.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ss.version>'$VERSION_NUMBER-$SS_VERSION'<\/fdxlibraries.ss.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.we.version>'$VERSION_NUMBER-$WE_VERSION'<\/fdxlibraries.we.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.eb.version>'$VERSION_NUMBER-$EB_VERSION'<\/fdxlibraries.eb.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.us.version>'$VERSION_NUMBER-$US_VERSION'<\/fdxlibraries.us.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ej.version>'$VERSION_NUMBER-$EJ_VERSION'<\/fdxlibraries.ej.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.os.version>'$VERSION_NUMBER-$OS_VERSION'<\/fdxlibraries.os.version>/ ; s/<scm.revision>[-[:alnum:]./]\{1,\}<\/scm.revision>/<scm.revision>'$SVN_REV'<\/scm.revision>/' temp_pom.xml > pom.xml
##--Application.xml Changes--
cd $JENKINS_WORKSPAGE/fdBrk/src/main/application/META-INF/
rm application.xml
svn update
cp application.xml application_tmp.xml
sed "s/0.0.1/$JAR_VERSION/" application_tmp.xml >application.xml
#--script change--
cd /home/wasadmin/bin/dyn_version/
rm fdxBuildDeployMaven.pm
cp ../fdxBuildDeployMaven.pm .
cp fdxBuildDeployMaven.pm fdxBuildDeployMaven.pm_bkp
sed "s/0.0.1/$JAR_VERSION/" fdxBuildDeployMaven.pm_bkp > fdxBuildDeployMaven.pm
rm fdxBuildDeployMaven.pm_bkp
#-------------DUMMY STEP------------------------
rm /home/wasadmin/release/jenkinsworkspace/Brokerage_Dynamic_Versioning_8_2_1/fdDbProcedures/build.xml
cp /home/wasadmin/release/scripts/dyn_version/build.xml /home/wasadmin/release/jenkinsworkspace/Brokerage_Dynamic_Versioning_8_2_1/fdDbProcedures/build.xml

#cleaning up brokerage repo before building
echo "----- Cleaning-up environment -----"
rm -rf $LOCAL_REPOcom/fd/brokerage
rm -rf $JENKINS_WORKSPAGE/fdStatic/fdStatic.zip
rm -rf $JENKINS_WORKSPAGE/fdxLib/fdxLib.zip
rm -rf $JENKINS_WORKSPAGE/fdWeb/fdTemplates.zip
rm -rf $JENKINS_WORKSPAGE/fdScriptsCda/fdAppConfigs.zip
rm -rf $JENKINS_WORKSPAGE/fdDbProcedures/fdDbProcedures.zip

#Maven Build
echo "----- Maven build started -----"
cd $JENKINS_WORKSPAGE/fdBrokerage/
mvn   -fae --settings conf/settings.xml --global-settings conf/settings.xml clean install -U antrun:run -DskipTests -q
echo "----- Maven build completed -----"
echo "----- DB Procedure -----"
cd $JENKINS_WORKSPAGE/fdDbProcedures/
mvn -fae --settings ../fdBrokerage/conf/settings.xml clean install -U antrun:run@default-cli -Dbrkbranch=$JENKINS_JOB -q
echo "----- fdxLib -----"
cd $JENKINS_WORKSPAGE/fdxLib/
mvn clean install -U antrun:run -fae -q
echo "----- fdScriptsCda -----"
cd $JENKINS_WORKSPAGE/fdScriptsCda/
mvn clean install -U antrun:run -fae -q
echo "-----  Maven build complete -----"

#EJB Deploy
echo "----- EJB Deployment Started -----"
cp $JENKINS_WORKSPAGE/fdBrk/target/fdBrk-$JAR_VERSION.ear $JENKINS_WORKSPAGE/fdBrk/target/preejb_fdBrk-$JAR_VERSION.ear
$EJB_DEPLOY/ejbdeploy.sh $EAR_DIR/preejb_fdBrk-$JAR_VERSION.ear /tmp/ $EAR_DIR/fdBrk-$JAR_VERSION.ear -cp $COMMON_LIB/log4j-core-2.8.2.jar:$COMMON_LIB/log4j-1.2-api-2.8.2.jar:$COMMON_LIB/log4j-api-2.8.2.jar:$UTIL_JAR/fdUtil-$JAR_VERSION.jar:$EXTERNAL_LIB/quickfixj-all-1.5.3.jar -nowarn

echo "----- EJB Deployment Complete -----"

if [ $? -ne 0 ]
then
        echo "Ejb Deploy failed"
        exit 0
fi

cp $EAR_DIR/fdBrk*/fdEJB-$JAR_VERSION.jar $JENKINS_WORKSPAGE/fdEJB/target/classes
cd $JENKINS_WORKSPAGE/fdEJB/target/classes

jar xf fdEJB-$JAR_VERSION.jar
if [ $? -ne 0 ]
then
        echo "EJB Stub step failed"
        exit 0
fi

echo "----- EJB Stub Validated Successfully -----"
echo "-- Copy Artifacts to Archiva --"
sshpass -p 'archiva123' scp -r /fdx/FDX_MVN_REPO_8_2_2/com/fd/brokerage/* archiva@10.20.40.165:/fdx/softwares/apache-archiva-2.2.3/repositories/internal/com/fd/brokerage/
