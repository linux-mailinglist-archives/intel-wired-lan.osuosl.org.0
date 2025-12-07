Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F5BCAB6DE
	for <lists+intel-wired-lan@lfdr.de>; Sun, 07 Dec 2025 16:47:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B09F60747;
	Sun,  7 Dec 2025 15:46:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Du5UaTp5uUuK; Sun,  7 Dec 2025 15:46:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A39A560739
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765122415;
	bh=WwP21r+zIy1vENN3eEmPtfI0GdjpMuysJxOhJgnxE4s=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1ljR1yq8/ovtCq40uCDqKptfRS5bU3zcdyAfuyCjEGEtoqzrvBzS/ZuC5x36PjBPb
	 Z4w/Cf+jOPmFmqfKBLRYKKtSHea8tmKwZe2xqXvX3mnLyu2EUoQg50sux9XfunNanm
	 O+CQE0+tt7x1tGt2i4uCL00wM/9kVzgaHBjsFywYSMCUBIhLBXjcEGkHCZcRXrf61c
	 hjfODH5fQn3TpueQ9BnbnOLjtFfeTHiwFDNiZJWNFx5GtiEEG/KzHZY7SFFmOG8S6i
	 dkK5S2qU+5PF2bdex3eDRnEmaP2zDvQtbGeMS7e7YRxzI95TqUsTdHfXYyvfB0id/L
	 joAwlijE1Pc4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A39A560739;
	Sun,  7 Dec 2025 15:46:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 366F32CF
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Dec 2025 15:46:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 32E0C60710
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Dec 2025 15:46:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9ywypp5Dq7xu for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Dec 2025 15:46:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.65.40;
 helo=du2pr03cu002.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C0B4D606BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0B4D606BA
Received: from DU2PR03CU002.outbound.protection.outlook.com
 (mail-northeuropeazon11011040.outbound.protection.outlook.com [52.101.65.40])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C0B4D606BA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Dec 2025 15:46:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AHGEJNBOKI05rB8i/Lf5HTpiCPRx9BhopstYUwEHqlZGx8PGwAwHMEMQAS4SdWlq/8izQZhoEyoPKYb/8SJ/CZhAOP852VGEmmVApJ92GgSM66OxicNnexrCQ3NGFoU1P6KSXZWRNQZlZBAFBmitWnDVEqC6l2oW+154pVoDjH7fVdBgt8Tkw0GAPC7S2DtdbzbK+UQmhRe9CO7u66q+HDIhhbgvYsyxFApf++M4lUaCTMbF7/i2tgpYx/SJmljlX3LaYdqETlsvNUpID0lKXu1wB04Rwko1LEN7ZllyOYHtfi6oZ/Mcx3UEI0eMJ7hyWweJDaScBlUvbYP1qZ98mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WwP21r+zIy1vENN3eEmPtfI0GdjpMuysJxOhJgnxE4s=;
 b=YW2GfwMs6gE0g798cv1SWVw6MAIogeycfYIz4UncMNQill+DgAXvpONof1eHhxgsXzUFkgonIE++1fwXjSiuVXlHBswcNiMDK1+iSrZgiobifUmdLHwOJar/irtgUGdG9BTXBc+oHLS8IjVAnn3O4BYxTYcz2RfAyn0bNXdsnvgG6rTXSwcd75pKYhzlv/wfvEucfm3yYsIhkGAFmuUId66CFJdFq/5VW5ILLgVkwpw2PStDQSlVaKvlkIIdhdamROKYkCKSQVPqGXHKVZcfRWiHxnKDSn8ri1GaURfrnR57gbtnUS4vATIg7qYtQR08DCgcgPwQ8Ro+vc1Fq20iXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by PA4PR10MB5754.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:267::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Sun, 7 Dec
 2025 15:46:48 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9388.013; Sun, 7 Dec 2025
 15:46:48 +0000
From: "Behera, VIVEK" <vivek.behera@siemens.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "\"David
 S. Miller\"" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Behera,
 VIVEK" <vivek.behera@siemens.com>
Thread-Topic: [PATCH v2] igc: Enhance xsk wakeup for split IRQ and fix PTP TX
 wakeup
