<?php
//include fpdf
require('mods/pdf/fpdf.php');

//read the contents of a url you want to convert to PDF
$content = file_get_contents('http://localhost/phpmyadmin/sql.php?server=1&db=scan&table=scan&pos=0&token=ac727b0ba9ffed5f1f8b1a610ceef837');

//Load PHP DOM
$doc = new DOMDocument();

//load HTML in PHP DOM
@$doc->loadHTML($content);

//extract the text of a DIV element for PDF
$text_for_pdf = $doc->getElementById('page_content')->nodeValue;

//use FPDF
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',12);

//specify width and height of the cell Multicell(width, height, string)
//load extracted text into FPDF
$pdf->Multicell(190,10, $text_for_pdf);

$pdf->Output(); //output the file
?>