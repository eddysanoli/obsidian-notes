# Boster: Notes and Key Info

----

## Loom

Short videos that CJ shared with me to explain certain things.

- [Amazon-ify Boster](https://www.loom.com/share/6b8cf278a9854eccb44b6cbdc0673a84): CJ wanted to improve the store pages to be more "amazon-like"
- [Lower Sections of Amazon-like Layout](https://www.loom.com/share/abaa4f8fb3194486a43ebaf274b7300b): Details on the layout for the QA and citations section for the Amazon-like layout for the store pages.
- [Price Calculator Layout](https://www.loom.com/share/a34a252d97494de19d3b07f018d5302f): Details on the layout for the price calculator that will be put at the bottom of the hero section of different pages.
- [Change Nav Menu Code](https://www.loom.com/share/a790d1fb37b541828eec58b89b2466b9): Urgent task to change the code for the navbar.
- [AAV Price Picker](https://www.loom.com/share/c474a0571c0b4e84baf4b3a2cb8976c2): A price picker component for the AAV page that's meant to dynamically show the starting price depending on the volume selected.
- [OOA Dashboard / How the Zohobooks Extension Works](https://www.loom.com/share/10a120f711cd442194001566fb273dd4): Here CJ goes through how to implement a new element in Zohobooks through his extension. At the same time he explains how to do things like add buttons, how to link them with an API endpoint, among others.

----

## ELISA Data Upload

Guides and videos for uploading ELISA data into the client facing platform found in Boster.

- [Tutorial Powerpoint](https://docs.google.com/presentation/d/1apN3YvikzfIYQzmPMdlwulsxqK5M0gPTToRC_fuufy4/edit#slide=id.p): Google slides presentation where the ELISA uploading process is explained step by step.
- [ELISA Vendor Portal](<https://www.bosterbio.com/elisa-service-vendor-portal?secrete=12%5E(apo>): Place where you add the ELISA data
- [Client Facing ELISA Data Portal](https://www.bosterbio.com/elisa-service-dashboard?password=btt17501&client=BTT): Where the ELISA data that you add will end up being displayed.

----

## Bookmark

Bookmarks that CJ shared, that increase the functionality of the site.

### **Move to the Current Page's Source Code on Magento**

When you are on a page, this bookmark will cause you to open a new tab with the source HTML of that page in the Magento CMS.

```javascript
javascript:var identifier=window.location.href.split('.com/')[1].split('?%27)[0];var xhttp = new XMLHttpRequest();var url = "https://www.bosterbio.com/cj-custom-script?action=checkPageId&identifier=" + identifier+"&rand="+Math.random();xhttp.onreadystatechange = function() {  if (this.readyState == 4 && this.status == 200) {    var pageId=this.responseText.split(%27Begin CJCUSTOM%27)[1].split(%27End CJCUSTOM%27)[0];    window.open(%27https://www.bosterbio.com/badmin/cms/page/edit/page_id/%27+pageId,%27_blank%27);  }};xhttp.open("GET", url, true);xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");xhttp.send();
```

----

## Useful URLs

Useful links shared by CJ that may prove useful.

- [Design Guide](https://www.bosterbio.com/design-guide/new.html): The design guide followed by everyone in order to ensure parity between pages.
- [JetRails Support](https://portal.jetrails.com/submitticket.php?step=2&deptid=1): Where I can ask for help to allow me to edit templates and also give me access to the Jetrails server through FTP and SSH.

----

## Custom Search

- Implemented through a Magento plugin
- Test file is found in: `/home/jetrails/bosterbio.com/html/app/design/frontend/Bosterbio/theme/Magento_Catalog/templates/product`
- The production files are found in: `/home/jetrails/bosterbio.com/html/app/code/Codi/CustomSearch/Block`. The main file should be called `cjcustomsearch.phtml`

---

## Product Templates

- Templates are found in the following path: `/home/jetrails/bosterbio.com/html/app/design/frontend/Bosterbio/theme/Magento_Catalog/templates/product/view/NewSystem2020/productPageTemplates`
- To access the page, you need to do it through FTP. Regular magento admin panel won't work.
- Different products use different templates, but in all cases you should change the `-dev` version of the file due to how CJ set it up.
- To know which product uses which template, you can go to the [product page](https://www.bosterbio.com/badmin/catalog/product/) and search a product by its SKU for example. Then, when you see the attributes of the product, you will see a "template" field. That field should coincide with the first part of the template name. For example, if the template is `quick-elisa-kits-dev.html`, then the template is `quick elisa kits`.
- Edited templates
	- `quick-elisa-kits-dev.html`
	- `custom-description-dev.html`

---
## Server Access

- The server that's running bosterbio.com is protected by having a whitelist that actively checks which IPs have access to the server. If you don't have access you need to request it
- File a ticket here to request access: https://portal.jetrails.com/
	- Request them to whitelist your IP for SSH and SFTP access. This allows you to remote into the server or access it with Filezilla
	- Request them to whitelist your IP from cloudflare. This allows you to edit Magento templates.

----
### CBD
The CBD is the backend for their ordering system

1. Frontend presentation: 
	- Script that runs every second in zoho that looks for specific elements and when it finds them, it puts them in the DOM. 
	 - A UI scanner has a selector for the element that triggers stuff, an action that corresponds to an action in the productionAPI.php file and the destination is where the result HTML will be place

Files: `home/bioinvsync/public_html/zohobooksAPI`
 
- Start on [zohobooks](books.zoho.com)

---

## CJ-isms

- cus ab: Custom Antibodies

---

## Notes

- Add 30% on top of the base price in Virovek
- You can see where each class and ID is getting its styles from (You get the name of the file) by adding the `?meetanshioff` parameter to the end of the page URL.
- You can see where each part is from a page by adding `templatehints=magento`
