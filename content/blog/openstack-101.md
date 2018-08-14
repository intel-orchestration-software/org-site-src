+++
author = "Sean Mooney"
categories = ["Technology Overview"]
date = "2018-06-18T18:51:40Z"
description = "Intro To OpenStack"
featured = ""
featuredalt = ""
featuredpath = ""
linktitle = "Intro To OpenStack"
title = "OpenStack 101"
type = "post"
tags = ["beginner","openstack"]
+++


What is OpenStack?
==================	

For those of you who have not heard of "OpenStack" or the <a href="http://openstack.org">OpenStack Foundation</a>,
you might be wondering what it is. Wikipedia defines it as an a free and open-source
software platform for cloud computing, mostly deployed as an
Infrastructure-as-a-Service (IaaS).

While that is true, it is incomplete and unless you know what infrastructure 
as a service is, it's not very helpful. Granted, the wiki page does actually
explain what OpenStack is and what OpenStack does but I'll have a go anyway.
So OpenStack as software, is a collection of composable interrelated projects
primarily written in python, for creating private and public cloud environments.

OpenStack provides an abstraction layer that allows a collection of servers 
to be managed as pools of compute, storage and networking services.
Compute, storage and networking are the 3 pillars of IT service that
make up a standard IT infrastructure. As OpenStack provides a software interface
to manage these 3 pillars of IT infrastructure it is an IaaS offering.


The projects that makes up OpenStack IaaS offering are what used to be known as
the OpenStack core projects.

Core Projects:
--------------
<ul>
<li> Nova: Compute Project</li>
<li> Neutron: Networking Project</li>
<li> keystone: Authentication Project</li>
<li> Glance: Images-as-a-Service Project</li>
<li> Cinder: Block Storage Project</li>
<li> Swift: Object Storage Project</li>
</ul>

Non-Core projects?:
-------------------
But if there is a Core then are there more non-core projects?
For OpenStack that is a resounding YES!!! In fact, since the
creation of the <a href="https://github.com/openstack/governance/blob/master/resolutions/20141202-project-structure-reform-spec.rst">Big Tent</a> and arguably before, the compendium of OpenStack
and OpenStack-related projects has been expanding beyond IaaS to Orchestration,
Platform-as-a-Service, advanced services such as container orchestration and support
services such as workflow engines, Databases-as-a-service, Backup-as-a-Service and
many other micro services that can be composed to build your own OpenStack-powered application.

A listing of official project teams can be found in the OpenStack <a href="https://governance.openstack.org/tc/reference/projects/">governance</a> repo
and many other affilated projects can be found by exploring the OpenStack namespace on <a href="https://github.com/openstack">GitHub</a>.


 
How mature are all test projects?
---------------------------------
With all these core and non-core projects to choose from, do I need them all?
How mature are they really? Are they all ready to use with my production application?

Well, the answer to the first question is simple: OpenStack is a composition of micro services that
work together to provide a cloud of your own design. If you don't need object storage then you
can deploy without Swift. Already have Ceph deployed? No problem, you can have Cinder, Nova and Glance
using Ceph as your storage backend. Do you want DNS-as-a-Service but not orchestration?
You can deploy Designate but leave Heat out of your cloud deployment.

The second question of how mature these projects are is a little harder to answer.
The OpenStack Core project have matured over many releases to be stable and production
ready, the advanced services are at a differing level of maturity but luckily the
OpenStack foundation has been developing a tool to help you make up your own mind.

The OpenStack <a href="https://www.openstack.org/software/project-navigator">Project Navigator</a> is a great place to start and if you still
have questions then reaching out to the community is as easy as jumping on <a href="https://wiki.openstack.org/wiki/IRC">IRC</a> or
sending an mail to the <a href="mailto:openstack@lists.openstack.org">OpenStack mailing list</a>.

Future Reading
-------------- 
<ul>
<li><a href="https://www.openstack.org">OpenStack homepage</a></li>
<li><a href="https://www.openstack.org/software">OpenStack software overview</a></li>
<li><a href="https://www.youtube.com/watch?v=hWWSaBOMTNo">OpenStack architecture 10 000 feet</a></li>
<li><a href="https://www.youtube.com/playlist?list=PLG2eb1MxWbfEqFEbziT9geOOXwiw9zZOm">Introduction to Neutron</a></li>
<li><a href="https://www.youtube.com/user/OpenStackFoundation">OpenStack Foundation YouTube</a></li>
</ul>
