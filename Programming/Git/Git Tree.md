
Print the current commit history in the form of a tree

```bash

git log --graph

```

Output:

```bash

* commit 38ab84554eeedbb859b288a852762d97028128a2 (HEAD)
| Author: Eduardo Santizo <eSantizo@guest-tek.com>
| Date:   Tue Mar 8 17:14:27 2022 -0700
| 
|     LDAP Integration
|     
|     Added the ability for the user to use its LDAP credentials to login onto
|     the site while also extracting their data (role, name, email, etc). However
|     Django doesnt register the user in its internal database, so the login just 
|     allows the user to access, while the site recognizes the user as "anonymous"
| 
* commit cc3f7f98663ee59bd333eb59ef70c28b60d0f3f7
| Author: Eduardo Santizo <eSantizo@guest-tek.com>
| Date:   Mon Mar 7 14:16:32 2022 -0700
| 
|     New Menu Items and Improved Menu Screen
|     
|     Added the sidebar menu items requested by Eustache. Some menu options
|     did not have counterparts before, so those ones lead to an empty link.
|     
|     Also gave the links to the different types of login options, the appearance
|     of a button.
| 
* commit 73ca1ecb495c6dc6e5df45859281e3454981cdc4
| Author: Eduardo Santizo <eSantizo@guest-tek.com>
| Date:   Mon Mar 7 10:21:40 2022 -0700
| 
|     Added a Simple Login Method
|     
|     Removed the old Microsoft login and added a simple login system based on
|     previous contributions to this system made by Eddy Cabrera. Decided to
|     add a login and registration routes, and reused his templates for both
|     functions (with a few modifications).

```

