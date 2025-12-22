Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 175B6CD4F7B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Dec 2025 09:20:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9664B6080E;
	Mon, 22 Dec 2025 08:20:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j4t2JIAJDKjv; Mon, 22 Dec 2025 08:20:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96F4560808
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766391639;
	bh=C+MIm4wjXiZ8292l3othQ94CqDFRM4lEffNNlyIS7EU=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=A2hsPyP0/I8LCOGfx+xGgpATGfi9MoyAbjyOkgvQXo7/mkyYLt9mOCrS15qXSCPKK
	 p9JPFPM4+9WfANFRnvBBoA+59Yg1hlSlmN2nOy6UcrCifDzV7uQIsIdZUu/uphcMmJ
	 W4NOivahC38ZY2GSyaDDA0RBrNZ1+VIjhfdMk5dJ56aGQF9ndmlaUirkXyXnfvq/71
	 oWwucIF35CNockXftepI5BosCtUP1yXiFRPjjC+Q2gyzPNRp6ZCzcoq/p4V1jxkire
	 Y5nfnUMU+P6PHFjUSJTPQLN1NuJ6LmP6dX74Lfmit0X4T0mddX0S/Mx15EBb1gNsQD
	 6V0ZhpcwWaqLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96F4560808;
	Mon, 22 Dec 2025 08:20:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 300AABC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 08:20:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DE29406E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 08:20:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Ui3aMpNv56E for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Dec 2025 08:20:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.69.28;
 helo=am0pr83cu005.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5884E40624
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5884E40624
Received: from AM0PR83CU005.outbound.protection.outlook.com
 (mail-westeuropeazon11010028.outbound.protection.outlook.com [52.101.69.28])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5884E40624
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 08:20:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T4BEb6Yo/2DIJfMXgFSoYHXwCMQS9UTsfm0dKnzWgQgLW01FxpE4wKcejec753QC3GoT5W01D7gxHHTyElh4efrIJkeNG91qD93khLrPvdxfWNLfqDTaW95p/8SJBeF2D8bThPtPcB03UUlq9zBgRIohbDw1UqOzagDn+Gf+6MvhSGRNPMsucsYDoa5w0/6GaXEYUDxVINEJPktvqVXib9ymRKGH+g/WD0WgIJvfCwNTvuLnpbaEVJ5EjQERJjsGh46wRjMi0nqxGAecG8fDISVo7/3/CoJ5gLZfqsuEmkbcrZOFB6JFPoY6IUUF/p7oTC4LV8Jg9DMQVPnk+4JzLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C+MIm4wjXiZ8292l3othQ94CqDFRM4lEffNNlyIS7EU=;
 b=opcI2FEkLyOzcvLCdUG9Sd2+4136C7Ankkn+MfYTUqyK3Cd2M9CrH9Q5c7zbWs2qiPy0zWQ4XFMHV4ehi+cjRZc3FFA77hqCHtMYqeuv0sJreur5Xdln7HJh26hdb9SSItOamOgPeXgQmFTNymD0U80VNzejbASR/u+RBu3beVE5cFFBG7pfQ5/SEzc060a1SlqVFnSnR3XT4dTpmdOXylx+o+x8ykhBrdKgpWiTXPTlBjPZ4ts9rcSxGOzG8GHVRiuTrxE4iHbzLjXhOmeDBYJQGGugIv9pCjFOoi2M53HZ8nsow7uiWB+jXkbbVXl80HBJLRDQCgjVvzs6sPzNEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by AM7PR10MB3126.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:102::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Mon, 22 Dec
 2025 08:20:31 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 08:20:31 +0000
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "sriram.yagnaraman@ericsson.com"
 <sriram.yagnaraman@ericsson.com>, "kurt@linutronix.de" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v3] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHccaa+rve8VX5aPkKGb2s/ECPCObUtRpUAgAAInCA=
Date: Mon, 22 Dec 2025 08:20:31 +0000
Message-ID: <AS1PR10MB539248A2C18B9B9EF54957038FB4A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <20251220114936.140473-1-vivek.behera@siemens.com>
 <IA3PR11MB898607BDEF754C95744048ACE5B4A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB898607BDEF754C95744048ACE5B4A@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=2b211175-bfbe-4042-b434-b753fd4a9186;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-22T08:01:59Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|AM7PR10MB3126:EE_
