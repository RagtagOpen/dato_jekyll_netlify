The demo can be viewed at http://admiring-hawking-ec7d4a.netlify.com/

I setup a simple site, two models Candidate and Homepage. Candidate
has things like name, office, bio. For the demo, the Homepage
just has a CTA, most of it's content comes from the Candidate model.

These are what DatoCMS calls "Single Instance" models, one per
site. It also supports collection of records (Pages, Blog Posts,
Products, etc). It did what you'd expect. I can edit data in DatoCMS
and pull it into the build process.

In a full blown site, we might want to do a Pages collection instead
of an instance per page. It really come to is there consistency across pages.

I liked DatoCMS, it has a nice UI, it's easy to model data, and it has
support for a lot of data types (images, media, maps, etc).

Jekyll is probably to most uninteresting part of the process. It's
solid, well supported, and generates HTML. So do lots of other
options. Ultimately, all that's important is that we have to in-house
skills to do any customization that are needed. Any option is going to
be fine for front-end development, and the rest of the details will be
hidden by the CMS.

The Netlify deploy works fine. We could probably do it for less with
S3/Cloudfront, but we'd to maintain some infrastructure for doing the
builds.
