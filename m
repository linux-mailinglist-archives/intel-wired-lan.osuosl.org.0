Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 484763D77C9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jul 2021 16:04:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A6DD6072F;
	Tue, 27 Jul 2021 14:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Sab-2et_fQB; Tue, 27 Jul 2021 14:04:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 811E86066C;
	Tue, 27 Jul 2021 14:04:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B2C4C1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 07:38:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AE429400F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 07:38:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=juniper.net header.b="Z25TWRSK";
 dkim=pass (1024-bit key) header.d=juniper.net header.b="XRUjKYbe"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WGQtnAsxwtma for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jul 2021 07:38:50 +0000 (UTC)
X-Greylist: delayed 01:15:43 by SQLgrey-1.8.0
Received: from mx0b-00273201.pphosted.com (mx0b-00273201.pphosted.com
 [67.231.152.164])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 84B1E400CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 07:38:50 +0000 (UTC)
Received: from pps.filterd (m0108162.ppops.net [127.0.0.1])
 by mx0b-00273201.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 16R6FiPN012633; Mon, 26 Jul 2021 23:23:04 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=juniper.net;
 h=from : to : cc :
 subject : date : message-id : content-type : mime-version; s=PPS1017;
 bh=F10GzWMn01aDkN9XqS/naFQiBZRH1W61PIhJJySJ+Us=;
 b=Z25TWRSKxE1TubsrxDRtH/WU4nUrpNvOL5BSeGjkgAfXFQU0onX31qR242VRkDkkY9yE
 zx4jmHl39KrZE2kS23eoTxilzgdHf9kmoB0X0iGhbk7++P+9+rxJdjjCqyTfeH4/yKTF
 FvyIKCfGbPQqpoYFtNT6uF5wdum16kLc4OYjBL8QGNxblp0VlitSoAoKNXE6ARVCpTCY
 GKdbhGlBqW08Ka5XG3fD3HHF606x/QYy27jzX7tZEcBOaOxNEOPazpGopnVdffLm/G+L
 yo5zZxHs1Edtn6JerHWt1IEm3XXNnY8AtMQw0Va/in4BBJyb6KdaoAoN64e6jjBx6emu Wg== 
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2171.outbound.protection.outlook.com [104.47.56.171])
 by mx0b-00273201.pphosted.com with ESMTP id 3a2369gua2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 26 Jul 2021 23:23:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P8NI+uoS7JXTBlRoK/Jcqi7F3M/Cq6JQ2/UZ+6PhMS6CacDyLCPBYEsv4DQY4yuyz8EubAbN3xqJzEi1OreUFCuRhLVqnhju30snZFTO6J2vqq1kSALXjWKG9igaK0NRQ/M/GmqRfutV2srnd7gSfC3XA5CVaytx2mkZS8hCAANgWUQ40SsLrWULU6UUdA0OTYOIMKaLotWbX+pbsr+iM58vWxjKJpTLTz4lT0QVqTeCKxlpUw6e1bykMMa1hSI2jbjLhfHIDFzVbPCchaWRMxsBNLdH1FQ5gNN4pQazopnJDGxORlredXk1Y8d291Wm65lRRAyL33FLjJqMPiC2/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F10GzWMn01aDkN9XqS/naFQiBZRH1W61PIhJJySJ+Us=;
 b=SOhnbNOqdfTRjJkLGemSZ9XPbT9m1ujoGibk+MuP4jA77abDM9clYCJ5UkcsQIYjZoj8x5fRIa9SxicPKXElnKuEOWZC2kekuWN9E/9F7uc7HMOacIVlCxGhSPd9oceoVNTYIGnswkcJHgszjnbCWo2R4kbGJNxZY98gT3f+HICjaGa5nG8IRv/kSmfgcZVLrfYtCzJCIyh6chKQ0Ex8FgNGG/RT/W7lrKbvjGJy+AvwFmhe4IrAA76+b0BXw7zVs+5DXmoubrTC2gYeDur+VubghlQwg85aBQpKuZkGKI7wriF7AzhE+yH/4piHZMx08ciIBGkmCD2zSls9RUXFxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=juniper.net; dmarc=pass action=none header.from=juniper.net;
 dkim=pass header.d=juniper.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=juniper.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F10GzWMn01aDkN9XqS/naFQiBZRH1W61PIhJJySJ+Us=;
 b=XRUjKYbe+SxXmKSLVlfF4xd2ACjQeRt0W/Dx/qEP79c6BLmygOjhLyRSzkB5B5/Kx9z1O8r9n6+NPahIRsVO6nlLg9ZPoGR+elzGckXgvIfhgVyN5dGmHOonkMoQH3RxoToe6cGpeuEAvJK7JIoJf6gk91sgc6P2lu9XnSSVbY0=
