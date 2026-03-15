<?php
/* Tiny library to enable PHP stubs which convert Darla into HTML5 on the server side. */
function translate_to_html($document) {
    $proc=new XsltProcessor;  
    $doc=new DOMDocument;
    $doc->load($document);
    $style=new DOMDocument;
    $style->load($_SERVER["DOCUMENT_ROOT"] . "/common/darla/style.xslt");
    $proc->importStylesheet($style);
    echo $proc->transformToXML($doc);  
}
?>