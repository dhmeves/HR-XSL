<?xml version="1.0" encoding="UTF-8"?>

<!--

   Copyright 2002 Charles Chan

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

-->

<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:sep="http://ns.hr-xml.org/2007-04-15">

	<xsl:include href="defaults.xsl"/>

	<xsl:template name="message">
		<xsl:param name="name"/>
		<xsl:variable name="messages"
			select="document(concat('messages/', $lang, '.xml'))/messages"/>
		<xsl:value-of select="$messages/message[@name=$name]"/>
	</xsl:template>
		
	<xsl:include href="templates/PersonName.xsl"/>
	<xsl:include href="templates/ContactMethod.xsl"/>
	<xsl:include href="templates/Date.xsl"/>

</xsl:stylesheet>