Received: from BY3PR05MB8356.namprd05.prod.outlook.com (2603:10b6:a03:3c3::5)
 by BYAPR05MB6392.namprd05.prod.outlook.com (2603:10b6:a03:ed::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.12; Tue, 27 Jul
 2021 06:23:00 +0000
Received: from BY3PR05MB8356.namprd05.prod.outlook.com
 ([fe80::8938:c857:d001:ec4d]) by BY3PR05MB8356.namprd05.prod.outlook.com
 ([fe80::8938:c857:d001:ec4d%5]) with mapi id 15.20.4373.018; Tue, 27 Jul 2021
 06:23:00 +0000
From: Yuvaraj Ranganathan <yranganathan@juniper.net>
To: "e1000-devel@lists.sourceforge.net" <e1000-devel@lists.sourceforge.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: Traffic not passing for VLAN ID >= 32 on the I350 SR-IOV enabled
 NIC 
Thread-Index: AQHXgqzxV++qPwNWaU27fCWwrDJgLg==
Date: Tue, 27 Jul 2021 06:23:00 +0000
Message-ID: <BY3PR05MB835694E97F5EA0D60B0DD2B3CAE99@BY3PR05MB8356.namprd05.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_0633b888-ae0d-4341-a75f-06e04137d755_Enabled=True;
 MSIP_Label_0633b888-ae0d-4341-a75f-06e04137d755_SiteId=bea78b3c-4cdb-4130-854a-1d193232e5f4;
 MSIP_Label_0633b888-ae0d-4341-a75f-06e04137d755_SetDate=2021-07-27T06:02:13.3131859Z;
 MSIP_Label_0633b888-ae0d-4341-a75f-06e04137d755_ContentBits=0;
 MSIP_Label_0633b888-ae0d-4341-a75f-06e04137d755_Method=Standard
authentication-results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=juniper.net;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6f7188ee-3b13-404b-76ed-08d950c6fbc0
x-ms-traffictypediagnostic: BYAPR05MB6392:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR05MB63924E772CD5226EB2BF9AFBCAE99@BYAPR05MB6392.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cuAGHk6dtLOHzjBz/esY4o+OBxNEQ5ddwnCi8drg5Blu5TWmn5BerpZMjVMGTMQBrcRD6eEwmKsVDtUphV4aU7f9K3HqQ30kLUjTzyAtWUgb9L2/shYcdhdGh4nQg51ZSRRgRFcDAsGWNjH3nMXeLlyer57kcdAj2cpustF+glNqrfFWPcFaatCVi8Ws+/EluRFjoZz2YJOuH9u8aPCEz7uyR1jexaQ5VI5FUIv9qp/3JnTQiPXlhxD8QomyrEF1XCWUSsXKLy7q1KGk+037ONa1sBDbdf6lZt/fRVyZ1vvfeA/D8WqXp3y4FdQLVVDo8jz6HUyRCP5+1eYQ1pgUMPQUkXbk+eD2UtbVpuJh7OXzACEcKJ4vDidiRzcoUycXf4Nx6trQhEI0h2Ad/pHe+cURzblowagFxdzFdaEeAmt8QxUmsOX/NA79llf2VfmlJP4K64Wk0I9+kFOCl3kdGOda67IlhzaF+O7FQNx6K3VMo9Nyg0Kdu8Y8w1RLg+/fL33fyFg8hCiM9rSROrMvm8uOdVtbx9AaRh5H83i29fCnOI0kkT2JAHDp7ttQAvugIQEfX68eOLsdfmPPr+vlsm+LlYZjwnLFsmj727WUMErxadC2QVZ2J9ClenyU87bnJP7uCN2ipZdhZudqSIWCapcg3AnOgn2d4vq/VuFXowuRYHm4l4TnoonuCa8hSMZ2Rn3dC2kPzB3/Sc6cnOUcvg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY3PR05MB8356.namprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(316002)(7696005)(33656002)(8676002)(122000001)(186003)(2906002)(86362001)(508600001)(38100700002)(110136005)(6506007)(52536014)(8936002)(9686003)(4326008)(66556008)(71200400001)(66946007)(66446008)(55016002)(9326002)(66476007)(64756008)(107886003)(4744005)(54906003)(26005)(91956017)(5660300002)(4743002)(76116006)(38070700004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?sPRMiJWxr8wLwbou42o1zW+SQV+AkK4tGRORCizL59X6nV4Nr/EkmrMV?=
 =?Windows-1252?Q?e5h4LICQcYK1OfLDbhRQS2H9Y9sXiinXFM/r+DXXC5IK4OQJX4tRxB+C?=
 =?Windows-1252?Q?Qjr2c0Dvg5QNhMwozLmIgXKQ47/djkhywJtV3f8djEvmslfhGdShXttb?=
 =?Windows-1252?Q?U1nxD7nqKBMp548+pvMdErpjPofVsfQTYhmkZ4XPpTw25EVWvRfzIhQR?=
 =?Windows-1252?Q?lRkI6d53+DCyXO4KvFbxFmc22GPTnHlEQbT/2Hfc2Nfqrv5rf6EtMeia?=
 =?Windows-1252?Q?e/d+mJWHhO1NAeGtXppAovzQX+itLJVHCqJSe9RpClJmfUtVtMBdBlM5?=
 =?Windows-1252?Q?8C23ZvBw2tYUWYVhx7IZ6YvWf6ozW1turl6B98jNsmc6z9nYwrFxz2cO?=
 =?Windows-1252?Q?LuHEMVesQS7nrnHYAE4zVekn+Q8m8lgokDja/OLrx+vYp7vNYE8xkoZY?=
 =?Windows-1252?Q?6Rpm7vqcxy0OEVHAzgF9IYBiEskfBH+/6NgZ7sxJRzqGdueBNHIOTqDx?=
 =?Windows-1252?Q?gUGHvmbl1gV85m6iZHe4BzdKTkHD9nMhRO8hZHtAPMk63RhR5Kg0yPvw?=
 =?Windows-1252?Q?s3hYcvs5lieK6/JJ7Vu5mmm922pg23l3nTvxltDdvzDBfOXJhvyDVM/s?=
 =?Windows-1252?Q?ZLNHQxciqyN+mqUQjAVQL0qvz8AOQ4PQG0jZ9tIymXdwG06z9d9S8EYI?=
 =?Windows-1252?Q?RxXBMZr2mTnbQTs+LF1hMMek7qnVeMMAcy3tatHX47Ur496Mso4IBhfQ?=
 =?Windows-1252?Q?2Fhxg+wDupj9d4Uqe7J3pidLYc3nB7xxCokFonYiv7+WEst7SFrVE1yb?=
 =?Windows-1252?Q?86oB6S2Wz8or21x+wlOfYpjENpfXrP67J0ril1gv558xrXilKSe0Yuj/?=
 =?Windows-1252?Q?WxolwVXJT6pEe1TTI51O/pZPRnnIyLfFDUS9U8E4CRaGiSbQ4v8Lsmt9?=
 =?Windows-1252?Q?AHyfWCTop7fBgvEBCElZke+ioAgDkKvQkSvyeLuxr/kCSPbPMTyJWSDU?=
 =?Windows-1252?Q?NG0e1fYsQKmpGL/bE03xuyTSulrX/F0tQbt4g6c+Z3qSHDP+mnEwsW4I?=
 =?Windows-1252?Q?n7H8KwrCShABIAajwy0fZnxmd1Rp7Bdugx15QBv70wAYq4x3lk0PvTBa?=
 =?Windows-1252?Q?AJlfciVVcMA8AbXgacShkxae4VSs0HOTIjaDC+Kxa+fs18Bh5CNPCa63?=
 =?Windows-1252?Q?zpO6CErODUe5q0mofH6ur8rFfhZLCIv48O2gIofT+3PR6vfoVODggV/u?=
 =?Windows-1252?Q?UsVcpaacGQD4l8fKtEPL66pBZE7FEMp3i17HanRAYchFdhebdxoM0MOY?=
 =?Windows-1252?Q?28/+KJ9nA1M0aKBVjWa3v1loWznn8B168sElvi1jV70DOjVPNqBpyRrm?=
 =?Windows-1252?Q?8E1ic9tuGr1Yc4x8G3BGLKCdBCrXCVhdVqg9gyu2NWJXTdMLRnzPhLuX?=
 =?Windows-1252?Q?dOnCf/txA7mJeHVFFvzLBA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: juniper.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY3PR05MB8356.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f7188ee-3b13-404b-76ed-08d950c6fbc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2021 06:23:00.5464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bea78b3c-4cdb-4130-854a-1d193232e5f4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KcGQQuXjkcJoCyPY+kG8oZlXVqkntGHN2QzC3JROgvZvX32qZCmjolsva0xAdovDJ1q3mSB3iSXgAB5Kk7dGsuUwKMVED3OJMDziCgziSIk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR05MB6392
X-Proofpoint-ORIG-GUID: oGBy4y2qJ22b99cK9U6WbtJDITR7UFgd
X-Proofpoint-GUID: oGBy4y2qJ22b99cK9U6WbtJDITR7UFgd
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-07-27_04:2021-07-27,
 2021-07-27 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_spam_notspam policy=outbound_spam
 score=0 mlxlogscore=953
 impostorscore=0 clxscore=1011 priorityscore=1501 adultscore=0 phishscore=0
 suspectscore=0 lowpriorityscore=0 mlxscore=0 spamscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2107270037
X-Mailman-Approved-At: Tue, 27 Jul 2021 14:03:59 +0000
Subject: [Intel-wired-lan] Traffic not passing for VLAN ID >= 32 on the I350
 SR-IOV enabled NIC
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
Cc: Pushp Saurav <psaurav@juniper.net>, "Navare,
 Anup D" <anup.d.navare@intel.com>
Content-Type: multipart/mixed; boundary="===============6632834210584403554=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6632834210584403554==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY3PR05MB835694E97F5EA0D60B0DD2B3CAE99BY3PR05MB8356namp_"

--_000_BY3PR05MB835694E97F5EA0D60B0DD2B3CAE99BY3PR05MB8356namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Team,

With the SR-IOV enabled on I350 NIC which has 4 VF=92s, on configuring VLAN=
 ID from range 1 to 31 on the VM interface, network traffic is fine and no =
issues. When trying to create an interface with VLAN ID >=3D 32 on the VM, =
traffic is not passing to that interface and as per HW specs, VLAN ID=92s f=
rom 1 to 4096 are supported.

VM=92s interface is directly mapped to one of the VF on I350 NIC. I am usin=
g IGB PF driver version 5.7.2(latest).

Could somebody please help!

Thanks in advance,
Yuvaraj.


Juniper Business Use Only

--_000_BY3PR05MB835694E97F5EA0D60B0DD2B3CAE99BY3PR05MB8356namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
	font-size:12.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:12.0pt;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-IN" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi Team,<br>
<br>
With the SR-IOV enabled on I350 NIC which has 4 VF=92s, on configuring VLAN=
 ID from range 1 to 31 on the VM interface, network traffic is fine and no =
issues. When trying to create an interface with VLAN ID &gt;=3D 32 on the V=
M, traffic is not passing to that interface
 and as per HW specs, VLAN ID=92s from 1 to 4096 are supported.<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
VM=92s interface is directly mapped to one of the VF on I350 NIC. I am usin=
g IGB&nbsp;PF driver version
<b>5.7.2(latest).</b><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
Could somebody please help!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thanks in advance,<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yuvaraj.<o:p></o:p>=
</span></p>
</div>
<br>
<p style=3D"font-family:Calibri;font-size:7pt;color:#000000;margin:15pt;" a=
lign=3D"Center">
Juniper Business Use Only<br>
</p>
</body>
</html>

--_000_BY3PR05MB835694E97F5EA0D60B0DD2B3CAE99BY3PR05MB8356namp_--

--===============6632834210584403554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6632834210584403554==--