x-ms-office365-filtering-correlation-id: 178a81ad-2a4d-4591-4541-08de4132f8e6
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?aBij/ZCJmUrnkAS/cqyx2C1ezyWBE0SOmqpFBKEd8RWH2M9SqC2d31DgdI?=
 =?iso-8859-1?Q?COX1C+M0mC7KYkij2zQuEapOzOWKZ5Kw+lGpsu+JtszWxUG1h/Z9AEFoJX?=
 =?iso-8859-1?Q?Ctkl9OlYeKylOYJ3wLWHsW7exnBQwGqxwrYkfDJIU2m5iodIbFRTo+jYB4?=
 =?iso-8859-1?Q?FGyID1OJPbYJ2e3KAKAXCOFIqPQVpSIXhHOXZiYih/26ZFz3k++ooljGS2?=
 =?iso-8859-1?Q?tYN0S/+smWD62oNs/76X1NF2caeNlevjyWKOaLJ20MXdOd9Mh8YRovsdFq?=
 =?iso-8859-1?Q?XCWD0xwmK7UAS1FUhjKe4JZcg6YqDqK9NTNgtKfJ8w5gUT0k8DTSbPhPsS?=
 =?iso-8859-1?Q?TGxsgrgl4Za+VjtHXqh8nOxE4hQgwzkchGL+FotUIHaHcPSW/zlajcg01m?=
 =?iso-8859-1?Q?rJKJRYEsuJld7rLWFNaVpT1725OSkxaeWlaJg0P6fCFDU7tJ1OvOX9pekB?=
 =?iso-8859-1?Q?ZAOLW/jiURo0Y33mwuc+brErXbTKybWNRQeb+8YSlUUI23epBLsTeMh4BZ?=
 =?iso-8859-1?Q?YUsTF31SnUW6mpuGnUp54BXcUPJkehVjNWso8Q5U2k5Gf6uYdZ6Mg0oFu2?=
 =?iso-8859-1?Q?u49d4hkHyR4lq7J07p60czBBTwuoF0r9kmTYr5Gk5XhEhJAFmc4Gr3Q0Ni?=
 =?iso-8859-1?Q?X97tiYqZSmTNDHXq27Nv2S+VVNjuujwauSbpCBM8MqqZihR7YPYCFK3dqU?=
 =?iso-8859-1?Q?gUcHckOp7Rmw4YSWgziBuIsUsI4h2Iu6BNRYQuoxFzxezwYwV+dzeQuMEt?=
 =?iso-8859-1?Q?/78K7YzpXMNDiEAltAd7cOfnRs9shNWr7xomieEyUjEKg7m05B/KaU3THz?=
 =?iso-8859-1?Q?YZ0jM3GYZaozSL4d5eBzVsZsv8CPYgtle3o3RcMvUJs9+vBeOnSXA6iKGA?=
 =?iso-8859-1?Q?5v6xcI6L7HS5xKCBPagF5jZmg5ZHuBnMRYK76oRGS4o2NCVMlscrQsOx4s?=
 =?iso-8859-1?Q?gswdm49GRasGVBWQQH1T2mpECrKYMx0mi96Iv9pGBp8jNbmbTGVF7Eh0fJ?=
 =?iso-8859-1?Q?ZRnJYb6sww6tls8GjmwLEZrs+IfbIagqEyBMkld1/QCSixRdfVezYyTqD2?=
 =?iso-8859-1?Q?t0lMLvmTnww/0kiDUPf5wQBbpf769R3c5QurOX61Sn0+CGOLJ7oSot0+2q?=
 =?iso-8859-1?Q?X0oejc8gQYsKdj9tgQkUA6Mkug/C+uJxjELCgNHtDvOq3FFeMloQP7jXcW?=
 =?iso-8859-1?Q?L0rsw5Xy2RUqCAxpne18VRcXiBfJWM65110yq6iRekSU6QXwb+iHBgMr4P?=
 =?iso-8859-1?Q?VuBKEJ+8Q37dhbMontALxuu70HA4CDff4eTwRW/CXu4sCl3n413af5DsWu?=
 =?iso-8859-1?Q?lgP6oHG6kcVGf+tW2ag0nRGJr1+46CKyEi6J44UxRbGO7UU8MPywCnKrPF?=
 =?iso-8859-1?Q?08mujHSPWdjz0YoSsKFt+KCUvyq5YvQuf1oDbRrXtJnsGcijYC2CIF7rBM?=
 =?iso-8859-1?Q?Xol6/Tik5mTM/P5uPnQ9zb4HUXBJAi1oT7d11v+AsZqE9dqvd0N7r/pDen?=
 =?iso-8859-1?Q?Xxjz6arBHaVHgibHikD2SxW42Pv0WkTeIazoXjKuw8v6lrnDcwEiWB7m7I?=
 =?iso-8859-1?Q?A4zX8SRNhKD+a+6Z3Ke3UHDIq4qxrejjWv++/2NzxRNoLmSZ9w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?5wVS9po2ylt0tEtRWq3CpsnLrv3eK9W8wUHBx1K+MbyvqUThgEhNemH++Q?=
 =?iso-8859-1?Q?UCpAjQY8Mw8whxspP1F7wOBd7btCZ2h678vS86L80Gw6xzdzcXh0SbsrR7?=
 =?iso-8859-1?Q?vuFH0NMOcdDHPqhgdIhLwNb1rpEdG5aDoLX83bwc/MyZVrt5IbWozcVaKv?=
 =?iso-8859-1?Q?83juc6ihQLsYPBgBQ1TZ8lcq36WtzrD2FJSSrpd0rxU3pNsfw1qS+j6BrF?=
 =?iso-8859-1?Q?jduMuQkdOT/vAc116jQXDPenj2O1+qQBOInGo3+qeFc74wxXRbzqS1yUv+?=
 =?iso-8859-1?Q?RyhbldC1cImz44ZCkVqPk454t3yLRCuN4MUDO1IqDkuldyHj0ktJbd3tt1?=
 =?iso-8859-1?Q?f4kGMw3b+3AFeEwph4v9bU233x43EC/TTojBPsqnYNYkm5oYI3Rs7hnUUn?=
 =?iso-8859-1?Q?kFnJ3c+kms+3AmesELfAQelB1mHYrknXW/E1NzS2KnKLKgDFxUyXB8eX5G?=
 =?iso-8859-1?Q?CwwsDQdsE6Okm00AFdTtDWo88Z8Cee9URDRbghmM/OtAKgxtMine0ie7Xc?=
 =?iso-8859-1?Q?AN5xiootaYss8OopgXCPSqLP8O3F9BZpAYyWF/a8OOlAuc1LrExuHL6nK+?=
 =?iso-8859-1?Q?7PVdyTeKcqI92/7Mw5YkhkMQpxrhNurymw6KRiThoMZAR2dDRyK1ILiS4e?=
 =?iso-8859-1?Q?ogk97MEqsz7G9jPW0dH52Vbe+sYBbU3fFQAb2LBlOzXY11tGwev/Cdownk?=
 =?iso-8859-1?Q?5ZbYqYaPhmyBDystwM1ZJ2+7YyA4shcohpRMhvm8B+jf78uxBSkqnlmVQu?=
 =?iso-8859-1?Q?LKC+i652dXxz/OLYjUBtWSuWZc18EEW9BA3JT6eSzQYhkd7pndcIuac/+M?=
 =?iso-8859-1?Q?Ji3IyZLFIqGXcZhB6jMd30rVfv4qWLP+TZYhtaHKO1Utm0GGHc3J6zCzUc?=
 =?iso-8859-1?Q?Ds1JansLj42HNM+2CeFGSDx+SLVH4DEpPFYEXdf2CYvUL8vVvjnJl05P1m?=
 =?iso-8859-1?Q?v6rDkwVi9XDMfrtCzgzFQaDWPSN45wTE0+bCwxPT+9c+HoKbPJ36O4/+vZ?=
 =?iso-8859-1?Q?iP1mou1Sn0zKCuGAns+mLxFTT5dKgd10bev0IijPC7p0bP+fHujCCrmiC7?=
 =?iso-8859-1?Q?2NSwun8ZXT9ZCykLDzKzpW3CYOU7wZBmA7nZlzrBR084bh1SKPi2voyIAb?=
 =?iso-8859-1?Q?TSiF+tBUHCxoBCJ95gXLfaQDDPCBSMkx8DFOSg3HcekLLLE56WIJfskPbK?=
 =?iso-8859-1?Q?jjsYFtnDR+k7YhvVLmHLBE2+Bi4SrwVQVxDyRXvwpRkHlwkkk2XAZP5JVW?=
 =?iso-8859-1?Q?hRImKr6J4W+iXVGFT4PxBm1tWLf5vMrYK2EO+nXl2dtgCCSY2TT3aty1vC?=
 =?iso-8859-1?Q?5wObmPsitu2jhP1WmEHDVlOhZxuADChSlOIG5npOJmSJzNvFy8gZgHtlhY?=
 =?iso-8859-1?Q?KYLly04AEjQJvCgrcQUXGh92KxA0c1yMbORegMP3dx4UJI8ZAHqB6MbEFf?=
 =?iso-8859-1?Q?EHfjXFPLA6JFCXe541DXWteheh0i9Vad+EdPAkVZtcom0FgakdvwDZgZWA?=
 =?iso-8859-1?Q?LPVAC8orLWVCODfBclPFh7jPJGkxjpqe1R2m8MgSn4nuwNpsUkjl1YY8SY?=
 =?iso-8859-1?Q?ri0J6uwR8GUsTQ7/IL9uMLxWTOHGnEpSvvBoDwuj6T7547SAYNc1CmeTPm?=
 =?iso-8859-1?Q?AmLTFzd/aTkCQ5EkfWRg/TYwDLWmsA78pVFS18t51knwk0xJmT+qcTELBg?=
 =?iso-8859-1?Q?ray0f0s7gItENy0BlJBIucr5OMx2XIdBFwENOUSBjNZbOM4l5S7lwd2zLl?=
 =?iso-8859-1?Q?Chj9jwCXsvWXXemGzv0fcutID7WhvoDgqa2+67QZCqHxTxkPkY5R4beq8P?=
 =?iso-8859-1?Q?Ych+YfEm7A=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 178a81ad-2a4d-4591-4541-08de4132f8e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2025 08:20:31.2686 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ca31hzloIYyNJG2OJF8103VYV+7OjFH2CVp40i1gcnbWb54bEOecRX5XoVTcz+CaZL7acIOpDkfuMO+HJkEBp9aWaNAsZ2hSo/8UYK9W1MA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR10MB3126
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C+MIm4wjXiZ8292l3othQ94CqDFRM4lEffNNlyIS7EU=;
 b=i6pm5pQ8CjoHvQx07pl7tggbTWiroW6J3peA2aL4v9XBhdHCj4fw7dX1vMbAleyIORT9pqW+8AGH+iwoUedvUYP8mR2SL6sFfyIhQbOTMHl2LPtGHQ5ElkmRhrsEBr13Z8lkdpIPXIp+k6z5VYeUK70Zg5hq1+TLTRPMnL8jqcVeJ1qreFWk6D+/y7z6iRcF+pkTmgRH6WzacNXH9wVzVAsRBkwLHuRkxyWd/gE7krF/lvMKcO1x7G69NsRALPCPkMBNBG9wI6yYSMVLvwVOIBCr6LDAKNcJSL2WJMYf+GwYdhi0/IsowIjnVA92TlZmIRNIVWBE9LDon3kp4uiW1g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=i6pm5pQ8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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
