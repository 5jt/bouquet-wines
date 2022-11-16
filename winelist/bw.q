rnd: .01* floor .5+ 100*

// show-case-price
scp: {[duty;vatrate;profitmargin;caseprice]
  vat: vatrate * caseprice + duty;
  retail: duty + caseprice % profitmargin; 
  price: vat + retail;
  `vat`retail`price!rnd vat,retail,price
  }[26.76;0.2;0.75]
