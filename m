Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06993CAA5E8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 06 Dec 2025 13:03:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DDCF40525;
	Sat,  6 Dec 2025 12:03:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WcsM-Ji2H2Cg; Sat,  6 Dec 2025 12:03:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F138F40537
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765022596;
	bh=+CfugcINzp9feomzJh95fhZpCJzySU9WkEPf/WMHys0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5+uAXXRcOLucdraXwPBIQmKcJx5CvDSDOJXoIZDOmDToWcBPkhMo774PwbqXC34Qq
	 9GT4XiVCYjeyOZvXGeaTh/N8pCPJ7dKVA+W4mLfJekX8s/oysB62NDwtpPg5tLPExo
	 re0r43P3DJxjjuUqGszmjnWtjd/I7O8DeFn055AgmBMXQEx0dIicsHP1WQfDk9lDGM
	 kS0Ih1DF0U7Yz72oIrWcVAMlrb4Um7OVfYG37KlaiJU0sbp2Rg3++ZVFbNx/u0uEam
	 hvaXgWrvhi5FZLFBhrURDFlrsVjEqgyXn0O1UgwEoAEPavcmiK8qWpvWD3zGc0PNhQ
	 zu5prdf5gOemw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F138F40537;
	Sat,  6 Dec 2025 12:03:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B8A46151
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 12:03:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AAC5E40508
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 12:03:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Apq1TSY1fRG for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Dec 2025 12:03:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.66.53;
 helo=duzpr83cu001.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 68D8B404E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68D8B404E8
Received: from DUZPR83CU001.outbound.protection.outlook.com
 (mail-northeuropeazon11012053.outbound.protection.outlook.com [52.101.66.53])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 68D8B404E8
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 12:03:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UmUl2DsqV1mN16pljDldL8VAfR6+xVCagO+TS/YSUaOvT6S521p1gVCnYREJd0ikNpmfWt1NH9IEOvac50MvXBt+zhEojRUmoVeNxDJn5I4gHP8JCAqFRSvLzXgQaRWMfXJJzzj2a7n51I/zQGVMuOitc+3tIAP+mL2lV7gt5jkEDtSgGFk7i0sEASPOsdxTJABgDUE33nGM01NXmh8mrN9qYmbYPZivxI6VbFP31Kz0bvVHMzY6SaQYKKE1epMhABMV+ATf0AAfjOWYcxyuCEvqyJVc4R/6VC1dYcbhVKq5LW658/6zxh7vi+izrv0EY/MgFz/q6eaLTVrcpDBZRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+CfugcINzp9feomzJh95fhZpCJzySU9WkEPf/WMHys0=;
 b=SUSOWvVYTA/4Muai1JjAvR0+JBNGE3oOmFxOap4DI8ZGvIFTQuboXEEvf0Fs71WoHN/xUUtgz7rs/K1gEBmQeUiL9Dpl/eQu5f1OV1OXva7LiFZHJjfjsE6L8sI8VmsRErAruyfsgWnhi3gr0WkAPn+xJ3vPwXddG2BMtSBcOu89EMx2S6swLPe/kHTrbYElHDokrcYZDqW8W8SZ7v3OFNyHr0dtz8AzHyKlwxc4nhrzFxeLQTyo9N8qfX2unJOUerXmmTquklreGIGOrjJcItZ0Xnw6z0XwJXZ1I6CBxMn5XDRu7Vl2Qob7dRwl5qZW6poJbXYUR5Ldgxcc80vFew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by AM0PR10MB9646.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:73e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.13; Sat, 6 Dec
 2025 12:03:09 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9388.012; Sat, 6 Dec 2025
 12:03:08 +0000
From: "Behera, VIVEK" <vivek.behera@siemens.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "\"David
 S. Miller\"" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH] igc: Fix trigger of incorrect irq in igc_xsk_wakeup
 function
