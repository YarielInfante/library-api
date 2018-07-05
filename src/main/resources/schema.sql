CREATE DATABASE library;

USE library;


CREATE TABLE BOOK (
  ID        INT PRIMARY KEY AUTO_INCREMENT,
  AUTHOR    VARCHAR(100)        NOT NULL,
  TITLE     VARCHAR(255)        NOT NULL,
  PAGES     INT                 NOT NULL,
  COVER_URL VARCHAR(255)
);

CREATE TABLE PAGE (
  ID      INT PRIMARY KEY AUTO_INCREMENT,
  BOOK_ID INT  NOT NULL,
  NUMBER  INT  NOT NULL,
  CONTENT TEXT NOT NULL,
  FOREIGN KEY (BOOK_ID) references BOOK (ID)
);


INSERT INTO BOOK (ID, AUTHOR, TITLE, PAGES, COVER_URL)
VALUES (2, 'LinkedIn', 'DevOps Fundamentals Course Handout', 57, '');


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