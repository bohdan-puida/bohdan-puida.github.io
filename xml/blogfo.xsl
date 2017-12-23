<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
			xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes"/>
	<xsl:template match="/Document">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">

			<fo:layout-master-set>
		    <fo:simple-page-master
					master-name="A4"
					page-width="297mm"
					page-height="210mm"
					margin-top="1cm"
					margin-bottom="1cm"
					margin-left="1cm"
					margin-right="1cm">
		      <fo:region-body margin="3cm"/>
		      <fo:region-before extent="2cm"/>
		      <fo:region-after extent="2cm"/>
		      <fo:region-start extent="2cm"/>
		      <fo:region-end extent="2cm"/>
		    </fo:simple-page-master>
		  </fo:layout-master-set>

		  <fo:page-sequence master-reference="A4">
		    <fo:flow flow-name="xsl-region-body">
		      <fo:block
						font-size="14pt"
						font-family="verdana"
						color="red"
						space-before="5mm"
						space-after="5mm">
		        <xsl:value-of select="heading"/>
		      </fo:block>
		      <fo:block
						text-indent="5mm"
						font-family="verdana"
						font-size="12pt"
						space-before="5mm"
						space-after="5mm">
		        <xsl:value-of select="paragraph"/>
		      </fo:block>
		    </fo:flow>
		  </fo:page-sequence>

		</fo:root>
	</xsl:template>
</xsl:stylesheet>