Thread-Index: AQHcZ5CyTEI7gWn7ak63W7l0fe1S4g==
Date: Sun, 7 Dec 2025 15:46:48 +0000
Message-ID: <AS1PR10MB539280B1427DA0ABE9D65E628FA5A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
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
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|PA4PR10MB5754:EE_
x-ms-office365-filtering-correlation-id: 016395be-48b2-47d2-edf1-08de35a7d54c
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?JGcuXf1fz2sxxWI14bmAnIwpVQkbX0S8jpc0SaUl0h3o/BSTlRMT7uSolU23?=
 =?us-ascii?Q?pxTj02/iKAW+Tgddwm765tf0zJVQcFIOb9zhnFneTBeYGkAQQ81Uyzj6d+jw?=
 =?us-ascii?Q?Hj5drmfQy+92g/v1tMe/d6MaaLUh5bA8SIXjBCHTri/CsDg2FNIVQGoEzenm?=
 =?us-ascii?Q?dpTTMC+d+BP5FVWlva4056TdIOHur4LXu1dyjX0z1TJdYXlRoTfgaNIAeWWC?=
 =?us-ascii?Q?HFkJArlezQ8jXll8h14pZ6bgrNG3mSE4YH4kPng7+ahXpToZhNBsufdEBxpZ?=
 =?us-ascii?Q?+uyYGbRV51k6rUNEv6YrnUTjecBv0b9FJZ17YHpD9PCMIvqWtr50/7N/opPR?=
 =?us-ascii?Q?MaWJ87onBPbJgBsljWRfNCyW45nSvNWuKZczRe1NtSFUspzFIt2yk4rWwiv/?=
 =?us-ascii?Q?3WlfcekSEvSzwBts2rFz8nyWcFOUTfrvhAFlZd1kmTrk+cH2CDj5SIxgGaph?=
 =?us-ascii?Q?nuJdpw9fmJtAVPBwcAsZgeak2V3sOCCDy4WY984fFIC3a8Iyw2IrVXIhZvdi?=
 =?us-ascii?Q?Q3uQILPP02DQ1aY/CJVASMRdKesJ+8fwD+QWt6UmNqO0R4Hd0BaHtl7Iklxk?=
 =?us-ascii?Q?ggC10VrG5eJ02ZqQqpfRz86U+4ieKbPPu+YiLM7y9/a00Xd1ILNI3ZD46Q2i?=
 =?us-ascii?Q?alzBNdGqT8AIhFKRTpbXCVX+xZ9yFhiNpHKRph4oZO0pDKnJc4yFhUW1Et4d?=
 =?us-ascii?Q?nkTFmpWwhQ6b9QsF7/G7DNE1OM0XcY8NcCUO5z4NtomjbG4Ze50Grc7pTGHd?=
 =?us-ascii?Q?AeNor5xDjoxs6ww7D8GlGCvVSkDpS/nwSLAi1a3qM0IpPKJAFzGpxuQRMtfq?=
 =?us-ascii?Q?7xVRyN4zTvQKaMLMjNFujQ9jFCliIbSHZT7tJ33Ybcjll1GC9ul79w+y6Xab?=
 =?us-ascii?Q?X6Awf7Df7jKpp+1azs8NK0YYRfbeiM/RvDph4w9OgMPNuH+z6ryPVkRzYrLk?=
 =?us-ascii?Q?Zi0EnCyYf3WauWlB267pQN4F7ruxfWNHysjKGTg1/Wa/n097zFvTAahjGVhB?=
 =?us-ascii?Q?6shXUxJDFiFffhT85aUrlGRu3ok0ZIHDsjSB1a4J12X6HpMfV/czVnbQedTG?=
 =?us-ascii?Q?CXZNfznNDctgqR/+x+ny0SIkbJrsE3VSXk0mnNgJD/tvR6AAV3JFrNLpmy8N?=
 =?us-ascii?Q?PrQNWuj9Y7WVlvHgMSw/8xo3Pm2+apoeT/2yZXATLu34g2cG1fvl9YkaEANS?=
 =?us-ascii?Q?5tWYXxeRclUf8uhIMue0zuBPMPQawjzd32bZZdBAy+uejZZQkIBc10WPHmgw?=
 =?us-ascii?Q?pJGgn6L4Zlh3Is5WjyMqN85U38UIl3lUOBfkgmIOdS+qwOwMyHcwdklWBb+2?=
 =?us-ascii?Q?KEn8zUkyPwNYRGHm+6Hp0xyPeablj+DUyBDxzDvEos4FIL6u7tHYB9jsCpLy?=
 =?us-ascii?Q?w9bs3+S0X9apKsZe4RAGHTysPLgjAEwZ8UhxhvOgSksrh0T3i4xLVthQzcIi?=
 =?us-ascii?Q?bwpDWj4SV7F08PMP+ptFXX1FxynJ1CnbJhSzlyBdzBRsd2S1D+8kyrpAL0dj?=
 =?us-ascii?Q?mYfVbB+MzdepU9h1XkzQQUL7Hy2Pn2nxjWR/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?17PJ4kYd8K2DkmQi0yo4zXbcswYjyYt8+BNB/WxAAPnsHdtg4bUT3YPWTVdq?=
 =?us-ascii?Q?Sjsrpq/VRIsqioMeeEdVyEl11hW1f+NBM65jVF5Jgc6fdOEusaa3IvUjGa2X?=
 =?us-ascii?Q?ss3uT+cHY9nM/wZeb31I8HwyPlv2LdKXqd8+OUEcipU335dTZQeGERnxIfFb?=
 =?us-ascii?Q?6poYE5wVlU7ODnAbxDuCqQyF/DgKivuh/qIL6w9llEPV4rrGDMUJDlOsnTsZ?=
 =?us-ascii?Q?QfqGHDimxwBrdQ+rJx4Nm1EOV+scry2LINnGbRXYbHUzmq0dmQxXJO2bKDRc?=
 =?us-ascii?Q?RIlwTfayNcIHMjM1M61/6ovXZpzxXsZ+dtsYNMDXjOC79lct31jziPCz0YTq?=
 =?us-ascii?Q?kcIln2wbAbbR1SgaLlgjbtL84+VaFqzLd0ZBl4TxEBBLBc8l4+SA4KCFPY+z?=
 =?us-ascii?Q?7LRdRUY0ojm+YSCUjMzAQqKwjA0E6893YY3aMCRBUSh/BLBQV7e51HDhtBnZ?=
 =?us-ascii?Q?UwRgXN2ITP6fIjPIv8oXb9EgD1KtsTWMlEOAExsENCI5GLS+vVc1tq+TDTET?=
 =?us-ascii?Q?QU79n8X1WSm8RaG/EQ4SD74OALmz6fspZ/XIPBdVs6nMAbD3pMAK+0dukGrF?=
 =?us-ascii?Q?rqsQiQc2XFJ+98TzXup9TBfv2g0NhOyzsNIRetKEKWxVJyNCIcdnLoFtYJuZ?=
 =?us-ascii?Q?Ga5tbAPLonH5fd51qFCXiY/aDZfSB8AOon463VGY3jmEZzSxjUvb2MG2Djz5?=
 =?us-ascii?Q?yLvoSI89dyVg7tLnEu4Q9+OKsmqAaDVzImM2fK658NKpSwAb8/5XDnf7ywLu?=
 =?us-ascii?Q?xl2vHYvYNGTCL9TeyvwpgSA+xYDr7zsadxirfbFCtYVN17tUWmR0Zcuc96bk?=
 =?us-ascii?Q?6ccfzJRhE3rCkG91NtmupTbXH23sLZsDPNwnvlWf6ar6yZAXpwafbxC4cF26?=
 =?us-ascii?Q?ZsPtprAfyiQnr0BbBf2IyH6Zzlu17kHTWbx8tJQjmk5U3EtiqyXcuU03tFR6?=
 =?us-ascii?Q?hoYURl4N6JuZvFrHtCCiZ1uSsC4GYbEBNsm0sp4qY27VhrNT+u3mRbzgE+6u?=
 =?us-ascii?Q?VPJwg8mXKT7zJ5bKqZn+YqLwRcRSfeAvHOJSfJSxvy5XqhRMGxhftuY3NuLz?=
 =?us-ascii?Q?fkELs4EbOYJPj3sOqH1gyz61U1ezYHZmY+STYcsdZy22wBDd2nk0MlirdBHH?=
 =?us-ascii?Q?1pDgDwkyHJQpDkuBg+0ZgrNMqzlo22TI8nhQH20qQkWrHPfFvqozclhin6vS?=
 =?us-ascii?Q?GCHzi9j6icsT8HQS70eaCPNmKcOifQNLvgDPyAPdVtU3qb8EdsaFf1lS7WiX?=
 =?us-ascii?Q?+ryHo15LrBgHZdmx+CIPBiqyzf1oLhD/e82JNnioXU/usEwE71GCv8Wr+VeT?=
 =?us-ascii?Q?POXc8jMbrXPzyE2FnmPiEem4YSyfrpGR21FGXq5vCfd+ol0CbNEAKVndvTxS?=
 =?us-ascii?Q?HUpWmnFyJiP2WgDPhguvtR9al8Iq5L+CGl9DuNTbywVFRW/hFx8H9ePr9OAU?=
 =?us-ascii?Q?hEri2+8Zt/KgvJjzZZbsngFQavJHqQ1ULHwmQlAZDoL0td4xopMy6Dds+BfZ?=
 =?us-ascii?Q?lW4PG0jk0XiOfs2reoRe+ApUl3sxQsLvnhC+yc/coHLihI62qiP5ewzr/xtN?=
 =?us-ascii?Q?EjbFkbsobA9YAZPwcog/YIUMScTsoaxcjWyBCSzF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 016395be-48b2-47d2-edf1-08de35a7d54c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2025 15:46:48.7482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0x0f4TrmbSEAdE1AMicsLd4b8SACOYDIjqZC3xWhMH6DtwroVEakwttcMoEZ5K2ROAKOb99xalY5LAabGO4KurjAqVNlTuu/nI/+j3BJVPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR10MB5754
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WwP21r+zIy1vENN3eEmPtfI0GdjpMuysJxOhJgnxE4s=;
 b=BO50POJe7QDpkAwbnMyDvGXG2Qg6/8nUIwhrhIKba415nmSWmOA13yk97YfrzwTcHZIPzdP6gr9QVmCyjMHzqTOqM9UsOJ/vibcobK5wn30dlokougDJwZoDYSo98LkbEPI9tv346R4/sBt1ree2/uW09vqrGx8ahyFAsS3IxRryH9uBxO3Gvtm2E7hIAxBXXz3xGhYls5FupbrIuJI2lEGu4TqhuzM9blqlD8Cd3qzDcwvdvrRaZ1+nAg78DQbpC2l38v7AWV5RJ/nuAB4TP8yM0ipQGRRk4rKk5VjXuQAvoCtIgmvChbwdNpl5ASSgQD2ugRSLhJw4LeTF2BfAMg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=BO50POJe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Enhance xsk wakeup for split
 IRQ and fix PTP TX wakeup
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

