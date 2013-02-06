This is the new and improved www.irchelp.org.

PLEASE be aware that this is not a normal open source project, but rather the files that comprise a website being
ran as a public service. 
No right to redistribute these files is granted, but you may use them for the purpose of making improvements and
submitting them back to us. See COPYING for more information.

Otherwise, please do not create mirrors of the site, thanks.


Directory Structure
-------------------

 * documents/ - contains the files that will be processed as input by PieCrust
 * otherfiles/ - contains other files, arranged into the same directory structure as the rest of the site (not used yet)

Build Process
-------------

The build process should eventually go something like this.

 1. a _target folder is created.
 2. the documents folder is processed with PieCrust and the output placed in
    the root of _target
 3. the otherfiles folder is copied to the root of _target, skipping any
    files that already exist from the build process
 4. Sanity checks are optionally performed (has the size dropped more than it should,
    etc)
 5. Entire contents of target are rsynced to a staging folder on the server.
 6. The live folder is renamed to old, and the staging folder is renamed so
    that it becomes the live folder.

Getting PieCrust
----------------
*Note: This is only necessary to run the development server, or to compile the site.*
*There is no need to download PieCrust just to make changes to content.*

Run this command from the root of your wio git repository.

	hg clone https://bitbucket.org/ludovicchabant/piecrust _piecrust

Running the Development Server
------------------------------

After downloading PieCrust as described above, run the serve_devsite.sh script
from the root of your wio git repository:

	./serve_devsite.sh

This will run a testing server that you can connect to via http://localhost:8080,
which will update automatically as files are changed in the documents
folder. The testing server remains attached to the terminal and can be ended
with ctrl+c when done testing.

This differs slightly from the production setup, in that the production
setup requires the site to be built (see below)  before it's uploaded to the server.

Building the Site
-----------------

	./bake_site.sh

Publishing the Site to Staging
------------------------------

 * To be announced. :)
 
Publishing the Site to Production (Live Site)
---------------------------------------------

 * Not implemented yet.

