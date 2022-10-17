Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FF460108F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Oct 2022 15:53:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3433541748;
	Mon, 17 Oct 2022 13:53:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3433541748
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666014826;
	bh=CfRGYEpIlkLKOtztXBEbpJrp9TKvGOsvl4qVbQYCuGo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=6Bh1MZfqEJBrpa0tYMw+YV93hqeWNkaOF/4xyd0QZ2leBd6rtm9BDM3w2HWmFl9v9
	 L1ZLhXwCoNCa4L+2ypqZQSIgmZWIroNQpws2fGU/ak81Ws1KCaRHMrl0fPLTxL6kkX
	 MmpEd0oYiFHam6zTvMvv0pcB5J5EZy0FxWmkx5R8JEU7n5uWLcZAmkvBi8/fiIVnnU
	 V9HaP6uIMkFyM0b5FT4C3N7/ZkTYZwHWguAhAMRVJLpldsJ2TF9ZbdA32IY4WHJqgb
	 Nra9v+saKZUIqRUr7JzbMVZhQ3Y/8N4hUA5P5OhUQzmPT7aZdPwCkhR2JG/jA2iGVr
	 Lqth8SR1IAd2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RS_GvUcRyFUA; Mon, 17 Oct 2022 13:53:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4B084097E;
	Mon, 17 Oct 2022 13:53:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4B084097E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D0A681BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 01:48:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A65F260B9F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 01:48:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A65F260B9F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ipKFHC7qLzNM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Oct 2022 01:48:18 +0000 (UTC)