Thread-Index: Adxl4xN/bKAnSLoOQiOSWfX7JfGLpgAR2dowAB8a3rA=
Date: Sat, 6 Dec 2025 12:03:08 +0000
Message-ID: <AS1PR10MB53929B574F1D9A8645B6CA938FA4A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <IA3PR11MB8986860C6B817F4130A4E0DBE5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986860C6B817F4130A4E0DBE5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=feb46790-5d5e-41b9-916e-56dde80d5ae3;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-05T12:16:38Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|AM0PR10MB9646:EE_
x-ms-office365-filtering-correlation-id: 1df0e463-5652-4fc0-2259-08de34bf6bb5
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?YcmNSCGnvrkRrfA52XDkvKdNttZI04anIUnSA0/4bktpAmmRkFbUBgxLbixn?=
 =?us-ascii?Q?dttf+7lg+Pc2ZY2QcLLghxFzx1KjNmWlYQ8+CVeF3CWj8p9MA7Wo2Elv1/vG?=
 =?us-ascii?Q?yZ72q6nFgCtpPZ/rIrhW5axEdt1VMmqh6qsLHGBoDxYODmmxKz+y5RuO1ro+?=
 =?us-ascii?Q?d6HCtRF52zR7IUDx63IHa8pFPlNx4PBe+lRkgQMe9V0K9JqQYiUKZK1sPdsm?=
 =?us-ascii?Q?CACfzf5vfp3/f6wBKnls8bcqQ65u8Pd5zmjeGwlDN5sGt4VdqQhUDnO00NUh?=
 =?us-ascii?Q?9cZdFYeez0vaegwUqe4z6VY95eaGUU4MF+dEtZuZ7jIb4y4Dkw0EiEgohi+r?=
 =?us-ascii?Q?D89kp+EP+96A/ZKvnwtSivTpauGnncRL9/QCvZql4G+Bqg0O87byiRNUy4fP?=
 =?us-ascii?Q?fmDCgalflIn1+J7jIaGagAmAatzrhAqqhxLuYiQju7GEb2ifoGYeDCmaG93p?=
 =?us-ascii?Q?v2CaNrmYuGQhJRvFHQvueCzTzOcZRanyx+cZtMc7r+lgJuEpKko/q0tCMBcA?=
 =?us-ascii?Q?eC5fvOzOugbHUolSqBLdvA5kd5UOfzkZZn8ds5fVYpx3EMoi+VeWeJxbkstj?=
 =?us-ascii?Q?s552KCTWOSlW4ZlH6MTONBGLKhGjivgGI+g7OZ2a6U3Iq/OCthIm9tds2sYj?=
 =?us-ascii?Q?7aekCDopMTn7/XsavMPO2OwtYYS3kEGqJ9fWyX49eU/p/hSGF6l2wP3i3Bxn?=
 =?us-ascii?Q?J7e2dPDC/HKXZRVhbunm+jZvA5OjOwnz+vomT91htowj/QbKT50AjPqcDLIH?=
 =?us-ascii?Q?pSJbjvRgxJVcJIlg5ngcHOH+wY4hYDibguzo/PdFQibIqLJCTlqqweZU3z2w?=
 =?us-ascii?Q?ChZgSBk0OQ72jHstXM/NVrcx1wX+d5+vSNvWAiRAwC55nP/XfD6vy+mk8OV/?=
 =?us-ascii?Q?1Ue+yhZZ5ysH7OP1KCwiS0CKhNz71Yjv39IW/GdSXUDTDT6VdyzBvGqpFou0?=
 =?us-ascii?Q?10wdXD2dw7JIOSOzrKtdQ5pNe3IoTLmpn8uOzVMXmQ/3/bA8goE1MgEiAyEw?=
 =?us-ascii?Q?yUsXsJbCQPRCF3M6tuAbWDHS2VYgsQNxfzhxKzJxWggXFjoug4YHOZfSMb+Q?=
 =?us-ascii?Q?bvPMXEiPEtvJtCKxAOw2IsLShkS8AuJ0tBMvjtIOrSWEGI5OISjhFwmDFjBS?=
 =?us-ascii?Q?H2hJs43kwOdGxSNmir/CDaWlUz50aNcBf/IDSV5pGx3+T0N7p6N7Hz/sNLx2?=
 =?us-ascii?Q?D3TDLTKZfmRdq79VjIS4nnqCenUMjeJOsPmNAdJkS0a96CQkU8ZHzWvn6wRT?=
 =?us-ascii?Q?Ch1nQ0tUKG9RPazIqFNo1j/oTzmhTXB32YNcc9QUX/KyDUing0w/lsqIBEnD?=
 =?us-ascii?Q?VhsleUJpb43p0/4jV0erRQUPfWbN6Wa33FluKAYdkM4YUbcneSq28n9rEinQ?=
 =?us-ascii?Q?LKFBRdw43nRTri62oNYPYJgoJ0ZmX5m5ilfOQS2Soz9LCds2BuepLge65FNQ?=
 =?us-ascii?Q?W02liRrSicLjG9Y2WhISlJ0WHHw9yqbYD68tfVTY+LIaayp/AVXB5kmm4ttD?=
 =?us-ascii?Q?QMKIJ/rBF6ztXwVoHQToeti6KN59zVQsgFE/oY4bQKb49kG7YZTFQP/r1g?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QLzO94wYTIavwHke78nCip9tfCzjZRuB1f3J0Mb3/an0+M83XnyRiOH+3n4b?=
 =?us-ascii?Q?emQXwjWOB1XWg38uqAyccILvKnnbwgdbeirGPBy/vnTzvFq6wB94hjdRtM70?=
 =?us-ascii?Q?/QrU0b5vAaF0azcBFWz/rNV3VWinWlAXm3x6ZNwkPTF5V0VCQoelpesJbetG?=
 =?us-ascii?Q?vqQ5BLWu9Ni1dOHDh8BbsgiTvx8HRPgUOdkIPXK5DO55OeK6w4HzjmyxcpPK?=
 =?us-ascii?Q?6Q2NYhSoAask9Ia+P1RkUJpDE5endLivKihcp5Qah8Ku5ji/LUQEhLSHQqCO?=
 =?us-ascii?Q?52d5QnhhEOvDpRmYM2ZxCLimLOC8+6nEbSM5usl9Xvj6neSicWAdQJ47Moh8?=
 =?us-ascii?Q?QV3vwTxTt9DirzLV18F0dgEwFHA5CoJpr0DDwqnNz5+BUePEL2A5rpWdgGfk?=
 =?us-ascii?Q?W5IDQwCFJIhMvUmGbrOqm66flep9ir/xBwTZoKgdKyJIW3HkMTQZRi2f7D7T?=
 =?us-ascii?Q?TviTGoqX29mLUOQSVm6sOp8pgXFwY5U6916Jqo67TL9JQaEsZxs7tIc4Lqpf?=
 =?us-ascii?Q?9xxSGQfJ+f9RIIvzRBY0Jq9xwsImeWhTkjP7f3YW4zKer/nUGJWiRxdePyp/?=
 =?us-ascii?Q?ORV1xdZ8h8ynJyFVmbFgPoLF4YsMkchgEdCpUGJgO/Tjul+42WQOcfKq+Da+?=
 =?us-ascii?Q?TGIWV0Dm9vee8/8cFhu2yggjYamVRDm+K8PdTzadz6Y2SjihCQLTdvzPBQFl?=
 =?us-ascii?Q?m3SMZiVwnE8bn/cES1COGlorncoeMG0hZaHjZEhD52ycLkdZ6/rOFie1vFv3?=
 =?us-ascii?Q?hDdA1wC9U1mPu1xLpU86WfjMc+WN8eLCGszq3g5Gz68qplCwdDKKrApDOZpF?=
 =?us-ascii?Q?mbdWIQuKYx6lK66k93utIGOyUEzsltTsUKQcvE0mI96uqdoORFJJLxfTGvTS?=
 =?us-ascii?Q?FCT8l4L/iY8vy/y1O6Br77r1k4G9kbDNH7NCa9RFGiK4NeaMn2ztZYq1I3VS?=
 =?us-ascii?Q?bBiij7ZnciMqhxxLSlmZuLdIY3I835R74HXLLPi6Xh91MbvVXDh6ur9vzXow?=
 =?us-ascii?Q?Ipk2TUXrVDcyYsIyvsKHzD/SLwgRrD3B0MXGVG11nyQ70Fr+CaCWP0lFPsZy?=
 =?us-ascii?Q?WhqOEZ4BmDvOgG7c7fLPiFwL/0BOrnE2axeB7jSl4QqvcXleebfEJQmfo0yZ?=
 =?us-ascii?Q?xSIgedIR53gr1pvsEtilpRlVuoAiGC2USYA8NwA679PN2zP7icADdiojKGk1?=
 =?us-ascii?Q?m55J217pvzDffZTSSvycDqvnX8w0ykUp/JG8tcmeBVD/TiA5SID4zSDzspqY?=
 =?us-ascii?Q?7rVV6BRxXqdGKQ643ys20FVEds410eOfxw0cJOJxIyDCzEYI6sBan0ts4iNY?=
 =?us-ascii?Q?miOMj42/dnewMYHrre7koAzc2dRqek8vDQ8n6WG4ih+kxvH2xeHhQMGfuEoX?=
 =?us-ascii?Q?Wa9yG2O7L3idie2bOtu/TJRXmpfqpzS0hLwh4/wLFxdivIQBe8bDlNzvgLYY?=
 =?us-ascii?Q?fj+lIAwHtbyHG2M+e2VLVNRq7bS2dADdDrTRpl/y35LGF7I/YbGj8EjDgR2r?=
 =?us-ascii?Q?62RgzHsqDWUyuYbWXZIfcUDhoTpEDv1djTF97uSp2EpjYbRLvTi4ZpQ47aBo?=
 =?us-ascii?Q?bWHtXUuTYgBi2nxN5W+UN58iHuT+jNIUGyxGLwBC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 1df0e463-5652-4fc0-2259-08de34bf6bb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2025 12:03:08.3300 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hjqsuZRPwej+Ps9xtP0H6bClD1CyMfEqQWEG1ugQyQjW1+kAGfEkYpzT92696Ce/h4sW1cfyiQ0a4TF3g0voVZFQ+WdSmnA2jOybY3JFw2g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB9646
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+CfugcINzp9feomzJh95fhZpCJzySU9WkEPf/WMHys0=;
 b=GQzNQayC0D1iIOcbKYfbP7czblqsDoZYLeRxQrBvRDSEyDi3PnVD6n4+6TdoB7xw1IB3st8G/bTilm6gezhyTInfaAXAW1vwbZTrcDQbkVRzTDNcrkwlfGKUGkqDZLhxbgFYoMNf28CCw82aoG1n0ETLwiDvNmP6DFVl96M4fVvlJgsc5R+oyZLDBRH/8COGpBHMCHAJfyO0e/xa1qkV3uX2Y7jCo9ztN0cUD/HMyBsEbuc0WG/TyKi8Jf8jUABphTFEr0CllQVY2kecXUMXYQd5VfsTJzIGRCIx8HpORFIYrxlw24N2CDKJQHxj/LRXyUGbXXcimqYTWaeFEEHfvA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=GQzNQayC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: Fix trigger of incorrect irq in
 igc_xsk_wakeup function
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Aleksandr ,

