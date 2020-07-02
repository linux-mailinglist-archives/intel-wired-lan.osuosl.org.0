Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0A7211FFA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jul 2020 11:33:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EA3EC8AD35;
	Thu,  2 Jul 2020 09:33:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YzAiBg+A3XXS; Thu,  2 Jul 2020 09:33:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 536F38B226;
	Thu,  2 Jul 2020 09:33:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 87A041BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 09:33:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8046D8AD35
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 09:33:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TSdm32yfGKjA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2020 09:33:32 +0000 (UTC)
X-Greylist: delayed 00:15:31 by SQLgrey-1.7.6
Received: from baidu.com (mx24.baidu.com [111.206.215.185])
 by whitealder.osuosl.org (Postfix) with ESMTP id 80FE98AA5A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 09:33:32 +0000 (UTC)
Received: from BC-Mail-Ex31.internal.baidu.com (unknown [172.31.51.25])
 by Forcepoint Email with ESMTPS id 3FF1C43E5E54EA49FDFD;
 Thu,  2 Jul 2020 17:17:56 +0800 (CST)
Received: from BJHW-Mail-Ex13.internal.baidu.com (10.127.64.36) by
 BC-Mail-Ex31.internal.baidu.com (172.31.51.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1979.3; Thu, 2 Jul 2020 17:17:55 +0800
Received: from BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) by
 BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) with mapi id
 15.01.1979.003; Thu, 2 Jul 2020 17:17:49 +0800
From: "Li,Rongqing" <lirongqing@baidu.com>
To: intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, Netdev <netdev@vger.kernel.org>
Thread-Topic: [bug ?] i40e_rx_buffer_flip should not be called for redirected
 xsk copy mode
Thread-Index: AdZQR0EbXNQd8xyJRvWOWMhzMsvatQ==
Date: Thu, 2 Jul 2020 09:17:49 +0000
Message-ID: <2863b548da1d4c369bbd9d6ceb337a24@baidu.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.197.240]
x-baidu-bdmsfe-datecheck: 1_BC-Mail-Ex31_2020-07-02 17:17:56:033
x-baidu-bdmsfe-viruscheck: BC-Mail-Ex31_GRAY_Inside_WithoutAtta_2020-07-02
 17:17:56:033
MIME-Version: 1.0
Subject: [Intel-wired-lan] [bug ?] i40e_rx_buffer_flip should not be called
 for redirected xsk copy mode
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
Content-Type: multipart/mixed; boundary="===============7704065982542879960=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============7704065982542879960==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_2863b548da1d4c369bbd9d6ceb337a24baiducom_"

--_000_2863b548da1d4c369bbd9d6ceb337a24baiducom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi:

i40e_rx_buffer_flip to xsk copy mode can lead to data corruption, like the =
following flow:

1. first skb is not for xsk, and forwarded to another device or socket queu=
e
2. seconds skb is for xsk, copy data to xsk memory, and page of skb->data i=
s released
3. rx_buff is reusable since only first skb is in it, but i40e_rx_buffer_fl=
ip will make that page_offset is set to first skb data
4. then reuse rx buffer, first skb which still is living will be corrupted.

-Li RongQing


--_000_2863b548da1d4c369bbd9d6ceb337a24baiducom_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	font-size:10.5pt;
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
	font-size:10.0pt;
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
<body lang=3D"ZH-CN" link=3D"#0563C1" vlink=3D"#954F72" style=3D"text-justi=
fy-trim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">i40e_rx_buffer_flip to xsk copy=
 mode can lead to data corruption, like the following flow:<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; <o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">1. first skb is not for xsk, an=
d forwarded to another device or socket queue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">2. seconds skb is for xsk, copy=
 data to xsk memory, and page of skb-&gt;data is released<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">3. rx_buff is reusable since on=
ly first skb is in it, but i40e_rx_buffer_flip will make that page_offset i=
s set to first skb data&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">4. then reuse rx buffer, first =
skb which still is living will be corrupted.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">-Li RongQing<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_2863b548da1d4c369bbd9d6ceb337a24baiducom_--

--===============7704065982542879960==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7704065982542879960==--