Hi everyone,

This is v2 of the patch "igc: Enhance xsk wakeup for split IRQ and fix PTP =
TX wakeup".

Changes in v2:
- Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configurat=
ion
- Removal of igc_trigger_rxtxq_interrupt (now redundant)
- Added flag to igc_xsk_wakeup function call in igc_ptp_free_tx_buffer


Thanks,
Vivek Behera

From a9d7469510a21036e26a7804398d3e7a08c83b84 Mon Sep 17 00:00:00 2001
From: Vivek Behera <vivek.behera@siemens.com>
Date: Fri, 5 Dec 2025 10:26:05 +0100
Subject: [PATCH v2] igc: Enhance xsk wakeup for split IRQ and fix PTP TX
 wakeup

The igc_xsk_wakeup function previously returned an error when both
XDP_WAKEUP_RX and XDP_WAKEUP_TX flags were set but IGC_FLAG_QUEUE_PAIRS
was not active. This limitation prevented full XDP functionality in
configurations lacking queue pairs, such as specific i226 setups with
fewer active CPU cores or ethtool configurations.

Additionally, the igc_ptp_free_tx_buffer function was incorrectly
calling igc_xsk_wakeup with a zero 'flags' argument, which is an
invalid state and would lead to an -EINVAL return, preventing proper
TX completion wakeup.

