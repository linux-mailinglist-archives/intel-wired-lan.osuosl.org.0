Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01021E98EA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2019 10:11:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A545985ABE;
	Wed, 30 Oct 2019 09:11:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yY0IzNtFI5FV; Wed, 30 Oct 2019 09:11:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 58F5685B04;
	Wed, 30 Oct 2019 09:11:12 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B8671BF31E
 for <intel-wired-lan@osuosl.org>; Wed, 30 Oct 2019 09:11:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 666F287C0C
 for <intel-wired-lan@osuosl.org>; Wed, 30 Oct 2019 09:11:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6yxjJA9ibFPW for <intel-wired-lan@osuosl.org>;
 Wed, 30 Oct 2019 09:11:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtpgwcipde.elektrobit.com
 (smtpgwcipde.automotive.elektrobit.com [213.95.163.141])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3AC5487BDE
 for <intel-wired-lan@osuosl.org>; Wed, 30 Oct 2019 09:11:07 +0000 (UTC)
Received: from denue6es002.localdomain (denue6es002.automotive.elektrobit.com
 [213.95.163.135])
 by smtpgwcipde.elektrobit.com  with ESMTP id x9U9B4mJ017752-x9U9B4mL017752
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=OK)
 for <intel-wired-lan@osuosl.org>; Wed, 30 Oct 2019 10:11:04 +0100
Received: from denue6es002.securemail.local (localhost [127.0.0.1])
 by denue6es002.localdomain (Postfix) with SMTP id C41D819295
 for <intel-wired-lan@osuosl.org>; Wed, 30 Oct 2019 10:11:04 +0100 (CET)
Received: from denue6es011.ebgroup.elektrobit.com
 (denue6es011.ebgroup.elektrobit.com [10.243.160.101])
 by denue6es002.localdomain (Postfix) with ESMTPS
 for <intel-wired-lan@osuosl.org>; Wed, 30 Oct 2019 10:11:04 +0100 (CET)
Received: from denue6es011.ebgroup.elektrobit.com (10.243.160.101) by
 denue6es011.ebgroup.elektrobit.com (10.243.160.101) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Wed, 30 Oct 2019 10:11:01 +0100
Received: from denue6es011.ebgroup.elektrobit.com
 ([fe80::b57c:3e51:8716:d126]) by denue6es011.ebgroup.elektrobit.com
 ([fe80::b57c:3e51:8716:d126%6]) with mapi id 15.01.1779.002; Wed, 30 Oct 2019
 10:11:01 +0100
From: <Joerg.Hunsche@elektrobit.com>
To: <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [i40e][PLP reording frame]
Thread-Index: AdWJfpMDtGXFAHHqR3SKMDShiovmtQBVtn2QAAg9UGABAt8s8A==
Date: Wed, 30 Oct 2019 09:11:01 +0000
Message-ID: <dcb26c31-da68-47a8-b0ee-9b716c31fc0b@denue6es011.ebgroup.elektrobit.com>
References: <e16b63bb-72d5-4f8c-b066-00f8611392ae@denue6es010.ebgroup.elektrobit.com>
 <8921D02A9DA62B4B803224F42216E1C14F28FC85@ORSMSX106.amr.corp.intel.com>
 <60b2847e4ed1468ea1fcc9d6f62adf71@elektrobit.com>
In-Reply-To: <60b2847e4ed1468ea1fcc9d6f62adf71@elektrobit.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.5.137.27]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [i40e][PLP reording frame]
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
Content-Type: multipart/mixed; boundary="===============0257063516527105221=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============0257063516527105221==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_dcb26c31da6847a8b0ee9b716c31fc0bdenue6es011ebgroupelekt_"

--_000_dcb26c31da6847a8b0ee9b716c31fc0bdenue6es011ebgroupelekt_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Good Morning Don,
in the meantime we figured out that compiling the driver with
#define I40E_DEFAULT_QUEUES_PER_VF      1
Did the job.

Thank you for your fast response anyhow.

The issue is solved.
Regards J=F6rg.

From: Buchholz, Donald <donald.buchholz@intel.com<mailto:donald.buchholz@in=
tel.com>>
Sent: Friday, October 25, 2019 3:51 AM
To: Hunsche, J=F6rg <Joerg.Hunsche@elektrobit.com<mailto:Joerg.Hunsche@elek=
trobit.com>>
Cc: Prochownik, Adam <extern.Adam.Prochownik@elektrobit.com<mailto:extern.A=
dam.Prochownik@elektrobit.com>>
Subject: RE: [Intel-wired-lan] [i40e][PLP reording frame]

Hi J=F6rg,


1.       Please send the full complement of PCI Vendor:Device:Subdevice Ven=
dor:SubdeviceID identifiers (or output from "lspci -nn -v" command).

2.       Please send the output of "ethtool -i  ... " for *both* ports on t=
his NIC?

- Don Buchholz
- SW Applications Engineer
- Intel Corporation - DCG
- Ethernet Customer Services
- (503) 264-2010  [desk]
- (503) 939-0848  [cell]


From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On Behalf=
 Of Joerg.Hunsche@elektrobit.com<mailto:Joerg.Hunsche@elektrobit.com>
Sent: Wednesday, October 23, 2019 6:50 AM
To: intel-wired-lan@osuosl.org<mailto:intel-wired-lan@osuosl.org>
Cc: extern.Adam.Prochownik@elektrobit.com<mailto:extern.Adam.Prochownik@ele=
ktrobit.com>
Subject: [Intel-wired-lan] [i40e][PLP reording frame]

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