From: "Behera, VIVEK via Intel-wired-lan" <intel-wired-lan@osuosl.org>
Reply-To: "Behera, VIVEK" <vivek.behera@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Urspr=FCngliche Nachricht-----
> Von: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Gesendet: Montag, 22. Dezember 2025 08:31
> An: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>; Keller=
,
> Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> kurt@linutronix.de
> Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek (DI FA DSP ICC PRC1)
> <vivek.behera@siemens.com>
> Betreff: RE: [PATCH iwl-net v3] igb: Fix trigger of incorrect irq in igb_=
xsk_wakeup
>=20
>=20
>=20
> > -----Original Message-----
> > From: Vivek Behera <vivek.behera@siemens.com>
> > Sent: Saturday, December 20, 2025 12:50 PM
> > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller,
> > Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> > <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> > kurt@linutronix.de
> > Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek
> > <vivek.behera@siemens.com>
> > Subject: [PATCH iwl-net v3] igb: Fix trigger of incorrect irq in
> > igb_xsk_wakeup
> >
> > The current implementation in the igb_xsk_wakeup expects the Rx and Tx
> > queues to share the same irq. This would lead to triggering of
> > incorrect irq in split irq configuration.
> > This patch addresses this issue which could impact environments with 2
> > active cpu cores or when the number of queues is reduced to 2 or less
> >
> > cat /proc/interrupts | grep eno2
> >  167:          0          0          0          0 IR-PCI-MSIX-
> > 0000:08:00.0
> >  0-edge      eno2
> >  168:          0          0          0          0 IR-PCI-MSIX-
> > 0000:08:00.0
> >  1-edge      eno2-rx-0
> >  169:          0          0          0          0 IR-PCI-MSIX-
> > 0000:08:00.0
> >  2-edge      eno2-rx-1
> >  170:          0          0          0          0 IR-PCI-MSIX-
> > 0000:08:00.0
> >  3-edge      eno2-tx-0
> >  171:          0          0          0          0 IR-PCI-MSIX-
> > 0000:08:00.0
> >  4-edge      eno2-tx-1
> >
> > Furthermore it uses the flags input argument to trigger either rx, tx
> > or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> > documentation
> >
> > Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> > Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> >
> > ---
> > v1:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251212131454.124116-1-&data=3D05%7C02=
%
> >
> 7Cvivek.behera%40siemens.com%7C164e180ed5e443da63c408de412c1b1f%7C38a
> e
> >
> 3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639019854838314101%7CUnknow
> n%7C
> >
> TWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4
> zMi
> >
> IsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3D95%2FeVnmg9
> JiwCd
> > oGd3sd441VWbvXi%2FBYFTtbW9ddXfA%3D&reserved=3D0
> > vivek.behera@siemens.com/
> > v2:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251215115416.410619-1-&data=3D05%7C02=
%
> >
> 7Cvivek.behera%40siemens.com%7C164e180ed5e443da63c408de412c1b1f%7C38a
> e
> >
> 3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639019854838342225%7CUnknow
> n%7C
> >
> TWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4
> zMi
> >
> IsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DniEnO3XufusM
> bVGs
> > l6QO0mj3yWC1Zr3dl5azIYRqs24%3D&reserved=3D0
> > vivek.behera@siemens.com/
> >
> > changelog:
> > v1
> > - Inital description of the Bug and fixes made in the patch
> >
> > v1 -> v2
> > - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ
> > configuration
> > - Review by Aleksander: Modified sequence to complete all error checks
> > for rx and tx
> >   before updating napi states and triggering irqs
> > - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix
> > use case)
> > - Added define for Tx interrupt trigger bit mask for E1000_ICS
> >
> > v2 -> v3
> > - Included applicable feedback and suggestions from igc patch
> > - Fixed logic in updating eics value when  both TX and RX need wakeup
> > ---
> >  .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
> >  drivers/net/ethernet/intel/igb/igb_xsk.c      | 88 +++++++++++++++++-
> > -
> >  2 files changed, 81 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > index fa028928482f..9357564a2d58 100644
> > --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > @@ -443,6 +443,7 @@
> >  #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change
> > */
> >  #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min.
> > threshold */
> >  #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset
> > Aserted */
> > +#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc
> > written back */
> >
> >  /* Extended Interrupt Cause Set */
> >  /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git
> > a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > index 30ce5fbb5b77..3dbc2573b47a 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > @@ -529,6 +529,7 @@ int igb_xsk_wakeup(struct net_device *dev, u32
> > qid, u32 flags)
> >  	struct igb_adapter *adapter =3D netdev_priv(dev);
> >  	struct e1000_hw *hw =3D &adapter->hw;
> >  	struct igb_ring *ring;
> > +	struct igb_q_vector *q_vector;
> >  	u32 eics =3D 0;
> >
> >  	if (test_bit(__IGB_DOWN, &adapter->state)) @@ -536,14 +537,80 @@ int
> > igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
> >
> >  	if (!igb_xdp_is_enabled(adapter))
> >  		return -EINVAL;
> > -
> > -	if (qid >=3D adapter->num_tx_queues)
> > +	/* Check if queue_id is valid. Tx and Rx queue numbers are
> > always same */
> > +	if (qid >=3D adapter->num_rx_queues)
> >  		return -EINVAL;
> >
> > -	ring =3D adapter->tx_ring[qid];
> > -
> > -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > -		return -ENETDOWN;
> > +	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
> > +		/* If both TX and RX need to be woken up check if queue
> > pairs are active */
> > +		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
> > +			/* Extract ring params from Rx */
> > +			ring =3D adapter->rx_ring[qid];
> > +		} else {
> > +			/* Two irqs for Rx AND Tx need to be triggered */
> > +			struct napi_struct *rx_napi;
> > +			struct napi_struct *tx_napi;
> > +			bool trigger_irq_tx =3D false;
> > +			bool trigger_irq_rx =3D false;
> > +			u32 eics_tx =3D 0;
> > +			u32 eics_rx =3D 0;
> > +			/* IRQ trigger preparation for Rx */
> > +			ring =3D adapter->rx_ring[qid];
> > +			if (!ring->xsk_pool)
> > +				return -ENXIO;
> When IGB_FLAG_QUEUE_PAIRS is set, the code sets ring =3D adapter->rx_ring=
[qid]
> and then falls through to the common path (if (!READ_ONCE(ring->xsk_pool)=
)).
> However, the common path only handles a single NAPI and single IRQ trigge=
r.
> In queue-pair mode, RX and TX share the same q_vector/IRQ, so triggering =
only one
> direction might not fully satisfy the XDP_WAKEUP_RX | XDP_WAKEUP_TX
> contract.
> The logic appears incomplete for the queue-pair case when both flags are =
set.

Okay. According to my understanding when the queue pairs are activated one =
q_vector
is used for the rx and tx. And this napi instance is saved in the common q_=
vector. Below
is the example of napi threads with queue pairs enabled for the 4 rx-tx que=
ue pairs
ps aux | grep eno2
root         561  0.0  0.0      0     0 ?        S    07:44   0:00 [irq/162=
-eno2]
root         565  0.0  0.0      0     0 ?        S    07:44   0:00 [irq/163=
-eno2-TxRx-0]
root         566  0.0  0.0      0     0 ?        S    07:44   0:00 [irq/164=
-eno2-TxRx-1]
root         567  0.0  0.0      0     0 ?        S    07:44   0:00 [irq/165=
-eno2-TxRx-2]
root         568  0.0  0.0      0     0 ?        S    07:44   0:00 [irq/166=
-eno2-TxRx-3]
root        1247  0.0  0.0      0     0 ?        S    09:08   0:00 [napi/en=
o2-8197]
root        1248  0.0  0.0      0     0 ?        S    09:08   0:00 [napi/en=
o2-8196]
root        1249  0.0  0.0      0     0 ?        S    09:08   0:00 [napi/en=
o2-8195]
root        1250  0.0  0.0      0     0 ?        S    09:08   0:00 [napi/en=
o2-8194]

So in my understanding a single q_vector and a single napi is all that is n=
eeded
to trigger both the rx and tx. Essentially with the queue pairs enabled irr=
espective=20
of the flags we will end up triggering a single interrupt for the associate=
d queue pair=20
and have the common napi to deal with.=20

Is this not correct?=20
>=20
> > +			q_vector =3D ring->q_vector;
> > +			rx_napi  =3D &q_vector->napi;
> > +			/* Extend the BIT mask for eics */
> > +			eics_rx =3D ring->q_vector->eims_value;
> > +
> > +			/* IRQ trigger preparation for Tx */
> > +			ring =3D adapter->tx_ring[qid];
> > +			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring-
> > >flags))
> > +				return -ENETDOWN;
> > +
> > +			if (!ring->xsk_pool)
> Shouldn't it be: !READ_ONCE(ring->xsk_pool))  ?
Yes. indeed
>=20
> > +				return -ENXIO;
> > +			q_vector =3D ring->q_vector;
>=20
> ...
>=20
> > --
> > 2.34.1