Thanks for the review and the valuable feedback!

On Fri, Dec 5, 2025 at 1:40 PM, Intel-wired-lan <intel-wired-lan-bounces@os=
uosl.org> wrote:
> From 4e3ebdc0af6baa83ccfc17c61c1eb61408095ffd Mon Sep 17 00:00:00 2001
> From: Vivek Behera <vivek.behera@siemens.com>
> Date: Fri, 5 Dec 2025 10:26:05 +0100
> Subject: [PATCH] igc: Fix trigger of incorrect irq in igc_xsk_wakeup func=
tion
>
> When the i226 is configured to use only 2 combined queues using ethtool
> or in an environment with only 2 active CPU cores the 4 irq lines
> are used in a split configuration with one irq
> assigned to each of the two rx and tx queues
> (see console output below)
>
>
> ...
>
> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> ---
> drivers/net/ethernet/intel/igc/igc_main.c | 31 +++++++++++++++++++----
> 1 file changed, 26 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethe=
rnet/intel/igc/igc_main.c
> index 7aafa60ba0c8..0cfcd20a2536 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6930,21 +6930,42 @@ int igc_xsk_wakeup(struct net_device *dev, u32 qu=
eue_id, u32 flags)
>            if (!igc_xdp_is_enabled(adapter))
>                        return -ENXIO;
>
> -           if (queue_id >=3D adapter->num_rx_queues)
> +          if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
> +                      /* If both TX and RX need to be woken up queue pai=
r per IRQ is needed */
> +                      if (!(adapter->flags & IGC_FLAG_QUEUE_PAIRS))
> +                                  return -EINVAL; /* igc queue pairs are=
 not activated.
> +                                                          * Can't trigge=
r irq
> +                                                          */
> It looks like not a malformed input, but as unsupported operation for the=
 current device/IRQ configuration. In net drivers, -EOPNOTSUPP is the expec=
