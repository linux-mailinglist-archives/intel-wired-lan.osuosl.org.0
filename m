Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D013C75CB79
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jul 2023 17:21:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7513461388;
	Fri, 21 Jul 2023 15:21:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7513461388
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689952875;
	bh=KdJGhGLtmq7y9mzwf+sXBnxH/oneuEn3Oz7+SRK+1Zo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=dCAD8+AkFiXC7UBYUGuOsW/Bw3fkjEmELnpru53qIczhrzsWzJz6dA4KriaBbBs4N
	 w6qOOAFHgmNs+7frbcfYeLqhD/V0pBc7Mdw5JqjUUxNwKH0bq4MLmt1RtAZJjxd86W
	 L4ydic0/Ec6m9wuprbKhV64iLG9pdnorT52Q1PWB4jg6ejLcZCJ0ByF9ndBYC8D3eW
	 eL9iiF8hXnWtfOiiQXCNYCfPhF7O5A1Us/iBxHSFBnAafJaeo+ATV8Gq6T3TqXEAob
	 Y/R2W4FRYM4cp68YX419d8x7goi0IGmmS5cVy+gZnf0uLH3SaKrcNFH+/o2POGZzmK
	 Jsme//v4K8zpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qkudp-CMI5dT; Fri, 21 Jul 2023 15:21:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CF1861321;
	Fri, 21 Jul 2023 15:21:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CF1861321
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D2BF01BF34B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 00:13:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A4F8741E5F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 00:13:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4F8741E5F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wngJi3rPr1_z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jul 2023 00:13:28 +0000 (UTC)
X-Greylist: delayed 337 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 21 Jul 2023 00:13:28 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D1D341E5D
Received: from smtp.portwell.com (smtp.portwell.com [38.88.18.152])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D1D341E5D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 00:13:28 +0000 (UTC)
Received: from APTEXCH01.APT.local by smtp.portwell.com (MDaemon PRO v13.5.1)
 with ESMTP id md50002405076.msg
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 17:01:05 -0700
X-Spam-Processed: smtp.portwell.com, Thu, 20 Jul 2023 17:01:05 -0700
 (not processed: spam filter heuristic analysis disabled)
X-Return-Path: easonl@portwell.com
X-Envelope-From: easonl@portwell.com
X-MDaemon-Deliver-To: intel-wired-lan@lists.osuosl.org
Received: from APTEXCH01.APT.local (192.168.0.243) by APTEXCH01.APT.local
 (192.168.0.243) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 20 Jul
 2023 17:07:27 -0700
Received: from APTEXCH01.APT.local ([::1]) by APTEXCH01.APT.local ([::1]) with
 mapi id 15.00.1497.012; Thu, 20 Jul 2023 17:07:27 -0700
From: "Eason  Lin (3383)" <easonl@portwell.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: Ubuntu Kernel 5.4 to support Intel I225
Thread-Index: Adm7ZthKb82qg0E7QY6QvI52QapUqQ==
Date: Fri, 21 Jul 2023 00:07:26 +0000
Message-ID: <484b485adfa8430bb1436479d915bb81@APTEXCH01.APT.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.96.126]
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 21 Jul 2023 15:21:09 +0000
Subject: [Intel-wired-lan] Ubuntu Kernel 5.4 to support Intel I225
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
Cc: "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>
Content-Type: multipart/mixed; boundary="===============8031499576399790266=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8031499576399790266==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_484b485adfa8430bb1436479d915bb81APTEXCH01APTlocal_"

--_000_484b485adfa8430bb1436479d915bb81APTEXCH01APTlocal_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Intel Ethernet Driver team,
Hope this note finds you well. This is Eason, a Technical Project Manager f=
rom American Portwell, and here is our website in case you want to refer. h=
ttps://portwell.com/

We know starting from Kernel 5.8 Intel i225 can be supported. However, is i=
t possible that you can make Kernel 5.4 to support i225 as well? We have su=
ch request from certain customers, so would like to see any possibility.

Are you able to consider it? If yes, of course we can discuss about term an=
d condition, plus any fee incurred. Thank you so much and any of your respo=
nse will be appreciated!


Best regards,
Eason


--_000_484b485adfa8430bb1436479d915bb81APTEXCH01APTlocal_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:PMingLiU;
	panose-1:2 1 6 1 0 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@PMingLiU";
	panose-1:2 1 6 1 0 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi Intel Ethernet Driver team,<o:p></o:p></p>
<p class=3D"MsoNormal">Hope this note finds you well. This is Eason, a Tech=
nical Project Manager from American Portwell, and here is our website in ca=
se you want to refer.
<a href=3D"https://portwell.com/">https://portwell.com/</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We know starting from <u>Kernel 5.8</u> Intel i225 c=
an be supported. However, is it possible that you can make
<u>Kernel 5.4</u> to support i225 as well? We have such request from certai=
n customers, so would like to see any possibility.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Are you able to consider it? If yes, of course we ca=
n discuss about term and condition, plus any fee incurred. Thank you so muc=
h and any of your response will be appreciated!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"mso-ligatures:none"><o:p>&nbsp;</o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ligatures:none">Best regards,<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ligatures:none">Eason<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_484b485adfa8430bb1436479d915bb81APTEXCH01APTlocal_--


--===============8031499576399790266==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8031499576399790266==--

