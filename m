Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC75E616645
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Nov 2022 16:34:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1ABF740425;
	Wed,  2 Nov 2022 15:34:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1ABF740425
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667403283;
	bh=QkDabb54Odnk7yVIAMWwu91gdB8m9YueNtrq29mL0uo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oewGrJSx7ogzZ/Wrs2MO70ZPx4Vy0z4TNbeKVGCY/N6Yljv03TR1NMsgjMAKVQBz7
	 73/W/48N+yqn57nlmzwArfUkRLe6P1n6z0VWOklL5zKeVJpHVGpP43gcAfoDCj8mqe
	 kSWqc1wKRRMOJuuKUMUnkyY/eWCP2OKRhVCLjQj4mTQrRlzXkYm6XUdJKeZK1vZ/uC
	 2WkmhA+e1AEEf4MPRrAXF2j7m1XKU6Nr8RuK49WBe1lPKqU/umgObOipsJaR1AYGB/
	 bgE0GEwgCxfoA2x9NnjQiiw+oHA+PBgwB77P0P0W9dfmlzwiMr/6Pi3gjfr1iomx4o
	 gxGnFa68DdqvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S8H-xjZqGL5e; Wed,  2 Nov 2022 15:34:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E8AC40352;
	Wed,  2 Nov 2022 15:34:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E8AC40352
X-Original-To: Intel-wired-lan@osuosl.org
Delivered-To: Intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD1FE1BF5F8
 for <Intel-wired-lan@osuosl.org>; Wed,  2 Nov 2022 15:34:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C313C40352
 for <Intel-wired-lan@osuosl.org>; Wed,  2 Nov 2022 15:34:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C313C40352
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oIm2uXOAFwyL for <Intel-wired-lan@osuosl.org>;
 Wed,  2 Nov 2022 15:34:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23AC04027C
Received: from mx0b-002bf101.pphosted.com (mx0b-002bf101.pphosted.com
 [148.163.154.236])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 23AC04027C
 for <Intel-wired-lan@osuosl.org>; Wed,  2 Nov 2022 15:34:33 +0000 (UTC)
Received: from pps.filterd (m0123025.ppops.net [127.0.0.1])
 by mx0b-002bf101.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 2A2FNKAn004028
 for <Intel-wired-lan@osuosl.org>; Wed, 2 Nov 2022 11:34:32 -0400
Received: from useiedge1902.curtisswright.com ([67.23.50.86])
 by mx0b-002bf101.pphosted.com (PPS) with ESMTPS id 3kgw9smkyr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <Intel-wired-lan@osuosl.org>; Wed, 02 Nov 2022 11:34:32 -0400