This patch addresses these issues with the following changes:

1.  **igc_xsk_wakeup Logic Enhancement:**
    *   The function now intelligently handles requests for both RX and TX
        wakeups even when IGC_FLAG_QUEUE_PAIRS is not active. Instead of
        returning an error, it prepares and triggers separate IRQs for the
        RX and TX paths by accumulating the eims_value for both rings befor=
e
        writing it once to eics.
    *   The static helper function 'igc_trigger_rxtxq_interrupt' has been
        removed, and its functionality integrated directly into
        igc_xsk_wakeup for a more unified and streamlined IRQ triggering
        mechanism.
    *   Added explicit 'queue_id' validation for both 'num_rx_queues' and
        'num_tx_queues' within the new split IRQ path to prevent potential
        out-of-bounds access.

2.  **PTP TX Wakeup Fix:**
    *   Corrected the call to igc_xsk_wakeup in igc_ptp_free_tx_buffer to
        explicitly pass XDP_WAKEUP_TX as the 'flags' argument. This ensures
        that the TX completion is properly signalled, resolving the previou=
s
        issue where 'flags=3D0' was passed, which would cause igc_xsk_wakeu=
p
        to return -EINVAL.

Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 81 ++++++++++++++++++-----
 drivers/net/ethernet/intel/igc/igc_ptp.c  |  2 +-
 2 files changed, 64 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethern=
et/intel/igc/igc_main.c
index 7aafa60ba0c8..a130cdf4b45b 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6908,21 +6908,13 @@ static int igc_xdp_xmit(struct net_device *dev, int=
 num_frames,
 	return nxmit;
 }
