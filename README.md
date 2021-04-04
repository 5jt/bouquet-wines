bouquet-wines
=============

*Generates website content and printed wine lists for Bouquet Wines*

Bouquet Wines is a wine importer in London, England. This repo 

1.  Generates the content of its static HTML website at [bouquetwines.com](https://bouquetwines.com)
2.  Generates its winelist as a PDF from an XML document maintained by the proprietor


Website
-------
The website HTML is generated with [Hugo](https://gohugo.io) from the [Split template](https://onepagelove.com/split). 


Winelist
--------
The winelist source is an XML document (no schema). 
Stylesheet `bwxep.xsl` transforms it to XSL-FO, which is rendered to a PDF. 

I use the XEP rendering engine from RenderX for both XML to XSL-FO and XSL-FO to PDF. In practice this is a single step in which the XSL-FO is not saved to file. 


Fonts
-----
The winelist is set in ET Book and Lucida Sans. 

See your rendering engine configuration for how to enable fonts for it. 


Requirements
------------

* Hugo static-site generator
* [`hugo-split-theme`](https://onepagelove.com/split)
* XSLT processor
* XSL-FO rendering engine
* ET Book font
* Lucida Sans font