Received: from USEIMAIL1901.ATL.CW.LOCAL (10.100.42.77) by
 useiedge1902.curtisswright.com (10.102.200.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.9; Wed, 2 Nov 2022 11:34:31 -0400
Received: from CDNIMAIL1902.ATL.CW.LOCAL (10.240.42.84) by
 USEIMAIL1901.ATL.CW.LOCAL (10.100.42.77) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.9; Wed, 2 Nov 2022 11:34:31 -0400
Received: from CDNIMAIL1901.ATL.CW.LOCAL (10.240.42.83) by
 CDNIMAIL1902.ATL.CW.LOCAL (10.240.42.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.9; Wed, 2 Nov 2022 11:34:27 -0400
Received: from CDNIMAIL1901.ATL.CW.LOCAL ([fe80::bd93:4911:e89b:cd83]) by
 CDNIMAIL1901.ATL.CW.LOCAL ([fe80::bd93:4911:e89b:cd83%7]) with mapi id
 15.02.1118.009; Wed, 2 Nov 2022 11:34:27 -0400
From: "Rogers, Martin" <Martin.Rogers@curtisswright.com>
To: "Intel-wired-lan@osuosl.org" <Intel-wired-lan@osuosl.org>
Thread-Topic: unsubscribe
Thread-Index: Adju0JX21RedzIvkRPO3hOxvE7APew==
Date: Wed, 2 Nov 2022 15:34:27 +0000
Message-ID: <25ba00c1a6b2427483ab79977826ae99@curtisswright.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_a5df92d3-bc41-4011-84ae-24af45e15272_Enabled=true;
 MSIP_Label_a5df92d3-bc41-4011-84ae-24af45e15272_SetDate=2022-11-02T15:34:18Z; 
 MSIP_Label_a5df92d3-bc41-4011-84ae-24af45e15272_Method=Standard;
 MSIP_Label_a5df92d3-bc41-4011-84ae-24af45e15272_Name=a5df92d3-bc41-4011-84ae-24af45e15272;
 MSIP_Label_a5df92d3-bc41-4011-84ae-24af45e15272_SiteId=079132a0-3864-4413-a77e-c26f1fb47e37;
 MSIP_Label_a5df92d3-bc41-4011-84ae-24af45e15272_ActionId=f2d3fd75-9ce8-45c3-b121-ac78b5a55aa5;
 MSIP_Label_a5df92d3-bc41-4011-84ae-24af45e15272_ContentBits=0
x-originating-ip: [10.240.42.61]
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: q2cxzxR744sgj-E2-F6B4LGnGM2u3KrV
X-Proofpoint-GUID: q2cxzxR744sgj-E2-F6B4LGnGM2u3KrV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-02_12,2022-11-02_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1011
 priorityscore=1501 phishscore=0 mlxscore=0 malwarescore=0 bulkscore=0
 impostorscore=0 spamscore=0 mlxlogscore=270 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2211020099
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=curtisswright.com; h=from : to :
 subject : date : message-id : content-type : mime-version; s=pps042021;
 bh=VzN3G32aWKwqlVGaLV7bQPB4a7CdQ8pfZizYya6bwNg=;
 b=JsCIU0sZeU7uE7RRh64Od3UIlm0qYTfC8cDB0HfnBH19VakagUhfkCCSCY+S9x/e/g2E
 aaFv3py5BJyJnx1lsfPlkfbobhgVjmWkV8YU8k1RgIrErQm9U6/0E7URvkGrtaX353Jb
 v+LfnmmXvjEc7K1KANqr4DOzyzN2wWSlE+AxOdpPaY7EkXcGiSjFa202LD8z5Vxr67WE
 UonMXlzQgxbWDX2jy1m24pV4+20jjuGu/APvdZXQDKDTqMiYdxddgf+G/rLKsDAMrxh5
 NosmTy2qfVZ2cADkJ77ixG6k226YrPv0qLgeMTvMBO3j59BL+2kZjc3ZgNFQ+ck1gAUd QA== 
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=curtisswright.com
 header.i=@curtisswright.com header.a=rsa-sha256 header.s=pps042021
 header.b=JsCIU0sZ
Subject: [Intel-wired-lan] unsubscribe
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
Content-Type: multipart/mixed; boundary="===============6272933098152797845=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6272933098152797845==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_25ba00c1a6b2427483ab79977826ae99curtisswrightcom_"

--_000_25ba00c1a6b2427483ab79977826ae99curtisswrightcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Unsubscribe

----------------------------------------------------------------------
This e-mail and any files transmitted with it are proprietary and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have reason to believe that you have received this e-mail in error, =
please notify the sender and destroy this e-mail and any attached files. Pl=
ease note that any views or opinions presented in this e-mail are solely th=
ose of the author and do not necessarily represent those of the Curtiss-Wri=
ght Corporation or any of its subsidiaries. Documents attached hereto may c=
ontain technology subject to government export regulations. Recipient is so=
lely responsible for ensuring that any re-export, transfer or disclosure of=
 this information is in accordance with applicable government export regula=
tions. The recipient should check this e-mail and any attachments for the p=
resence of viruses. Curtiss-Wright Corporation and its subsidiaries accept =
no liability for any damage caused by any virus transmitted by this e-mail.
=20
For information about how we process personal data and monitor communicatio=
ns, please visit  https://www.curtisswright.com/privacy-notice/default.aspx

--_000_25ba00c1a6b2427483ab79977826ae99curtisswrightcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal">Unsubscribe<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>

<HR>This e-mail and any files transmitted with it are proprietary and inten=
ded solely for the use of the individual or entity to whom they are address=
ed. If you have reason to believe that you have received this e-mail in err=
or, please notify the sender and destroy this e-mail and any attached files=
. Please note that any views or opinions presented in this e-mail are solel=
y those of the author and do not necessarily represent those of the Curtiss=
-Wright Corporation or any of its subsidiaries. Documents attached hereto m=
ay contain technology subject to government export regulations. Recipient i=
s solely responsible for ensuring that any re-export, transfer or disclosur=
e of this information is in accordance with applicable government export re=
gulations. The recipient should check this e-mail and any attachments for t=
he presence of viruses. Curtiss-Wright Corporation and its subsidiaries acc=
ept no liability for any damage caused by any virus transmitted by this e-m=
ail.<BR>
 <BR>
For information about how we process personal data and monitor communicatio=
ns, please visit  https://www.curtisswright.com/privacy-notice/default.aspx=
<BR>
</body>
</html>

--_000_25ba00c1a6b2427483ab79977826ae99curtisswrightcom_--

--===============6272933098152797845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6272933098152797845==--
