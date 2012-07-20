<!--
    XSLT transformation from RFC2629 XML format to HTML

    Copyright (c) 2006-2007, Julian Reschke (julian.reschke@greenbytes.de)
    All rights reserved.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice,
      this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright notice,
      this list of conditions and the following disclaimer in the documentation
      and/or other materials provided with the distribution.
    * Neither the name of Julian Reschke nor the names of its contributors
      may be used to endorse or promote products derived from this software
      without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
    ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
    POSSIBILITY OF SUCH DAMAGE.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0"
                
                xmlns:ed="http://greenbytes.de/2002/rfcedit"
                xmlns:exslt="http://exslt.org/common"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt"
                xmlns:myns="mailto:julian.reschke@greenbytes.de?subject=rcf2629.xslt"
                xmlns:saxon="http://icl.com/saxon"
                xmlns:x="http://purl.org/net/xml2rfc/ext"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"

                exclude-result-prefixes="ed exslt msxsl myns saxon x xhtml"
                >

<xsl:strip-space elements="back front list middle rfc section"/>                
                
<xsl:output method="html" encoding="iso-8859-1" version="4.0" doctype-public="-//W3C//DTD HTML 4.01//EN" indent="no"/>

<!-- process some of the processing instructions supported by Marshall T. Rose's
     xml2rfc sofware, see <http://xml.resource.org/> -->

<!-- delimiters in PIs -->
<xsl:variable name="quote-chars">"'</xsl:variable>     
     
<!-- rfc comments PI -->

<xsl:param name="xml2rfc-comments"
  select="substring-after(
      translate(/processing-instruction('rfc')[contains(.,'comments=')], concat($quote-chars,' '), ''),
        'comments=')"
/>

<!-- rfc compact PI -->

<xsl:param name="xml2rfc-compact"
  select="substring-after(
      translate(/processing-instruction('rfc')[contains(.,'compact=')], concat($quote-chars,' '), ''),
        'compact=')"
/>

<!-- rfc footer PI -->

<xsl:param name="xml2rfc-footer"
  select="substring-after(
      translate(/processing-instruction('rfc')[contains(.,'footer=')], concat($quote-chars,' '), ''),
        'footer=')"
/>

<!-- rfc header PI -->

<xsl:param name="xml2rfc-header"
  select="substring-after(
      translate(/processing-instruction('rfc')[contains(.,'header=')], concat($quote-chars,' '), ''),
        'header=')"
/>

<!-- rfc inline PI -->

<xsl:param name="xml2rfc-inline"
  select="substring-after(
      translate(/processing-instruction('rfc')[contains(.,'inline=')], concat($quote-chars,' '), ''),
        'inline=')"
/>

<!-- rfc strict PI -->

<xsl:param name="xml2rfc-strict"
  select="substring-after(
      translate(/processing-instruction('rfc')[contains(.,'strict=')], concat($quote-chars,' '), ''),
        'strict=')"
/>

<!-- include a table of contents if a processing instruction <?rfc?>
     exists with contents toc="yes". Can be overriden by an XSLT parameter -->

<xsl:param name="xml2rfc-toc"
  select="substring-after(
      translate(/processing-instruction('rfc')[contains(.,'toc=')], concat($quote-chars,' '), ''),
        'toc=')"
/>

<!-- optional tocdepth-->

<xsl:param name="xml2rfc-tocdepth"
  select="substring-after(
      translate(/processing-instruction('rfc')[contains(.,'tocdepth=')], concat($quote-chars,' '), ''),
        'tocdepth=')"
/>

<xsl:variable name="parsedTocDepth">
  <xsl:choose>
    <xsl:when test="$xml2rfc-tocdepth='1'">1</xsl:when>
    <xsl:when test="$xml2rfc-tocdepth='2'">2</xsl:when>

    <xsl:when test="$xml2rfc-tocdepth='3'">3</xsl:when>
    <xsl:when test="$xml2rfc-tocdepth='4'">4</xsl:when>
    <xsl:when test="$xml2rfc-tocdepth='5'">5</xsl:when>
    <xsl:otherwise>99</xsl:otherwise>
  </xsl:choose>
</xsl:variable>

<!-- suppress top block if a processing instruction <?rfc?>
     exists with contents tocblock="no". Can be overriden by an XSLT parameter -->

<xsl:param name="xml2rfc-topblock"
  select="substring-after(
      translate(/processing-instruction('rfc')[contains(.,'topblock=')], concat($quote-chars,' '), ''),
        'topblock=')"
/>

<!-- use symbolic reference names instead of numeric ones unless a processing instruction <?rfc?>
     exists with contents symrefs="no". Can be overriden by an XSLT parameter -->

<xsl:param name="xml2rfc-symrefs"
  select="substring-after(
      translate(/processing-instruction('rfc')[contains(.,'symrefs=')], concat($quote-chars,' '), ''),
        'symrefs=')"
/>

<!-- sort references if a processing instruction <?rfc?>
     exists with contents sortrefs="yes". Can be overriden by an XSLT parameter -->

<xsl:param name="xml2rfc-sortrefs"
  select="substring-after(
      translate(/processing-instruction('rfc')[contains(.,'sortrefs=')], concat($quote-chars,' '), ''),
        'sortrefs=')"
/>

<!-- insert editing marks if a processing instruction <?rfc?>
     exists with contents editing="yes". Can be overriden by an XSLT parameter -->

<xsl:param name="xml2rfc-editing"
  select="substring-after(
      translate(/processing-instruction('rfc')[contains(.,'editing=')], concat($quote-chars,' '), ''),
        'editing=')"
/>

<!-- make it a private paper -->

<xsl:param name="xml2rfc-private"
  select="substring-after(
      translate(/processing-instruction('rfc')[contains(.,'private=')], $quote-chars, ''),
        'private=')"
/>

<!-- background image? -->

<xsl:param name="xml2rfc-background"
  select="substring-after(
      translate(/processing-instruction('rfc')[contains(.,'background=')], $quote-chars, ''),
        'background=')"
/>

<!-- extension for XML parsing in artwork -->

<xsl:param name="xml2rfc-ext-parse-xml-in-artwork"
  select="substring-after(
      translate(/processing-instruction('rfc-ext')[contains(.,'parse-xml-in-artwork=')], concat($quote-chars,' '), ''),
        'parse-xml-in-artwork=')"
/>

<!-- extension for excluding DCMI properties in meta tag (RFC2731) -->

<xsl:param name="xml2rfc-ext-support-rfc2731"
  select="substring-after(
      translate(/processing-instruction('rfc-ext')[contains(.,'support-rfc2731=')], concat($quote-chars,' '), ''),
        'support-rfc2731=')"
/>

<!-- extension for allowing markup inside artwork -->

<xsl:param name="xml2rfc-ext-allow-markup-in-artwork"
  select="substring-after(
      translate(/processing-instruction('rfc-ext')[contains(.,'allow-markup-in-artwork=')], concat($quote-chars,' '), ''),
        'allow-markup-in-artwork=')"
/>

<!-- extension for including references into index -->

<xsl:param name="xml2rfc-ext-include-references-in-index"
  select="substring-after(
      translate(/processing-instruction('rfc-ext')[contains(.,'include-references-in-index=')], concat($quote-chars,' '), ''),
        'include-references-in-index=')"
/>

<!-- position of author's section -->

<xsl:param name="xml2rfc-ext-authors-section"
  select="substring-after(
      translate(/processing-instruction('rfc-ext')[contains(.,'authors-section=')], concat($quote-chars,' '), ''),
        'authors-section=')"
/>

<!-- justification? -->

<xsl:param name="xml2rfc-ext-justification"
  select="substring-after(
      translate(/processing-instruction('rfc-ext')[contains(.,'justification=')], concat($quote-chars,' '), ''),
        'justification=')"
/>

<!-- trailing dots in section numbers -->

<xsl:param name="xml2rfc-ext-sec-no-trailing-dots"
  select="substring-after(
      translate(/processing-instruction('rfc-ext')[contains(.,'sec-no-trailing-dots=')], concat($quote-chars,' '), ''),
        'sec-no-trailing-dots=')"
/>

<!-- choose whether or not to do mailto links --> 
  
 <xsl:param name="xml2rfc-linkmailto" 
   select="substring-after( 
       translate(/processing-instruction('rfc')[contains(.,'linkmailto=')], concat($quote-chars,' '), ''), 
         'linkmailto=')" 
 /> 


<!-- iprnotified switch --> 
  
 <xsl:param name="xml2rfc-iprnotified" 
   select="substring-after( 
       translate(/processing-instruction('rfc')[contains(.,'iprnotified=')], concat($quote-chars,' '), ''), 
         'iprnotified=')" 
 /> 


<!-- URL templates for RFCs and Internet Drafts. -->

<!-- Reference the authorative ASCII versions
<xsl:param name="rfcUrlPrefix" select="'http://www.ietf.org/rfc/rfc'" />
<xsl:param name="rfcUrlPostfix" select="'.txt'" />
-->
<!-- Reference the marked up versions over on http://tools.ietf.org/html. -->
<xsl:param name="rfcUrlPrefix" select="'http://tools.ietf.org/html/rfc'" />
<xsl:param name="rfcUrlPostfix" select="''" />
<xsl:param name="rfcUrlFrag" select="'section-'" />
<xsl:param name="internetDraftUrlPrefix" select="'http://tools.ietf.org/html/'" />
<xsl:param name="internetDraftUrlPostfix" select="''" />
<xsl:param name="internetDraftUrlFrag" select="'section-'" />

<!-- warning re: absent node-set ext. function -->
<xsl:variable name="node-set-warning">

  This stylesheet requires either an XSLT-1.0 processor with node-set()
  extension function, or an XSLT-2.0 processor. Therefore, parts of the
  document couldn't be displayed.
</xsl:variable>

<!-- character translation tables -->
<xsl:variable name="lcase" select="'abcdefghijklmnopqrstuvwxyz'" />
<xsl:variable name="ucase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />       

<xsl:variable name="plain" select="' #/ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
<xsl:variable name="touri" select="'___abcdefghijklmnopqrstuvwxyz'" />

<!-- build help keys for indices -->
<xsl:key name="index-first-letter"
  match="iref|reference"
    use="translate(substring(concat(@anchor,@item),1,1),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')" />

<xsl:key name="index-item"
  match="iref"
    use="@item" />

<xsl:key name="index-item-subitem"
  match="iref"
    use="concat(@item,'..',@subitem)" />

<xsl:key name="index-xref"
  match="xref[@x:sec]"
    use="concat(@target,'..',@x:sec)" />

<!-- prefix for automatically generated anchors -->
<xsl:variable name="anchor-prefix" select="'rfc'" />

<!-- IPR version switch -->
<xsl:variable name="ipr-rfc3667" select="(
  /rfc/@number &gt; 3708) or
  not(
    (/rfc/@ipr = 'full2026') or
    (/rfc/@ipr = 'noDerivativeWorks2026') or
    (/rfc/@ipr = 'noDerivativeWorksNow') or
    (/rfc/@ipr = 'none') or
    (/rfc/@ipr = '') or
    not(/rfc/@ipr)
  )" />

<xsl:variable name="ipr-rfc4748" select="(
  $ipr-rfc3667 and
    (
      (/rfc/@number &gt; 4671) or
      (/rfc/front/date/@year &gt; 2006) or
      (/rfc/front/date/@year &gt; 2005 and (/rfc/front/date/@month='November' or /rfc/front/date/@month='December'))
    )
  )" />

<!-- will document have an index -->
<xsl:variable name="has-index" select="//iref or (//xref and $xml2rfc-ext-include-references-in-index='yes')" />
          
<!-- Templates for the various elements of rfc2629.dtd -->
              
<xsl:template match="text()[not(ancestor::artwork)]">
  <xsl:variable name="starts-with-ws" select="translate(substring(.,1,1),'&#9;&#10;&#13;&#32;','')"/>

  <xsl:variable name="ends-with-ws" select="translate(substring(.,string-length(.),1),'&#9;&#10;&#13;&#32;','')"/>
  <!--<xsl:message> Orig: "<xsl:value-of select="."/>"</xsl:message>
  <xsl:message>Start: "<xsl:value-of select="$starts-with-ws"/>"</xsl:message>
  <xsl:message>  End: "<xsl:value-of select="$ends-with-ws"/>"</xsl:message> -->
  <xsl:if test="$starts-with-ws='' and preceding-sibling::node()">
    <xsl:text> </xsl:text>
  </xsl:if>
  <xsl:value-of select="normalize-space(.)"/>
  <xsl:if test="$ends-with-ws='' and following-sibling::node()">
    <xsl:text> </xsl:text>

  </xsl:if>
</xsl:template>
              
              
<xsl:template match="abstract">
  <h1 id="{$anchor-prefix}.abstract"><a href="#{$anchor-prefix}.abstract">Abstract</a></h1>
  <xsl:apply-templates />
</xsl:template>

<msxsl:script language="JScript" implements-prefix="myns">
  function parseXml(str) {
    try {
      var doc = new ActiveXObject("MSXML2.DOMDocument");
      doc.async = false;
      if (doc.loadXML(str)) {
        return "";
      }
      else {
        return doc.parseError.reason + "\n" + doc.parseError.srcText + " (" + doc.parseError.line + "/" + doc.parseError.linepos + ")";
      }
    }
    catch(e) {
      return "";
    }
  }
</msxsl:script>

<xsl:template name="add-artwork-class">
  <xsl:choose>
    <xsl:when test="@type='abnf' or @type='abnf2616' or @type='application/xml-dtd' or @type='inline' or @type='application/relax-ng-compact-syntax'">
      <xsl:attribute name="class">inline</xsl:attribute>
    </xsl:when>
    <xsl:when test="starts-with(@type,'message/http') and contains(@type,'msgtype=&quot;request&quot;')">
      <xsl:attribute name="class">text2</xsl:attribute>
    </xsl:when>

    <xsl:when test="starts-with(@type,'message/http')">
      <xsl:attribute name="class">text</xsl:attribute>
    </xsl:when>
    <xsl:when test="starts-with(@type,'drawing')">
      <xsl:attribute name="class">drawing</xsl:attribute>
    </xsl:when>
    <xsl:when test="starts-with(@type,'text/plain') or @type='example' or @type='code'">
      <xsl:attribute name="class">text</xsl:attribute>

    </xsl:when>
    <xsl:otherwise/>
  </xsl:choose>
</xsl:template>

<xsl:template match="artwork">
  <xsl:if test="not(ancestor::ed:del) and $xml2rfc-ext-parse-xml-in-artwork='yes' and function-available('myns:parseXml')">
    <xsl:if test="contains(.,'&lt;?xml')">
      <xsl:variable name="body" select="substring-after(substring-after(.,'&lt;?xml'),'?>')" /> 
      <xsl:if test="$body!='' and myns:parseXml($body)!=''">
        <table style="background-color: red; border-width: thin; border-style: solid; border-color: black;">

        <tr><td>
        XML PARSE ERROR; parsed the body below:
        <pre>
        <xsl:value-of select="$body"/>
        </pre>
        resulting in:
        <pre>
        <xsl:value-of select="myns:parseXml($body)" />
        </pre>
        </td></tr></table>

      </xsl:if>
    </xsl:if>
    <xsl:if test="@ed:parse-xml-after">
      <xsl:if test="myns:parseXml(string(.))!=''">
        <table style="background-color: red; border-width: thin; border-style: solid; border-color: black;">
        <tr><td>
        XML PARSE ERROR:
        <pre><xsl:value-of select="myns:parseXml(string(.))" /></pre>
        </td></tr></table>

      </xsl:if>
    </xsl:if>
  </xsl:if>
  <xsl:variable name="display">
    <xsl:choose>
      <xsl:when test="$xml2rfc-ext-allow-markup-in-artwork='yes'">
        <xsl:apply-templates/>
      </xsl:when>
      <xsl:otherwise>

        <xsl:value-of select="."/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>  
  <xsl:choose>
    <xsl:when test="@align='right'">
      <div style="display:table; margin-left: auto; margin-right: 0pt;">
        <pre style="margin-left: 0em;">
          <xsl:call-template name="add-artwork-class"/>

          <xsl:call-template name="insertInsDelClass"/>
          <xsl:copy-of select="$display"/>
        </pre>          
      </div>
    </xsl:when>
    <xsl:when test="@align='center'">
      <div style="display:table; margin-left: auto; margin-right: auto;">
        <pre style="margin-left: 0em;">
          <xsl:call-template name="add-artwork-class"/>

          <xsl:call-template name="insertInsDelClass"/>
          <xsl:copy-of select="$display"/>
        </pre>          
      </div>
    </xsl:when>
    <xsl:otherwise>
      <pre>
        <xsl:call-template name="add-artwork-class"/>
        <xsl:call-template name="insertInsDelClass"/>

        <xsl:copy-of select="$display"/>
      </pre>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:call-template name="check-artwork-width">
    <xsl:with-param name="content"><xsl:apply-templates/></xsl:with-param>
  </xsl:call-template>
</xsl:template>

<!-- special case for first text node in artwork -->

<xsl:template match="artwork/text()[1]">
  <xsl:choose>
    <xsl:when test="starts-with(.,'&#10;')">
      <!-- reduce leading whitespace -->
      <xsl:value-of select="substring(.,2)"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="."/>
    </xsl:otherwise>

  </xsl:choose>
</xsl:template>


<xsl:template name="check-artwork-width">
  <xsl:param name="content"/>
  <xsl:choose>
    <xsl:when test="not(contains($content,'&#10;'))">
      <xsl:if test="string-length($content) > 69">
        <xsl:message>artwork line too long: <xsl:value-of select="$content"/></xsl:message>

      </xsl:if>
    </xsl:when>
    <xsl:otherwise>
      <xsl:variable name="start" select="substring-before($content,'&#10;')"/> 
      <xsl:variable name="end" select="substring-after($content,'&#10;')"/> 
      <xsl:if test="string-length($start) > 69">
        <xsl:message>WARNING: artwork line too long: <xsl:value-of select="$start"/><xsl:call-template name="lineno"/></xsl:message>
      </xsl:if>
      <xsl:call-template name="check-artwork-width">

        <xsl:with-param name="content" select="$end"/>
      </xsl:call-template>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="artwork[@src and starts-with(@type,'image/')]">
  <img src="{@src}" alt="{.}">
    <xsl:copy-of select="@width|@height"/>
  </img>

</xsl:template>

