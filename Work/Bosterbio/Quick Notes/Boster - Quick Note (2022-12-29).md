# Weekly Meeting
2022-12-29

Description: Talking points for today's meeting
Tags: #bosterbio

------

## Talking Points

- Evaluating Shopify, some feasibility studies
	- Shopify offers two things: 
		- Either use the built in development experience with a WYSIWYG system and other features 
		- Design a [custom storefront](https://shopify.dev/custom-storefronts) in either the Hydrogen framework (Shopify's proprietary framework) or any other framework of your choice using the storefront API. There are a couple of projects that aim to add a WYSIWYG system to Hydrogen, but for now they are not available for public use. We could also go with a pure react frontend, and add the [react page](https://github.com/react-page/react-page) repo to the project.
- Learning Magento extension dev
	- Jumped [into this](https://www.youtube.com/watch?v=NK2A_brksco&t=2522s). Need to check if this still applies to Magento being used by CJ
	- Setup a hello world thing for next week
- Semantics internal linking app
	- Found a couple of extensions for Magento that already does this:
		- [Automatic Related Products](https://amasty.com/automatic-related-products-for-magento-2.html): $309
		- [Magento 2 Automatic Related Products](https://magefan.com/magento-2-automatic-related-products): $0 if you use its [repo](https://github.com/magefan/module-auto-related-product) 
- Site search overwrite
- A few IT tasks see Asana
	- Change the first image in the ELISA Kit pages: Does that mean the previews shown on the list of products or the images that show up next to the price and all the other info?
	- Update this image to our product page for ELISA: Wouldn't it be easier to just upload one little container (I mean one of the cylinders) to the images, and then build the whole thing dynamically using a bit of CSS? I also need to know which page to target this change to![[StandardDilution-for-Product-Page-1.png]]
	- Update this image to quick ELISA pages: That looks great and all, but does that mean that I need to add the same image to all quick ELISA pages? Is that done through templates?  
	- OEM/Service dev master: This is about the form generator element in the design system right? Where do you edit the files for the design system again?
	- Noindex nofollow filtered category pages: What are category pages? Like the NGS Services Page? Or is it something else? What are pure paginated pages?
 
- New site [redesign](https://www.figma.com/file/UWVSStwnnGqrGRFHiAvdiU/boster-website-redesign?node-id=57%3A384&t=3HfEoKe3mhbRfJYs-0) 
	- Requested access to the file. Cant see it right now
- [Secret project](https://www.loom.com/share/d93d34689c2b46dea5ba7ea4cfe2d98b) 
	- Based off Typeform
	- Is this going to open some sort of modal that will display the different questions? A different screen? Just a component?
		 - Full page modal
	- For the conditionals I was thinking of a tree system or a graph view. That way you could control the flow of the form by connecting different questions with conditionals or if there is just one branch coming out of a node, it can simply determine which questions lead to which sections of the form. Maybe in the same branch or pipe, we could specify what the output of a specific node is (like for example, the question node for "Whats your name" will output the name variable, and said variable will be passed on to the next node where it can be used by it to add it to their text like "Hello (name)")
		- Just state control. Have a global state, that changes how different questions get executed throughout the form
	- Could we use Typescript instead of vanilla Javascript? I think that will help you make it easier and better to edit the form generator in the future.
		 - Maybe
	 - So the Form UI will get generated from the form JSON? Is this to make it easier to import or export forms in a more easily manageable data structure?
		  - Yeah, thats it