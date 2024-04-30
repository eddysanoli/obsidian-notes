# Shopify Viability
2022-11-24

Description: Notes on how viable is to replace shopify with Magento. CJ gave me a bullet point list of things that should be accomplished, and checked for each one.
Tags: #bosterbio

------

## Notes

1. Search--fully customizable SQL or priority  
	- Not fully customizable. You can query the database however you want with the "ShopifyQL" language, but you cannot modify the already existing table: [Orders dataset](https://shopify.dev/api/shopifyql/datasets/orders-dataset) and [products dataset](https://shopify.dev/api/shopifyql/datasets/products-dataset). You can sort of bypass this by either running a database externally or using [Metafields](https://help.shopify.com/es/manual/metafields), a sort of "key value" store attached to a resource that can be accessed either by the liquid templates or the API. For example, you could create a Metafield "favorite_color" attached to the shop resource. This Metafield will be accesible in all templates using 
	```
	{{ shop.metafields.NAMESPACE.favorite_colro}}
	```
	  This is the only other way to store additional info in the shopify database, so its best if you run your own database. You may want to run your own database anyways, since you'll probably want to store authentication credentials for the shop who installed your app.
1. Dynamic modules for managing publications  
	- Has ["advanced publishing"](https://help.shopify.com/en/manual/online-store/blogs/publishing-blogs) features which includes the ability to create custom templates for different types of posts, setting a publishing date for posts and inviting customers to subscribe to the blog for updates. Aside from that, the blog is also maneageble via the API, allowing you to do [CRUD](https://shopify.dev/api/admin-rest/2022-10/resources/blog) operations with posts.
1. Basic product page stuff like image management, attributes, options  
	- Images can be managed either when creating templates, when using the WYSIWYG editor or by connecting them to Metafields. [Source](https://help.shopify.com/en/manual/shopify-admin/productivity-tools/file-uploads). You only need to to access the "Files" page in the shopify admin page.
	- You can use "options" to do something similar to product attributes, however, this is limited to 3 options (lets say a product has a color, a size and a texture).  Each option can have different values (for example, the color option can have a red, blue, black and white value). The limit comes with the amount of variations that can be registered (white, large, fuzzy sock). A total of 100 variations is possible.
	- For actual attributes there are extensions/packages, or you can develop your own attribute system using the API. [Source](https://www.shopping-cart-migration.com/carts-reviews/shopify/didnt-know-shopify-product-attributes#:~:text=What%20are%20Shopify%20attributes%3F,to%20search%20the%20entire%20store.)
1. Dev custom app  
	- Yes. It has a custom API to develop new features using a combination of their own proprietary tools (liquid, shopifyQL) and React and GraphQL
1. Can products be managed with attributes, like in Magento.  
	 1. Try to add one field called immunogen  
		 - Needs a paid app or to be developed manually, which I would need to basically research how to do. Will work on this.
	 1. Can liquid even handle JSON encode and decode??  
		 - Need to add the app "Metafields Guru". With this module, you can access JSON data like a hash map. If not, the other solution is to create a custom component for your liquid component, which can also be done. [Source](https://iliashaddad.medium.com/how-to-use-json-data-in-shopify-liquid-code-4c9d63075fc3) 
1. Can you query DB and render data (JSON related rendering)  
	- Yes. You can query the internal database or an external database and render it however you want through the API and the creation of a custom component. If you want to use already existing data (not custom data or anything similar), you can also fetch data from the database and render it on liquid through the use of resources
1. Generate feeds in custom fashion (sitemap, product feed for google merchant)  
	- You can, but only with apps or with a custom solution.
1. PDF generation using product info  
	- Can use existing apps or create a custom solution using Hydrogen or other similar solution. [Source](https://www.brihaspatitech.com/blog/product-page-pdf-app-shopify/)
2. Webhook/API to 3rd party app. Post/Get into liquid (get stuff via HTTP request in liquid)  
	- Can create custom filters with Metafields to filter the results fetched from the database. If you want to do it directly from liquid, you can use a "private app proxy" that serves as a proxy for the real app that you want to call.
	- Can simply add javascript and use either AJAX or fetch to send data to an external 3rd party app. Can also do get requests. Or... you can just use the Hydrogen framework (based on react) to build more custom solutions.
3. Using different template (liquid) for each product line, based on one attribute (for e.g. attribute "template")
	- Attributes are not supported by default. Sot its probably only possible through a custom solution.