X-Greylist: delayed 00:06:12 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC14E60B0D
Received: from b2bmember.gigabyte.com.tw (b2bmember.gigabyte.com.tw
 [218.32.81.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CC14E60B0D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 01:48:17 +0000 (UTC)
Received: from ppsagent01.gigabyte.intra (unknown [10.1.1.207])
 by b2bmember.gigabyte.com.tw (Postfix) with ESMTP id 02AC91066454;
 Mon, 17 Oct 2022 09:41:58 +0800 (CST)
Received: from pps.filterd (ppsagent01.gigabyte.intra [127.0.0.1])
 by ppsagent01.gigabyte.intra (8.17.1.5/8.17.1.5) with ESMTP id 29GNCJYX025757; 
 Mon, 17 Oct 2022 09:40:41 +0800
Received: from tpcas3.gigabyte.intra ([10.1.1.200])
 by ppsagent01.gigabyte.intra (PPS) with ESMTP id 3k7c4ngsy4-1;
 Mon, 17 Oct 2022 09:40:41 +0800
Received: from tpcas3.gigabyte.intra (10.1.1.200) by tpcas3.gigabyte.intra
 (10.1.1.200) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.27; Mon, 17 Oct
 2022 09:42:01 +0800
Received: from tpcas3.gigabyte.intra ([::1]) by tpcas3.gigabyte.intra ([::1])
 with mapi id 15.01.2308.027; Mon, 17 Oct 2022 09:42:01 +0800
From: =?big5?B?amVmZnJleS50c2VuZyAotL+lsCk=?= <jeffrey.tseng@gigabyte.com>
To: "michael@walle.cc" <michael@walle.cc>
Thread-Topic: Re: [PATCH v2] PCI: Fix Intel i210 by avoiding overlapping of
 BARs
Thread-Index: AdjhyZFqEYCJBIgDQlOPX+ALm35+7g==
Date: Mon, 17 Oct 2022 01:42:01 +0000
Message-ID: <54ee7db66ef04f11ac74dbb5832a8c12@gigabyte.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.8.7.40]
MIME-Version: 1.0
X-Proofpoint-GUID: hUKLSzXApO3kOImiaEoTBVi1liC5z4RA
X-Proofpoint-ORIG-GUID: hUKLSzXApO3kOImiaEoTBVi1liC5z4RA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-10-17_01,2022-10-14_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 impostorscore=0
 spamscore=0 priorityscore=1501 bulkscore=0 adultscore=0 malwarescore=0
 phishscore=0 suspectscore=0 mlxscore=0 lowpriorityscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2209130000
 definitions=main-2210170007
X-Mailman-Approved-At: Mon, 17 Oct 2022 13:53:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gigabyte.com; h=from : to : cc :
 subject : date : message-id : content-type : mime-version; s=20211118;
 bh=YAK3YklHpf4y+SvuKfsf7fq685zG1K+FpCcWPrQRlUk=;
 b=h06dbX8K/b31pGRNJlksiC96ydlOXCSfiZQClmE+PcB8eE9nEYfaI7X2dZkH+G7jyQgk
 Sq0BuBFIWsmuAPG043g2r7Ajn4q+0binud7umXmP0eJFS6rOBZqS+gcTSp/5ORpBIaxl
 7hQX8OnmLDcSsieEzpVe5noNKj+UlUiEtougtWWFKlqGTq9PXj+4TZ+32ytb4zA9I3gP
 Gn0eQlGN/Wdhozo37XZrrkBlm2KpfFtYDbbtIRZLJ1MgrNoIl8cXIe8FDUBDHiMEZ7HF
 NcnfD/1q88g4N9u1EvZq4mKxiMUDZsOjqJK9xuMaA5gnMEsy0Ap4eWj9pVCDOO9RYc1w gw== 
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gigabyte.com header.i=@gigabyte.com
 header.a=rsa-sha256 header.s=20211118 header.b=h06dbX8K
Subject: Re: [Intel-wired-lan] [PATCH v2] PCI: Fix Intel i210 by avoiding
 overlapping of BARs
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>
Content-Type: multipart/mixed; boundary="===============6285890514293770035=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6285890514293770035==
Content-Language: zh-TW
Content-Type: multipart/alternative;
	boundary="_000_54ee7db66ef04f11ac74dbb5832a8c12gigabytecom_"

--_000_54ee7db66ef04f11ac74dbb5832a8c12gigabytecom_
Content-Type: text/plain; charset="big5"
Content-Transfer-Encoding: base64

SGkNCkhlcmUgaXMgbXkgcXVlc3Rpb24uDQpNeSBwbGF0Zm9ybSA6IGlteDhtbQ0KRXRoZXJuZXQg
Q29udHJvbCA6IEludGVsIEkyMTANCkxpbnV4IHZlcnNpb24gNS4xMC43Mi1sdHMtNS4xMC55K2cy
MmVjN2U4Y2JhY2UgKG9lLXVzZXJAb2UtaG9zdCkgKGFhcmNoNjQtcG9reS1saW51eC1nY2MgKEdD
QykgMTAuMi4wLCBHTlUgbGQgKEdOVSBCaW51dGlscykgMi4gVVRDIDIwMTENCg0KSSBmb2xsb3cg
dGhpcyAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcGNpLzIwMjAxMjMwMTg1MzE3LjMw
OTE1LTEtbWljaGFlbEB3YWxsZS5jYy8NCnRvIGFkZCB0aGUgcGF0Y2ggaW4gbXkgcGxhdGZvcm0u
DQoNClRoZSBpc3N1ZSBhbmQgcHJvYmxlbSBpcyBzdGlsbCB0aGVyZS4gQW55b25lIGNhbiBnaXZl
IG1lIGEgaGFuZCA/DQoNCnRoYW5rIHlvdQ0KDQpqZWZmcmV5DQoNCkJlc3QgUmVnYXJkcywNCkpl
ZmZyZXkgVHNlbmcgtL+lsA0Kp965xazsp94gR0lHQUJZVEUNCrdzpV+lq7dzqbGwz6Vft3O49KRU
rHEyMTO4uTExvNMNCrlxuNw6IDAyLTg5Nzg3NjY4IGV4dC4gNTU2DQpNb2JpbGUgOiAwOTUyNDMy
MzMyDQpsaW5lIDogMDk1MjQzMjMzMg0KRS1tYWlsOiBqZWZmcmV5LnRzZW5nQGdpZ2FieXRlLmNv
bTxtYWlsdG86amVmZnJleS50c2VuZ0BnaWdhYnl0ZS5jb20+DQoNCg0K

--_000_54ee7db66ef04f11ac74dbb5832a8c12gigabytecom_
Content-Type: text/html; charset="big5"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dbig5">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:=B7s=B2=D3=A9=FA=C5=E9;
	panose-1:2 2 5 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@=B7s=B2=D3=A9=FA=C5=E9";
	panose-1:2 1 6 1 0 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-TW" link=3D"#0563C1" vlink=3D"#954F72" style=3D"text-justi=
fy-trim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Here is my question.<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My platform : imx8mm<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Ethernet Control : Intel I210<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Linux version 5.10.72-lts-5.10.=
y&#43;g22ec7e8cbace (oe-user@oe-host) (aarch64-poky-linux-gcc (GCC) 10.2.0,=
 GNU ld (GNU Binutils) 2. UTC 2011<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I follow this&nbsp; https://lor=
e.kernel.org/linux-pci/20201230185317.30915-1-michael@walle.cc/<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">to add the patch in my platform=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The issue and problem is still =
there. Anyone can give me a hand ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">thank you<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">jeffrey<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Best Re=
gards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Jeffrey=
 Tseng </span>
<span style=3D"font-family:&quot;=B7s=B2=D3=A9=FA=C5=E9&quot;,serif;color:#=
1F497D">=B4=BF=A5=B0</span><span lang=3D"EN-US" style=3D"color:#1F497D"><o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;=B7s=B2=D3=A9=FA=C5=
=E9&quot;,serif;color:#1F497D">=A7=DE=B9=C5=AC=EC=A7=DE</span><span lang=3D=
"EN-US" style=3D"color:#1F497D"> GIGABYTE<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;=B7s=B2=D3=A9=FA=C5=
=E9&quot;,serif;color:#1F497D">=B7s=A5_=A5=AB=B7s=A9=B1=B0=CF=A5_=B7s=B8=F4=
=A4T=ACq</span><span lang=3D"EN-US" style=3D"color:#1F497D">213</span><span=
 style=3D"font-family:&quot;=B7s=B2=D3=A9=FA=C5=E9&quot;,serif;color:#1F497=
D">=B8=B9</span><span lang=3D"EN-US" style=3D"color:#1F497D">11</span><span=
 style=3D"font-family:&quot;=B7s=B2=D3=A9=FA=C5=E9&quot;,serif;color:#1F497=
D">=BC=D3</span><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;=B7s=B2=D3=A9=FA=C5=
=E9&quot;,serif;color:#1F497D">=B9q=B8=DC</span><span lang=3D"EN-US" style=
=3D"color:#1F497D">: 02-89787668 ext. 556<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Mobile =
: 0952432332<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">line : =
0952432332<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">E-mail:=
 </span><u><span lang=3D"EN-US" style=3D"color:#0563C1"><a href=3D"mailto:j=
effrey.tseng@gigabyte.com">jeffrey.tseng@gigabyte.com</a></span></u><span l=
ang=3D"EN-US" style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_54ee7db66ef04f11ac74dbb5832a8c12gigabytecom_--

--===============6285890514293770035==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6285890514293770035==--
