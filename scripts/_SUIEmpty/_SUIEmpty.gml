




// just a short-hand
#macro SUI_ELEMENT SUIElement(x, y, props, children) constructor

// useful for when you just need to combine several elements under a single (empty) parent element
function SUIEmpty(x, y, props = {}, children = []) : SUI_ELEMENT {}