Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2011BE1DAA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2019 16:05:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9FF0E8626F;
	Wed, 23 Oct 2019 14:05:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R2vtdIeqOTM0; Wed, 23 Oct 2019 14:05:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D33768629C;
	Wed, 23 Oct 2019 14:05:28 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 233291BF20D
 for <intel-wired-lan@osuosl.org>; Wed, 23 Oct 2019 14:05:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0EE1A877E9
 for <intel-wired-lan@osuosl.org>; Wed, 23 Oct 2019 14:05:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ib8bm4cDS3dj for <intel-wired-lan@osuosl.org>;
 Wed, 23 Oct 2019 14:05:26 +0000 (UTC)
X-Greylist: delayed 00:15:16 by SQLgrey-1.7.6
Received: from smtpgwcipde.elektrobit.com
 (smtpgwcipde.automotive.elektrobit.com [213.95.163.141])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C41CD87762
 for <intel-wired-lan@osuosl.org>; Wed, 23 Oct 2019 14:05:25 +0000 (UTC)
Received: from denue6es003.localdomain (denue6es003.automotive.elektrobit.com
 [213.95.163.136])
 by smtpgwcipde.elektrobit.com  with ESMTP id x9NDo5QX008330-x9NDo5QZ008330
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=OK)
 for <intel-wired-lan@osuosl.org>; Wed, 23 Oct 2019 15:50:05 +0200
Received: from denue6es003.securemail.local (localhost [127.0.0.1])
 by denue6es003.localdomain (Postfix) with SMTP id 184E12D482
 for <intel-wired-lan@osuosl.org>; Wed, 23 Oct 2019 15:50:05 +0200 (CEST)
Received: from denue6es010.ebgroup.elektrobit.com
 (denue6es010.ebgroup.elektrobit.com [10.243.160.100])
 by denue6es003.localdomain (Postfix) with ESMTPS
 for <intel-wired-lan@osuosl.org>; Wed, 23 Oct 2019 15:50:04 +0200 (CEST)
Received: from denue6es011.ebgroup.elektrobit.com (10.243.160.101) by
 denue6es010.ebgroup.elektrobit.com (10.243.160.100) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Wed, 23 Oct 2019 15:50:02 +0200
Received: from denue6es011.ebgroup.elektrobit.com
 ([fe80::b57c:3e51:8716:d126]) by denue6es011.ebgroup.elektrobit.com
 ([fe80::b57c:3e51:8716:d126%6]) with mapi id 15.01.1779.002; Wed, 23 Oct 2019
 15:50:02 +0200
From: <Joerg.Hunsche@elektrobit.com>
To: <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan][i40e][PLP reording frame]
Thread-Index: AdWJfpMDtGXFAHHqR3SKMDShiovmtQ==
Date: Wed, 23 Oct 2019 13:50:02 +0000
Message-ID: <e16b63bb-72d5-4f8c-b066-00f8611392ae@denue6es010.ebgroup.elektrobit.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.5.137.27]
MIME-Version: 1.0
Subject: [Intel-wired-lan] [i40e][PLP reording frame]
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: extern.Adam.Prochownik@elektrobit.com
Content-Type: multipart/mixed; boundary="===============6853603916503622659=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6853603916503622659==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_e16b63bb72d54f8cb06600f8611392aedenue6es010ebgroupelekt_"

--_000_e16b63bb72d54f8cb06600f8611392aedenue6es010ebgroupelekt_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,
we use INTEL X710-DA2 with i40e-2.10.19.30.
Configured socket flags SOCK_RAW and socket option PACKET_QDISC_BYPASS to b=
ypass queuing, sending single-threaded.

When sending PLP-Ethernet-frames we observe a problem, that after ~2h a PLP=
-Ethernet-frame is send about 250frames later than it should be.
Our assumption is, that somehow more than one TX-queue is used, what we hav=
e to avoid.

Is there any configuration of the driver possible configuring a single Tx-q=
ueue?
Is there any means to get the driver to a state that only a single Tx-queue=
 is used?

Thank you for your support.
J=F6rg Hunsche

EB Driving the Future of Software
Wolfgang-Paul Str. 4, 89081 Ulm
Phone: +49913177017653
Joerg.Hunsche@elektrobit.com<mailto:Joerg.Hunsche@elektrobit.com>
http://automotive.elektrobit.com<http://automotive.elektrobit.com/>

Elektrobit Automotive GmbH, Am Wolfsmantel 46, 91058 Erlangen, Germany
Managing Directors Alexander Kocher, Gregor Zink
Register Court F=FCrth HRB 4886


--_000_e16b63bb72d54f8cb06600f8611392aedenue6es010ebgroupelekt_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">we use </span><span lang=3D"EN-=
US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">INT=
EL X710-DA2 with i40e-2.10.19.30.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Configured socket flags SOCK_RAW and s=
ocket option PACKET_QDISC_BYPASS to bypass queuing, sending single-threaded=
.<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">When sending PLP-Ethernet-frames we ob=
serve a problem, that after ~2h a PLP-Ethernet-frame is send about 250frame=
s later than it should be.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Our assumption is, that somehow more t=
han one TX-queue is used, what we have to avoid.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Is there any configuration of the driv=
er possible configuring a single Tx-queue?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Is there any means to get the driver t=
o a state that only a single Tx-queue is used?</span><span lang=3D"EN-US"><=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you for your support.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">J=F6rg Hunsche<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:8.0pt;fon=
t-family:&quot;Arial&quot;,sans-serif;color:#00B050;mso-fareast-language:DE=
">EB</span></b><b><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-family=
:&quot;Arial&quot;,sans-serif;mso-fareast-language:DE">
</span></b><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-family:&quot;=
Arial&quot;,sans-serif;mso-fareast-language:DE">Driving the Future of Softw=
are<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;mso-fareast-language:DE">Wolfgang-Paul Str. 4, 89081 Ul=
m<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;mso-fareast-language:DE">Phone: &#43;49913177017653<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"mailto:Joerg.Hunsche@elektrobit.com"><spa=
n style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-serif;color:b=
lue;mso-fareast-language:DE">Joerg.Hunsche@elektrobit.com</span></a><span s=
tyle=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#00B=
050;mso-fareast-language:DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"http://automotive.elektrobit.com/"><span =
style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blu=
e;mso-fareast-language:DE">http://automotive.elektrobit.com</span></a><span=
 style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#0=
0B050;mso-fareast-language:DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#00B050;mso-fareast-language:DE"><o:p>&nbsp;</o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;mso-fareast-language:DE">Elektrobit Automotive GmbH, Am=
 Wolfsmantel 46, 91058 Erlangen, Germany<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-f=
amily:&quot;Arial&quot;,sans-serif;mso-fareast-language:DE">Managing Direct=
ors Alexander Kocher, Gregor Zink<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;mso-fareast-language:DE">Register Court F=FCrth HRB 488=
6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_e16b63bb72d54f8cb06600f8611392aedenue6es010ebgroupelekt_--

--===============6853603916503622659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6853603916503622659==--
