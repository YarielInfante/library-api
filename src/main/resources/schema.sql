CREATE DATABASE library;

USE library;


CREATE TABLE BOOK (
  ID        INT PRIMARY KEY AUTO_INCREMENT,
  AUTHOR    VARCHAR(100) NOT NULL,
  TITLE     VARCHAR(255) NOT NULL,
  PAGES     INT          NOT NULL,
  COVER_URL VARCHAR(255)
);

CREATE TABLE PAGE (
  ID      INT PRIMARY KEY AUTO_INCREMENT,
  BOOK_ID INT               NOT NULL,
  NUMBER  INT               NOT NULL,
  CONTENT TEXT charset utf8 NOT NULL,
  FOREIGN KEY (BOOK_ID) references BOOK (ID)
);


INSERT INTO BOOK (ID, AUTHOR, TITLE, PAGES, COVER_URL)
VALUES (1, 'Oracle', 'Java ee 6 tutorial', 10, '');


INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (1, 1, 'This chapter introduces you to Java EE enterprise application development. Here you will review development basics, learn about the Java EE architecture and APIs, become acquainted with important terms and concepts, and find out how to approach Java EE application programming, assembly, and deployment.
Developers today increasingly recognize the need for distributed, transactional, and portable applications that leverage the speed, security, and reliability of server-side technology. Enterprise applications provide the business logic for an enterprise. They are centrally managed and often interact with other enterprise software. In the world of information technology, enterprise applications must be designed, built, and produced for less money, with greater speed, and with fewer resources.
With the Java Platform, Enterprise Edition (Java EE), development of Java enterprise applications has never been easier or faster. The aim of the Java EE platform is to provide developers with a powerful set of APIs while shortening development time, reducing application complexity, and improving application performance.
The Java EE platform is developed through the Java Community Process (JCP), which is responsible for all Java technologies. Expert groups, composed of interested parties, have created Java Specification Requests (JSRs) to define the various Java EE technologies. The work of the Java Community under the JCP program helps to ensure Java technology’s standard of stability and cross-platform compatibility.
The Java EE platform uses a simplified programming model. XML deployment descriptors are optional. Instead, a developer can simply enter the information as an annotation directly into a Java source file, and the Java EE server will configure the component at deployment and runtime. These annotations are generally used to embed in a program data that would otherwise be furnished in a deployment descriptor. With annotations, you put the specification information in your code next to the program element affected.
In the Java EE platform, dependency injection can be applied to all resources a component needs, effectively hiding the creation and lookup of resources from application code.
');


INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (1, 2, 'Dependency injection can be used in EJB containers, web containers, and application clients. Dependency injection allows the Java EE container to automatically insert references to other required components or resources, using annotations.
This tutorial uses examples to describe the features available in the Java EE platform for developing enterprise applications. Whether you are a new or experienced Enterprise developer, you should find the examples and accompanying text a valuable and accessible knowledge base for creating your own solutions.
The following topics are addressed here:
■ “Java EE 6 Platform Highlights” on page 38
■ “Java EE Application Model” on page 39
■ “Distributed Multitiered Applications” on page 39
■ “Java EE Containers” on page 47
■ “Web Services Support” on page 49
■ “Java EE Application Assembly and Deployment” on page 50
■ “Packaging Applications” on page 51
■ “Development Roles” on page 52
■ “Java EE 6 APIs” on page 55
■ “Java EE 6 APIs in the Java Platform, Standard Edition 6 and 7” on page 64
■ “GlassFish Server Tools” on page 67
Java EE 6 Platform Highlights
The most important goal of the Java EE 6 platform is to simplify development by providing a common foundation for the various kinds of components in the Java EE platform. Developers benefit from productivity improvements with more annotations and less XML configuration, more Plain Old Java Objects (POJOs), and simplified packaging. The Java EE 6 platform includes the following new features:
Profiles: configurations of the Java EE platform targeted at specific classes of applications. Specifically, the Java EE 6 platform introduces a lightweight Web Profile targeted at next-generation web applications, as well as a Full Profile that contains all Java EE technologies and provides the full power of the Java EE 6 platform for enterprise applications.
New technologies, including the following:
Java API for RESTful Web Services (JAX-RS)
Managed Beans
Contexts and Dependency Injection for the Java EE Platform (JSR 299), informally known as CDI
Dependency Injection for Java (JSR 330) Bean Validation (JSR 303)');


INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (1, 3, 'Java Authentication Service Provider Interface for Containers (JASPIC)
New features for Enterprise JavaBeans (EJB) components (see “Enterprise JavaBeans
Technology” on page 58 for details)
New features for servlets (see “Java Servlet Technology” on page 59 for details)
New features for JavaServer Faces components (see “JavaServer Faces Technology” on page 59 for details)
Java EE Application Model
The Java EE application model begins with the Java programming language and the Java virtual machine. The proven portability, security, and developer productivity they provide forms the basis of the application model. Java EE is designed to support applications that implement enterprise services for customers, employees, suppliers, partners, and others who make demands on or contributions to the enterprise. Such applications are inherently complex, potentially accessing data from a variety of sources and distributing applications to a variety of clients.
To better control and manage these applications, the business functions to support these various users are conducted in the middle tier. The middle tier represents an environment that is closely controlled by an enterprise’s information technology department. The middle tier is typically run on dedicated server hardware and has access to the full services of the enterprise.
The Java EE application model defines an architecture for implementing services as multitier applications that deliver the scalability, accessibility, and manageability needed by enterprise-level applications. This model partitions the work needed to implement a multitier service into the following parts:
The business and presentation logic to be implemented by the developer The standard system services provided by the Java EE platform
The developer can rely on the platform to provide solutions for the hard systems-level problems of developing a multitier service.
Distributed Multitiered Applications
The Java EE platform uses a distributed multitiered application model for enterprise applications. Application logic is divided into components according to function, and the application components that make up a Java EE application are installed on various machines, depending on the tier in the multitiered Java EE environment to which the application');


INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (1, 4, 'Figure 1–1 shows two multitiered Java EE applications divided into the tiers described in the following list. The Java EE application parts shown in Figure 1–1 are presented in “Java EE Components” on page 42.
Client-tier components run on the client machine.
Web-tier components run on the Java EE server.
Business-tier components run on the Java EE server.
Enterprise information system (EIS)-tier software runs on the EIS server.
Although a Java EE application can consist of all tiers shown in Figure 1–1, Java EE multitiered applications are generally considered to be three-tiered applications because they are distributed over three locations: client machines, the Java EE server machine, and the database or legacy machines at the back end. Three-tiered applications that run in this way extend the standard two-tiered client-and-server model by placing a multithreaded application server between the client application and back-end storage.');

INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (1, 5, 'Java EE Components
Java EE applications are made up of components. A Java EE component is a self-contained functional software unit that is assembled into a Java EE application with its related classes and files and that communicates with other components.
The Java EE specification defines the following Java EE components:
Application clients and applets are components that run on the client.
Java Servlet, JavaServer Faces, and JavaServer Pages (JSP) technology components are web components that run on the server.
Enterprise JavaBeans (EJB) components (enterprise beans) are business components that run on the server.
Java EE components are written in the Java programming language and are compiled in the same way as any program in the language. The differences between Java EE components and “standard” Java classes are that Java EE components are assembled into a Java EE application, they are verified to be well formed and in compliance with the Java EE specification, and they are deployed to production, where they are run and managed by the Java EE server.
Java EE Clients
A Java EE client is usually either a web client or an application client.
Web Clients
A web client consists of two parts:
Dynamic web pages containing various types of markup language (HTML, XML, and so on), which are generated by web components running in the web tier
A web browser, which renders the pages received from the server
A web client is sometimes called a thin client. Thin clients usually do not query databases, execute complex business rules, or connect to legacy applications. When you use a thin client, such heavyweight operations are off-loaded to enterprise beans executing on the Java EE server, where they can leverage the security, speed, services, and reliability of Java EE server-side technologies.
Application Clients
An application client runs on a client machine and provides a way for users to handle tasks that require a richer user interface than can be provided by a markup language. An application client typically has a graphical user interface (GUI) created from the Swing or the Abstract Window Toolkit (AWT) API, but a command-line interface is certainly possible.');

INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (1, 6, 'Application clients directly access enterprise beans running in the business tier. However, if application requirements warrant it, an application client can open an HTTP connection to establish communication with a servlet running in the web tier. Application clients written in languages other than Java can interact with Java EE servers, enabling the Java EE platform to interoperate with legacy systems, clients, and non-Java languages.
Applets
A web page received from the web tier can include an embedded applet. Written in the Java programming language, an applet is a small client application that executes in the Java virtual machine installed in the web browser. However, client systems will likely need the Java Plug-in and possibly a security policy file for the applet to successfully execute in the web browser.
Web components are the preferred API for creating a web client program, because no plug-ins or security policy files are needed on the client systems. Also, web components enable cleaner and more modular application design because they provide a way to separate applications programming from web page design. Personnel involved in web page design thus do not need to understand Java programming language syntax to do their jobs.
The JavaBeans Component Architecture
The server and client tiers might also include components based on the JavaBeans component architecture (JavaBeans components) to manage the data flow between the following:
An application client or applet and components running on the Java EE server Server components and a database
JavaBeans components are not considered Java EE components by the Java EE specification.
JavaBeans components have properties and have get and set methods for accessing the properties. JavaBeans components used in this way are typically simple in design and implementation but should conform to the naming and design conventions outlined in the JavaBeans component architecture.
Java EE Server Communications
Figure 1–2 shows the various elements that can make up the client tier. The client communicates with the business tier running on the Java EE server either directly or, as in the case of a client running in a browser, by going through web pages or servlets running in the web tier.');

INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (1, 7, 'Web Components
Java EE web components are either servlets or web pages created using JavaServer Faces technology and/or JSP technology (JSP pages). Servlets are Java programming language classes that dynamically process requests and construct responses. JSP pages are text-based documents that execute as servlets but allow a more natural approach to creating static content. JavaServer Faces technology builds on servlets and JSP technology and provides a user interface component framework for web applications.
Static HTML pages and applets are bundled with web components during application assembly but are not considered web components by the Java EE specification. Server-side utility classes can also be bundled with web components and, like HTML pages, are not considered web components.
As shown in Figure 1–3, the web tier, like the client tier, might include a JavaBeans component to manage the user input and send that input to enterprise beans running in the business tier for processing.');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (1, 8, 'Business Components
Web Tier
Business Tier
Java EE Server
Business code, which is logic that solves or meets the needs of a particular business domain such as banking, retail, or finance, is handled by enterprise beans running in either the business tier or the web tier. Figure 1–4 shows how an enterprise bean receives data from client programs, processes it (if necessary), and sends it to the enterprise information system tier for storage. An enterprise bean also retrieves data from storage, processes it (if necessary), and sends it back to the client program.');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (1, 9, 'Enterprise Information System Tier
Client Tier
Java EE Server
EIS Tier
The enterprise information system tier handles EIS software and includes enterprise infrastructure systems, such as enterprise resource planning (ERP), mainframe transaction processing, database systems, and other legacy information systems. For example, Java EE application components might need access to enterprise information systems for database connectivity.');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (1, 10, 'Java EE Containers
Normally, thin-client multitiered applications are hard to write because they involve many lines of intricate code to handle transaction and state management, multithreading, resource pooling, and other complex low-level details. The component-based and platform-independent Java EE architecture makes Java EE applications easy to write because business logic is organized into reusable components. In addition, the Java EE server provides underlying services in the form of a container for every component type. Because you do not have to develop these services yourself, you are free to concentrate on solving the business problem at hand.
Container Services
Containers are the interface between a component and the low-level platform-specific functionality that supports the component. Before it can be executed, a web, enterprise bean, or application client component must be assembled into a Java EE module and deployed into its container.
The assembly process involves specifying container settings for each component in the Java EE application and for the Java EE application itself. Container settings customize the underlying support provided by the Java EE server, including such services as security, transaction management, Java Naming and Directory Interface (JNDI) API lookups, and remote connectivity. Here are some of the highlights.
The Java EE security model lets you configure a web component or enterprise bean so that system resources are accessed only by authorized users.
The Java EE transaction model lets you specify relationships among methods that make up a single transaction so that all methods in one transaction are treated as a single unit.
JNDI lookup services provide a unified interface to multiple naming and directory services in the enterprise so that application components can access these services.
The Java EE remote connectivity model manages low-level communications between clients and enterprise beans. After an enterprise bean is created, a client invokes methods on it as if it were in the same virtual machine.
Because the Java EE architecture provides configurable services, application components within the same Java EE application can behave differently based on where they are deployed. For example, an enterprise bean can have security settings that allow it a certain level of access to database data in one production environment and another level of database access in another production environment.
The container also manages nonconfigurable services, such as enterprise bean and servlet lifecycles, database connection resource pooling, data persistence, and access to the Java EE platform APIs (see “Java EE 6 APIs” on page 55).');


INSERT INTO BOOK (ID, AUTHOR, TITLE, PAGES, COVER_URL)
VALUES (2, 'LinkedIn', 'DevOps Fundamentals Course Handout', 17, '');


INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (2, 1, 'Would you like to know more?  This handout and bibliography provides definitions of terms used in the course as well as links to the topics, tools and resources we reference.

Index:

Introduction
Chapter 1: DevOps Basics
What Is DevOps?
DevOps Core Values: CAMS
DevOps Core Values: The Three Ways
Your DevOps Playbook
Ten Practices for DevOps Success: 10-6
Ten Practices for DevOps Success: 5-1
DevOps Tools - The Cart Or The Horse?
Chapter 2: DevOps: A Culture Problem
The IT Crowd and the Coming Storm
Use Your Words
Do Unto Others
Throwing Things Over Walls
Kaizen: Continuous Improvement
Chapter 3: The Building Blocks of DevOps
DevOps Building Block: Agile
DevOps Building Block: Lean
ITIL, ITSM, and the SDLC
Chapter 4: Infrastructure Automation
Infrastructure As Code
Golden Image to Foil Ball
Immutable Deployment
Your Infrastructure Toolchain
Chapter 5: Continuous Delivery
Small + Fast = Better
Continuous Integration Practices
The Continuous Delivery Pipeline
The Role Of QA
Your CI Toolchain
Chapter 6: Reliability Engineering
Engineering Doesn''t End With Deployment
Design For Operation - Theory
Design For Operation - Practice
Operate For Design: Metrics and Monitoring
Operate for Design: Logging
Your SRE Toolchain
Chapter 7: Additional DevOps Resources
Unicorns, Horses, and Donkeys, Oh My
Ten Best DevOps Books You Need to Read
Navigating The Series of Tubes
Chapter 8: The Future of DevOps
Cloud to Containers to Serverless
The Rugged Frontier of DevOps: Security
Chapter 9: Conclusion
Next Steps: Am I a DevOp now?
');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (2, 2, 'Chapter 1: DevOps Basics
What Is DevOps?
DevOps - is the practice of operations and development engineers participating together through the entire service lifecycle; from the design and development process all the way to production support. DevOps is also characterized by operations staff making use of many of the same techniques as developers for their systems work. https://theagileadmin.com/what-is-devops/

2015 State of DevOps Report
https://puppet.com/resources/white-paper/2015-state-devops-report

2016 State of DevOps Report
https://puppet.com/resources/white-paper/2016-state-devops-report

DevOps Core Values: CAMS
CAMS - Culture, Automation, Measurement, Sharing
What DevOps Means To Me, by John Willis https://www.chef.io/blog/2010/07/16/what-devops-means-to-me/

DevOps Culture, by John Willis
http://itrevolution.com/devops-culture-part-1/

People over Process over Tools, by Damon Edwards http://dev2ops.org/2010/02/people-over-process-over-tools/

DevOps Core Values: The Three Ways
The Three Ways
1.	Systems Thinking
2.	Amplifying Feedback Loops
3.	A Culture of Continuous Experimentation and Learning

The Three Ways, by Gene Kim
http://itrevolution.com/the-three-ways-principles-underpinning-devops/

');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (2, 3, 'Your DevOps Playbook

5 Key DevOps Methodologies
1.	People over Process over Tools
2.	Continuous Delivery
3.	Lean Management
4.	Visible Ops style Change Control
5.	Infrastructure as Code

People over Process over Tools, by Damon Edwards
http://dev2ops.org/2010/02/people-over-process-over-tools/

Continuous Delivery, by Jez Humble and David Farley https://www.amazon.com/Continuous-Delivery-Deployment-Automation-Addison-Wesley/dp/0321601912

2015 State of DevOps Report
https://puppet.com/resources/white-paper/2015-state-devops-report

2016 State of DevOps Report
https://puppet.com/resources/white-paper/2016-state-devops-report

The Amazing DevOps Transformation Of The HP LaserJet Firmware Team (Gary Gruver), by Gene Kim
http://itrevolution.com/the-amazing-devops-transformation-of-the-hp-laserjet-firmware-team-gary-gruver/

Leading the Transformation, by Gary Gruver and Tommy Mouser
http://itrevolution.com/books/leading-the-transformation/

The Visible Ops Handbook: Implementing ITIL in 4 Practical and Auditable Steps, by Gene Kim, Kevin Behr, and George Spafford
https://www.amazon.com/Visible-Ops-Handbook-Implementing-Practical/dp/0975568612

Ten Practices for DevOps Success: 10-6

10 Practices for DevOps Success
6.	Embedded Teams
7.	Blameless Postmortems
');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (2, 4, '6.	Status Pages
7.	Developers On Call
8.	Incident Command System

Incident Command for IT: What We Can Learn From The Fire Department, by Brent Chapman
https://www.usenix.org/legacy/event/lisa05/tech/chapman.pdf

Keys to SRE, by Ben Treynor
https://www.usenix.org/conference/srecon14/technical-sessions/presentation/keys-sre

Transparent Uptime, by Lenny Rachitsky
http://www.transparentuptime.com/

How Complex Systems Fail, by Dr. Richard Cook
http://web.mit.edu/2.75/resources/random/How%20Complex%20Systems%20Fail.pdf

Blameless Postmortems, by John Allspaw
https://codeascraft.com/2012/05/22/blameless-postmortems/


Ten Practices for DevOps Success: 5-1
10 Practices for DevOps Success
1.	Chaos Monkey
2.	Blue/Green Deployments
3.	Dependency Injection
4.	Andon Cords
5.	The Cloud

Dependency Injection, by Martin Fowler
http://martinfowler.com/articles/injection.html

Chaos Monkey Released Into The Wild, by Cory Bennett and Ariel Tseitlin
http://techblog.netflix.com/2012/07/chaos-monkey-released-into-wild.html

The Andon Cord, by John Willis
http://itrevolution.com/kata/


DevOps Tools - The Cart Or The Horse?

TL;DR: Both
');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (2, 5, '
DevOps Toolchain
https://en.wikipedia.org/wiki/DevOps#DevOps_toolchain

DevOps Borat
https://twitter.com/DEVOPS_BORAT/status/41587168870797312





');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (2, 6, 'Chapter 2: DevOps: A Culture Problem
The IT Crowd and the Coming Storm

The IT Crowd
http://www.imdb.com/title/tt0487831/

Dilbert, by Scott Adams
http://dilbert.com/

BOFH, by Simon Travaglia
http://www.theregister.co.uk/data_centre/bofh/

User Friendly, by J.D. Frazer
http://www.userfriendly.org/

Xkcd, by Randall Munroe
http://xkcd.com/

What Is DevOps, by Damon Edwards
http://dev2ops.org/2010/02/what-is-devops/

10+ Deploys Per Day: Dev and Ops Cooperation at Flickr, by John Allspaw and John Hammond
http://www.slideshare.net/jallspaw/10-deploys-per-day-dev-and-ops-cooperation-at-flickr

Use Your Words

Blameless Postmortems contain:

1.	A description of the incident
2.	A description of the root cause
3.	How the incident was stabilized or fixed.
4.	A timeline of events including all actions taken to resolve the incident
5.	How the incident affected customers
6.	Remediations and corrective actions.

Transparent Uptime means:
1.	Admit Failure

');

INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (2, 7, '1.	Sound Like A Human
2.	Have A Communication Channel
3.	Above All Else, Be Authentic

Blameless Postmortems, by John Allspaw
https://codeascraft.com/2012/05/22/blameless-postmortems/

A Guideline for Postmortem Communication, by Lenny Rachitsky
http://www.transparentuptime.com/2010/03/guideline-for-postmortem-communication.html

Rackspaces Public Status Page
https://status.rackspace.com/

Do Unto Others
Trust Blockers:
●	Lack of Context
●	Conflicting Goals

How To Win Friends and Influence People, by Dale Carnegie
https://en.wikipedia.org/wiki/How_to_Win_Friends_and_Influence_People

How To Say It At Work, by Jack Griffin
https://www.amazon.com/How-Say-Work-Second-Communication/dp/0735204306

The No A**hole Rule, by Robert I. Sutton
https://en.wikipedia.org/wiki/The_No_Asshole_Rule

Getting To Yes, by Robert Fisher and William L. Ury
https://en.wikipedia.org/wiki/Getting_to_Yes

Crucial Conversations, by Kerry patterson, Joseph Grenny, Ron McMillan, and Al Switzler
https://en.wikipedia.org/wiki/Crucial_Conversations:_Tools_for_Talking_When_Stakes_Are_High

Hanlons Razor
https://en.wikipedia.org/wiki/Hanlon%27s_razor

Ringelmann Effect
https://en.wikipedia.org/wiki/Ringelmann_effect

Parkinsons Law
https://en.wikipedia.org/wiki/Parkinson%27s_law

Dunbars Number

');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (2, 8, 'https://en.wikipedia.org/wiki/Dunbar%27s_number

Is Your Team Too Big? Too Small? Whats the Right Number?
http://knowledge.wharton.upenn.edu/article/is-your-team-too-big-too-small-whats-the-right-number-2/

Hubot, a chat bot
https://hubot.github.com/

Web Operations, by John Allspaw and Jesse Robbins
https://www.amazon.com/Web-Operations-Keeping-Data-Time/dp/1449377440

Effective DevOps, by Jennifer Davis and Katherine Daniels
http://shop.oreilly.com/product/0636920039846.do

Throwing Things Over Walls
The Phoenix Project, by Gene Kim, Kevin Behr, George Spafford
https://en.wikipedia.org/wiki/The_Phoenix_Project_(novel)

DevOps Culture, by Martin Fowler
http://martinfowler.com/bliki/DevOpsCulture.html

Shadow IT
https://en.wikipedia.org/wiki/Shadow_IT

Conways Law
https://en.wikipedia.org/wiki/Conway%27s_law

Operations Maturity Model https://pages.chef.io/operations-maturity-model

A Typology of Organisational Cultures, by Ron Westrum
http://www.ncbi.nlm.nih.gov/pmc/articles/PMC1765804/pdf/v013p0ii22.pdf

Kaizen: Continuous Improvement

Kaizen - change for the better

Kaizens Guiding Principles
●	Good processes bring good results
●	Go see for yourself to grasp the current situation (gemba)

');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (2, 9, 'Chapter 3: The Building Blocks of DevOps
DevOps Building Block: Agile
Agile Systems Administration Google Group https://groups.google.com/forum/#!forum/agile-system-administration

Agile Infrastructure, by Andrew Clay Shafer
http://www.slideshare.net/littleidea/agile-infrastructure-velocity-09

DevOpsDays Ghent 2007
http://www.devopsdays.org/events/2009-ghent/

Opscamp Austin 2010
https://theagileadmin.com/2010/02/05/opscamp-debrief/

Agile Manifesto
http://www.agilemanifesto.org/
 Agile Principles
http://agilemanifesto.org/principles.html

10th Annual State of Agile Survey https://versionone.com/pdf/VersionOne-10th-Annual-State-of-Agile-Report.pdf

A DevOps Manifesto, by Ernest Mueller
https://theagileadmin.com/2010/10/15/a-devops-manifesto/

DevOps Building Block: Lean
7 Principles of Lean Software Development
• ELIMINATE WASTE • AMPLIFY LEARNING • DECIDE AS LATE AS POSSIBLE • DELIVER AS FAST AS POSSIBLE • EMPOWER THE TEAM • BUILD INTEGRITY IN • SEE THE WHOLE

The Seven Wastes (Muda) of Lean Software

');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (2, 10, 'Waste #1 - Partially Done Work Waste #2 - Extra Features Waste #3 - Relearning Waste #4 - Handoffs Waste #5 - Delays Waste #6 - Task Switching Waste #7 - Defects

Build-Measure-Learn
• BUILD – MINIMUM VIABLE PRODUCT
• MEASURE – THE OUTCOME AND INTERNAL METRICS
• LEARN – ABOUT YOUR PROBLEM AND YOUR SOLUTION
• REPEAT – GO DEEPER WHERE ITS NEEDED

Lean Manufacturing
https://en.wikipedia.org/wiki/Lean_manufacturing

Lean Software Development: An Agile Toolkit, by Mary and Tom Poppendieck
https://www.amazon.com/Lean-Software-Development-Agile-Toolkit/dp/0321150783

Lean Startup, by Eric Ries
https://en.wikipedia.org/wiki/Lean_startup

Value Stream Mapping
https://en.wikipedia.org/wiki/Value_stream_mapping

DevOps Culture, by John Willis
http://itrevolution.com/devops-culture-part-1/

ITIL, ITSM, and the SDLC
ITSM
https://en.wikipedia.org/wiki/IT_service_management

Opscamp Austin 2010
http://www.johnmwillis.com/opscamp/opscamp-austin-roundup/

ITIL
https://en.wikipedia.org/wiki/ITIL

The Visible Ops Handbook: Implementing ITIL in 4 Practical and Auditable Steps, by Gene Kim, Kevin Behr, and George Spafford
https://www.amazon.com/Visible-Ops-Handbook-Implementing-Practical/dp/0975568612

');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (2, 11, 'Chapter 4: Infrastructure Automation
Infrastructure As Code
Infrastructures.org
http://www.infrastructures.org/

Architectures for open and scalable clouds, by Randy Bias
http://www.slideshare.net/randybias/architectures-for-open-and-scalable-clouds

Infrastructure as Code, by Martin Fowler
http://martinfowler.com/bliki/InfrastructureAsCode.html

Golden Image to Foil Ball

Provisioning is the process of making a server ready for operation, including hardware, OS, system services, network connectivity.

Deployment is the process of automatically deploying and upgrading applications on a server.

Orchestration is the act of performing coordinated operations across multiple systems.

Configuration management is an overarching term dealing with change control of system configuration after initial provision, but is often also applied to maintaining and upgrading application and application dependencies.

Imperative - also known as “procedural,” this is an approach where commands desired to produce a state are defined and executed.

Declarative - also known as “functional,” this is an approach where you define a desired state and the tool converges the existing system on the model.

Idempotent - the ability to execute the CM procedure repeatedly and end up in the same state each time.

Self service - is the ability for an end user to kick off one of these processes without having to go through other people.

Server Provisioning
https://en.wikipedia.org/wiki/Provisioning#Server_provisioning

');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (2, 12, 'https://azure.microsoft.com/en-us/documentation/templates/

Hashicorp Terraform
https://www.terraform.io/

Ubuntu Juju
http://www.ubuntu.com/cloud/juju

Chef
https://www.chef.io/

Puppet
https://puppet.com/

Ansible
https://www.ansible.com/

Saltstack
https://saltstack.com/community/

Cfengine
https://cfengine.com/

Rubocop
http://batsov.com/rubocop/

Foodcritic
http://www.foodcritic.io/

Chefspec
https://docs.chef.io/chefspec.html

kitchenCI
http://kitchen.ci/

Ohai
https://docs.chef.io/ohai.html

Etcd
https://coreos.com/etcd/docs/latest/

');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (2, 13, 'Chapter 5: Continuous Delivery
Small + Fast = Better
Continuous Delivery has the following benefits:
1.	Time to market goes down
2.	Quality increases not decreases
3.	Limits your Work In Progress
4.	Shortens lead times for changes
5.	Improves Mean Time To Recover

Continuous Delivery, by Jez Humble and David Farley https://www.amazon.com/Continuous-Delivery-Deployment-Automation-Addison-Wesley/dp/0321601912

Deming''s 14 Key Points
https://www.deming.org/theman/theories/fourteenpoints

Continuous Integration Practices
To successfully perform Continuous Integration:
1.	Builds should pass the coffee test (< 5 minutes)
2.	Commit really small bits
3.	Dont leave the build broken
4.	Use a trunk based development flow
5.	Don''t allow flaky tests, fix them!
6.	The build should return a status, a log, and an artifact

The Continuous Delivery Pipeline
To successfully perform Continuous Delivery:
1.	Only build artifacts once
2.	Artifacts should be immutable
3.	Deployment should go to a copy of production before going into production
4.	Stop deploys if it a previous step fails
5.	Deployments should be idempotent


');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (2, 14, 'The Role Of QA
Types of Testing:
●	Unit Testing
●	Code Hygiene
●	Integration Testing
●	TDD / BDD /ATDD
●	Infrastructure Testing
●	Performance Testing
●	Security Testing

The Difference Between TDD, BDD, and ATDD
http://www.assertselenium.com/atdd/difference-between-tdd-bdd-atdd/
Your CI Toolchain
Version Control

Git
https://git-scm.com/

Subversion
https://subversion.apache.org/

Github
https://github.com/

Bitbucket
https://bitbucket.org/

Perforce
https://www.perforce.com/

Continuous Integration

Jenkins
https://jenkins.io/

GoCD
https://www.go.cd/

Bamboo
https://www.atlassian.com/software/bamboo

TeamCity
https://www.jetbrains.com/teamcity/

');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (2, 15, '
Travis CI
https://travis-ci.org/

Circle CI
https://circleci.com/

Build

Make
https://www.gnu.org/software/make/

Rake
https://github.com/ruby/rake

Maven
https://maven.apache.org/

Gulp
http://gulpjs.com/

Packer
https://www.packer.io/

Fpm
https://github.com/jordansissel/fpm/wiki

Test

JUnit
http://junit.org/junit4/

Golint
https://github.com/golang/lint

Go fmt
https://golang.org/cmd/gofmt/

Rubocop
http://batsov.com/rubocop/

Findbugs
http://findbugs.sourceforge.net/

Robot Framework
http://robotframework.org/

');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (2, 16, 'Protractor
http://www.protractortest.org/#/

Cucumber
https://cucumber.io/

Selenium
http://www.seleniumhq.org/

Sauce Labs
https://saucelabs.com/

KitchenCI
http://kitchen.ci/

Apachebench
https://httpd.apache.org/docs/2.4/programs/ab.html

JMeter
http://jmeter.apache.org/

Gauntlt
http://gauntlt.org/

Mittn
https://github.com/F-Secure/mittn

Artifact Repository

Artifactory
https://www.jfrog.com/artifactory/

Nexus
http://www.sonatype.org/nexus/

Bintray
https://bintray.com/

Dockerhub
https://hub.docker.com/

Amazon S3
https://aws.amazon.com/s3/


Deployment

');
INSERT INTO PAGE (BOOK_ID, NUMBER, CONTENT) VALUES (2, 17, 'Rundeck
http://rundeck.org/

Urbancode
https://developer.ibm.com/urbancode/products/urbancode-deploy/

Thoughtworks
https://www.thoughtworks.com/continuous-delivery

Deployinator
https://github.com/etsy/deployinator

Tool Discovery Trick: Google one of these names “vs” and youll get autosuggestions of that tool versus other tools in its space other people are asking about!



');