ted errno for "the device cannot perform this requested operation in this c=
onfiguration," while -EINVAL signals a bad argument.
> Am I right?

When considering the split configuration, it would still be possible to tri=
gger the individual IRQs for TX and RX. It is just about setting the correc=
t bits in the EICS register. However, when I refer to the `ndo_xsk_wakeup` =
documentation, it isn't clear to me whether triggering multiple IRQs would =
be correct or desired. Referring to other netdev drivers implementing this =
hook, I couldn't find any instance of triggering individual IRQs in one cal=
l of the function. This could also be due to the fact that none of the driv=
ers use the `flags` argument when the function is called. This is why I am =
inclined to handle this case as an error. You are right, the `-EOPNOTSUPP` =
would be the correct return value in this case. I will update this in the n=
ext version of the patch (v2) to reflect this change.

> +                      /* Just get the ring params from Rx */
> +                      if (queue_id >=3D adapter->num_rx_queues)
> +                                  return -EINVAL;
> +                      ring =3D adapter->rx_ring[queue_id];
> +          } else if (flags & XDP_WAKEUP_TX) {
> +                      if (queue_id >=3D adapter->num_tx_queues)
> +                                  return -EINVAL;
> +                      /* Get the ring params from Tx */
> +                      ring =3D adapter->tx_ring[queue_id];
> +          } else if (flags & XDP_WAKEUP_RX) {
> +                      if (queue_id >=3D adapter->num_rx_queues)
> +                                  return -EINVAL;
> +                      /* Get the ring params from Rx */
> +                      ring =3D adapter->rx_ring[queue_id];
> +          } else {
> +                      /* Invalid Flags */
>                       return -EINVAL;

> ...

Thanks again for catching this!

Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
