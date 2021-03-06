#!/bin/sh
#------------------------------------------------------   
#--	BE SURE TO HAVE THE FOLLOWING IN YOUR SETTINGS.XML
#------------------------------------------------------
#
#    <servers>
#        <server>
#            <id>jvnet-nexus-staging</id>
#            <username>jvnet_id</username>
#            <password>password</password>
#        </server>
#    </servers>
#    <profiles>
#      <profile>
#        <id>release</id>
#        <properties>
#          <user.name>jvnet_id</user.name>
#          <release.arguments>-Dhttps.proxyHost=www-proxy.us.oracle.com -Dhttps.proxyPort=80 -Dgpg.passphrase=glassfish</release.arguments>
#        </properties>
#        <activation>
#          <activeByDefault>false</activeByDefault>
#        </activation>
#      </profile>
#    </profiles>

# see the following URL for gpg issues
# https://docs.sonatype.org/display/Repository/How+To+Generate+PGP+Signatures+With+Maven#HowToGeneratePGPSignaturesWithMaven-GenerateaKeyPair

mvn -B -e release:prepare -Prelease
mvn -B -e release:perform -Prelease
