### 1-Change Color
![Change Color](imgs/1-color.png)

### 2-Make Columns
![Make Columns](imgs/2-columns.png)

### 3-Make Rows
![Make Rows](imgs/3-row.png)

### 4-Make Equidistant
![Make Equidistant](imgs/4-equidistant.png)

### 5-Make Square
![Make Square](imgs/5-square.png)

### 6-Make Div1 Footer
![Div1 Footer](imgs/6-footer.png)

### 7-Make Div2 Header
![Div2 Header](imgs/7-header.png)

### 8-Make Div3 Sidebar
![Div3 Sidebar](imgs/8-sidebar.png)

### 9-Get Creative
![Get Creative](imgs/9-creative.png)



## How can you use Chrome's DevTools inspector to help you format or position elements?

Chrome DevTools is particularly cool because you can essentially style/rearrange a webpage in real time. When coding using a text editor, it's hard to accurately know how a particular style in CSS will effect the linked HTML and there is a delay/disconnect between writing the code out and seeing the final product. With DevTools, that delay is erased and it allows you to freely play around with styles and HTML structure while simultaneously looking at the final product. It is also a great tool for responsive design elements, as you can arrange the height/width of the viewer to most of the popular tablet/smartphone displays, and you can get a good idea of how a webpage will look on different displays (ie how the elements on the page will be arranged and presented).

## How can you resize elements on the DOM using CSS?

If by resizing, you mean adjusting height/width of an element, it's pretty straight forward. On the DOM, select the DOM node (HTML tag) you want to resize. Any corresponding CSS for that tag will appear in the CSS editor. Apply width/height values to the CSS and you should see the resizing in real time in the viewer.

## What are the differences between absolute, fixed, static, and relative positioning? Which did you find easiest to use? Which was most difficult?

Absolute positioning does not position an element within the flow of the document and moves the element in relation to the closest relative positioned element (or in relation to <body> if no relative position element exists). On that line of though, relative positioning allows elements to appear within the normal flow of the page and leaves space for an element as intended while not allowing other elements to flow around it. With relative position, if an element is moved, it will be moved relative to where that element initially appeared. Static positioning is the default way an element will be positioned on the page. Finally, fixed positioning is similar to absolute, except the elemet will be placed in relation to the browser window, regardless of where the actual tag is nested in the HTML. The fixed element will not scroll with the page, but remain in place. 

I found relative to be the easiest positioning to use as it was really easy to use the margin property to change the position quickly and efficiently of an element. Relative positioning seemed to allow for the most flexibility when working. I found fixed positioning to be a nightmare, particularly with this challenge, because with fixed positioning, it was impossible to manipulate the elements and position them appropriately to the exercise instructions. I can see why fixed positioning would be helpful in other cases, like say a nav bar you want to always be visible when someone is scrolling through your website, but it proved challenging for this exercise.

## What are the differences between margin, border, and padding?

Margin, border and padding are all different aspects of the box model, which describes the area surrounding an element. Padding is the space immediately surrounding the element itself and can be transparent or opaque, depending on the element it is surrounding. You can set the thickness of the padding in css using the padding selector (you can also set individual padding thickness for each side of the element). The border surrounds the padding, so it is two steps away from the element itself. It provides an outline of the element. It can take three values, thickness, color and style. Borders can be solid, dashed, or some other style. The margin is the final area surrounding an element, and it is similar to padding in that it sets the amount of space surrounding an element. It is a transparent area that can be set using the margin selector in CSS (and it also has the ability to set individual margins for each side of the element. Altogether, from fartherest away from element to closest, margin, border and padding make up the box model, as they create a large box around the element itself.

## What was your impression of this challenge overall? (love, hate, and why?)

This was a very bizarre challenge to me and one that kind of broke down how DBC would like a pairing session to go. Both my pair and I were having trouble understanding the Devtools layout and we also were still hazy on the CSS positioning properties, so going through the parts of the challenge where we had to change the position of the divs was very frustrating and required a ton of trial and error. The driver/navigator roles broke down as we both kind of tinkered with our own Devtools to complete each exercise, but we made sure to keep the communication open. I definitely had a love/hate relationship with this challenge. I find positioning elements in CSS to be an absolute nightmare so far, but using Devtools really helped me sort of understand the differences between absolute, fixed, static and relaitve while checking out the results in real time. That I found to be the greatest feature, and I look forward to utilizing Devtools on me own site to experiment with positioning, in particular.