=20
-static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
-					struct igc_q_vector *q_vector)
-{
-	struct igc_hw *hw =3D &adapter->hw;
-	u32 eics =3D 0;
-
-	eics |=3D q_vector->eims_value;
-	wr32(IGC_EICS, eics);
-}
-
 int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
 {
 	struct igc_adapter *adapter =3D netdev_priv(dev);
+	struct igc_hw *hw =3D &adapter->hw;
 	struct igc_q_vector *q_vector;
 	struct igc_ring *ring;
+	u32 eics =3D 0;
=20
 	if (test_bit(__IGC_DOWN, &adapter->state))
 		return -ENETDOWN;
@@ -6930,18 +6922,71 @@ int igc_xsk_wakeup(struct net_device *dev, u32 queu=
e_id, u32 flags)
 	if (!igc_xdp_is_enabled(adapter))
 		return -ENXIO;
=20
-	if (queue_id >=3D adapter->num_rx_queues)
-		return -EINVAL;
+	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
+		/* If both TX and RX need to be woken up, */
+		/* check if queue pairs are active. */
+		if ((adapter->flags & IGC_FLAG_QUEUE_PAIRS)) {
+			/* Just get the ring params from Rx */
+			if (queue_id >=3D adapter->num_rx_queues)
+				return -EINVAL;
+			ring =3D adapter->rx_ring[queue_id];
+		} else {
+			/***Two irqs for Rx AND Tx need to be triggered***/
+			if (queue_id >=3D adapter->num_rx_queues)
+				return -EINVAL; /**queue_id invalid**/
=20
-	ring =3D adapter->rx_ring[queue_id];
+			if (queue_id >=3D adapter->num_tx_queues)
+				return -EINVAL; /**queue_id invalid**/
=20
-	if (!ring->xsk_pool)
-		return -ENXIO;
+			/**IRQ trigger preparation for Rx**/
+			ring =3D adapter->rx_ring[queue_id];
+			if (!ring->xsk_pool)
+				return -ENXIO;
=20
-	q_vector =3D adapter->q_vector[queue_id];
-	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
-		igc_trigger_rxtxq_interrupt(adapter, q_vector);
+			/* Retrieve the q_vector saved in the ring */
+			q_vector =3D ring->q_vector;
+			if (!napi_if_scheduled_mark_missed(&q_vector->napi))
+				eics |=3D q_vector->eims_value;
+			/**IRQ trigger preparation for Tx */
+			ring =3D adapter->tx_ring[queue_id];
=20
+			if (!ring->xsk_pool)
+				return -ENXIO;
+
+			/* Retrieve the q_vector saved in the ring */
+			q_vector =3D ring->q_vector;
+			if (!napi_if_scheduled_mark_missed(&q_vector->napi))
+				eics |=3D q_vector->eims_value; /**Extend the BIT mask for eics**/
+
+			/***Now we trigger the split irqs for Rx and Tx over eics***/
+			if (eics !=3D 0)
+				wr32(IGC_EICS, eics);
+
+			return 0;
+		}
+	} else if (flags & XDP_WAKEUP_TX) {
+		if (queue_id >=3D adapter->num_tx_queues)
+			return -EINVAL;
+		/* Get the ring params from Tx */
+		ring =3D adapter->tx_ring[queue_id];
+	} else if (flags & XDP_WAKEUP_RX) {
+		if (queue_id >=3D adapter->num_rx_queues)
+			return -EINVAL;
+		/* Get the ring params from Rx */
+		ring =3D adapter->rx_ring[queue_id];
+	} else {
+		/* Invalid Flags */
+		return -EINVAL;
+	}
+	/** Prepare to trigger single irq */
+	if (!ring->xsk_pool)
+		return -ENXIO;
+	/* Retrieve the q_vector saved in the ring */
+	q_vector =3D ring->q_vector;
+	if (!napi_if_scheduled_mark_missed(&q_vector->napi)) {
+		eics |=3D q_vector->eims_value;
+		wr32(IGC_EICS, eics);
+	}
 	return 0;
 }
=20
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/etherne=
t/intel/igc/igc_ptp.c
index b7b46d863bee..6d8c2d639cd7 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -550,7 +550,7 @@ static void igc_ptp_free_tx_buffer(struct igc_adapter *=
adapter,
 		tstamp->buffer_type =3D 0;
=20
 		/* Trigger txrx interrupt for transmit completion */
-		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, 0);
+		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, XDP_WAKEUP_TX);
=20
 		return;
 	}
--=20
2.34.1