--_000_dcb26c31da6847a8b0ee9b716c31fc0bdenue6es011ebgroupelekt_
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
@font-face
	{font-family:"Intel Clear";}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F7D3A;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle25
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:250968174;
	mso-list-type:hybrid;
	mso-list-template-ids:-722729378 67698703 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Good Morn=
ing Don,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">in the meantime we figured out that compiling the driver with<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">#define I40E_DEFAULT_QUEUES_PER=
_VF&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Did the job.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Thank you for your fast response anyhow.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">The issue is solved.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Regards J=F6rg.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Buchholz, Donald &lt;<a href=3D"mailto:donald.buchholz@intel.co=
m">donald.buchholz@intel.com</a>&gt;
<br>
<b>Sent:</b> Friday, October 25, 2019 3:51 AM<br>
<b>To:</b> Hunsche, J=F6rg &lt;<a href=3D"mailto:Joerg.Hunsche@elektrobit.c=
om">Joerg.Hunsche@elektrobit.com</a>&gt;<br>
<b>Cc:</b> Prochownik, Adam &lt;<a href=3D"mailto:extern.Adam.Prochownik@el=
ektrobit.com">extern.Adam.Prochownik@elektrobit.com</a>&gt;<br>
<b>Subject:</b> RE: [Intel-wired-lan] [i40e][PLP reording frame]<o:p></o:p>=
</span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Intel Clear&quot;">Hi J=F6rg,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Intel Clear&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:18.0pt;text-indent:-18.0=
pt;mso-list:l0 level1 lfo2">
<![if !supportLists]><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-fa=
mily:&quot;Intel Clear&quot;"><span style=3D"mso-list:Ignore">1.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span></span><![endif]><span lang=3D"EN-US" style=3D"font-size:10.0=
pt;font-family:&quot;Intel Clear&quot;">Please send the full complement of =
PCI Vendor:Device:Subdevice Vendor:SubdeviceID identifiers (or output from =
&#8220;lspci &#8211;nn &#8211;v&#8221; command).<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:18.0pt;text-indent:-18.0=
pt;mso-list:l0 level1 lfo2">
<![if !supportLists]><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-fa=
mily:&quot;Intel Clear&quot;"><span style=3D"mso-list:Ignore">2.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span></span><![endif]><span lang=3D"EN-US" style=3D"font-size:10.0=
pt;font-family:&quot;Intel Clear&quot;">Please send the output of &#8220;et=
htool &#8211;i &nbsp;&#8230; &#8220; for *<b>both</b>* ports on this NIC?<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Intel Clear&quot;"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Intel Clear&quot;">- Don Buchholz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Intel Clear&quot;">- SW Applications Engineer<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Intel Clear&quot;">- Intel Corporation - DCG<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Intel Clear&quot;">- Ethernet Customer Services<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Intel Clear&quot;">- (503) 264-2010&nbsp; [desk]<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Intel Clear&quot;">- (503) 939-0848&nbsp; [cell]<o:p></o:p></s=
pan></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F7D3A"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F7D3A"><o:p>&n=
bsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><a name=3D"_____replyseparator"></a><b><span lang=3D=
"EN-US">From:</span></b><span lang=3D"EN-US"> Intel-wired-lan [<a href=3D"m=
ailto:intel-wired-lan-bounces@osuosl.org">mailto:intel-wired-lan-bounces@os=
uosl.org</a>]
<b>On Behalf Of </b><a href=3D"mailto:Joerg.Hunsche@elektrobit.com">Joerg.H=
unsche@elektrobit.com</a><br>
<b>Sent:</b> Wednesday, October 23, 2019 6:50 AM<br>
<b>To:</b> <a href=3D"mailto:intel-wired-lan@osuosl.org">intel-wired-lan@os=
uosl.org</a><br>
<b>Cc:</b> <a href=3D"mailto:extern.Adam.Prochownik@elektrobit.com">extern.=
Adam.Prochownik@elektrobit.com</a><br>
<b>Subject:</b> [Intel-wired-lan] [i40e][PLP reording frame]<o:p></o:p></sp=
an></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">we use </span><span lang=3D"EN-=
US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">INT=
EL X710-DA2 with i40e-2.10.19.30.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US" =
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">Configu=
red socket flags SOCK_RAW and socket option PACKET_QDISC_BYPASS to bypass q=
ueuing, sending single-threaded.<o:p></o:p></span></p>
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
t-family:&quot;Arial&quot;,sans-serif;color:#00B050">EB</span></b><b><span =
lang=3D"EN-US" style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-=
serif">
</span></b><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-family:&quot;=
Arial&quot;,sans-serif">Driving the Future of Software<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif">Wolfgang-Paul Str. 4, 89081 Ulm<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif">Phone: &#43;49913177017653<o:p></o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"mailto:Joerg.Hunsche@elektrobit.com"><spa=
n style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-serif;color:b=
lue">Joerg.Hunsche@elektrobit.com</span></a><span style=3D"font-size:8.0pt;=
font-family:&quot;Arial&quot;,sans-serif;color:#00B050"><o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><a href=3D"http://automotive.elektrobit.com/"><span =
style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blu=
e">http://automotive.elektrobit.com</span></a><span style=3D"font-size:8.0p=
t;font-family:&quot;Arial&quot;,sans-serif;color:#00B050"><o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#00B050"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif">Elektrobit Automotive GmbH, Am Wolfsmantel 46, 91058 E=
rlangen, Germany<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-f=
amily:&quot;Arial&quot;,sans-serif">Managing Directors Alexander Kocher, Gr=
egor Zink<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif">Register Court F=FCrth HRB 4886<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_dcb26c31da6847a8b0ee9b716c31fc0bdenue6es011ebgroupelekt_--

--===============0257063516527105221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0257063516527105221==--