<xsl:template match="author">

    <address class="vcard">
      <span class="vcardline">
        <span class="fn">
          <xsl:value-of select="@fullname" />
        </span>
        <xsl:if test="@role">
          (<xsl:value-of select="@role" />)
        </xsl:if>

        <!-- components of name (hidden from display -->
        <span class="n hidden">
          <span class="family-name"><xsl:value-of select="@surname"/></span>
          <!-- given-name family-name -->
          <xsl:if test="@surname=substring(@fullname,1 + string-length(@fullname) - string-length(@surname))">
            <span class="given-name"><xsl:value-of select="normalize-space(substring(@fullname,1,string-length(@fullname) - string-length(@surname)))"/></span>
          </xsl:if>
          <!-- family-name given-name -->
          <xsl:if test="starts-with(@fullname,@surname)">

            <span class="given-name"><xsl:value-of select="normalize-space(substring-after(@fullname,@surname))"/></span>
          </xsl:if>
        </span>
      </span>
      <xsl:if test="normalize-space(organization) != ''">
        <span class="org vcardline">
          <xsl:value-of select="organization" />
        </span>
      </xsl:if>

      <xsl:if test="address/postal">
        <span class="adr">
          <xsl:if test="address/postal/street!=''">
            <xsl:for-each select="address/postal/street">
              <span class="street-address vcardline">
                <xsl:value-of select="." />
              </span>
            </xsl:for-each>
          </xsl:if>

          <xsl:if test="address/postal/city|address/postal/region|address/postal/code">
            <span class="vcardline">
              <xsl:if test="address/postal/city"><span class="locality"><xsl:value-of select="address/postal/city" /></span>, </xsl:if>
              <xsl:if test="address/postal/region"><span class="region"><xsl:value-of select="address/postal/region" /></span>&#160;</xsl:if>
              <xsl:if test="address/postal/code"><span class="postal-code"><xsl:value-of select="address/postal/code" /></span></xsl:if>
            </span>
          </xsl:if>
          <xsl:if test="address/postal/country">

            <span class="country-name vcardline"><xsl:value-of select="address/postal/country" /></span>
          </xsl:if>
        </span>
      </xsl:if>
      <xsl:if test="address/phone">
        <span class="vcardline tel">
          <xsl:text>Phone: </xsl:text>
          <a href="tel:{translate(address/phone,' ','')}"><span class="value"><xsl:value-of select="address/phone" /></span></a>

        </span>
      </xsl:if>
      <xsl:if test="address/facsimile">
        <span class="vcardline tel">
          <span class="type">Fax</span><xsl:text>: </xsl:text>
          <a href="fax:{translate(address/facsimile,' ','')}"><span class="value"><xsl:value-of select="address/facsimile" /></span></a>
        </span>
      </xsl:if>

      <xsl:if test="address/email">
        <span class="vcardline">
        <xsl:text>EMail: </xsl:text>
        <a>
          <xsl:if test="$xml2rfc-linkmailto!='no'">
            <xsl:attribute name="href">mailto:<xsl:value-of select="address/email" /></xsl:attribute>
          </xsl:if>
          <span class="email"><xsl:value-of select="address/email" /></span>

        </a>
        </span>
      </xsl:if>
      <xsl:if test="address/uri">
        <span class="vcardline">
          <xsl:text>URI: </xsl:text>
          <a href="{address/uri}" class="url"><xsl:value-of select="address/uri" /></a>
        </span>

      </xsl:if>
    </address>

</xsl:template>

<xsl:template match="back">

  <!-- add references section first, no matter where it appears in the
    source document -->
  <!-- as of April 2004, process from middle section 
  <xsl:apply-templates select="references" />
  -->
  
  <!-- add editorial comments -->
  <xsl:if test="//cref and $xml2rfc-comments='yes' and $xml2rfc-inline!='yes'">

    <xsl:call-template name="insertComments" />
  </xsl:if>
  
  <!-- next, add information about the document's authors -->
  <xsl:if test="$xml2rfc-ext-authors-section!='end'">
    <xsl:call-template name="insertAuthors" />
  </xsl:if>
     
  <!-- add all other top-level sections under <back> -->
  <xsl:apply-templates select="*[not(self::references) and not(self::ed:replace and .//references)]" />

  <xsl:if test="$xml2rfc-ext-authors-section='end'">
    <xsl:call-template name="insertAuthors" />
  </xsl:if>

  <xsl:if test="not($xml2rfc-private)">
    <!-- copyright statements -->
    <xsl:variable name="copyright"><xsl:call-template name="insertCopyright" /></xsl:variable>
  
    <!-- emit it -->
    <xsl:choose>

      <xsl:when test="function-available('msxsl:node-set')">
        <xsl:apply-templates select="msxsl:node-set($copyright)" />
      </xsl:when>
      <xsl:when test="function-available('exslt:node-set')">
        <xsl:apply-templates select="exslt:node-set($copyright)" />
      </xsl:when>
      <xsl:otherwise>
        <xsl:message><xsl:value-of select="$node-set-warning"/></xsl:message>
        <p class="error"><xsl:value-of select="$node-set-warning"/></p>

      </xsl:otherwise>
    </xsl:choose>
  </xsl:if>
  
  <!-- insert the index if index entries exist -->
  <xsl:if test="$has-index">
    <xsl:call-template name="insertIndex" />
  </xsl:if>

</xsl:template>

<xsl:template match="eref[node()]">
  <a href="{@target}"><xsl:apply-templates /></a>
</xsl:template>
               
<xsl:template match="eref[not(node())]">
  <xsl:text>&lt;</xsl:text>
  <a href="{@target}"><xsl:value-of select="@target" /></a>
  <xsl:text>&gt;</xsl:text>
</xsl:template>

<xsl:template match="figure">
  <xsl:if test="@anchor!=''">

    <div id="{@anchor}"/>
  </xsl:if>
  <xsl:variable name="anch">
    <xsl:call-template name="get-figure-anchor"/>
  </xsl:variable>
  <div id="{$anch}" />
  <xsl:apply-templates />
  <xsl:if test="@title!='' or @anchor!=''">
    <xsl:variable name="n"><xsl:number level="any" count="figure[@title!='' or @anchor!='']" /></xsl:variable>

    <p class="figure">Figure <xsl:value-of select="$n"/><xsl:if test="@title!=''">: <xsl:value-of select="@title" /></xsl:if></p>
  </xsl:if>
</xsl:template>

<xsl:template match="front">
  
  <xsl:if test="$xml2rfc-topblock!='no'">
    <!-- collect information for left column -->
      
    <xsl:variable name="leftColumn">
      <xsl:call-template name="collectLeftHeaderColumn" />    
    </xsl:variable>

  
    <!-- collect information for right column -->
      
    <xsl:variable name="rightColumn">
      <xsl:call-template name="collectRightHeaderColumn" />    
    </xsl:variable>
      
    <!-- insert the collected information -->
    <table summary="header information" class="header" border="0" cellpadding="1" cellspacing="1">
      <xsl:choose>
        <xsl:when test="function-available('msxsl:node-set')">
          <xsl:call-template name="emitheader">

            <xsl:with-param name="lc" select="msxsl:node-set($leftColumn)" />    
            <xsl:with-param name="rc" select="msxsl:node-set($rightColumn)" />    
          </xsl:call-template>
        </xsl:when>    
        <xsl:when test="function-available('exslt:node-set')">
          <xsl:call-template name="emitheader">
            <xsl:with-param name="lc" select="exslt:node-set($leftColumn)" />    
            <xsl:with-param name="rc" select="exslt:node-set($rightColumn)" />    
          </xsl:call-template>
        </xsl:when>    
        <xsl:otherwise>
          <xsl:message><xsl:value-of select="$node-set-warning"/></xsl:message>

          <p class="error"><xsl:value-of select="$node-set-warning"/></p>
        </xsl:otherwise>
      </xsl:choose>
    </table>
  </xsl:if>
    
  <p class="title">
    <!-- main title -->
    <xsl:apply-templates select="title"/>
    <xsl:if test="/rfc/@docName">

      <br/>
      <span class="filename"><xsl:value-of select="/rfc/@docName"/></span>
      
      <xsl:if test="contains(/rfc/@docName,'.')">
        <xsl:call-template name="warning">
          <xsl:with-param name="msg">The @docName attribute should contain the base name, not the filename (thus no file extension).</xsl:with-param>
        </xsl:call-template>
      </xsl:if>
    </xsl:if>  
  </p>

  
  <!-- insert notice about update -->
  <xsl:variable name="published-as" select="/*/x:link[@rel='Alternate' and starts-with(@title,'RFC')]"/>
  <xsl:if test="$published-as">
    <p style="color: green; text-align: center; font-size: 14pt; background-color: yellow;">
      <b>Note:</b> a later version of this document has been published as <a href="{$published-as/@href}"><xsl:value-of select="$published-as/@title"/></a>.
    </p>
  </xsl:if>
    
  <xsl:if test="not($xml2rfc-private)">

    <!-- Get status info formatted as per RFC2629-->
    <xsl:variable name="preamble"><xsl:call-template name="insertPreamble" /></xsl:variable>
    
    <!-- emit it -->
    <xsl:choose>
      <xsl:when test="function-available('msxsl:node-set')">
        <xsl:apply-templates select="msxsl:node-set($preamble)" />
      </xsl:when>
      <xsl:when test="function-available('exslt:node-set')">
        <xsl:apply-templates select="exslt:node-set($preamble)" />

      </xsl:when>
      <xsl:otherwise>
        <xsl:message><xsl:value-of select="$node-set-warning"/></xsl:message>
        <p class="error"><xsl:value-of select="$node-set-warning"/></p>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:if>
            
  <xsl:apply-templates select="abstract" />
  <xsl:apply-templates select="note" />

  <!-- show notes inside change tracking as well -->
  <xsl:apply-templates select="ed:replace[.//note]" />
    
  <xsl:if test="$xml2rfc-toc='yes'">
    <xsl:apply-templates select="/" mode="toc" />
    <xsl:call-template name="insertTocAppendix" />
  </xsl:if>

</xsl:template>


<xsl:template match="iref">

  <xsl:variable name="anchor"><xsl:call-template name="compute-iref-anchor"/></xsl:variable>
  <xsl:choose>
    <xsl:when test="ancestor::t|ancestor::figure">
      <span id="{$anchor}"/>
    </xsl:when>
    <xsl:otherwise>
      <div id="{$anchor}"/>
    </xsl:otherwise>
  </xsl:choose>

</xsl:template>

<xsl:template name="compute-iref-anchor">
  <xsl:variable name="first" select="translate(substring(@item,1,1),$ucase,$lcase)"/>
  <xsl:variable name="nkey" select="translate($first,$lcase,'')"/>
  <xsl:choose>
    <xsl:when test="$nkey=''">
      <xsl:value-of select="$anchor-prefix"/>.iref.<xsl:value-of select="$first"/>.<xsl:number level="any" count="iref[starts-with(translate(@item,$ucase,$lcase),$first)]"/>
    </xsl:when>

    <xsl:otherwise>
      <xsl:value-of select="$anchor-prefix"/>.iref.<xsl:number level="any" count="iref[translate(substring(@item,1,1),concat($lcase,$ucase),'')='']"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<!-- list templates depend on the list style -->

<xsl:template match="list[@style='empty' or not(@style)]">
  <dl class="empty">
    <xsl:call-template name="insertInsDelClass"/>

    <xsl:apply-templates />
  </dl>
</xsl:template>

<xsl:template match="list[starts-with(@style,'format ')]">
  <dl>
    <xsl:call-template name="insertInsDelClass"/>
    <xsl:apply-templates />
  </dl>
</xsl:template>

<xsl:template match="list[@style='hanging']">
  <dl>
    <xsl:call-template name="insertInsDelClass"/>
    <xsl:apply-templates />
  </dl>
</xsl:template>

<xsl:template match="list[@style='numbers']">
  <ol>
    <xsl:call-template name="insertInsDelClass"/>
    <xsl:apply-templates />

  </ol>
</xsl:template>

<!-- numbered list inside numbered list -->
<xsl:template match="list[@style='numbers']/t/list[@style='numbers']" priority="9">
  <ol style="list-style-type: lower-alpha">
    <xsl:call-template name="insertInsDelClass"/>
    <xsl:apply-templates />
  </ol>
</xsl:template>

<xsl:template match="list[@style='letters']">

  <ol style="list-style-type: lower-alpha">
    <xsl:call-template name="insertInsDelClass"/>
    <xsl:apply-templates />
  </ol>
</xsl:template>

<!-- nested lettered list uses uppercase -->
<xsl:template match="list//t//list[@style='letters']" priority="9">
  <ol style="list-style-type: upper-alpha">
    <xsl:call-template name="insertInsDelClass"/>
    <xsl:apply-templates />

  </ol>
</xsl:template>
   
<xsl:template match="list[@style='symbols']">
  <ul>
    <xsl:call-template name="insertInsDelClass"/>
    <xsl:apply-templates />
  </ul>
</xsl:template>


<!-- same for t(ext) elements -->

<xsl:template match="list[@style='empty' or not(@style)]/t | list[@style='empty' or not(@style)]/ed:replace/ed:*/t">
  <!-- Inherited through CSS now <dd style="margin-top: .5em">-->
  <dd>
    <xsl:call-template name="insertInsDelClass"/>
    <xsl:if test="@anchor"><xsl:attribute name="id"><xsl:value-of select="@anchor"/></xsl:attribute></xsl:if>
    <xsl:apply-templates />
  </dd>
</xsl:template>

<xsl:template match="list[@style='numbers' or @style='symbols' or @style='letters']/x:lt">

  <li>
    <xsl:if test="@anchor"><xsl:attribute name="id"><xsl:value-of select="@anchor"/></xsl:attribute></xsl:if>
    <xsl:apply-templates select="t" />
  </li>
</xsl:template>

<xsl:template match="list[@style='numbers' or @style='symbols' or @style='letters']/t | list[@style='numbers' or @style='symbols' or @style='letters']/ed:replace/ed:*/t">
  <li>
    <xsl:call-template name="insertInsDelClass"/>
    <xsl:for-each select="../..">

      <xsl:call-template name="insert-issue-pointer"/>
    </xsl:for-each>
    <xsl:if test="@anchor"><xsl:attribute name="id"><xsl:value-of select="@anchor"/></xsl:attribute></xsl:if>
    <xsl:apply-templates />
  </li>
</xsl:template>

<xsl:template match="list[@style='hanging']/x:lt">
  <xsl:if test="@hangText!=''">
    <dt>

      <xsl:call-template name="insertInsDelClass"/>
      <xsl:variable name="del-node" select="ancestor::ed:del"/>
      <xsl:variable name="rep-node" select="ancestor::ed:replace"/>
      <xsl:variable name="deleted" select="$del-node and ($rep-node/ed:ins)"/>
      <xsl:for-each select="../..">
        <xsl:call-template name="insert-issue-pointer">
          <xsl:with-param name="deleted-anchor" select="$deleted"/>
        </xsl:call-template>
      </xsl:for-each>

      <xsl:if test="@anchor"><xsl:attribute name="id"><xsl:value-of select="@anchor"/></xsl:attribute></xsl:if>
      <xsl:value-of select="@hangText" />
    </dt>
  </xsl:if>
  <dd>
    <xsl:call-template name="insertInsDelClass"/>
    <!-- if hangIndent present, use 0.7 of the specified value (1em is the width of the "m" character -->
    <xsl:if test="../@hangIndent and ../@hangIndent!='0'">
      <xsl:attribute name="style">margin-left: <xsl:value-of select="../@hangIndent * 0.7"/>em</xsl:attribute>

    </xsl:if>
    <xsl:apply-templates select="t" />
  </dd>
</xsl:template>

<xsl:template match="list[@style='hanging']/t | list[@style='hanging']/ed:replace/ed:*/t">
  <xsl:if test="@hangText!=''">
    <dt>
      <xsl:call-template name="insertInsDelClass"/>
      <xsl:if test="count(preceding-sibling::t)=0">

        <xsl:variable name="del-node" select="ancestor::ed:del"/>
        <xsl:variable name="rep-node" select="ancestor::ed:replace"/>
        <xsl:variable name="deleted" select="$del-node and ($rep-node/ed:ins)"/>
        <xsl:for-each select="../..">
          <xsl:call-template name="insert-issue-pointer">
            <xsl:with-param name="deleted-anchor" select="$deleted"/>
          </xsl:call-template>
        </xsl:for-each>
      </xsl:if>

      <xsl:if test="@anchor"><xsl:attribute name="id"><xsl:value-of select="@anchor"/></xsl:attribute></xsl:if>
      <xsl:value-of select="@hangText" />
    </dt>
  </xsl:if>

  <xsl:variable name="dd-content">
    <xsl:apply-templates/>
  </xsl:variable>

  <xsl:if test="$dd-content!=''">

    <dd>
      <xsl:call-template name="insertInsDelClass"/>
      <!-- if hangIndent present, use 0.7 of the specified value (1em is the width of the "m" character -->
      <xsl:if test="../@hangIndent and ../@hangIndent!='0'">
        <xsl:attribute name="style">margin-left: <xsl:value-of select="../@hangIndent * 0.7"/>em</xsl:attribute>
      </xsl:if>
      <xsl:apply-templates />
    </dd>

  </xsl:if>
</xsl:template>

<xsl:template match="list[starts-with(@style,'format ') and (contains(@style,'%c') or contains(@style,'%d'))]/t">
  <xsl:variable name="list" select=".." />
  <xsl:variable name="format" select="substring-after(../@style,'format ')" />
  <xsl:variable name="pos">
    <xsl:choose>
      <xsl:when test="$list/@counter">
        <xsl:number level="any" count="list[@counter=$list/@counter or (not(@counter) and @style=concat('format ',$list/@counter))]/t" />

      </xsl:when>
      <xsl:otherwise>
        <xsl:number level="any" count="list[concat('format ',@counter)=$list/@style or (not(@counter) and @style=$list/@style)]/t" />
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <dt>
    <xsl:if test="@anchor"><xsl:attribute name="id"><xsl:value-of select="@anchor"/></xsl:attribute></xsl:if>
    <xsl:choose>

      <xsl:when test="contains($format,'%c')">
        <xsl:value-of select="substring-before($format,'%c')"/><xsl:number value="$pos" format="a" /><xsl:value-of select="substring-after($format,'%c')"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="substring-before($format,'%d')"/><xsl:number value="$pos" format="1" /><xsl:value-of select="substring-after($format,'%d')"/>
      </xsl:otherwise>
    </xsl:choose>
  </dt>
  <dd>

    <xsl:apply-templates />
  </dd>
</xsl:template>

<xsl:template match="middle">
  <xsl:apply-templates />
  <xsl:apply-templates select="../back//references"/>
</xsl:template>

<xsl:template match="note">
  <xsl:variable name="num"><xsl:number/></xsl:variable>
    <h1 id="{$anchor-prefix}.note.{$num}">

      <xsl:call-template name="insertInsDelClass"/>
      <a href="#{$anchor-prefix}.note.{$num}">
        <xsl:value-of select="@title" />
      </a>
    </h1>
  <xsl:apply-templates />
</xsl:template>

<xsl:template match="postamble">
  <xsl:if test="normalize-space(.) != ''">

    <p>
      <xsl:call-template name="insertInsDelClass"/>
      <xsl:call-template name="editingMark" />
      <xsl:apply-templates />
    </p>
  </xsl:if>
</xsl:template>

<xsl:template match="preamble">
  <xsl:if test="normalize-space(.) != ''">

    <p>
      <xsl:if test="@anchor">
        <xsl:attribute name="id"><xsl:value-of select="@anchor"/></xsl:attribute>
      </xsl:if>
      <xsl:call-template name="insertInsDelClass"/>
      <xsl:call-template name="editingMark" />
      <xsl:apply-templates />
    </p>
  </xsl:if>

</xsl:template>

<xsl:template name="computed-auto-target">
  <xsl:param name="bib"/>
  <xsl:param name="ref"/>

  <xsl:choose>
    <xsl:when test="$bib/seriesInfo/@name='RFC'">
      <xsl:value-of select="concat($rfcUrlPrefix,$bib/seriesInfo[@name='RFC']/@value,$rfcUrlPostfix)" />
      <xsl:if test="$ref and $ref/@x:sec and $rfcUrlFrag">
        <xsl:value-of select="concat('#',$rfcUrlFrag,$ref/@x:sec)"/>

      </xsl:if>
    </xsl:when>
    <xsl:when test="$bib/seriesInfo/@name='Internet-Draft'">
      <xsl:value-of select="concat($internetDraftUrlPrefix,$bib/seriesInfo[@name='Internet-Draft']/@value,$internetDraftUrlPostfix)" />
      <xsl:if test="$ref and $ref/@x:sec and $internetDraftUrlFrag">
        <xsl:value-of select="concat('#',$internetDraftUrlFrag,$ref/@x:sec)"/>
      </xsl:if>
    </xsl:when>
    <xsl:otherwise />

  </xsl:choose>  
  
</xsl:template>

<xsl:template name="computed-target">
  <xsl:param name="bib"/>
  <xsl:param name="ref"/>

  <xsl:choose>
    <xsl:when test="$bib/@target">
      <xsl:if test="$ref and $ref/@x:sec and $ref/@x:rel">
        <xsl:value-of select="concat($bib/@target,$ref/@x:rel)"/>

      </xsl:if>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="computed-auto-target">
        <xsl:with-param name="bib" select="$bib"/>
        <xsl:with-param name="ref" select="$ref"/>
      </xsl:call-template>
    </xsl:otherwise>
  </xsl:choose>  
  

</xsl:template>

<xsl:template match="reference">

  <!-- check for reference to reference -->
  <xsl:variable name="anchor" select="@anchor"/>
  <xsl:if test="not(ancestor::ed:del) and not(//xref[@target=$anchor])">
    <xsl:message>WARNING: unused reference '<xsl:value-of select="@anchor"/>'<xsl:call-template name="lineno"/></xsl:message>
  </xsl:if>

  <xsl:variable name="target">
    <xsl:choose>
      <xsl:when test="@target"><xsl:value-of select="@target" /></xsl:when>
      <xsl:otherwise>
        <xsl:call-template name="computed-auto-target">
          <xsl:with-param name="bib" select="."/>
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:variable>
  
  <tr>
    <td class="reference">
      <xsl:call-template name="insertInsDelClass"/>
      <xsl:variable name="del-node" select="ancestor::ed:del"/>
      <xsl:variable name="rep-node" select="ancestor::ed:replace"/>
      <xsl:variable name="deleted" select="$del-node and ($rep-node/ed:ins)"/>
      <xsl:for-each select="../..">
        <xsl:call-template name="insert-issue-pointer">

          <xsl:with-param name="deleted-anchor" select="$deleted"/>
        </xsl:call-template>
      </xsl:for-each>
      <b id="{@anchor}">
        <xsl:call-template name="referencename">
          <xsl:with-param name="node" select="." />
        </xsl:call-template>
      </b>
    </td>

    
    <td class="top">
      <xsl:call-template name="insertInsDelClass"/>
      <xsl:for-each select="front/author">
        <xsl:variable name="initials">
          <xsl:call-template name="format-initials"/>
        </xsl:variable>
      
        <xsl:choose>
          <xsl:when test="@surname and @surname!=''">
            <xsl:variable name="displayname">

              <!-- surname/initials is reversed for last author except when it's the only one -->
              <xsl:choose>
                <xsl:when test="position()=last() and position()!=1">
                  <xsl:value-of select="concat($initials,' ',@surname)" />
                </xsl:when>
                <xsl:otherwise>
                  <xsl:value-of select="concat(@surname,', ',$initials)" />
                </xsl:otherwise>
              </xsl:choose>

              <xsl:if test="@role='editor'">
                <xsl:text>, Ed.</xsl:text>
              </xsl:if>
            </xsl:variable>
            <xsl:choose>
              <xsl:when test="address/email">
                <a>
                  <xsl:if test="$xml2rfc-linkmailto!='no'">

                    <xsl:attribute name="href">mailto:<xsl:value-of select="address/email" /></xsl:attribute>
                  </xsl:if>
                  <xsl:if test="organization/text()">
                    <xsl:attribute name="title"><xsl:value-of select="organization/text()"/></xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="$displayname" />
                </a>
              </xsl:when>

              <xsl:otherwise>
                <xsl:value-of select="$displayname" />
              </xsl:otherwise>
            </xsl:choose>
            
            <xsl:choose>
              <xsl:when test="position()=last() - 1">
                <xsl:if test="last() &gt; 2">,</xsl:if>
                <xsl:text> and </xsl:text>

              </xsl:when>
              <xsl:otherwise>
                <xsl:text>, </xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:when>
          <xsl:when test="organization/text()">
            <xsl:choose>

              <xsl:when test="address/uri">
                <a href="{address/uri}"><xsl:value-of select="organization" /></a>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="organization" />
              </xsl:otherwise>
            </xsl:choose>
            
            <xsl:choose>
              <xsl:when test="position()=last() - 1">

                <xsl:if test="last() &gt; 2">,</xsl:if>
                <xsl:text> and </xsl:text>
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>, </xsl:text>
              </xsl:otherwise>
            </xsl:choose>

          </xsl:when>
          <xsl:otherwise />
        </xsl:choose>
      </xsl:for-each>
         
      <xsl:choose>
        <xsl:when test="string-length($target) &gt; 0">
          <xsl:text>&#8220;</xsl:text><a href="{$target}"><xsl:value-of select="front/title" /></a><xsl:text>&#8221;</xsl:text>
        </xsl:when>
        <xsl:otherwise>

          <xsl:text>&#8220;</xsl:text><xsl:value-of select="front/title" /><xsl:text>&#8221;</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
            
      <xsl:for-each select="seriesInfo">
        <xsl:text>, </xsl:text>
        <xsl:choose>
          <xsl:when test="not(@name) and not(@value) and ./text()"><xsl:value-of select="." /></xsl:when>
          <xsl:otherwise>

            <xsl:value-of select="@name" />
            <xsl:if test="@value!=''">&#0160;<xsl:value-of select="@value" /></xsl:if>
            <xsl:if test="translate(@name,$ucase,$lcase)='internet-draft'"> (work in progress)</xsl:if>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each>
      
      <xsl:if test="front/date/@year != '' and front/date/@year != '???'">
        <xsl:text>, </xsl:text>

        <xsl:if test="front/date/@month and (front/date/@month!='???' and front/date/@month!='')"><xsl:value-of select="front/date/@month" />&#0160;</xsl:if>
        <xsl:value-of select="front/date/@year" />
      </xsl:if>
      
      <xsl:if test="@target">
        <xsl:text>, &lt;</xsl:text>
        <a href="{@target}"><xsl:value-of select="@target"/></a>
        <xsl:text>&gt;</xsl:text>
      </xsl:if>

      
      <xsl:text>.</xsl:text>

      <xsl:for-each select="annotation">
        <br />
        <xsl:apply-templates />
      </xsl:for-each>

    </td>
  </tr>

  
  
</xsl:template>


<xsl:template match="references">

  <xsl:variable name="name">
    <xsl:if test="ancestor::ed:del">
      <xsl:text>del-</xsl:text>
    </xsl:if>
    <xsl:number level="any"/>      
  </xsl:variable>

  
  <xsl:variable name="refseccount" select="count(/rfc/back/references)+count(/rfc/back/ed:replace/ed:ins/references)"/>

  <!-- insert pseudo section when needed -->
  <xsl:if test="not(preceding::references) and $refseccount!=1">
    <xsl:call-template name="insert-conditional-hrule"/>
    <h1 id="{$anchor-prefix}.references">
      <xsl:call-template name="insert-conditional-pagebreak"/>
      <xsl:variable name="sectionNumber">
        <xsl:call-template name="get-references-section-number"/>

      </xsl:variable>
      <a id="{$anchor-prefix}.section.{$sectionNumber}" href="#{$anchor-prefix}.section.{$sectionNumber}">
        <xsl:call-template name="emit-section-number">
          <xsl:with-param name="no" select="$sectionNumber"/>
        </xsl:call-template>
      </a>
      <xsl:text> References</xsl:text>
    </h1>

  </xsl:if>
  
  <xsl:variable name="elemtype">
    <xsl:choose>
      <xsl:when test="$refseccount!=1">h2</xsl:when>
      <xsl:otherwise>h1</xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  
  <xsl:variable name="title">

    <xsl:choose>
      <xsl:when test="not(@title) or @title=''">References</xsl:when>
      <xsl:otherwise><xsl:value-of select="@title"/></xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  
  <xsl:element name="{$elemtype}"> 
    <xsl:if test="$name='1'">
      <xsl:call-template name="insert-conditional-pagebreak"/>
    </xsl:if>

    <xsl:variable name="sectionNumber">
      <xsl:call-template name="get-section-number"/>
    </xsl:variable>
    <xsl:variable name="anchorpref">
      <xsl:choose>
        <xsl:when test="$elemtype='h1'"></xsl:when>
        <xsl:otherwise>.<xsl:value-of select="$name"/></xsl:otherwise>
      </xsl:choose>

    </xsl:variable>
    <xsl:attribute name="id"><xsl:value-of select="concat($anchor-prefix,'.references',$anchorpref)"/></xsl:attribute>
    <a href="#{$anchor-prefix}.section.{$sectionNumber}" id="{$anchor-prefix}.section.{$sectionNumber}">
      <xsl:call-template name="emit-section-number">
        <xsl:with-param name="no" select="$sectionNumber"/>
      </xsl:call-template>
    </a>
    <xsl:text> </xsl:text>

    <xsl:value-of select="$title"/>
  </xsl:element>
 
  <table summary="{$title}">
    <xsl:choose>
      <xsl:when test="$xml2rfc-sortrefs='yes'">
        <xsl:apply-templates>
          <xsl:sort select="@anchor|.//ed:ins//reference/@anchor" />
        </xsl:apply-templates>
      </xsl:when>

      <xsl:otherwise>
        <xsl:apply-templates />
      </xsl:otherwise>
    </xsl:choose>
  </table>

</xsl:template>

<xsl:template match="rfc">
  
  <!-- conformance checks -->
  <xsl:if test="$xml2rfc-symrefs!='no' and $xml2rfc-symrefs!='yes' and //reference">

    <xsl:message>WARNING: symrefs PI not specified; default has changed from 'no' to 'yes'.</xsl:message>
  </xsl:if>
  
  <xsl:variable name="lang">
    <xsl:call-template name="get-lang" />
  </xsl:variable>

  <html lang="{$lang}">
    <head profile="http://www.w3.org/2006/03/hcard">
      <title>

        <xsl:apply-templates select="front/title" mode="get-text-content" />
      </title>
      <style type="text/css" title="Xml2Rfc (sans serif)">
        <xsl:call-template name="insertCss" />
      </style>
      <!-- <link rel="alternate stylesheet" type="text/css" media="screen" title="Plain (typewriter)" href="rfc2629tty.css" /> -->
            
      <!-- link elements -->
      <xsl:if test="$xml2rfc-toc='yes'">
        <link rel="Contents" href="#{$anchor-prefix}.toc" />

      </xsl:if>
      <link rel="Author" href="#{$anchor-prefix}.authors" />
      <xsl:if test="not($xml2rfc-private)">
        <link rel="Copyright" href="#{$anchor-prefix}.copyright" />
      </xsl:if>
      <xsl:if test="$has-index">
        <link rel="Index" href="#{$anchor-prefix}.index" />
      </xsl:if>
      <xsl:apply-templates select="/" mode="links" />

      <xsl:for-each select="/rfc/x:link">
        <link><xsl:copy-of select="@*" /></link>
      </xsl:for-each>
      <xsl:if test="/rfc/@number">
        <link rel="Alternate" title="Authorative ASCII version" href="http://www.ietf.org/rfc/rfc{/rfc/@number}.txt" />
      </xsl:if>

      <!-- generator -->
      <xsl:variable name="gen">

        <xsl:call-template name="get-generator" />
      </xsl:variable>
      <meta name="generator" content="{$gen}" />
      
      <!-- keywords -->
      <xsl:if test="front/keyword">
        <xsl:variable name="keyw">
          <xsl:call-template name="get-keywords" />
        </xsl:variable>
        <meta name="keywords" content="{$keyw}" />

      </xsl:if>

      <xsl:if test="$xml2rfc-ext-support-rfc2731!='no'">
        <!-- Dublin Core Metadata -->
        <link rel="schema.DC" href="http://purl.org/dc/elements/1.1/" />
              
        <!-- DC creator, see RFC2731 -->
        <xsl:for-each select="/rfc/front/author">
          <xsl:variable name="initials">
            <xsl:call-template name="format-initials"/>

          </xsl:variable>
          <meta name="DC.Creator" content="{concat(@surname,', ',$initials)}" />
        </xsl:for-each>
        
        <xsl:if test="not($xml2rfc-private)">
          <xsl:choose>
            <xsl:when test="/rfc/@number">
              <meta name="DC.Identifier" content="urn:ietf:rfc:{/rfc/@number}" />
            </xsl:when>
            <xsl:when test="/rfc/@docName">

              <meta name="DC.Identifier" content="urn:ietf:id:{/rfc/@docName}" />
            </xsl:when>
            <xsl:otherwise/>
          </xsl:choose>
          <xsl:variable name="month"><xsl:call-template name="get-month-as-num"/></xsl:variable>
          <meta name="DC.Date.Issued" scheme="ISO8601" content="{/rfc/front/date/@year}-{$month}" />
  
          <xsl:if test="/rfc/@obsoletes!=''">
            <xsl:call-template name="rfclist-for-dcmeta">
              <xsl:with-param name="list" select="/rfc/@obsoletes"/>

            </xsl:call-template>
          </xsl:if>
        </xsl:if>
  
        <xsl:if test="/rfc/front/abstract">
          <meta name="DC.Description.Abstract" content="{normalize-space(/rfc/front/abstract)}" />
        </xsl:if>      
      </xsl:if>      
    </head>
    <body>
      <!-- insert diagnostics -->

      <xsl:call-template name="insert-diagnostics"/>

      <xsl:apply-templates select="front" />
      <xsl:apply-templates select="middle" />
      <xsl:apply-templates select="back" />
    </body>
  </html>
</xsl:template>               


<xsl:template match="t">
  <xsl:if test="preceding-sibling::section or preceding-sibling::appendix">

    <xsl:call-template name="warning">
      <xsl:with-param name="msg">The paragraph below is misplaced; maybe a section is closed in the wrong place: </xsl:with-param>
      <xsl:with-param name="msg2"><xsl:value-of select="."/></xsl:with-param>
    </xsl:call-template>
  </xsl:if>
  <xsl:choose>
    <xsl:when test="@anchor">
      <div id="{@anchor}"><xsl:apply-templates mode="t-content" select="node()[1]" /></div>

    </xsl:when>
    <xsl:otherwise>
      <xsl:apply-templates mode="t-content" select="node()[1]" />
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<!-- for t-content, dispatch to default templates if it's block-level content -->
<xsl:template mode="t-content" match="list|figure|texttable">
  <!-- <xsl:comment>t-content block-level</xsl:comment>  -->
  <xsl:apply-templates select="." />

  <xsl:apply-templates select="following-sibling::node()[1]" mode="t-content" />
</xsl:template>               
               
<!-- ... otherwise group into p elements -->
<xsl:template mode="t-content" match="*|node()">
  <xsl:variable name="p">
    <xsl:call-template name="get-paragraph-number" />
  </xsl:variable>

  <!-- do not open a new p element if this is a whitespace-only text node and no siblings follow -->  
  <xsl:if test="not(self::text() and normalize-space(.)='' and not(following-sibling::node()))">
    <p>

      <xsl:if test="$p!='' and not(ancestor::ed:del) and not(ancestor::ed:ins) and not(ancestor::x:lt) and count(preceding-sibling::node())=0">
        <xsl:attribute name="id"><xsl:value-of select="$anchor-prefix"/>.section.<xsl:value-of select="$p"/></xsl:attribute>
      </xsl:if>
      <xsl:call-template name="insertInsDelClass"/>
      <xsl:call-template name="editingMark" />
      <xsl:apply-templates mode="t-content2" select="." />
    </p>
  </xsl:if>

  <xsl:apply-templates mode="t-content" select="following-sibling::*[self::list or self::figure or self::texttable][1]" />
</xsl:template>               
               
<xsl:template mode="t-content2" match="*">
  <xsl:apply-templates select="." />
  <xsl:if test="not(following-sibling::node()[1] [self::list or self::figure or self::texttable])">
    <xsl:apply-templates select="following-sibling::node()[1]" mode="t-content2" />
  </xsl:if>
</xsl:template>       

<xsl:template mode="t-content2" match="text()">
  <xsl:apply-templates select="." />
  <xsl:if test="not(following-sibling::node()[1] [self::list or self::figure or self::texttable])">

    <xsl:apply-templates select="following-sibling::node()[1]" mode="t-content2" />
  </xsl:if>
</xsl:template>               

<xsl:template match="title">
  <xsl:apply-templates />
</xsl:template>

<xsl:template name="insertTitle">
  <xsl:choose>
    <xsl:when test="@ed:old-title">
      <del>

        <xsl:if test="ancestor-or-self::*[@ed:entered-by] and @ed:datetime">
          <xsl:attribute name="title"><xsl:value-of select="concat(@ed:datetime,', ',ancestor-or-self::*[@ed:entered-by][1]/@ed:entered-by)"/></xsl:attribute>
        </xsl:if>
        <xsl:value-of select="@ed:old-title"/>
      </del>
      <ins>
        <xsl:if test="ancestor-or-self::*[@ed:entered-by] and @ed:datetime">
          <xsl:attribute name="title"><xsl:value-of select="concat(@ed:datetime,', ',ancestor-or-self::*[@ed:entered-by][1]/@ed:entered-by)"/></xsl:attribute>
        </xsl:if>

        <xsl:value-of select="@title"/>
      </ins>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="@title"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="section|appendix">

  <xsl:variable name="sectionNumber">
    <xsl:choose>
      <xsl:when test="@myns:unnumbered"></xsl:when>
      <xsl:otherwise><xsl:call-template name="get-section-number" /></xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
    
  <xsl:if test="not(ancestor::section) and not(@myns:notoclink)">
    <xsl:call-template name="insert-conditional-hrule"/>

  </xsl:if>
  
  <xsl:variable name="elemtype">
    <xsl:choose>
      <xsl:when test="count(ancestor::section) = 0">h1</xsl:when>
      <xsl:when test="count(ancestor::section) = 1">h2</xsl:when>
      <xsl:when test="count(ancestor::section) = 2">h3</xsl:when>
      <xsl:when test="count(ancestor::section) = 3">h4</xsl:when>

      <xsl:otherwise>h5</xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  
  <!-- process irefs immediadetely following the section so that their anchor
  actually is the section heading -->
  <xsl:apply-templates select="iref[count(preceding-sibling::*[not(self::iref)])=0]"/>

  <xsl:element name="{$elemtype}">
    <xsl:if test="$sectionNumber!=''">
      <xsl:attribute name="id"><xsl:value-of select="$anchor-prefix"/>.section.<xsl:value-of select="$sectionNumber"/></xsl:attribute>

    </xsl:if>
    <xsl:choose>
      <xsl:when test="$sectionNumber='1'">
        <!-- pagebreak, this the first section -->
        <xsl:attribute name="class">np</xsl:attribute>
      </xsl:when>
      <xsl:when test="not(ancestor::section) and not(@myns:notoclink)">
        <xsl:call-template name="insert-conditional-pagebreak"/>

      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
    
    <xsl:call-template name="insertInsDelClass" />
        
    <xsl:if test="$sectionNumber!=''">
      <a href="#{$anchor-prefix}.section.{$sectionNumber}">
        <xsl:call-template name="emit-section-number">
          <xsl:with-param name="no" select="$sectionNumber"/>
        </xsl:call-template>

      </a>
      <xsl:text>&#0160;</xsl:text>
    </xsl:if>
    
    <!-- issue tracking? -->
    <xsl:if test="@ed:resolves">
      <xsl:call-template name="insert-issue-pointer"/>
    </xsl:if>
    
    <xsl:choose>
      <xsl:when test="@anchor">

        <a id="{@anchor}" href="#{@anchor}"><xsl:call-template name="insertTitle"/></a>
      </xsl:when>
      <xsl:otherwise>
        <xsl:call-template name="insertTitle"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:element>
  <!-- continue with all child elements but the irefs processed above -->
  <xsl:apply-templates select="*[not(self::iref)]|iref[count(preceding-sibling::*[not(self::iref)])!=0]" />

</xsl:template>

<xsl:template match="spanx[@style='emph' or not(@style)]">
  <em>
    <xsl:if test="@anchor">
      <xsl:attribute name="id"><xsl:value-of select="@anchor"/></xsl:attribute>
    </xsl:if>
    <xsl:apply-templates />
  </em>
</xsl:template>

<xsl:template match="spanx[@style='verb']">
  <samp>
    <xsl:if test="@anchor">
      <xsl:attribute name="id"><xsl:value-of select="@anchor"/></xsl:attribute>
    </xsl:if>
    <xsl:apply-templates />
  </samp>
</xsl:template>

<xsl:template match="spanx[@style='strong']">
  <strong>

    <xsl:if test="@anchor">
      <xsl:attribute name="id"><xsl:value-of select="@anchor"/></xsl:attribute>
    </xsl:if>
    <xsl:apply-templates />
  </strong>
</xsl:template>

<xsl:template name="insert-blank-lines">
  <xsl:param name="no"/>
  <xsl:choose>

    <xsl:when test="$no &lt;= 0">
      <br/>
      <!-- done -->
    </xsl:when>
    <xsl:otherwise>
      <br/>
      <xsl:call-template name="insert-blank-lines">
        <xsl:with-param name="no" select="$no - 1"/>
      </xsl:call-template>

    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="vspace[not(@blankLines)]">
  <br />
</xsl:template>

<xsl:template match="vspace">
  <xsl:call-template name="insert-blank-lines">
    <xsl:with-param name="no" select="@blankLines"/>
  </xsl:call-template>

</xsl:template>

<!-- keep the root for the case when we process XSLT-inline markup -->
<xsl:variable name="src" select="/" />

<xsl:template name="render-section-ref">
  <xsl:param name="from" />
  <xsl:param name="to" />

  <xsl:variable name="refname">
    <xsl:for-each select="$to">
      <xsl:call-template name="get-section-type">

        <xsl:with-param name="prec" select="$from/preceding-sibling::node()[1]" />
      </xsl:call-template>
    </xsl:for-each>
  </xsl:variable>
  <xsl:variable name="refnum">
    <xsl:for-each select="$to">
      <xsl:call-template name="get-section-number" />
    </xsl:for-each>
  </xsl:variable>

  <xsl:attribute name="title">
    <xsl:value-of select="$to/@title" />
  </xsl:attribute>
  <xsl:choose>
    <xsl:when test="@format='counter'">
      <xsl:value-of select="$refnum"/>
    </xsl:when>
    <xsl:when test="@format='title'">
      <xsl:value-of select="$to/@title"/>

    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="normalize-space(concat($refname,'&#160;',$refnum))"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="xref[node()]">

  <xsl:variable name="target" select="@target" />
  <xsl:variable name="node" select="$src//*[@anchor=$target]" />

  <xsl:variable name="anchor"><xsl:value-of select="$anchor-prefix"/>.xref.<xsl:value-of select="@target"/>.<xsl:number level="any" count="xref[@target=$target]"/></xsl:variable>

  <xsl:choose>

    <!-- x:fmt='none': do not generate any links -->
    <xsl:when test="@x:fmt='none'">
      <xsl:choose>
        <xsl:when test="name($node)='reference'">
          <cite title="{normalize-space($node/front/title)}">

            <xsl:if test="$xml2rfc-ext-include-references-in-index='yes'">
              <xsl:attribute name="id"><xsl:value-of select="$anchor"/></xsl:attribute>
            </xsl:if>
            <!-- insert id when a backlink to this xref is needed in the index -->
            <xsl:if test="//iref[@x:for-anchor=$target] | //iref[@x:for-anchor='' and ../@anchor=$target]">
              <xsl:attribute name="id"><xsl:value-of select="$anchor"/></xsl:attribute>
            </xsl:if>
            <xsl:apply-templates/>
          </cite>

        </xsl:when>
        <xsl:otherwise>
          <xsl:apply-templates/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:when>
  
    <!-- Other x:fmt values than "none": unsupported -->
    <xsl:when test="@x:fmt and @x:fmt!='none'">
      <xsl:message>unknown xref/@x:fmt extension: <xsl:value-of select="@x:fmt"/></xsl:message>

      <span class="error">unknown xref/@x:fmt extension: <xsl:value-of select="@x:fmt"/></span>
    </xsl:when>

    <!-- Section links -->
    <xsl:when test="name($node)='section' or name($node)='appendix'">
      <xsl:apply-templates/>
      <xsl:variable name="context" select="."/>
      <xsl:text> (</xsl:text>

      <a href="#{@target}">
        <!-- insert id when a backlink to this xref is needed in the index -->
        <xsl:if test="//iref[@x:for-anchor=$target] | //iref[@x:for-anchor='' and ../@anchor=$target]">
          <xsl:attribute name="id"><xsl:value-of select="$anchor"/></xsl:attribute>
        </xsl:if>
        <xsl:call-template name="render-section-ref">
          <xsl:with-param name="from" select="."/>
          <xsl:with-param name="to" select="$node"/>
        </xsl:call-template>

      </a>
      <xsl:text>)</xsl:text>
    </xsl:when>

    <xsl:otherwise>
      <a href="#{$target}"><xsl:apply-templates /></a>
      <xsl:for-each select="$src/rfc/back/references//reference[@anchor=$target]">
        <xsl:text> </xsl:text>

        <cite title="{normalize-space(front/title)}">
          <xsl:if test="$xml2rfc-ext-include-references-in-index='yes'">
            <xsl:attribute name="id"><xsl:value-of select="$anchor"/></xsl:attribute>
          </xsl:if>
          <xsl:call-template name="referencename">
             <xsl:with-param name="node" select="." />
          </xsl:call-template>
        </cite>
      </xsl:for-each>

    </xsl:otherwise>
  </xsl:choose>

</xsl:template>
               
<xsl:template match="xref[not(node())]">

  <xsl:variable name="context" select="." />
  <xsl:variable name="target" select="@target" />
  <xsl:variable name="anchor"><xsl:value-of select="$anchor-prefix"/>.xref.<xsl:value-of select="@target"/>.<xsl:number level="any" count="xref[@target=$target]"/></xsl:variable>

  <xsl:variable name="node" select="$src//*[@anchor=$target]" />
  <xsl:if test="count($node)=0 and not(ancestor::ed:del)">
    <xsl:message>Undefined target: <xsl:value-of select="@target" /></xsl:message>
    <span class="error">Undefined target: <xsl:value-of select="@target" /></span>
  </xsl:if>

  <xsl:choose>
  
    <!-- Section links -->

    <xsl:when test="name($node)='section' or name($node)='appendix'">
      <a href="#{@target}">
        <!-- insert id when a backlink to this xref is needed in the index -->
        <xsl:if test="//iref[@x:for-anchor=$target] | //iref[@x:for-anchor='' and ../@anchor=$target]">
          <xsl:attribute name="id"><xsl:value-of select="$anchor"/></xsl:attribute>
        </xsl:if>
        <xsl:call-template name="render-section-ref">
          <xsl:with-param name="from" select="."/>
          <xsl:with-param name="to" select="$node"/>

        </xsl:call-template>
      </a>
    </xsl:when>

    <!-- Figure links -->
    <xsl:when test="name($node)='figure'">
      <a href="#{$target}">
        <xsl:variable name="figcnt">
          <xsl:for-each select="$node">

            <xsl:number level="any" count="figure[@title!='' or @anchor!='']" />
          </xsl:for-each>
        </xsl:variable>
        <xsl:choose>
          <xsl:when test="@format='counter'">
            <xsl:value-of select="$figcnt" />
          </xsl:when>
          <xsl:when test="@format='title'">
            <xsl:value-of select="$node/@title" />

          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="normalize-space(concat('Figure&#160;',$figcnt))"/>
          </xsl:otherwise>
        </xsl:choose>
      </a>
    </xsl:when>
    
    <!-- Table links -->
    <xsl:when test="name($node)='texttable'">

      <a href="#{$target}">
        <xsl:variable name="tabcnt">
          <xsl:for-each select="$node">
            <xsl:number level="any" count="texttable[@title!='' or @anchor!='']" />
          </xsl:for-each>
        </xsl:variable>
        <xsl:choose>
          <xsl:when test="@format='counter'">
            <xsl:value-of select="$tabcnt" />

          </xsl:when>
          <xsl:when test="@format='title'">
            <xsl:value-of select="$node/@title" />
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="normalize-space(concat('Table&#160;',$tabcnt))"/>
          </xsl:otherwise>
        </xsl:choose>
      </a>

    </xsl:when>
    
    <!-- Reference links -->
    <xsl:when test="name($node)='reference'">

      <xsl:variable name="href">
        <xsl:call-template name="computed-target">
          <xsl:with-param name="bib" select="$node"/>
          <xsl:with-param name="ref" select="."/>
        </xsl:call-template>

      </xsl:variable>

      <!--
      Formats:
      
        ()      [XXXX] (Section SS)
        ,       [XXXX], Section SS
        of      Section SS of [XXXX]
        sec     Section SS
        number  SS
      -->
      
      <xsl:if test="@x:fmt and not(@x:fmt='()' or @x:fmt=',' or @x:fmt='of' or @x:fmt='sec' or @x:fmt='anchor' or @x:fmt='number')">
        <xsl:message>unknown xref/@x:fmt extension: <xsl:value-of select="@x:fmt"/></xsl:message>
        <span class="error">unknown xref/@x:fmt extension: <xsl:value-of select="@x:fmt"/></span>
      </xsl:if>

      <xsl:if test="@x:sec">

        <xsl:choose>
          <xsl:when test="@x:fmt='of' or @x:fmt='sec'">
            <xsl:choose>
              <xsl:when test="$href!=''">
                <a href="{$href}">
                  <xsl:if test="@x:fmt='sec' and $xml2rfc-ext-include-references-in-index='yes'">
                    <xsl:attribute name="id"><xsl:value-of select="$anchor"/></xsl:attribute>
                  </xsl:if>

                  <xsl:text>Section </xsl:text>
                  <xsl:value-of select="@x:sec"/>
                </a>
              </xsl:when>
              <xsl:otherwise>Section <xsl:value-of select="@x:sec"/></xsl:otherwise>
            </xsl:choose>
            <xsl:if test="@x:fmt='of'">
              <xsl:text> of </xsl:text>

            </xsl:if>
          </xsl:when>
          <xsl:when test="@x:fmt='number'">
            <xsl:choose>
              <xsl:when test="$href!=''">
                <a href="{$href}">
                  <xsl:if test="$xml2rfc-ext-include-references-in-index='yes'">
                    <xsl:attribute name="id"><xsl:value-of select="$anchor"/></xsl:attribute>
                  </xsl:if>

                  <xsl:value-of select="@x:sec"/>
                </a>
              </xsl:when>
              <xsl:otherwise><xsl:value-of select="@x:sec"/></xsl:otherwise>
            </xsl:choose>
          </xsl:when>
          <xsl:otherwise/>
        </xsl:choose>
      </xsl:if>

      <xsl:if test="not(@x:sec) or (@x:fmt!='sec' and @x:fmt!='number')">
        <a href="#{$target}">
          <xsl:if test="$xml2rfc-ext-include-references-in-index='yes'">
            <xsl:attribute name="id"><xsl:value-of select="$anchor"/></xsl:attribute>
          </xsl:if>
          <cite title="{normalize-space($node/front/title)}">
            <xsl:variable name="val">
              <xsl:call-template name="referencename">

                <xsl:with-param name="node" select="$node" />
              </xsl:call-template>
            </xsl:variable>
            <xsl:choose>
              <xsl:when test="@x:fmt='anchor'">
                <!-- remove brackets -->
                <xsl:value-of select="substring($val,2,string-length($val)-2)"/>
              </xsl:when>
              <xsl:otherwise>

                <xsl:value-of select="$val"/>
              </xsl:otherwise>
            </xsl:choose>
          </cite>
        </a>
      </xsl:if>
      
      <xsl:if test="@x:sec">
        <xsl:choose>
          <xsl:when test="@x:fmt='()'">

            <xsl:text> (</xsl:text>
            <xsl:choose>
              <xsl:when test="$href!=''">
                <a href="{$href}">Section <xsl:value-of select="@x:sec"/></a>
              </xsl:when>
              <xsl:otherwise>Section <xsl:value-of select="@x:sec"/></xsl:otherwise>
            </xsl:choose>

            <xsl:text>)</xsl:text>
          </xsl:when>
          <xsl:when test="@x:fmt=','">
            <xsl:text>, </xsl:text>
            <xsl:choose>
              <xsl:when test="$href!=''">
                <a href="{$href}">Section <xsl:value-of select="@x:sec"/></a>

              </xsl:when>
              <xsl:otherwise>Section <xsl:value-of select="@x:sec"/></xsl:otherwise>
            </xsl:choose>
          </xsl:when>
          <xsl:otherwise/>
        </xsl:choose>
      </xsl:if>
    </xsl:when>

    
    <xsl:otherwise>
      <xsl:message>xref to unknown element: <xsl:value-of select="name($node)"/></xsl:message>
      <span class="error">xref to unknown element: <xsl:value-of select="name($node)"/></span>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>


<!-- mark unmatched elements red -->

<xsl:template match="*">
  <xsl:message>ERROR: no XSLT template for element: &lt;<xsl:value-of select="name()"/>&gt;</xsl:message>    
  <tt class="error">&lt;<xsl:value-of select="name()" />&gt;</tt>
  <xsl:copy><xsl:apply-templates select="node()|@*" /></xsl:copy>
  <tt class="error">&lt;/<xsl:value-of select="name()" />&gt;</tt>
</xsl:template>

<xsl:template match="/">
  <xsl:apply-templates select="*" />
</xsl:template>

<!-- utility templates -->

<xsl:template name="collectLeftHeaderColumn">
  <xsl:param name="mode" />
  <!-- default case -->
  <xsl:if test="not($xml2rfc-private)">
    <myns:item>Network Working Group</myns:item>
    <myns:item>
       <xsl:choose>
        <xsl:when test="/rfc/@ipr and not(/rfc/@number)">Internet Draft</xsl:when>

        <xsl:otherwise>Request for Comments: <xsl:value-of select="/rfc/@number"/></xsl:otherwise>
      </xsl:choose>
    </myns:item>
    <xsl:if test="/rfc/@docName and $mode!='nroff'">
      <myns:item>
        &lt;<xsl:value-of select="/rfc/@docName" />&gt;
      </myns:item>
    </xsl:if>

    <xsl:if test="/rfc/@obsoletes and /rfc/@obsoletes!=''">
      <myns:item>
        <xsl:text>Obsoletes: </xsl:text>
        <xsl:call-template name="rfclist">
          <xsl:with-param name="list" select="normalize-space(/rfc/@obsoletes)" />
        </xsl:call-template>
        <xsl:if test="not(/rfc/@number)"> (if approved)</xsl:if>

      </myns:item>
    </xsl:if>
    <xsl:if test="/rfc/@seriesNo">
       <myns:item>
        <xsl:choose>
          <xsl:when test="/rfc/@category='bcp'">BCP: <xsl:value-of select="/rfc/@seriesNo" /></xsl:when>
          <xsl:when test="/rfc/@category='info'">FYI: <xsl:value-of select="/rfc/@seriesNo" /></xsl:when>
          <xsl:when test="/rfc/@category='std'">STD: <xsl:value-of select="/rfc/@seriesNo" /></xsl:when>

          <xsl:otherwise><xsl:value-of select="concat(/rfc/@category,': ',/rfc/@seriesNo)" /></xsl:otherwise>
        </xsl:choose>
      </myns:item>
    </xsl:if>
    <xsl:if test="/rfc/@updates and /rfc/@updates!=''">
      <myns:item>
        <xsl:text>Updates: </xsl:text>
          <xsl:call-template name="rfclist">

             <xsl:with-param name="list" select="normalize-space(/rfc/@updates)" />
          </xsl:call-template>
          <xsl:if test="not(/rfc/@number)"> (if approved)</xsl:if>
      </myns:item>
    </xsl:if>
    <xsl:if test="$mode!='nroff'">
      <myns:item>
        <xsl:choose>

          <xsl:when test="/rfc/@number">
            <xsl:text>Category: </xsl:text>
          </xsl:when>
          <xsl:otherwise>
            <xsl:text>Intended status: </xsl:text>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:call-template name="get-category-long" />

      </myns:item>
    </xsl:if>
    <xsl:if test="/rfc/@ipr and not(/rfc/@number)">
       <myns:item>Expires: <xsl:call-template name="expirydate" /></myns:item>
    </xsl:if>
  </xsl:if>
    
  <!-- private case -->
  <xsl:if test="$xml2rfc-private">

    <myns:item><xsl:value-of select="$xml2rfc-private" /></myns:item>
  </xsl:if>
</xsl:template>

<xsl:template name="collectRightHeaderColumn">
  <xsl:for-each select="author">
    <xsl:variable name="initials">
      <xsl:call-template name="format-initials"/>
    </xsl:variable>
    <xsl:if test="@surname">

      <myns:item>
        <xsl:value-of select="concat($initials,' ',@surname)" />
        <xsl:if test="@role">
          <xsl:choose>
            <xsl:when test="@role='editor'">
              <xsl:text>, Editor</xsl:text>
            </xsl:when>
            <xsl:otherwise>

              <xsl:text>, </xsl:text><xsl:value-of select="@role" />
            </xsl:otherwise>
          </xsl:choose>
        </xsl:if>
      </myns:item>
    </xsl:if>
    <xsl:variable name="org">
      <xsl:choose>

        <xsl:when test="organization/@abbrev"><xsl:value-of select="organization/@abbrev" /></xsl:when>
        <xsl:otherwise><xsl:value-of select="organization" /></xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="orgOfFollowing">
      <xsl:choose>
        <xsl:when test="following-sibling::*[1]/organization/@abbrev"><xsl:value-of select="following-sibling::*[1]/organization/@abbrev" /></xsl:when>
        <xsl:otherwise><xsl:value-of select="following-sibling::*/organization" /></xsl:otherwise>
      </xsl:choose>

    </xsl:variable>
    <xsl:if test="$org != $orgOfFollowing and $org != ''">
      <myns:item><xsl:value-of select="$org" /></myns:item>
    </xsl:if>
  </xsl:for-each>
  <myns:item>
    <xsl:value-of select="concat(date/@month,' ',date/@year)" />
  </myns:item>
</xsl:template>


<xsl:template name="emitheader">
  <xsl:param name="lc" />
  <xsl:param name="rc" />

  <xsl:for-each select="$lc/myns:item | $rc/myns:item">
    <xsl:variable name="pos" select="position()" />
    <xsl:if test="$pos &lt; count($lc/myns:item) + 1 or $pos &lt; count($rc/myns:item) + 1"> 
      <tr>
        <td class="header left"><xsl:call-template name="copynodes"><xsl:with-param name="nodes" select="$lc/myns:item[$pos]/node()" /></xsl:call-template></td>

        <td class="header right"><xsl:call-template name="copynodes"><xsl:with-param name="nodes" select="$rc/myns:item[$pos]/node()" /></xsl:call-template></td>
      </tr>
    </xsl:if>
  </xsl:for-each>
</xsl:template>

<!-- convenience template that avoids copying namespace nodes we don't want -->
<xsl:template name="copynodes">
  <xsl:param name="nodes" />
  <xsl:for-each select="$nodes">
    <xsl:choose>

      <xsl:when test="namespace-uri()='http://www.w3.org/1999/xhtml'">
        <xsl:element name="{name()}" namespace="{namespace-uri()}">
          <xsl:copy-of select="@*|node()" />
        </xsl:element>
      </xsl:when>
      <xsl:when test="self::*">
        <xsl:element name="{name()}">
          <xsl:copy-of select="@*|node()" />
        </xsl:element>

      </xsl:when>
      <!-- workaround for opera, remove when Opera > 9.0.x comes out -->
      <xsl:when test="self::text()">
        <xsl:value-of select="."/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:copy-of select="." />
      </xsl:otherwise>
    </xsl:choose>

  </xsl:for-each>
</xsl:template>


<xsl:template name="expirydate">
  <xsl:variable name="date" select="/rfc/front/date" />
  <xsl:choose>
      <xsl:when test="$date/@month='January'">July <xsl:value-of select="$date/@year" /></xsl:when>
      <xsl:when test="$date/@month='February'">August <xsl:value-of select="$date/@year" /></xsl:when>
      <xsl:when test="$date/@month='March'">September <xsl:value-of select="$date/@year" /></xsl:when>

      <xsl:when test="$date/@month='April'">October <xsl:value-of select="$date/@year" /></xsl:when>
      <xsl:when test="$date/@month='May'">November <xsl:value-of select="$date/@year" /></xsl:when>
      <xsl:when test="$date/@month='June'">December <xsl:value-of select="$date/@year" /></xsl:when>
      <xsl:when test="$date/@month='July'">January <xsl:value-of select="$date/@year + 1" /></xsl:when>
      <xsl:when test="$date/@month='August'">February <xsl:value-of select="$date/@year + 1" /></xsl:when>
      <xsl:when test="$date/@month='September'">March <xsl:value-of select="$date/@year + 1" /></xsl:when>

      <xsl:when test="$date/@month='October'">April <xsl:value-of select="$date/@year + 1" /></xsl:when>
      <xsl:when test="$date/@month='November'">May <xsl:value-of select="$date/@year + 1" /></xsl:when>
      <xsl:when test="$date/@month='December'">June <xsl:value-of select="$date/@year + 1" /></xsl:when>
        <xsl:otherwise>WRONG SYNTAX FOR MONTH</xsl:otherwise>
     </xsl:choose>
</xsl:template>

<xsl:template name="get-month-as-num">

  <xsl:variable name="date" select="/rfc/front/date" />
  <xsl:choose>
      <xsl:when test="$date/@month='January'">01</xsl:when>
      <xsl:when test="$date/@month='February'">02</xsl:when>
      <xsl:when test="$date/@month='March'">03</xsl:when>
      <xsl:when test="$date/@month='April'">04</xsl:when>
      <xsl:when test="$date/@month='May'">05</xsl:when>

      <xsl:when test="$date/@month='June'">06</xsl:when>
      <xsl:when test="$date/@month='July'">07</xsl:when>
      <xsl:when test="$date/@month='August'">08</xsl:when>
      <xsl:when test="$date/@month='September'">09</xsl:when>
      <xsl:when test="$date/@month='October'">10</xsl:when>
      <xsl:when test="$date/@month='November'">11</xsl:when>

      <xsl:when test="$date/@month='December'">12</xsl:when>
        <xsl:otherwise>WRONG SYNTAX FOR MONTH</xsl:otherwise>
     </xsl:choose>
</xsl:template>

<!-- produce back section with author information -->
<xsl:template name="get-authors-section-title">
  <xsl:choose>
    <xsl:when test="count(/rfc/front/author)=1">Author's Address</xsl:when>

    <xsl:otherwise>Authors' Addresses</xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="get-authors-section-number">
  <xsl:if test="/*/x:assign-section-number[@builtin-target='authors']">
    <xsl:value-of select="/*/x:assign-section-number[@builtin-target='authors']/@number"/>
  </xsl:if>
</xsl:template>

<xsl:template name="insertAuthors">

  <xsl:call-template name="insert-conditional-hrule"/>
  
  <xsl:variable name="number">
    <xsl:call-template name="get-authors-section-number"/>
  </xsl:variable>
    
  <h1 id="{$anchor-prefix}.authors">
    <xsl:call-template name="insert-conditional-pagebreak"/>
    <xsl:if test="$number != ''">
      <a href="#{$anchor-prefix}.section.{$number}" id="{$anchor-prefix}.section.{$number}"><xsl:value-of select="$number"/>.</a>

      <xsl:text> </xsl:text>
    </xsl:if>
    <a href="#{$anchor-prefix}.authors"><xsl:call-template name="get-authors-section-title"/></a>
  </h1>

  <xsl:apply-templates select="/rfc/front/author" />
</xsl:template>



<!-- insert copyright statement -->

<xsl:template name="insertCopyright" myns:namespaceless-elements="xml2rfc">

  <xsl:choose>
    <xsl:when test="$ipr-rfc3667">
      <section title="Full Copyright Statement" anchor="{$anchor-prefix}.copyright" myns:unnumbered="unnumbered" myns:notoclink="notoclink">
        <t>
          <xsl:choose>
            <xsl:when test="$ipr-rfc4748">
              Copyright &#169; The IETF Trust (<xsl:value-of select="/rfc/front/date/@year" />).
            </xsl:when>

            <xsl:otherwise>
              Copyright &#169; The Internet Society (<xsl:value-of select="/rfc/front/date/@year" />).
            </xsl:otherwise>
          </xsl:choose>
        </t>
        <t>
          This document is subject to the rights, licenses and restrictions
          contained in BCP 78<xsl:if test="/rfc/@submissionType='independent'"> and at <eref target="http://www.rfc-editor.org/copyright.html"/></xsl:if>, and except as set forth therein, the authors
          retain all their rights.
        </t>

        <t>
          <xsl:choose>
            <xsl:when test="$ipr-rfc4748">
              This document and the information contained herein are provided
              on an &#8220;AS IS&#8221; basis and THE CONTRIBUTOR,
              THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY),
              THE INTERNET SOCIETY, THE IETF TRUST AND THE INTERNET ENGINEERING
              TASK FORCE DISCLAIM ALL WARRANTIES,
              EXPRESS OR IMPLIED,
              INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
              INFORMATION HEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED
              WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
            </xsl:when>
            <xsl:otherwise>
              This document and the information contained herein are provided
              on an &#8220;AS IS&#8221; basis and THE CONTRIBUTOR,
              THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY),
              THE INTERNET SOCIETY AND THE INTERNET ENGINEERING TASK FORCE DISCLAIM
              ALL WARRANTIES,
              EXPRESS OR IMPLIED,
              INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
              INFORMATION HEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED
              WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
            </xsl:otherwise>

          </xsl:choose>
        </t>
      </section>    
    </xsl:when>
    <xsl:otherwise>
      <!-- <http://tools.ietf.org/html/rfc2026#section-10.4> -->
      <section title="Full Copyright Statement" anchor="{$anchor-prefix}.copyright" myns:unnumbered="unnumbered" myns:notoclink="notoclink">
        <t>
          Copyright &#169; The Internet Society (<xsl:value-of select="/rfc/front/date/@year" />). All Rights Reserved.
        </t>

        <t>
          This document and translations of it may be copied and furnished to
          others, and derivative works that comment on or otherwise explain it
          or assist in its implementation may be prepared, copied, published and
          distributed, in whole or in part, without restriction of any kind,
          provided that the above copyright notice and this paragraph are
          included on all such copies and derivative works. However, this
          document itself may not be modified in any way, such as by removing
          the copyright notice or references to the Internet Society or other
          Internet organizations, except as needed for the purpose of
          developing Internet standards in which case the procedures for
          copyrights defined in the Internet Standards process must be
          followed, or as required to translate it into languages other than
          English.
        </t>
        <t>
          The limited permissions granted above are perpetual and will not be
          revoked by the Internet Society or its successors or assignees.
        </t>
        <t>
          This document and the information contained herein is provided on an
          &#8220;;AS IS&#8221; basis and THE INTERNET SOCIETY AND THE INTERNET ENGINEERING
          TASK FORCE DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING
          BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION
          HEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF
          MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
        </t>

      </section>
    </xsl:otherwise>
  </xsl:choose>

  <section title="Intellectual Property" anchor="{$anchor-prefix}.ipr" myns:unnumbered="unnumbered">
    <xsl:choose>
      <xsl:when test="$ipr-rfc3667">
        <t>
          The IETF takes no position regarding the validity or scope of any
          Intellectual Property Rights or other rights that might be claimed to
          pertain to the implementation or use of the technology described in
          this document or the extent to which any license under such rights
          might or might not be available; nor does it represent that it has
          made any independent effort to identify any such rights.  Information
          on the procedures with respect to rights in RFC documents
          can be found in BCP 78 and BCP 79.
        </t>       
        <t>

          Copies of IPR disclosures made to the IETF Secretariat and any
          assurances of licenses to be made available, or the result of an
          attempt made to obtain a general license or permission for the use
          of such proprietary rights by implementers or users of this
          specification can be obtained from the IETF on-line IPR repository 
          at <eref target="http://www.ietf.org/ipr"/>.
        </t>       
        <t>
          The IETF invites any interested party to bring to its attention any
          copyrights, patents or patent applications, or other proprietary
          rights that may cover technology that may be required to implement
          this standard. Please address the information to the IETF at
          <eref target="mailto:ietf-ipr@ietf.org">ietf-ipr@ietf.org</eref>.
        </t>       
      </xsl:when>
      <xsl:otherwise>
        <t>
          The IETF takes no position regarding the validity or scope of
          any intellectual property or other rights that might be claimed
          to  pertain to the implementation or use of the technology
          described in this document or the extent to which any license
          under such rights might or might not be available; neither does
          it represent that it has made any effort to identify any such
          rights. Information on the IETF's procedures with respect to
          rights in standards-track and standards-related documentation
          can be found in BCP-11. Copies of claims of rights made
          available for publication and any assurances of licenses to
          be made available, or the result of an attempt made
          to obtain a general license or permission for the use of such
          proprietary rights by implementors or users of this
          specification can be obtained from the IETF Secretariat.
        </t>

        <t>
          The IETF invites any interested party to bring to its
          attention any copyrights, patents or patent applications, or
          other proprietary rights which may cover technology that may be
          required to practice this standard. Please address the
          information to the IETF Executive Director.
        </t>
        <xsl:if test="$xml2rfc-iprnotified='yes'">
          <t>
            The IETF has been notified of intellectual property rights
            claimed in regard to some or all of the specification contained
            in this document. For more information consult the online list
            of claimed rights.
          </t>
        </xsl:if>
      </xsl:otherwise>
    </xsl:choose>

  </section>
  
  <section title="Acknowledgement" myns:unnumbered="unnumbered" myns:notoclink="notoclink">
    <t>
      Funding for the RFC Editor function is provided by the IETF
      Administrative Support Activity (IASA).
    </t>
  </section>

</xsl:template>


<!-- insert CSS style info -->

<xsl:template name="insertCss">
a {
  text-decoration: none;
}
a:hover {
  text-decoration: underline;
}
a:active {
  text-decoration: underline;
}
address {
  margin-top: 1em;
  margin-left: 2em;
  font-style: normal;
}<xsl:if test="//x:blockquote">
blockquote {
  border-style: solid;
  border-color: gray;
  border-width: 0 0 0 .25em;
  font-style: italic;
  padding-left: 0.5em;
}</xsl:if>
body {<xsl:if test="$xml2rfc-background!=''">
  background: url(<xsl:value-of select="$xml2rfc-background" />) #ffffff left top;</xsl:if>
  color: #000000;
  font-family: verdana, helvetica, arial, sans-serif;
  font-size: 10pt;
}<xsl:if test="//xhtml:p">
br.p {
  line-height: 150%;
}</xsl:if>
cite {
  font-style: normal;
}
dd {
  margin-right: 2em;<xsl:if test="$xml2rfc-ext-justification='always'">

  text-align: justify;</xsl:if>
}
dl {
  margin-left: 2em;
}
<!-- spacing between two entries in definition lists -->
dl.empty dd {
  margin-top: .5em;
}
dl p {
  margin-left: 0em;
}
dt {
  margin-top: .5em;
}
h1 {
  color: #333333;
  font-size: 14pt;
  line-height: 21pt;
  page-break-after: avoid;
}
h1.np {
  page-break-before: always;
}
h1 a {
  color: #333333;
}
h2 {
  color: #000000;
  font-size: 12pt;
  line-height: 15pt;
  page-break-after: avoid;
}
h2 a {
  color: #000000;
}
h3 {
  color: #000000;
  font-size: 10pt;
  page-break-after: avoid;
}
h3 a {
  color: #000000;
}
h4 {
  color: #000000;
  font-size: 10pt;
  page-break-after: avoid;
}
h4 a {
  color: #000000;
}
h5 {
  color: #000000;
  font-size: 10pt;
  page-break-after: avoid;
}
h5 a {
  color: #000000;
}
img {
  margin-left: 3em;
}
li {
  margin-left: 2em;
  margin-right: 2em;<xsl:if test="$xml2rfc-ext-justification='always'">
  text-align: justify;</xsl:if>
}
ol {
  margin-left: 2em;
  margin-right: 2em;
}
ol p {
  margin-left: 0em;
}<xsl:if test="//xhtml:q">
q {
  font-style: italic;
}</xsl:if>
p {
  margin-left: 2em;
  margin-right: 2em;<xsl:if test="$xml2rfc-ext-justification='always'">
  text-align: justify;</xsl:if>

}
pre {
  margin-left: 3em;
  background-color: lightyellow;
  padding: .25em;
}
pre.text2 {
  border-style: dotted;
  border-width: 1px;
  background-color: #f0f0f0;
  width: 69em;
}
pre.inline {
  background-color: white;
  padding: 0em;
}
pre.text {
  border-style: dotted;
  border-width: 1px;
  background-color: #f8f8f8;
  width: 69em;
}
pre.drawing {
  border-style: solid;
  border-width: 1px;
  background-color: #f8f8f8;
  padding: 2em;
}<xsl:if test="//x:q">
q {
  font-style: italic;
}</xsl:if>
table {
  margin-left: 2em;
}<xsl:if test="//texttable">
table.tt {
  vertical-align: top;
}
table.full {
  border-style: outset;
  border-width: 1px;
}
table.headers {
  border-style: outset;
  border-width: 1px;
}
table.tt td {
  vertical-align: top;
}
table.full td {
  border-style: inset;
  border-width: 1px;
}
table.tt th {
  vertical-align: top;
}
table.full th {
  border-style: inset;
  border-width: 1px;
}
table.headers th {
  border-style: none none inset none;
  border-width: 1px;
}</xsl:if>
table.header {
  width: 95%;
  font-size: 10pt;
  color: white;
}
td.top {
  vertical-align: top;
}
td.topnowrap {
  vertical-align: top;
  white-space: nowrap; 
}
td.header {
  background-color: gray;
  width: 50%;
}
td.reference {
  vertical-align: top;
  white-space: nowrap;
  padding-right: 1em;
}
thead {
  display:table-header-group;
}
ul.toc {
  list-style: none;
  margin-left: 1.5em;
  margin-right: 0em;
  padding-left: 0em;
}
li.tocline0 {
  line-height: 150%;
  font-weight: bold;
  font-size: 10pt;
  margin-left: 0em;
  margin-right: 0em;
}
li.tocline1 {
  line-height: normal;
  font-weight: normal;
  font-size: 9pt;
  margin-left: 0em;
  margin-right: 0em;
}
li.tocline2 {
  font-size: 0pt;
}
ul p {
  margin-left: 0em;
}
ul.ind {
  list-style: none;
  margin-left: 1.5em;
  margin-right: 0em;
  padding-left: 0em;
}
li.indline0 {
  font-weight: bold;
  line-height: 200%;
  margin-left: 0em;
  margin-right: 0em;
}
li.indline1 {
  font-weight: normal;
  line-height: 150%;
  margin-left: 0em;
  margin-right: 0em;
}
<xsl:if test="//x:bcp14">.bcp14 {
  font-style: normal;
  text-transform: lowercase;
  font-variant: small-caps;
}</xsl:if><xsl:if test="//x:blockquote">
blockquote > * .bcp14 {
  font-style: italic;
}</xsl:if>
.comment {
  background-color: yellow;
}<xsl:if test="$xml2rfc-editing='yes'">
.editingmark {
  background-color: khaki;
}</xsl:if>

.center {
  text-align: center;
}
.error {
  color: red;
  font-style: italic;
  font-weight: bold;
}
.figure {
  font-weight: bold;
  text-align: center;
  font-size: 9pt;
}
.filename {
  color: #333333;
  font-weight: bold;
  font-size: 12pt;
  line-height: 21pt;
  text-align: center;
}
.fn {
  font-weight: bold;
}
.hidden {
  display: none;
}
.left {
  text-align: left;
}
.right {
  text-align: right;
}
.title {
  color: #990000;
  font-size: 18pt;
  line-height: 18pt;
  font-weight: bold;
  text-align: center;
  margin-top: 36pt;
}
.vcardline {
  display: block;
}
.warning {
  font-size: 14pt;
  background-color: yellow;
}
<xsl:if test="//ed:del|//ed:replace|//ed:ins">del {
  color: red;
  text-decoration: line-through;
}
.del {
  color: red;
  text-decoration: line-through;
}
ins {
  color: green;
  text-decoration: underline;
}
.ins {
  color: green;
  text-decoration: underline;
}
div.issuepointer {
  float: left;
}</xsl:if><xsl:if test="//ed:issue">
table.openissue {
  background-color: khaki;
  border-width: thin;
  border-style: solid;
  border-color: black;
}
table.closedissue {
  background-color: white;
  border-width: thin;
  border-style: solid;
  border-color: gray;
  color: gray; 
}
thead th {
  text-align: left;
}
.bg-issue {
  border: solid;
  border-width: 1px;
  font-size: 7pt;
}
.closed-issue {
  border: solid;
  border-width: thin;
  background-color: lime;
  font-size: smaller;
  font-weight: bold;
}
.open-issue {
  border: solid;
  border-width: thin;
  background-color: red;
  font-size: smaller;
  font-weight: bold;
}
.editor-issue {
  border: solid;
  border-width: thin;
  background-color: yellow;
  font-size: smaller;
  font-weight: bold;
}</xsl:if>

@media print {
  .noprint {
    display: none;
  }
  
  a {
    color: black;
    text-decoration: none;
  }

  table.header {
    width: 90%;
  }

  td.header {
    width: 50%;
    color: black;
    background-color: white;
    vertical-align: top;
    font-size: 12pt;
  }

  ul.toc a::after {
    content: leader('.') target-counter(attr(href), page);
  }
  
  a.iref {
    content: target-counter(attr(href), page);
  }
  
  .print2col {
    column-count: 2;
    -moz-column-count: 2;<!-- for Firefox -->
    column-fill: auto;<!-- for PrinceXML -->
  }
<xsl:if test="$xml2rfc-ext-justification='print'">
  dd {
    text-align: justify;
  }
  li {
    text-align: justify;
  }
  p {
    text-align: justify;
  }
</xsl:if>}

@page {
  @top-left {
       content: "<xsl:call-template name="get-header-left"/>"; 
  } 
  @top-right {
       content: "<xsl:call-template name="get-header-right"/>"; 
  } 
  @top-center {
       content: "<xsl:call-template name="get-header-center"/>"; 
  } 
  @bottom-left {
       content: "<xsl:call-template name="get-author-summary"/>"; 
  } 
  @bottom-center {
       content: "<xsl:call-template name="get-category-long"/>"; 
  } 
  @bottom-right {
       content: "[Page " counter(page) "]"; 
  } 
}

@page:first { 
    @top-left {
      content: normal;
    }
    @top-right {
      content: normal;
    }
    @top-center {
      content: normal;
    }
}

</xsl:template>


<!-- generate the index section -->

<xsl:template name="insertSingleIref">
  <xsl:choose>
    <xsl:when test="@ed:xref">
      <!-- special index generator mode -->
      <xsl:text>[</xsl:text>
      <a href="#{@ed:xref}"><xsl:value-of select="@ed:xref"/></a>

      <xsl:text>, </xsl:text>
      <a>
        <xsl:variable name="htmluri" select="//reference[@anchor=current()/@ed:xref]/format[@type='HTML']/@target"/>
        <xsl:if test="$htmluri">
          <xsl:attribute name="href"><xsl:value-of select="concat($htmluri,'#',@ed:frag)"/></xsl:attribute>
        </xsl:if>       
        <xsl:choose>
          <xsl:when test="@primary='true'"><b><xsl:value-of select="@ed:label" /></b></xsl:when>
          <xsl:otherwise><xsl:value-of select="@ed:label" /></xsl:otherwise>

        </xsl:choose>
      </a>
      <xsl:text>]</xsl:text>
      <xsl:if test="position()!=last()">, </xsl:if>
    </xsl:when>
    <xsl:otherwise>
      <xsl:variable name="_n">
        <xsl:call-template name="get-section-number" />

      </xsl:variable>
      <xsl:variable name="n">
        <xsl:choose>
          <xsl:when test="$_n!=''">
            <xsl:value-of select="$_n"/>
          </xsl:when>
          <xsl:otherwise>&#167;</xsl:otherwise>
        </xsl:choose>
      </xsl:variable>

      <xsl:variable name="backlink">
        <xsl:choose>
          <xsl:when test="self::xref">
            <xsl:variable name="target" select="@target"/>
            <xsl:text>#</xsl:text>
            <xsl:value-of select="$anchor-prefix"/>
            <xsl:text>.xref.</xsl:text>
            <xsl:value-of select="@target"/>.<xsl:number level="any" count="xref[@target=$target]"/>

          </xsl:when>
          <xsl:when test="self::iref">
            <xsl:text>#</xsl:text>
            <xsl:call-template name="compute-iref-anchor"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:message>Unsupported element type for insertSingleIref</xsl:message>
          </xsl:otherwise>

        </xsl:choose>
      </xsl:variable>
      <a class="iref" href="{$backlink}">
        <xsl:call-template name="insertInsDelClass"/>
        <xsl:choose>
          <xsl:when test="@primary='true'"><b><xsl:value-of select="$n"/></b></xsl:when>
          <xsl:otherwise><xsl:value-of select="$n"/></xsl:otherwise>
        </xsl:choose>
      </a>

      <xsl:if test="position()!=last()">, </xsl:if>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="insertSingleXref">
  <xsl:variable name="_n">
    <xsl:call-template name="get-section-number" />
  </xsl:variable>
  <xsl:variable name="n">

    <xsl:choose>
      <xsl:when test="$_n!=''">
        <xsl:value-of select="$_n"/>
      </xsl:when>
      <xsl:otherwise>&#167;</xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:choose>
    <xsl:when test="self::reference">

      <a class="iref" href="#{@anchor}">
        <xsl:call-template name="insertInsDelClass"/>
        <b><xsl:value-of select="$n"/></b>
      </a>
    </xsl:when>
    <xsl:otherwise>
      <xsl:variable name="target" select="@target"/>
      <xsl:variable name="backlink">#<xsl:value-of select="$anchor-prefix"/>.xref.<xsl:value-of select="$target"/>.<xsl:number level="any" count="xref[@target=$target]"/></xsl:variable>

      <a class="iref" href="{$backlink}">
        <xsl:call-template name="insertInsDelClass"/>
        <xsl:value-of select="$n"/>
      </a>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:if test="position()!=last()">, </xsl:if>
</xsl:template>

<xsl:template name="insertIndex">

  <xsl:call-template name="insert-conditional-hrule"/>

  <h1 id="{$anchor-prefix}.index">
    <xsl:call-template name="insert-conditional-pagebreak"/>
    <a href="#{$anchor-prefix}.index">Index</a>
  </h1>
  
  <!-- generate navigation links to index subsections -->
  <p class="noprint">

    <xsl:variable name="irefs" select="//iref[generate-id(.) = generate-id(key('index-first-letter',translate(substring(@item,1,1),$lcase,$ucase)))]"/>
    <xsl:variable name="xrefs" select="//reference[not(starts-with(@anchor,'deleted-'))][generate-id(.) = generate-id(key('index-first-letter',translate(substring(@anchor,1,1),$lcase,$ucase)))]"/>
  
    <xsl:for-each select="$irefs | $xrefs">
    
      <xsl:sort select="translate(concat(@item,@anchor),$lcase,$ucase)" />
          
      <xsl:variable name="letter" select="translate(substring(concat(@item,@anchor),1,1),$lcase,$ucase)"/>

      <!-- character? -->
      <xsl:if test="translate($letter,concat($lcase,$ucase,'0123456789'),'')=''">
      
        <xsl:variable name="showit">

          <xsl:choose>
            <xsl:when test="$xml2rfc-ext-include-references-in-index!='yes'">
              <xsl:if test="$irefs[starts-with(translate(@item,$lcase,$ucase),$letter)]">
                <xsl:text>yes</xsl:text>
              </xsl:if>
            </xsl:when>
            <xsl:otherwise>
              <xsl:text>yes</xsl:text>

            </xsl:otherwise>
          </xsl:choose>
        </xsl:variable>
        
        <xsl:if test="$showit='yes'">
          <a href="#{$anchor-prefix}.index.{$letter}">
            <xsl:value-of select="$letter" />
          </a>
          <xsl:text> </xsl:text>

        </xsl:if>
      
      </xsl:if>

    </xsl:for-each>
  </p>

  <!-- for each index subsection -->
  <div class="print2col">
  <ul class="ind">
    <xsl:variable name="irefs2" select="//iref[generate-id(.) = generate-id(key('index-first-letter',translate(substring(@item,1,1),$lcase,$ucase)))]"/>

    <xsl:variable name="xrefs2" select="//reference[not(starts-with(@anchor,'deleted-'))][generate-id(.) = generate-id(key('index-first-letter',translate(substring(@anchor,1,1),$lcase,$ucase)))]"/>
  
    <xsl:for-each select="$irefs2 | $xrefs2">
      <xsl:sort select="translate(concat(@item,@anchor),$lcase,$ucase)" />
      <xsl:variable name="letter" select="translate(substring(concat(@item,@anchor),1,1),$lcase,$ucase)"/>
            
      <xsl:variable name="showit">
        <xsl:choose>
          <xsl:when test="$xml2rfc-ext-include-references-in-index!='yes'">
            <xsl:if test="$irefs2[starts-with(translate(@item,$lcase,$ucase),$letter)]">
              <xsl:text>yes</xsl:text>

            </xsl:if>
          </xsl:when>
          <xsl:otherwise>
            <xsl:text>yes</xsl:text>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:variable>

      <xsl:if test="$showit='yes'">

        <li class="indline0">
          
          <!-- make letters and digits stand out -->
          <xsl:choose>
            <xsl:when test="translate($letter,concat($lcase,$ucase,'0123456789'),'')=''">
              <a id="{$anchor-prefix}.index.{$letter}" href="#{$anchor-prefix}.index.{$letter}">
                <b><xsl:value-of select="$letter" /></b>
              </a>
            </xsl:when>
            <xsl:otherwise>

              <b><xsl:value-of select="$letter" /></b>
            </xsl:otherwise>
          </xsl:choose>
        
          <ul class="ind">  
            <xsl:for-each select="key('index-first-letter',translate(substring(concat(@item,@anchor),1,1),$lcase,$ucase))">
        
              <xsl:sort select="translate(concat(@item,@anchor),$lcase,$ucase)" />
              
                <xsl:choose>
                  <xsl:when test="self::reference">
                    <xsl:if test="$xml2rfc-ext-include-references-in-index='yes' and not(starts-with(@anchor,'deleted-'))">

                      <li class="indline1">
                        <em>
                          <xsl:value-of select="@anchor"/>
                        </em>
                        <xsl:text>&#160;&#160;</xsl:text>
                        
                        <xsl:variable name="rs" select="//xref[@target=current()/@anchor] | . | //reference[@anchor=concat('deleted-',current()/@anchor)]"/>
                        <xsl:for-each select="$rs">
                          <xsl:call-template name="insertSingleXref" />
                        </xsl:for-each>

                        <xsl:variable name="rs2" select="$rs[@x:sec]"/>

                        <xsl:if test="$rs2">
                          <ul class="ind">  
                            <xsl:for-each select="$rs2">
                              <xsl:sort select="substring-before(concat(@x:sec,'.'),'.')" data-type="number"/>
                              <xsl:sort select="substring(@x:sec,1+string-length(substring-before(@x:sec,'.')))" data-type="number"/>
                              <xsl:if test="generate-id(.) = generate-id(key('index-xref',concat(@target,'..',@x:sec)))">
                                <li class="indline1">

                                  <em>
                                    <xsl:text>Section </xsl:text>
                                    <xsl:value-of select="@x:sec"/>
                                  </em>
                                  <xsl:text>&#160;&#160;</xsl:text>
                                  <xsl:for-each select="key('index-xref',concat(@target,'..',@x:sec))">
                                    <xsl:call-template name="insertSingleXref" />
                                  </xsl:for-each>

                                </li>
                              </xsl:if>
                            </xsl:for-each>
                          </ul>
                        </xsl:if>
                      </li>
                    </xsl:if>
                  </xsl:when>
                  <xsl:otherwise>

                    <!-- regular iref -->
                    <xsl:if test="generate-id(.) = generate-id(key('index-item',concat(@item,@anchor)))">
                      <xsl:variable name="item" select="@item"/>
                      <xsl:variable name="in-artwork" select="count(//iref[@item=$item and @primary='true' and ancestor::artwork])!=0"/>
                          
                      <li class="indline1">
                        <xsl:choose>
                          <xsl:when test="$in-artwork">
                            <tt><xsl:value-of select="@item" /></tt>
                          </xsl:when>

                          <xsl:otherwise>
                            <xsl:value-of select="@item" />
                          </xsl:otherwise>
                        </xsl:choose>
                        <xsl:text>&#160;&#160;</xsl:text>
                        
                        <xsl:variable name="irefs3" select="key('index-item',@item)[not(@subitem) or @subitem='']"/>
                        <xsl:variable name="xrefs3" select="//xref[@target=$irefs3[@x:for-anchor='']/../@anchor or @target=$irefs3/@x:for-anchor]"/>

                        <xsl:for-each select="$irefs3|$xrefs3">

                          <!-- <xsl:sort select="translate(@item,$lcase,$ucase)" />  -->
                          <xsl:call-template name="insertSingleIref" />
                        </xsl:for-each>
          
                        <xsl:variable name="s2" select="key('index-item',@item)[@subitem and @subitem!='']"/>
                        <xsl:if test="$s2">
                          <ul class="ind">  
                            <xsl:for-each select="$s2">
                              <xsl:sort select="translate(@subitem,$lcase,$ucase)" />
                              
                              <xsl:if test="generate-id(.) = generate-id(key('index-item-subitem',concat(@item,'..',@subitem)))">

                  
                                <xsl:variable name="itemsubitem" select="concat(@item,'..',@subitem)"/>
                                <xsl:variable name="in-artwork2" select="count(//iref[concat(@item,'..',@subitem)=$itemsubitem and @primary='true' and ancestor::artwork])!=0"/>
                  
                                <li class="indline1">
              
                                  <xsl:choose>
                                    <xsl:when test="$in-artwork2">
                                      <tt><xsl:value-of select="@subitem" /></tt>
                                    </xsl:when>
                                    <xsl:otherwise>
                                      <xsl:value-of select="@subitem" />

                                    </xsl:otherwise>
                                  </xsl:choose>
                                  <xsl:text>&#160;&#160;</xsl:text>
                                    
                                  <xsl:variable name="irefs4" select="key('index-item-subitem',concat(@item,'..',@subitem))"/>
                                  <xsl:variable name="xrefs4" select="//xref[@target=$irefs4[@x:for-anchor='']/../@anchor or @target=$irefs4/@x:for-anchor]"/>

                                  <xsl:for-each select="$irefs4|$xrefs4">
                                    <!--<xsl:sort select="translate(@item,$lcase,$ucase)" />-->                    
                                    <xsl:call-template name="insertSingleIref" />
                                  </xsl:for-each>

                
                                </li>
                              </xsl:if>
                            </xsl:for-each>
                          </ul>
                        </xsl:if>
                      </li>
                    </xsl:if>
                  </xsl:otherwise>
                </xsl:choose>

              
                      
            </xsl:for-each>            
          </ul>
        </li>
      </xsl:if>
      
    </xsl:for-each>
  </ul>
  </div>
  
</xsl:template>



<xsl:template name="insertPreamble" myns:namespaceless-elements="xml2rfc">

  <section title="Status of this Memo" myns:unnumbered="unnumbered" myns:notoclink="notoclink" anchor="{$anchor-prefix}.status">

  <xsl:choose>
    <xsl:when test="/rfc/@ipr and not(/rfc/@number)">
      <t>
        <xsl:choose>
          
          <!-- RFC2026 -->

          <xsl:when test="/rfc/@ipr = 'full2026'">
            This document is an Internet-Draft and is 
            in full conformance with all provisions of Section 10 of RFC2026.    
          </xsl:when>
          <xsl:when test="/rfc/@ipr = 'noDerivativeWorks2026'">
            This document is an Internet-Draft and is 
            in full conformance with all provisions of Section 10 of RFC2026
            except that the right to produce derivative works is not granted.   
          </xsl:when>
          <xsl:when test="/rfc/@ipr = 'noDerivativeWorksNow'">
            This document is an Internet-Draft and is 
            in full conformance with all provisions of Section 10 of RFC2026
            except that the right to produce derivative works is not granted.
            (If this document becomes part of an IETF working group activity,
            then it will be brought into full compliance with Section 10 of RFC2026.)  
          </xsl:when>
          <xsl:when test="/rfc/@ipr = 'none'">

            This document is an Internet-Draft and is 
            NOT offered in accordance with Section 10 of RFC2026,
            and the author does not provide the IETF with any rights other
            than to publish as an Internet-Draft.
          </xsl:when>
          
          <!-- RFC3667 -->
          <xsl:when test="/rfc/@ipr = 'full3667'">
            This document is an Internet-Draft and is subject to all provisions
            of section 3 of RFC 3667.  By submitting this Internet-Draft, each
            author represents that any applicable patent or other IPR claims of
            which he or she is aware have been or will be disclosed, and any of
            which he or she become aware will be disclosed, in accordance with
            RFC 3668.
          </xsl:when>
          <xsl:when test="/rfc/@ipr = 'noModification3667'">
            This document is an Internet-Draft and is subject to all provisions
            of section 3 of RFC 3667.  By submitting this Internet-Draft, each
            author represents that any applicable patent or other IPR claims of
            which he or she is aware have been or will be disclosed, and any of
            which he or she become aware will be disclosed, in accordance with
            RFC 3668.  This document may not be modified, and derivative works of
            it may not be created, except to publish it as an RFC and to
            translate it into languages other than English<xsl:if test="/rfc/@iprExtract">,
            other than to extract <xref target="{/rfc/@iprExtract}"/> as-is
            for separate use.</xsl:if>.
          </xsl:when>

          <xsl:when test="/rfc/@ipr = 'noDerivatives3667'">
            This document is an Internet-Draft and is subject to all provisions
            of section 3 of RFC 3667 except for the right to produce derivative
            works.  By submitting this Internet-Draft, each author represents 
            that any applicable patent or other IPR claims of which he or she
            is aware have been or will be disclosed, and any of which he or she
            become aware will be disclosed, in accordance with RFC 3668.  This
            document may not be modified, and derivative works of it may
            not be created<xsl:if test="/rfc/@iprExtract">, other than to extract
            <xref target="{/rfc/@iprExtract}"/> as-is for separate use.</xsl:if>.
          </xsl:when>
          
          <!-- RFC3978 -->
          <xsl:when test="/rfc/@ipr = 'full3978'">
            By submitting this Internet-Draft, each
            author represents that any applicable patent or other IPR claims of
            which he or she is aware have been or will be disclosed, and any of
            which he or she becomes aware will be disclosed, in accordance with
            Section 6 of BCP 79.
          </xsl:when>
          <xsl:when test="/rfc/@ipr = 'noModification3978'">

            By submitting this Internet-Draft, each
            author represents that any applicable patent or other IPR claims of
            which he or she is aware have been or will be disclosed, and any of
            which he or she becomes aware will be disclosed, in accordance with
            Section 6 of BCP 79.  This document may not be modified, and derivative works of
            it may not be created, except to publish it as an RFC and to
            translate it into languages other than English<xsl:if test="/rfc/@iprExtract">,
            other than to extract <xref target="{/rfc/@iprExtract}"/> as-is
            for separate use.</xsl:if>.
          </xsl:when>
          <xsl:when test="/rfc/@ipr = 'noDerivatives3978'">
            By submitting this Internet-Draft, each author represents 
            that any applicable patent or other IPR claims of which he or she
            is aware have been or will be disclosed, and any of which he or she
            becomes aware will be disclosed, in accordance with Section 6 of BCP 79.  This
            document may not be modified, and derivative works of it may
            not be created<xsl:if test="/rfc/@iprExtract">, other than to extract
            <xref target="{/rfc/@iprExtract}"/> as-is for separate use.</xsl:if>.
          </xsl:when>

          <xsl:otherwise>CONFORMANCE UNDEFINED.</xsl:otherwise>
        </xsl:choose>
      </t>
      <t>
        Internet-Drafts are working documents of the Internet Engineering
        Task Force (IETF), its areas, and its working groups.
        Note that other groups may also distribute working documents as
        Internet-Drafts.
      </t>
      <t>
        Internet-Drafts are draft documents valid for a maximum of six months
        and may be updated, replaced, or obsoleted by other documents at any time.
        It is inappropriate to use Internet-Drafts as reference material or to cite
        them other than as &#8220;work in progress&#8221;.
      </t>

      <t>
        The list of current Internet-Drafts can be accessed at
        <eref target='http://www.ietf.org/ietf/1id-abstracts.txt'/>.
      </t>
      <t>
        The list of Internet-Draft Shadow Directories can be accessed at
        <eref target='http://www.ietf.org/shadow.html'/>.
      </t>
      <t>
        This Internet-Draft will expire in <xsl:call-template name="expirydate" />.
      </t>

    </xsl:when>

    <xsl:when test="/rfc/@category='bcp'">
      <t>
        This document specifies an Internet Best Current Practices for the Internet
        Community, and requests discussion and suggestions for improvements.
        Distribution of this memo is unlimited.
      </t>
    </xsl:when>
    <xsl:when test="/rfc/@category='exp'">
      <t>
        This memo defines an Experimental Protocol for the Internet community.
        It does not specify an Internet standard of any kind.
        Discussion and suggestions for improvement are requested.
        Distribution of this memo is unlimited.
      </t>

    </xsl:when>
    <xsl:when test="/rfc/@category='historic'">
      <t>
        This memo describes a historic protocol for the Internet community.
        It does not specify an Internet standard of any kind.
        Distribution of this memo is unlimited.
      </t>
    </xsl:when>
    <xsl:when test="/rfc/@category='info' or not(/rfc/@category)">
      <t>
        This memo provides information for the Internet community.
        It does not specify an Internet standard of any kind.
        Distribution of this memo is unlimited.
      </t>

    </xsl:when>
    <xsl:when test="/rfc/@category='std'">
      <t>
        This document specifies an Internet standards track protocol for the Internet
        community, and requests discussion and suggestions for improvements.
        Please refer to the current edition of the &#8220;Internet Official Protocol
        Standards&#8221; (STD 1) for the standardization state and status of this
        protocol. Distribution of this memo is unlimited.
      </t>
    </xsl:when>
    <xsl:otherwise>
      <t>UNSUPPORTED CATEGORY.</t>

    </xsl:otherwise>
  </xsl:choose>
  
  </section>

  <section title="Copyright Notice" myns:unnumbered="unnumbered" myns:notoclink="notoclink" anchor="{$anchor-prefix}.copyrightnotice">
  <t>
    <xsl:choose>
      <xsl:when test="$ipr-rfc4748">
        Copyright &#169; The IETF Trust (<xsl:value-of select="/rfc/front/date/@year" />).  All Rights Reserved.
      </xsl:when>

      <xsl:otherwise>
        Copyright &#169; The Internet Society (<xsl:value-of select="/rfc/front/date/@year" />).  All Rights Reserved.
      </xsl:otherwise>
    </xsl:choose>
  </t>
  </section>
  
</xsl:template>

<!-- TOC generation -->

<xsl:template match="/" mode="toc">
  <hr class="noprint"/>

  <h1 class="np" id="{$anchor-prefix}.toc"> <!-- this pagebreak occurs always -->
    <a href="#{$anchor-prefix}.toc">Table of Contents</a>
  </h1>

  <ul class="toc">

    <xsl:apply-templates mode="toc" />
  </ul>
</xsl:template>

<xsl:template name="insert-toc-line">
  <xsl:param name="number" />
  <xsl:param name="target" />
  <xsl:param name="title" />
  <xsl:param name="tocparam" />

  <!-- handle tocdepth parameter -->

  <xsl:choose>
    <xsl:when test="($tocparam='' or $tocparam='default') and string-length(translate($number,'.ABCDEFGHIJKLMNOPQRSTUVWXYZ01234567890&#167;','.')) &gt;= $parsedTocDepth">
      <!-- dropped entry because excluded -->
      <xsl:attribute name="class">tocline2</xsl:attribute>
    </xsl:when>
    <xsl:when test="$tocparam='exclude'">
      <!-- dropped entry because excluded -->
      <xsl:attribute name="class">tocline2</xsl:attribute>

    </xsl:when>
    <xsl:otherwise>
      <xsl:choose>
        <xsl:when test="starts-with($number,'del-')">
          <del>
            <xsl:value-of select="$number" />
            <a href="#{$target}"><xsl:value-of select="$title"/></a>
          </del>
        </xsl:when>

        <xsl:otherwise>
          <xsl:choose>
            <xsl:when test="not(contains($number,'.'))">
              <xsl:attribute name="class">tocline0</xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
              <xsl:attribute name="class">tocline1</xsl:attribute>
            </xsl:otherwise>

          </xsl:choose>
          <xsl:if test="$number != ''">
            <xsl:call-template name="emit-section-number">
              <xsl:with-param name="no" select="$number"/>
            </xsl:call-template>
            <xsl:text>&#160;&#160;&#160;</xsl:text>
          </xsl:if>
          <a href="#{$target}"><xsl:value-of select="$title"/></a>
        </xsl:otherwise>

      </xsl:choose>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="back" mode="toc">

  <!-- <xsl:apply-templates select="references" mode="toc" /> -->

  <xsl:if test="//cref and $xml2rfc-comments='yes' and $xml2rfc-inline!='yes'">
    <li>

      <xsl:call-template name="insert-toc-line">
        <xsl:with-param name="target" select="concat($anchor-prefix,'.comments')"/>
        <xsl:with-param name="title" select="'Editorial Comments'"/>
      </xsl:call-template>
    </li>
  </xsl:if>

  <xsl:if test="$xml2rfc-ext-authors-section!='end'">
    <xsl:apply-templates select="/rfc/front" mode="toc" />

  </xsl:if>
  <xsl:apply-templates select="*[not(self::references)]" mode="toc" />

  <xsl:if test="$xml2rfc-ext-authors-section='end'">
    <xsl:apply-templates select="/rfc/front" mode="toc" />
  </xsl:if>

  <!-- copyright statements -->
  <xsl:if test="not($xml2rfc-private)">
    <li>

      <xsl:call-template name="insert-toc-line">
        <xsl:with-param name="target" select="concat($anchor-prefix,'.ipr')"/>
        <xsl:with-param name="title" select="'Intellectual Property and Copyright Statements'"/>
      </xsl:call-template>
    </li>
  </xsl:if>
  
  <!-- insert the index if index entries exist -->
  <xsl:if test="//iref">
    <li>

      <xsl:call-template name="insert-toc-line">
        <xsl:with-param name="target" select="concat($anchor-prefix,'.index')"/>
        <xsl:with-param name="title" select="'Index'"/>
      </xsl:call-template>
    </li>
  </xsl:if>

</xsl:template>

<xsl:template match="front" mode="toc">
  
  <li>

    <xsl:variable name="authors-title">
      <xsl:call-template name="get-authors-section-title"/>
    </xsl:variable>
    <xsl:variable name="authors-number">
      <xsl:call-template name="get-authors-section-number"/>
    </xsl:variable>
    <xsl:call-template name="insert-toc-line">
      <xsl:with-param name="target" select="concat($anchor-prefix,'.authors')"/>
      <xsl:with-param name="title" select="$authors-title"/>

      <xsl:with-param name="number" select="$authors-number"/>
    </xsl:call-template>
  </li>

</xsl:template>

<xsl:template name="references-toc">

  <!-- distinguish two cases: (a) single references element (process
  as toplevel section; (b) multiple references sections (add one toplevel
  container with subsection) -->

  <xsl:variable name="refsecs" select="/rfc/back/references|/rfc/back/ed:replace/ed:ins/references"/>
   
  <xsl:choose>

    <xsl:when test="count($refsecs) = 0">
      <!-- nop -->
    </xsl:when>
    <xsl:when test="count($refsecs) = 1">
      <xsl:for-each select="$refsecs">
        <xsl:variable name="title">
          <xsl:choose>
            <xsl:when test="@title!=''"><xsl:value-of select="@title" /></xsl:when>
            <xsl:otherwise>References</xsl:otherwise>

          </xsl:choose>
        </xsl:variable>
      
        <li>
          <xsl:call-template name="insert-toc-line">
            <xsl:with-param name="number">
              <xsl:call-template name="get-references-section-number"/>
            </xsl:with-param>
            <xsl:with-param name="target" select="concat($anchor-prefix,'.references')"/>
            <xsl:with-param name="title" select="$title"/>

          </xsl:call-template>
        </li>
      </xsl:for-each>
    </xsl:when>
    <xsl:otherwise>
      <li>
        <!-- insert pseudo container -->    
        <xsl:call-template name="insert-toc-line">
          <xsl:with-param name="number">

            <xsl:call-template name="get-references-section-number"/>
          </xsl:with-param>
          <xsl:with-param name="target" select="concat($anchor-prefix,'.references')"/>
          <xsl:with-param name="title" select="'References'"/>
        </xsl:call-template>
  
        <ul class="toc">
          <!-- ...with subsections... -->    
          <xsl:for-each select="$refsecs">
            <xsl:variable name="title">

              <xsl:choose>
                <xsl:when test="@title!=''"><xsl:value-of select="@title" /></xsl:when>
                <xsl:otherwise>References</xsl:otherwise>
              </xsl:choose>
            </xsl:variable>
          
            <xsl:variable name="sectionNumber">
              <xsl:call-template name="get-section-number" />
            </xsl:variable>

    
            <xsl:variable name="num">
              <xsl:number level="any"/>
            </xsl:variable>
    
            <li>
              <xsl:call-template name="insert-toc-line">
                <xsl:with-param name="number" select="$sectionNumber"/>
                <xsl:with-param name="target" select="concat($anchor-prefix,'.references','.',$num)"/>
                <xsl:with-param name="title" select="$title"/>
              </xsl:call-template>

            </li>
          </xsl:for-each>
        </ul>
      </li>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="section|appendix" mode="toc">
  <xsl:variable name="sectionNumber">

    <xsl:call-template name="get-section-number" />
  </xsl:variable>

  <xsl:variable name="target">
    <xsl:choose>
      <xsl:when test="@anchor"><xsl:value-of select="@anchor" /></xsl:when>
       <xsl:otherwise><xsl:value-of select="$anchor-prefix"/>.section.<xsl:value-of select="$sectionNumber" /></xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <!-- obtain content, just to check whether we need to recurse at all -->
  <xsl:variable name="content">
    <li>
      <xsl:call-template name="insert-toc-line">
        <xsl:with-param name="number" select="$sectionNumber"/>
        <xsl:with-param name="target" select="$target"/>
        <xsl:with-param name="title" select="@title"/>
        <xsl:with-param name="tocparam" select="@toc"/>

      </xsl:call-template>
    
      <ul class="toc">
        <xsl:apply-templates mode="toc" />
      </ul>
    </li>
  </xsl:variable>
  
  <xsl:if test="$content!=''">
    <li>
      <xsl:call-template name="insert-toc-line">

        <xsl:with-param name="number" select="$sectionNumber"/>
        <xsl:with-param name="target" select="$target"/>
        <xsl:with-param name="title" select="@title"/>
        <xsl:with-param name="tocparam" select="@toc"/>
      </xsl:call-template>
    
      <!-- obtain nested content, just to check whether we need to recurse at all -->
      <xsl:variable name="nested-content">
        <ul class="toc">
          <xsl:apply-templates mode="toc" />

        </ul>
      </xsl:variable>
      
      <!-- only recurse if we need to (do not produce useless list container) -->      
      <xsl:if test="$nested-content!=''">
        <ul class="toc">
          <xsl:apply-templates mode="toc" />
        </ul>
      </xsl:if>
    </li>

  </xsl:if>
</xsl:template>

<xsl:template match="middle" mode="toc">
  <xsl:apply-templates mode="toc" />
  <xsl:call-template name="references-toc" />
</xsl:template>

<xsl:template match="rfc" mode="toc">
  <xsl:apply-templates select="middle|back" mode="toc" />
</xsl:template>

<xsl:template match="ed:del|ed:ins|ed:replace" mode="toc">

  <xsl:apply-templates mode="toc" />
</xsl:template>

<xsl:template match="*|text()" mode="toc" />


<xsl:template name="insertTocAppendix">
  
  <xsl:if test="//figure[@title!='' or @anchor!='']">
    <ul class="toc">
      <xsl:for-each select="//figure[@title!='' or @anchor!='']">
        <xsl:variable name="title">Figure <xsl:value-of select="position()"/><xsl:if test="@title">: <xsl:value-of select="@title"/></xsl:if>

        </xsl:variable>
        <li>
          <xsl:call-template name="insert-toc-line">
            <xsl:with-param name="target" select="concat($anchor-prefix,'.figure.',position())" />
            <xsl:with-param name="title" select="$title" />
          </xsl:call-template>
        </li>
      </xsl:for-each>
    </ul>

  </xsl:if>
  
  <!-- experimental -->
  <xsl:if test="//ed:issue">
    <xsl:call-template name="insertIssuesList" />
  </xsl:if>

</xsl:template>

<xsl:template name="referencename">
  <xsl:param name="node" />
  
  <xsl:for-each select="$node">

    <xsl:choose>
      <xsl:when test="$xml2rfc-symrefs!='no' and ancestor::ed:del">
        <xsl:variable name="unprefixed" select="substring-after(@anchor,'deleted-')"/>
        <xsl:choose>
          <xsl:when test="$unprefixed!=''">
            <xsl:value-of select="concat('[',$unprefixed,']')"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:if test="count(//reference[@anchor=current()/@anchor])!=1">

              <xsl:message>Deleted duplicate anchors should have the prefix "deleted-": <xsl:value-of select="@anchor"/></xsl:message>
            </xsl:if>
            <xsl:value-of select="concat('[',@anchor,']')"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>
      <xsl:when test="$xml2rfc-symrefs!='no'">[<xsl:value-of select="@anchor" />]</xsl:when>

      <xsl:when test="ancestor::ed:del">
        <xsl:text>[del]</xsl:text>
      </xsl:when>
      <xsl:otherwise>[<xsl:number level="any" count="reference[not(ancestor::ed:del)]"/>]</xsl:otherwise>
    </xsl:choose>
  </xsl:for-each>  
</xsl:template>


<xsl:template name="replace-substring">

  <xsl:param name="string" />
  <xsl:param name="replace" />
  <xsl:param name="by" />

  <xsl:choose>
    <xsl:when test="contains($string,$replace)">
      <xsl:value-of select="concat(substring-before($string, $replace),$by)" />

      <xsl:call-template name="replace-substring">
        <xsl:with-param name="string" select="substring-after($string,$replace)" />
        <xsl:with-param name="replace" select="$replace" />
        <xsl:with-param name="by" select="$by" />
      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise><xsl:value-of select="$string" /></xsl:otherwise>
  </xsl:choose>

</xsl:template>


<xsl:template name="rfclist">
  <xsl:param name="list" />
  <xsl:choose>
    <xsl:when test="contains($list,',')">
      <xsl:variable name="rfcNo" select="substring-before($list,',')" />
      <a href="{concat($rfcUrlPrefix,$rfcNo,$rfcUrlPostfix)}"><xsl:value-of select="$rfcNo" /></a>,
      <xsl:call-template name="rfclist">
        <xsl:with-param name="list" select="normalize-space(substring-after($list,','))" />

      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
      <xsl:variable name="rfcNo" select="$list" />
      <a href="{concat($rfcUrlPrefix,$rfcNo,$rfcUrlPostfix)}"><xsl:value-of select="$rfcNo" /></a>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="rfclist-for-dcmeta">

  <xsl:param name="list" />
  <xsl:choose>
    <xsl:when test="contains($list,',')">
      <xsl:variable name="rfcNo" select="substring-before($list,',')" />
      <meta name="DC.Relation.Replaces" content="urn:ietf:rfc:{$rfcNo}" />
      <xsl:call-template name="rfclist-for-dcmeta">
        <xsl:with-param name="list" select="normalize-space(substring-after($list,','))" />
      </xsl:call-template>
    </xsl:when>

    <xsl:otherwise>
      <xsl:variable name="rfcNo" select="$list" />
      <meta name="DC.Relation.Replaces" content="urn:ietf:rfc:{$rfcNo}" />
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="get-paragraph-number">
  <!-- get section number of ancestor section element, then add t or figure number -->
  <xsl:if test="ancestor::section and not(ancestor::section[@myns:unnumbered='unnumbered']) and not(ancestor::x:blockquote)">

    <xsl:for-each select="ancestor::section[1]"><xsl:call-template name="get-section-number" />.p.</xsl:for-each><xsl:number count="t|figure|x:blockquote" />
  </xsl:if>
</xsl:template>

<xsl:template name="editingMark">
  <xsl:if test="$xml2rfc-editing='yes' and ancestor::rfc">
    <sup class="editingmark"><span><xsl:number level="any" count="postamble|preamble|t"/></span>&#0160;</sup>
  </xsl:if>
</xsl:template>

<!-- internal ref support -->

<xsl:template match="x:ref">
  <xsl:variable name="val" select="."/>
  <xsl:variable name="target" select="//*[(@anchor and x:anchor-alias/@value=$val) or (@anchor=$val)]"/>
  <xsl:choose>
    <xsl:when test="$target">
      <a href="#{$target/@anchor}"><xsl:value-of select="."/></a>
    </xsl:when>
    <xsl:otherwise>
      <xsl:message>WARNING: internal link target for '<xsl:value-of select="."/>' does not exist.<xsl:call-template name="lineno"/></xsl:message>

      <xsl:value-of select="."/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<!-- Nothing to do here -->
<xsl:template match="x:anchor-alias" />

<!-- Quotes -->
<xsl:template match="x:q">
  <q>
    <xsl:copy-of select="@cite"/>

    <xsl:apply-templates/>
  </q>
</xsl:template>

<xsl:template match="x:bcp14">
  <!-- check valid BCP14 keywords, then emphasize them -->
  <xsl:variable name="c" select="normalize-space(.)"/>
  <xsl:choose>
    <xsl:when test="$c='MUST' or $c='REQUIRED' or $c='SHALL'">
      <em class="bcp14"><xsl:value-of select="."/></em>

    </xsl:when>
    <xsl:when test="$c='MUST NOT' or $c='SHALL NOT'">
      <em class="bcp14"><xsl:value-of select="."/></em>
    </xsl:when>
    <xsl:when test="$c='SHOULD' or $c='RECOMMENDED'">
      <em class="bcp14"><xsl:value-of select="."/></em>
    </xsl:when>
    <xsl:when test="$c='SHOULD NOT' or $c='NOT RECOMMENDED'">
      <em class="bcp14"><xsl:value-of select="."/></em>

    </xsl:when>
    <xsl:when test="$c='MAY' or $c='OPTIONAL'">
      <em class="bcp14"><xsl:value-of select="."/></em>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="."/>
      <xsl:message>ERROR: unknown BCP14 keyword: <xsl:value-of select="."/></xsl:message>
    </xsl:otherwise>

  </xsl:choose>
</xsl:template>

<xsl:template match="x:blockquote">
  <xsl:variable name="p">
    <xsl:call-template name="get-paragraph-number" />
  </xsl:variable>

  <blockquote>
    <xsl:if test="string-length($p) &gt; 0 and not(ancestor::ed:del) and not(ancestor::ed:ins)">
      <xsl:attribute name="id"><xsl:value-of select="$anchor-prefix"/>.section.<xsl:value-of select="$p"/></xsl:attribute>

    </xsl:if>
    <xsl:call-template name="insertInsDelClass"/>
    <xsl:call-template name="editingMark" />
    <xsl:copy-of select="@cite"/>
    <xsl:apply-templates/>
  </blockquote>
</xsl:template>

<!-- Definitions -->
<xsl:template match="x:dfn">
  <dfn>

    <xsl:apply-templates/>
  </dfn>
</xsl:template>

<!-- headings -->
<xsl:template match="x:h">
  <b>
    <xsl:apply-templates/>
  </b>
</xsl:template>

<!-- box drawing -->

<!-- nop for alignment -->
<xsl:template match="x:x"/>

<!-- box (top) -->
<xsl:template match="x:bt">
  <xsl:text>&#x250c;</xsl:text>
  <xsl:value-of select="translate(substring(.,2,string-length(.)-2),'-','&#x2500;')"/>
  <xsl:text>&#x2510;</xsl:text>
</xsl:template>

<!-- box (center) -->
<xsl:template match="x:bc">
  <xsl:variable name="first" select="substring(.,1)"/>

  <xsl:variable name="last" select="substring(.,string-length(.)-1)"/>
  <xsl:variable name="content" select="substring(.,2,string-length(.)-2)"/>
  <xsl:variable name="is-delimiter" select="translate($content,'-','')=''"/>
  
  <xsl:choose>
    <xsl:when test="$is-delimiter">
      <xsl:text>&#x251c;</xsl:text>
      <xsl:value-of select="translate($content,'-','&#x2500;')"/>
      <xsl:text>&#x2524;</xsl:text>
    </xsl:when>

    <xsl:when test="*">
      <xsl:for-each select="node()">
        <xsl:choose>
          <xsl:when test="position()=1">
            <xsl:text>&#x2502;</xsl:text>
            <xsl:value-of select="substring(.,2)"/>
          </xsl:when>
          <xsl:when test="position()=last()">
            <xsl:value-of select="substring(.,1,string-length(.)-1)"/>

            <xsl:text>&#x2502;</xsl:text>
          </xsl:when>
          <xsl:otherwise>
            <xsl:apply-templates select="."/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each>
    </xsl:when>
    <xsl:otherwise>

      <xsl:text>&#x2502;</xsl:text>
      <xsl:value-of select="$content"/>
      <xsl:text>&#x2502;</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
  
</xsl:template>

<!-- box (bottom) -->
<xsl:template match="x:bb">
  <xsl:text>&#x2514;</xsl:text>

  <xsl:value-of select="translate(substring(.,2,string-length(.)-2),'-','&#x2500;')"/>
  <xsl:text>&#x2518;</xsl:text>
</xsl:template>

<!-- experimental annotation support -->

<xsl:template match="ed:issue">
  <xsl:variable name="class">
    <xsl:choose>
      <xsl:when test="@status='closed'">closedissue</xsl:when>
      <xsl:otherwise>openissue</xsl:otherwise>

    </xsl:choose>
  </xsl:variable>
  
  <table summary="issue {@name}" class="{$class}">
    <tr>
      <td colspan="3">
        <a id="{$anchor-prefix}.issue.{@name}">
          <xsl:choose>
            <xsl:when test="@status='closed'">
              <xsl:attribute name="class">closed-issue</xsl:attribute>

            </xsl:when>
            <xsl:when test="@status='editor'">
              <xsl:attribute name="class">editor-issue</xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
              <xsl:attribute name="class">open-issue</xsl:attribute>
            </xsl:otherwise>
          </xsl:choose>

          <xsl:text>&#160;I&#160;</xsl:text>
        </a>
        <xsl:text>&#160;</xsl:text>
        <xsl:choose>
          <xsl:when test="@href">
            <em><a href="{@href}"><xsl:value-of select="@name" /></a></em>
          </xsl:when>
          <xsl:otherwise>

            <em><xsl:value-of select="@name" /></em>
          </xsl:otherwise>
        </xsl:choose>
        &#0160;
        (type: <xsl:value-of select="@type"/>, status: <xsl:value-of select="@status"/>)
      </td>
    </tr>

    <xsl:apply-templates select="ed:item"/>

    <xsl:apply-templates select="ed:resolution"/>

    <xsl:variable name="changes" select="//*[@ed:resolves=current()/@name or ed:resolves=current()/@name]" />
    <xsl:if test="$changes">
      <tr>
        <td class="top" colspan="3">
          Associated changes in this document:
          <xsl:variable name="issue" select="@name"/>
          <xsl:for-each select="$changes">
            <a href="#{$anchor-prefix}.change.{$issue}.{position()}">

              <xsl:variable name="label">
                <xsl:call-template name="get-section-number"/>
              </xsl:variable>
              <xsl:choose>
                <xsl:when test="$label!=''"><xsl:value-of select="$label"/></xsl:when>
                <xsl:otherwise>&lt;<xsl:value-of select="concat('#',$anchor-prefix,'.change.',$issue,'.',position())"/>&gt;</xsl:otherwise>
              </xsl:choose>
            </a>
            <xsl:if test="position()!=last()">, </xsl:if>

          </xsl:for-each>
          <xsl:text>.</xsl:text>
        </td>
      </tr>
    </xsl:if>
  </table>
    
</xsl:template>

<xsl:template match="ed:item">

  <tr>
    <td class="top">
      <xsl:if test="@entered-by">
        <a href="mailto:{@entered-by}?subject={/rfc/@docName},%20{../@name}">
          <i><xsl:value-of select="@entered-by"/></i>
        </a>
      </xsl:if>
    </td>
    <td class="topnowrap">

      <xsl:value-of select="@date"/>
    </td>
    <td class="top">
      <xsl:apply-templates select="node()" mode="issuehtml"/>
    </td>
  </tr>
</xsl:template>

<xsl:template match="ed:resolution">
  <tr>

    <td class="top">
      <xsl:if test="@entered-by">
        <a href="mailto:{@entered-by}?subject={/rfc/@docName},%20{../@name}"><i><xsl:value-of select="@entered-by"/></i></a>
      </xsl:if>
    </td>
    <td class="topnowrap">
      <xsl:value-of select="@datetime"/>
    </td>
    <td class="top">

      <em>Resolution:</em>
      <xsl:apply-templates select="node()" mode="issuehtml"/>
    </td>
  </tr>
</xsl:template>

<xsl:template match="ed:annotation">
  <em>
    <xsl:apply-templates/>
  </em>

</xsl:template>

<!-- special templates for handling XHTML in issues -->
<xsl:template match="text()" mode="issuehtml">
  <xsl:value-of select="."/>
</xsl:template>

<xsl:template match="*|@*" mode="issuehtml">
  <xsl:message terminate="yes">Unexpected node in issue HTML: <xsl:value-of select="local-name(.)"/></xsl:message>
</xsl:template>

<xsl:template match="xhtml:a|xhtml:b|xhtml:br|xhtml:cite|xhtml:del|xhtml:em|xhtml:i|xhtml:ins|xhtml:q|xhtml:pre" mode="issuehtml">
  <xsl:element name="{local-name()}">

    <xsl:apply-templates select="@*|node()" mode="issuehtml"/>
  </xsl:element>
</xsl:template>

<xsl:template match="xhtml:p" mode="issuehtml">
  <xsl:apply-templates select="node()" mode="issuehtml"/>
  <br class="p"/>
</xsl:template>

<xsl:template match="xhtml:a/@href|xhtml:q/@cite" mode="issuehtml">
  <xsl:attribute name="{local-name(.)}">
    <xsl:value-of select="."/>

  </xsl:attribute>
</xsl:template>

<xsl:template name="insertIssuesList">

  <h2 id="{$anchor-prefix}.issues-list" ><a href="#{$anchor-prefix}.issues-list">Issues list</a></h2>
  <table summary="Issues list">
    <tbody>
      <thead>
        <tr>

          <th>Id</th>
          <th>Type</th>
          <th>Status</th>
          <th>Date</th>
          <th>Raised By</th>
        </tr>

      </thead>
      <xsl:for-each select="//ed:issue">
        <xsl:sort select="@status" />
        <xsl:sort select="@name" />
        <tr>
          <td><a href="#{$anchor-prefix}.issue.{@name}"><xsl:value-of select="@name" /></a></td>
          <td><xsl:value-of select="@type" /></td>
          <td><xsl:value-of select="@status" /></td>
          <td><xsl:value-of select="ed:item[1]/@date" /></td>

          <td><a href="mailto:{ed:item[1]/@entered-by}?subject={/rfc/@docName},%20{@name}"><xsl:value-of select="ed:item[1]/@entered-by" /></a></td>
        </tr>
      </xsl:for-each>
    </tbody>
  </table>
  
</xsl:template>

<xsl:template name="formatTitle">
  <xsl:if test="@who">
    <xsl:value-of select="@who" />

  </xsl:if>
  <xsl:if test="@datetime">
    <xsl:value-of select="concat(' (',@datetime,')')" />
  </xsl:if>
  <xsl:if test="@reason">
    <xsl:value-of select="concat(': ',@reason)" />
  </xsl:if>
  <xsl:if test="@cite">
    <xsl:value-of select="concat(' &lt;',@cite,'&gt;')" />

  </xsl:if>
</xsl:template>

<xsl:template name="insert-diagnostics">
  
  <!-- check anchor names -->
  <xsl:variable name="badAnchors" select="//*[starts-with(@anchor,concat($anchor-prefix,'.'))]" />
  <xsl:if test="$badAnchors">
    <p class="warning">
      The following anchor names may collide with internally generated anchors because of their prefix "<xsl:value-of select="$anchor-prefix" />":
      <xsl:for-each select="$badAnchors">

        <xsl:value-of select="@anchor"/><xsl:if test="position()!=last()">, </xsl:if>
      </xsl:for-each>
    </p>
    <xsl:message>
      The following anchor names may collide with internally generated anchors because of their prefix "<xsl:value-of select="$anchor-prefix" />":
      <xsl:for-each select="$badAnchors">
        <xsl:value-of select="@anchor"/><xsl:if test="position()!=last()">, </xsl:if>
      </xsl:for-each>

    </xsl:message>
  </xsl:if>
  
  <!-- check IDs -->
  <xsl:variable name="badTargets" select="//xref[not(@target=//@anchor) and not(ancestor::ed:del)]" />
  <xsl:if test="$badTargets">
    <p class="error">
      The following target names do not exist:
      <xsl:for-each select="$badTargets">
        <xsl:value-of select="@target"/><xsl:if test="position()!=last()">, </xsl:if>

      </xsl:for-each>
    </p>
    <xsl:message>
      The following target names do not exist:
      <xsl:for-each select="$badTargets">
        <xsl:value-of select="@target"/><xsl:if test="position()!=last()">, </xsl:if>
      </xsl:for-each>
    </xsl:message>
  </xsl:if>

 
  
</xsl:template>

<!-- special change mark support, not supported by RFC2629 yet -->

<xsl:template match="@ed:*" />

<xsl:template match="ed:del">
  <xsl:call-template name="insert-issue-pointer"/>
  <del>
    <xsl:copy-of select="@*[namespace-uri()='']"/>
    <xsl:if test="not(@title) and ancestor-or-self::*[@ed:entered-by] and @datetime">
      <xsl:attribute name="title"><xsl:value-of select="concat(@datetime,', ',ancestor-or-self::*[@ed:entered-by][1]/@ed:entered-by)"/></xsl:attribute>

    </xsl:if>
    <xsl:apply-templates />
  </del>
</xsl:template>

<xsl:template match="ed:ins">
  <xsl:call-template name="insert-issue-pointer"/>
  <ins>
    <xsl:copy-of select="@*[namespace-uri()='']"/>
    <xsl:if test="not(@title) and ancestor-or-self::*[@ed:entered-by] and @datetime">

      <xsl:attribute name="title"><xsl:value-of select="concat(@datetime,', ',ancestor-or-self::*[@ed:entered-by][1]/@ed:entered-by)"/></xsl:attribute>
    </xsl:if>
    <xsl:apply-templates />
  </ins>
</xsl:template>

<xsl:template name="insert-issue-pointer">
  <xsl:param name="deleted-anchor"/>
  <xsl:variable name="change" select="."/>
  <xsl:for-each select="@ed:resolves|ed:resolves">

    <xsl:variable name="resolves" select="."/>
    <!-- need the right context node for proper numbering -->
    <xsl:variable name="count"><xsl:for-each select=".."><xsl:number level="any" count="*[@ed:resolves=$resolves or ed:resolves=$resolves]" /></xsl:for-each></xsl:variable>
    <xsl:variable name="total" select="count(//*[@ed:resolves=$resolves or ed:resolves=$resolves])" />
    <xsl:variable name="id">
      <xsl:value-of select="$anchor-prefix"/>.change.<xsl:value-of select="$resolves"/>.<xsl:value-of select="$count" />
    </xsl:variable>
    <xsl:choose>

      <!-- block level? -->
      <xsl:when test="not(ancestor::t) and not(ancestor::title) and not(ancestor::figure) and not($change/@ed:old-title)">
        <div class="issuepointer noprint">
          <xsl:if test="not($deleted-anchor)">
            <xsl:attribute name="id"><xsl:value-of select="$id"/></xsl:attribute>
          </xsl:if>
          <xsl:if test="$count > 1">
            <a class="bg-issue" title="previous change for {$resolves}" href="#{$anchor-prefix}.change.{$resolves}.{$count - 1}">&#x2191;</a>
          </xsl:if>

          <a class="open-issue" href="#{$anchor-prefix}.issue.{$resolves}" title="resolves: {$resolves}">
            <xsl:choose>
              <xsl:when test="//ed:issue[@name=$resolves and @status='closed']">
                <xsl:attribute name="class">closed-issue</xsl:attribute>
              </xsl:when>
              <xsl:when test="//ed:issue[@name=$resolves and @status='editor']">
                <xsl:attribute name="class">editor-issue</xsl:attribute>
              </xsl:when>

              <xsl:otherwise>
                <xsl:attribute name="class">open-issue</xsl:attribute>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:text>&#160;I&#160;</xsl:text>
          </a>
          <xsl:if test="$count &lt; $total">
            <a class="bg-issue" title="next change for {$resolves}" href="#{$anchor-prefix}.change.{$resolves}.{$count + 1}">&#x2193;</a>

          </xsl:if>
          <xsl:text>&#160;</xsl:text>
        </div>
      </xsl:when>
      <xsl:otherwise>
        <xsl:if test="$count > 1">
          <a class="bg-issue" title="previous change for {$resolves}" href="#{$anchor-prefix}.change.{$resolves}.{$count - 1}">&#x2191;</a>
        </xsl:if>
        <a title="resolves: {$resolves}" href="#{$anchor-prefix}.issue.{$resolves}">

          <xsl:if test="not($deleted-anchor)">
            <xsl:attribute name="id"><xsl:value-of select="$id"/></xsl:attribute>
          </xsl:if>
          <xsl:choose>
            <xsl:when test="//ed:issue[@name=$resolves and @status='closed']">
              <xsl:attribute name="class">closed-issue noprint</xsl:attribute>
            </xsl:when>
            <xsl:when test="//ed:issue[@name=$resolves and @status='editor']">

              <xsl:attribute name="class">editor-issue noprint</xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
              <xsl:attribute name="class">open-issue noprint</xsl:attribute>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:text>&#160;I&#160;</xsl:text>

        </a>
        <xsl:if test="$count &lt; $total">
          <a class="bg-issue" title="next change for {$resolves}" href="#{$anchor-prefix}.change.{$resolves}.{$count + 1}">&#x2193;</a>
        </xsl:if>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:for-each>
</xsl:template>

<xsl:template match="ed:replace">

  <!-- we need to special-case things like lists and tables -->
  <xsl:choose>
    <xsl:when test="parent::list">
      <xsl:apply-templates select="ed:del/node()" />
      <xsl:apply-templates select="ed:ins/node()" />
    </xsl:when>
    <xsl:when test="ancestor::references">
      <xsl:apply-templates select="ed:del/node()" />
      <xsl:apply-templates select="ed:ins/node()" />

    </xsl:when>
    <xsl:otherwise>
      <xsl:if test="@cite">
        <a class="editor-issue" href="{@cite}" target="_blank" title="see {@cite}">
          <xsl:text>&#160;i&#160;</xsl:text>
        </a>
      </xsl:if>
      <xsl:call-template name="insert-issue-pointer"/>

      <xsl:if test="ed:del">
        <del>
          <xsl:copy-of select="@*[namespace-uri()='']"/>
          <xsl:if test="not(@title) and ancestor-or-self::xsl:template[@ed:entered-by] and @datetime">
            <xsl:attribute name="title"><xsl:value-of select="concat(@datetime,', ',ancestor-or-self::*[@ed:entered-by][1]/@ed:entered-by)"/></xsl:attribute>
          </xsl:if>
          <xsl:apply-templates select="ed:del/node()" />
        </del>
      </xsl:if>

      <xsl:if test="ed:ins">
        <ins>
          <xsl:copy-of select="@*[namespace-uri()='']"/>
          <xsl:if test="not(@title) and ancestor-or-self::*[@ed:entered-by] and @datetime">
            <xsl:attribute name="title"><xsl:value-of select="concat(@datetime,', ',ancestor-or-self::*[@ed:entered-by][1]/@ed:entered-by)"/></xsl:attribute>
          </xsl:if>
          <xsl:apply-templates select="ed:ins/node()" />
        </ins>
      </xsl:if>

    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<!-- convenience template for helping Mozilla (pre/ins inheritance problem) -->
<xsl:template name="insertInsDelClass">
  <xsl:if test="ancestor::ed:del">
    <xsl:attribute name="class">del</xsl:attribute>
  </xsl:if>
  <xsl:if test="ancestor::ed:ins">

    <xsl:attribute name="class">ins</xsl:attribute>
  </xsl:if>
</xsl:template>


<xsl:template name="sectionnumberAndEdits">
  <xsl:choose>
    <xsl:when test="ancestor::ed:del">del-<xsl:number count="ed:del//section" level="any"/></xsl:when>
    <xsl:when test="@x:fixed-section-number">
      <xsl:value-of select="@x:fixed-section-number"/>

    </xsl:when>
    <xsl:when test="self::section and parent::ed:ins and local-name(../..)='replace'">
      <xsl:for-each select="../.."><xsl:call-template name="sectionnumberAndEdits" /></xsl:for-each>
      <xsl:for-each select="..">
        <xsl:if test="parent::ed:replace">
          <xsl:for-each select="..">
            <xsl:if test="parent::section">.</xsl:if>
            <xsl:variable name="cnt" select="1+count(preceding-sibling::section|preceding-sibling::ed:ins/section|preceding-sibling::ed:replace/ed:ins/section)" />

            <xsl:choose>
              <xsl:when test="ancestor::back and not(ancestor::section)"><xsl:number format="A" value="$cnt"/></xsl:when>
              <xsl:otherwise><xsl:value-of select="$cnt"/></xsl:otherwise>
            </xsl:choose>
          </xsl:for-each>
        </xsl:if>
      </xsl:for-each>
    </xsl:when>
    <xsl:when test="self::section[parent::ed:ins]">

      <xsl:for-each select="../.."><xsl:call-template name="sectionnumberAndEdits" /></xsl:for-each>
      <xsl:for-each select="..">
        <xsl:if test="parent::section">.</xsl:if><xsl:value-of select="1+count(preceding-sibling::section|preceding-sibling::ed:ins/section|preceding-sibling::ed:replace/ed:ins/section)" />
      </xsl:for-each>
    </xsl:when>
    <xsl:when test="self::section">
      <xsl:for-each select=".."><xsl:call-template name="sectionnumberAndEdits" /></xsl:for-each>
      <xsl:if test="parent::section">.</xsl:if>

      <xsl:choose>
        <xsl:when test="parent::back">
          <xsl:number format="A" value="1+count(preceding-sibling::section|preceding-sibling::ed:ins/section|preceding-sibling::ed:replace/ed:ins/section)" />
        </xsl:when>
        <xsl:otherwise>
          <xsl:number value="1+count(preceding-sibling::section|preceding-sibling::ed:ins/section|preceding-sibling::ed:replace/ed:ins/section)" />
        </xsl:otherwise>
      </xsl:choose>
    </xsl:when>

    <xsl:when test="self::references">
      <xsl:choose>
        <xsl:when test="count(/*/back/references)+count(/*/back/ed:replace/ed:ins/references)=1"><xsl:call-template name="get-references-section-number"/></xsl:when>
        <xsl:otherwise><xsl:call-template name="get-references-section-number"/>.<xsl:number level="any"/></xsl:otherwise>
      </xsl:choose>
    </xsl:when>
    <xsl:when test="self::middle or self::back"><!-- done --></xsl:when>
    <xsl:otherwise>

      <!-- go up one level -->
      <xsl:for-each select=".."><xsl:call-template name="sectionnumberAndEdits" /></xsl:for-each>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<!-- utilities for warnings -->

<xsl:template name="warning">
  <xsl:param name="msg"/>
  <xsl:param name="msg2"/>

  <div class="error">WARNING: <xsl:value-of select="$msg"/></div>
  <xsl:message>WARNING: <xsl:value-of select="$msg"/><xsl:value-of select="$msg2"/><xsl:call-template name="lineno"/></xsl:message>
</xsl:template>

<!-- table formatting -->

<xsl:template match="texttable">

  <xsl:variable name="anch">
    <xsl:call-template name="get-table-anchor"/>
  </xsl:variable>

  <div id="{$anch}">
    <xsl:if test="@anchor!=''">
      <div id="{@anchor}"/>
    </xsl:if>
    <xsl:apply-templates select="preamble" />
    <xsl:variable name="style">
      <xsl:text>tt </xsl:text>
      <xsl:choose>

        <xsl:when test="@style!=''">
          <xsl:value-of select="@style"/>
        </xsl:when>
        <xsl:otherwise>full</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <table summary="{preamble}" class="{$style}" cellpadding="3" cellspacing="0">
      <thead>

        <tr>
          <xsl:apply-templates select="ttcol" />
        </tr>
      </thead>
      <tbody>
        <xsl:variable name="columns" select="count(ttcol)" />
        <xsl:variable name="fields" select="c | ed:replace/ed:ins/c | ed:replace/ed:del/c" />
        <xsl:for-each select="$fields[(position() mod $columns) = 1]">
          <tr>

            <xsl:for-each select=". | following-sibling::c[position() &lt; $columns]">
              <td>
                <xsl:call-template name="insertInsDelClass"/>
                <xsl:variable name="pos" select="position()" />
                <xsl:variable name="col" select="../ttcol[position() = $pos]" />
                <xsl:choose>
                  <xsl:when test="$col/@align='right' or $col/@align='center'">
                    <xsl:attribute name="class"><xsl:value-of select="$col/@align"/></xsl:attribute>
                  </xsl:when>

                  <xsl:when test="$col/@align='left' or not($col/@align)">
                    <!-- that's the default, nothing to do here -->
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:message>Unknown align attribute on ttcol: <xsl:value-of select="$col/@align"/></xsl:message>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:apply-templates select="node()" />

              </td>
            </xsl:for-each>
          </tr>
        </xsl:for-each>
      </tbody>
    </table>
    <xsl:apply-templates select="postamble" />

    <xsl:if test="@title!='' or @anchor!=''">

      <xsl:variable name="n"><xsl:number level="any" count="texttable[@title!='' or @anchor!='']" /></xsl:variable>
      <p class="figure">Table <xsl:value-of select="$n"/><xsl:if test="@title!=''">: <xsl:value-of select="@title" /></xsl:if></p>
    </xsl:if>
  </div>
  
</xsl:template>

<xsl:template match="ttcol">
  <th>
    
    <xsl:choose>

      <xsl:when test="@align='right' or @align='center' or @align='left'">
        <xsl:attribute name="class"><xsl:value-of select="@align"/></xsl:attribute>
      </xsl:when>
      <xsl:when test="not(@align)">
        <!-- that's the default, nothing to do here -->
      </xsl:when>
      <xsl:otherwise>
        <xsl:message>Unknown align attribute on ttcol: <xsl:value-of select="@align"/></xsl:message>

      </xsl:otherwise>
    </xsl:choose>
    
    <xsl:if test="@width">
      <xsl:attribute name="style">width: <xsl:value-of select="@width" />;</xsl:attribute>
    </xsl:if>

    <xsl:apply-templates />
  </th>

</xsl:template>

<!-- cref support -->

<xsl:template match="cref">
  <xsl:if test="$xml2rfc-comments!='no'">
    <xsl:variable name="cid">
      <xsl:choose>
        <xsl:when test="@anchor">
          <xsl:value-of select="@anchor"/>
        </xsl:when>

        <xsl:otherwise>
          <xsl:value-of select="$anchor-prefix"/>
          <xsl:text>.comment.</xsl:text>
          <xsl:number count="cref[not(@anchor)]" level="any"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    
    <span class="comment">

      <xsl:if test="$xml2rfc-inline!='yes'">
        <xsl:attribute name="title">
          <xsl:if test="@source"><xsl:value-of select="@source"/>: </xsl:if>
          <xsl:value-of select="."/>
        </xsl:attribute>
      </xsl:if>
      <xsl:text>[</xsl:text>
      <xsl:choose>

        <xsl:when test="$xml2rfc-inline='yes'">
          <xsl:value-of select="$cid"/>
          <xsl:text>: </xsl:text>
          <xsl:value-of select="."/>
          <xsl:if test="@source"> --<xsl:value-of select="@source"/></xsl:if>
        </xsl:when>
        <xsl:otherwise>

          <a href="#{$cid}">
            <xsl:value-of select="$cid"/>
          </a>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:text>]</xsl:text>
    </span>
  </xsl:if>

</xsl:template>

<xsl:template name="insertComments">

  <xsl:call-template name="insert-conditional-hrule"/>
    
  <h1>
    <xsl:call-template name="insert-conditional-pagebreak"/>
    <a id="{$anchor-prefix}.comments" href="#{$anchor-prefix}.comments">Editorial Comments</a>
  </h1>

  <dl>

    <xsl:for-each select="//cref">
      <xsl:variable name="cid">
        <xsl:choose>
          <xsl:when test="@anchor">
            <xsl:value-of select="@anchor"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="$anchor-prefix"/>
            <xsl:text>.comment.</xsl:text>

            <xsl:number count="cref[not(@anchor)]" level="any"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:variable>
      <dt id="{$cid}">
        [<xsl:value-of select="$cid"/>]
      </dt>
      <dd>
        <xsl:value-of select="."/>

        <xsl:if test="@source"> --<xsl:value-of select="@source"/></xsl:if>
      </dd>
    </xsl:for-each>
  </dl>
</xsl:template>


<!-- Chapter Link Generation -->

<xsl:template match="*" mode="links"><xsl:apply-templates mode="links"/></xsl:template>
<xsl:template match="text()" mode="links" />

<xsl:template match="/*/middle//section[not(myns:unnumbered) and not(ancestor::section)]" mode="links">
  <xsl:variable name="sectionNumber"><xsl:call-template name="get-section-number" /></xsl:variable>
  <link rel="Chapter" title="{$sectionNumber} {@title}" href="#{$anchor-prefix}.section.{$sectionNumber}" />
  <xsl:apply-templates mode="links" />
</xsl:template>

<xsl:template match="/*/back//section[not(myns:unnumbered) and not(ancestor::section)]" mode="links">
  <xsl:variable name="sectionNumber"><xsl:call-template name="get-section-number" /></xsl:variable>
  <link rel="Appendix" title="{$sectionNumber} {@title}" href="#{$anchor-prefix}.section.{$sectionNumber}" />
  <xsl:apply-templates mode="links" />

</xsl:template>

<xsl:template match="/*/back/references[position()=1]" mode="links">
  <xsl:variable name="sectionNumber"><xsl:call-template name="get-references-section-number" /></xsl:variable>
  <link rel="Chapter" href="#{$anchor-prefix}.section.{$sectionNumber}">
    <xsl:choose>
      <xsl:when test="@title and count(/*/back/references)=1">
        <xsl:attribute name="title">
          <xsl:call-template name="get-references-section-number"/>
          <xsl:text> </xsl:text>

          <xsl:value-of select="@title"/>
        </xsl:attribute>
      </xsl:when>
      <xsl:otherwise>
        <xsl:attribute name="title">
          <xsl:call-template name="get-references-section-number"/>
          <xsl:text> References</xsl:text>
        </xsl:attribute>

      </xsl:otherwise>
    </xsl:choose>
  </link>
</xsl:template>

<!-- convenience templates -->

<xsl:template name="get-author-summary">
  <xsl:choose>
    <xsl:when test="count(/rfc/front/author)=1">
      <xsl:value-of select="/rfc/front/author[1]/@surname" />

    </xsl:when>
    <xsl:when test="count(/rfc/front/author)=2">
      <xsl:value-of select="concat(/rfc/front/author[1]/@surname,' &amp; ',/rfc/front/author[2]/@surname)" />
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="concat(/rfc/front/author[1]/@surname,', et al.')" />
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="get-authors">
  <xsl:for-each select="/rfc/front/author">
    <xsl:value-of select="@fullname" />
    <xsl:if test="position()!=last()">, </xsl:if>
  </xsl:for-each>
</xsl:template>

<xsl:template name="get-category-long">
  <xsl:choose>
    <xsl:when test="$xml2rfc-footer"><xsl:value-of select="$xml2rfc-footer" /></xsl:when>

    <xsl:when test="$xml2rfc-private"/> <!-- private draft, footer not set -->
    <xsl:when test="/rfc/@category='bcp'">Best Current Practice</xsl:when>
    <xsl:when test="/rfc/@category='historic'">Historic</xsl:when>
    <xsl:when test="/rfc/@category='info' or not(/rfc/@category)">Informational</xsl:when>
    <xsl:when test="/rfc/@category='std'">Standards Track</xsl:when>
    <xsl:when test="/rfc/@category='exp'">Experimental</xsl:when>

    <xsl:otherwise>(category unknown)</xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="get-header-center">
  <xsl:choose>
    <xsl:when test="string-length(/rfc/front/title/@abbrev) &gt; 0">
      <xsl:value-of select="/rfc/front/title/@abbrev" />
    </xsl:when>
    <xsl:otherwise>

      <xsl:apply-templates select="/rfc/front/title" mode="get-text-content" />
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="get-header-left">
  <xsl:choose>
    <xsl:when test="$xml2rfc-header"><xsl:value-of select="$xml2rfc-header" /></xsl:when>
    <xsl:when test="$xml2rfc-private"/> <!-- private draft, header not set -->
    <xsl:when test="/rfc/@ipr and not(/rfc/@number)">INTERNET DRAFT</xsl:when>

    <xsl:otherwise>RFC <xsl:value-of select="/rfc/@number"/></xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="get-generator">
  <xsl:variable name="gen">
    <xsl:text>http://greenbytes.de/tech/webdav/rfc2629.xslt, </xsl:text>
    <!-- when RCS keyword substitution in place, add version info -->
    <xsl:if test="contains('$Revision: 1.340 $',':')">

      <xsl:value-of select="concat('Revision ',normalize-space(translate(substring-after('$Revision: 1.340 $', 'Revision: '),'$','')),', ')" />
    </xsl:if>
    <xsl:if test="contains('$Date: 2007/07/14 15:16:14 $',':')">
      <xsl:value-of select="concat(normalize-space(translate(substring-after('$Date: 2007/07/14 15:16:14 $', 'Date: '),'$','')),', ')" />
    </xsl:if>
    <xsl:value-of select="concat('XSLT vendor: ',system-property('xsl:vendor'),' ',system-property('xsl:vendor-url'))" />
  </xsl:variable>
  <xsl:value-of select="$gen" />
</xsl:template>

<xsl:template name="get-header-right">
  <xsl:value-of select="concat(/rfc/front/date/@month,' ',/rfc/front/date/@year)" />
</xsl:template>

<xsl:template name="get-keywords">
  <xsl:variable name="keyw">
    <xsl:for-each select="/rfc/front/keyword">
      <xsl:value-of select="translate(.,',',' ')" />
      <xsl:if test="position()!=last()">, </xsl:if>
    </xsl:for-each>

  </xsl:variable>
  <xsl:value-of select="normalize-space($keyw)" />
</xsl:template>

<!-- get language from context node. nearest ancestor or return the default of "en" -->
<xsl:template name="get-lang">
  <xsl:choose>
    <xsl:when test="ancestor-or-self::*[@xml:lang]"><xsl:value-of select="ancestor-or-self::*/@xml:lang" /></xsl:when>
    <xsl:otherwise>en</xsl:otherwise>
  </xsl:choose>

</xsl:template>

<xsl:template name="get-section-number">
  <xsl:variable name="hasEdits" select="count(//ed:del|//ed:ins)!=0" />
  <xsl:variable name="anchor" select="@anchor"/>
  <xsl:choose>
    <xsl:when test="@x:fixed-section-number">
      <xsl:value-of select="@x:fixed-section-number"/>
    </xsl:when>
    <xsl:when test="$hasEdits or ancestor::*/@x:fixed-section-number">

      <xsl:call-template name="sectionnumberAndEdits" />
    </xsl:when>
    <xsl:otherwise>
      <xsl:choose>
        <xsl:when test="self::references">
          <xsl:choose>
            <xsl:when test="count(/*/back/references)=1">
              <xsl:call-template name="get-references-section-number"/>
            </xsl:when>

            <xsl:otherwise>
              <xsl:call-template name="get-references-section-number"/>.<xsl:number count="references"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:when test="self::reference">
          <xsl:for-each select="parent::references">
            <xsl:choose>

              <xsl:when test="count(/*/back/references)=1">
                <xsl:call-template name="get-references-section-number"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:call-template name="get-references-section-number"/>.<xsl:number count="references"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:for-each>

        </xsl:when>
        <xsl:when test="ancestor::back"><xsl:number count="section|appendix" level="multiple" format="A.1.1.1.1.1.1.1" /></xsl:when>
        <xsl:when test="self::appendix"><xsl:number count="appendix" level="multiple" format="A.1.1.1.1.1.1.1" /></xsl:when>
        <xsl:otherwise><xsl:number count="section" level="multiple"/></xsl:otherwise>
      </xsl:choose>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<!-- get the section number for the references section -->

<xsl:template name="get-references-section-number">
  <xsl:value-of select="count(/rfc/middle/section) + count(/rfc/middle/ed:replace/ed:ins/section) + 1"/>
</xsl:template>

<xsl:template name="emit-section-number">
  <xsl:param name="no"/>
  <xsl:value-of select="$no"/><xsl:if test="not(contains($no,'.')) or $xml2rfc-ext-sec-no-trailing-dots='yes'">.</xsl:if>
</xsl:template>

<xsl:template name="get-section-type">
  <xsl:param name="prec" />
  <xsl:choose>

    <xsl:when test="ancestor::back">Appendix</xsl:when>
    <xsl:otherwise>Section</xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="get-table-anchor">
  <xsl:value-of select="$anchor-prefix"/>
  <xsl:text>.table.</xsl:text>
  <xsl:choose>

    <xsl:when test="@title!='' or @anchor!=''">
      <xsl:number level="any" count="texttable[@title!='' or @anchor!='']" />
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>u.</xsl:text>
      <xsl:number level="any" count="texttable[not(@title!='' or @anchor!='')]" />
    </xsl:otherwise>
  </xsl:choose>

</xsl:template>

<xsl:template name="get-figure-anchor">
  <xsl:value-of select="$anchor-prefix"/>
  <xsl:text>.figure.</xsl:text>
  <xsl:choose>
    <xsl:when test="@title!='' or @anchor!=''">
      <xsl:number level="any" count="figure[@title!='' or @anchor!='']" />
    </xsl:when>
    <xsl:otherwise>

      <xsl:text>u.</xsl:text>
      <xsl:number level="any" count="figure[not(@title!='' or @anchor!='')]" />
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<!-- reformat contents of author/@initials -->
<xsl:template name="format-initials">
  <xsl:choose>
    <xsl:when test="string-length(@initials)=1">

      <xsl:value-of select="concat(@initials,'.')"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="@initials"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="insert-conditional-pagebreak">
  <xsl:if test="$xml2rfc-compact!='yes'">

    <xsl:attribute name="class">np</xsl:attribute>
  </xsl:if>
</xsl:template>

<xsl:template name="insert-conditional-hrule">
  <xsl:if test="$xml2rfc-compact!='yes'">
    <hr class="noprint" />
  </xsl:if>
</xsl:template>

<!-- get text content from marked-up text -->

<xsl:template match="text()" mode="get-text-content">
  <xsl:value-of select="."/>
</xsl:template>

<xsl:template match="*" mode="get-text-content">
  <xsl:apply-templates mode="get-text-content"/>
</xsl:template>

<xsl:template match="ed:del" mode="get-text-content">
</xsl:template>

<!-- diag support -->
<xsl:template name="lineno">
  <xsl:if test="function-available('saxon:line-number')">

    <xsl:if test="saxon:line-number() > 0">
      <xsl:text> (at line </xsl:text>
      <xsl:value-of select="saxon:line-number()"/>
      <xsl:text>)</xsl:text>
    </xsl:if>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>
