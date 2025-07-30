Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFB9B16260
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 16:11:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71C2F40A68;
	Wed, 30 Jul 2025 14:11:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MChcf9Lvwa9W; Wed, 30 Jul 2025 14:11:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C52AA40AFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753884705;
	bh=y6WlKEMdfUwBQwG8m5nZ3yrQGf7nqO54oZr+GFnNEaE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JTj97YUyyrf9LInhKHXa9iECEjeUdBCPr6Q9wAe2Jpz60MqwLqpzyf7fF/Xm/rkPO
	 tX4y+u/ZJvisYljRjFfUpFVCv/pbPA3MJ4PWTXyYOX11RWtk7aGWFMRXI2Ewm348JJ
	 nlY+IPDc3PjO/ZVHEoA3STYW8/yKnaTXUT8Im06rxCTBLLbt5zEao8jlIIj1q7wHiw
	 hhkSRRBQCj9ytz1YY5MsUpNGRhUDscKWUPseVa1g/Nd2Q8cMSsYj21YbDa9Ryd6WQM
	 GGnuLc6wvHPC0C5uTbJpd1+wNAbIvDBws6QsyY8INuwQdXTXBxusQxKERUTtDjOplT
	 GroK0IUEhfgSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C52AA40AFE;
	Wed, 30 Jul 2025 14:11:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F500186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 14:11:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 65BF440A68
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 14:11:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XgdQfU80JfvF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 14:11:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A690040A0D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A690040A0D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A690040A0D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 14:11:42 +0000 (UTC)
X-CSE-ConnectionGUID: hBEzgiYWTc6O2QKjoC2E0g==
X-CSE-MsgGUID: 3Yqo51K5Qei3+gxpUdQEFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="60002530"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="60002530"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 07:09:35 -0700
X-CSE-ConnectionGUID: YkofWyvIR1mYCo7Vu8SPgQ==
X-CSE-MsgGUID: OmjDOrXsRW6wdFk0WgXrGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="163781911"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 07:09:34 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 07:09:34 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 30 Jul 2025 07:09:34 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.82) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 07:09:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I2c90r7HEvHVoWoEuuIB+x/iGwYx0yTQj+KPRw+LAxFKY6520UACa0igjjGc5U7gNFqXB0wzZifa5tGFROWBaT70i627ARmLxGB/iuYgtVh+vscJzqykYipGEOde/pecAjRHjSE+2VaaavhazqRzWTROzdjO8T5dsAiwOXdoLFrmZ/1GmOsdpAZwFqZWQFqab8yzljiL4IezzSlgqlENqaziJ2+ex+n/2uzeFQ3KcKuwgJdMIv1CYR2krlS1fnv7FKQPWz61wHedyQUwjIaByeleI+eK14YArClE6XJLCJE816W7uxG6I+fNX57rCeKWAGZE8G9Ht9Gl+xoSSlyFQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y6WlKEMdfUwBQwG8m5nZ3yrQGf7nqO54oZr+GFnNEaE=;
 b=Dwym1uQIDh6ka8mAxLrGlx2xpGeesG24oCFWROJMVcH+sVz8LfYmuyuHp/Op5Nrfpa35L0YVD4F0qmCBJ+T+siKT/E3xe1I8FZ8fgrkZTmFvLl7bXQcTSV6EeqCsTurnVzBqLLUTUlgdKt6KXrXaTyJAhcGedG5tCxI+iOfuz6HaOoXA2u1FifHpvGXqFxareAgusuMF2MXhjwCrM96sjUpeY51t29qNfftrDi0gvX171mhgKyh6q7UtSvB1Ci3Wag45HPyvnLuD7uUMkXw5mtUzktlLlw68DueYr09ETLSPcbfIqHpwBRWJ0ZDX+AtwxUJUhxcKAsJAHW58ftFsLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com (2603:10b6:a03:574::22)
 by DS0PR11MB8181.namprd11.prod.outlook.com (2603:10b6:8:159::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Wed, 30 Jul
 2025 14:09:03 +0000
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38]) by SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38%4]) with mapi id 15.20.8964.026; Wed, 30 Jul 2025
 14:09:03 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>, "sdf@fomichev.me" <sdf@fomichev.me>,
 "almasrymina@google.com" <almasrymina@google.com>, "asml.silence@gmail.com"
 <asml.silence@gmail.com>, "leitao@debian.org" <leitao@debian.org>,
 "kuniyu@google.com" <kuniyu@google.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [RFC PATCH] net: add net-device TX clock source selection
 framework
Thread-Index: AQHcAHbJgJtB/8Zrb0SVd65H8jea6bRKmVcAgAAYP0A=
Date: Wed, 30 Jul 2025 14:09:03 +0000
Message-ID: <SJ2PR11MB8452713FE8051A2B18E742DE9B24A@SJ2PR11MB8452.namprd11.prod.outlook.com>
References: <20250729104528.1984928-1-arkadiusz.kubalewski@intel.com>
 <p4tnkuf3zh7ja45d4y2pas6fj6epbqdqdqtfai2vmyul3n43lf@v3e5dvvbphiv>
In-Reply-To: <p4tnkuf3zh7ja45d4y2pas6fj6epbqdqdqtfai2vmyul3n43lf@v3e5dvvbphiv>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8452:EE_|DS0PR11MB8181:EE_
x-ms-office365-filtering-correlation-id: ebdd6f84-99de-454d-0a86-08ddcf72a363
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?R1d0nlOf5QfEvb3pJxHLjAbk0UaPspxFFvHW/ZOS7Ktx6EmMKx0uxpCljKE6?=
 =?us-ascii?Q?ntiHnMdkf2He6z34oV7WarnHWmLLCtWCFGKBngVNkvhwhaS+nHAH2Si2X6zL?=
 =?us-ascii?Q?IPBtaYdymqMdKwPtzVbjsyxT9jCgVqvhP/BVCwoygfA2Iw2tgeVED66DJgMf?=
 =?us-ascii?Q?TOKiEv37PW121WgSa4WPrBQj9ykyFZQGs9ys0rov5UwtaY8ikJ3vwOvrEMWY?=
 =?us-ascii?Q?5rHSi5TblIL2+Uba950Hc3jgZr701qWzD7L9JFR1LKlapDXCohUZvnWXdNcB?=
 =?us-ascii?Q?mWZ1V2Lsd7lv41akhH36PuOVyZ2uB+2m1md+rPrN+X27hL8BFq0Brke6BINn?=
 =?us-ascii?Q?XLvSbfP8Z2WoLecN5HDqBwtYH2PBAVd91pjP9Mf8MnQqcp75dHZgu1KVD2+f?=
 =?us-ascii?Q?eVHWogv8JiayioobwNJIj5iXSfrf5naVkq89Wh7r7YuH3Kn8wsOMICzlq3VO?=
 =?us-ascii?Q?IBLp6DnxbrGtYAt85LHvMxrcwvrwiN6ELthfdebZ4F3BLle2wDv4qKbXUir+?=
 =?us-ascii?Q?lfs6iGmdiNzT5xnVXnJ7koIhODjkF7F96/mifqexNqPK7vGGQ/j4Il0+TKqi?=
 =?us-ascii?Q?2/Pysp5ZW5cNO4ug3P+vXUyi5D0m8J6eRaW/sNT1FEY+xiMT56KG0cCbOo4e?=
 =?us-ascii?Q?jKBG9usWYfGcQTmqo8tThk3/eXL+Cjvj8HCsRV+0PU7CxFFYuAJaWn8fr6V1?=
 =?us-ascii?Q?VwCeBDv8uwB/3X1Zz9MmhoySB3Gp07oMbG84giw57zGNVqZC+l85OIMtI4/v?=
 =?us-ascii?Q?2b9yhgDn1oBgIHaF1PcuTWr6taqkhjscftQSnkyI5bXyJv/LNrauqCYWTD57?=
 =?us-ascii?Q?hNoYfDBqKw1fH7PARBOKc57TqxsCvZS1YFAoDDC1ZmppFMfglgkTpjW8o1VE?=
 =?us-ascii?Q?9VwVG0hGCl2DAraaVsiDr/dNNpkzt1G08DFefrNWpkV5UXKp5p7jbZr0ub13?=
 =?us-ascii?Q?oCgpopxN+MIgB8y8AnphEDUx2rbTbKXlCTSGtv47hD2rMyPxEk2c5UB4UhkX?=
 =?us-ascii?Q?k5tSFRwXOe10VE7wtNnPMjROLisjJA1YnaJDdqiYS6ej1Ad09pzAKE8EZBmx?=
 =?us-ascii?Q?eDpFfwe3s5lBa+MCb4nGIybg+MdtMq6/Uf8yWEZRgtog5Tpp2k1V1GS+AvlL?=
 =?us-ascii?Q?Sj2POXivaUHIODH7jfWzYHvV/fkGk8CLF1Vvwp9pnCGYcc0dOwn9mvJnoIBL?=
 =?us-ascii?Q?DASOmSMSPG9G8M5lOVvfL0rl9YD3WSkX+cW6znXNbUmmgowmMyEXdUeadrBb?=
 =?us-ascii?Q?Mu2STk2jfZvWVow6KtrF3iYRtPQGaT86CWtClwrrwM5t+ZLMe7a3TvIiEFAA?=
 =?us-ascii?Q?IeQm4yX2ovEiTl3h2kM7XOB1DnL79Pt6oC8h0DCPM4WZotxXNa3ElMRz5O+4?=
 =?us-ascii?Q?QlF763XUGCpNz7K+OvmbK5WeL8pr7X+wRRSFq/FrbANefPEr3BhqK9JobDn9?=
 =?us-ascii?Q?4lEUQVrtMy1TOsV4YFwfXVMGKF6Y6H4G65xZfFckWa3YTbQ0d8NogQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8452.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JDKf1NKDTIBMILcleNF6Ymyd6epfv2KnO88kEtLqZ6tVTNN6rSEHJ/L0ewG2?=
 =?us-ascii?Q?vkbpuEgHN+wfE4eLXhX/uq48eE/ggRaQGagPXT2SpPcYa5kn7I6e8vPVujAc?=
 =?us-ascii?Q?mFHyEOS0hLj6Gs7tl9KS6Cp7V93W+MkRXZPOBL4CYtsickdJSqPTXyKdKilz?=
 =?us-ascii?Q?29jnk5L2Jw1XqGIq02CewRj75qSakQAVK8DIJCGtHg84n04whlgbOaMJpt5Y?=
 =?us-ascii?Q?j3rKbaHzg36dDDvGGey13/+3WjtH3RpfC223E14p3b2RoLUV1edwXbTB0BUU?=
 =?us-ascii?Q?ZEFeR8cKq+jxZMyf3PTU7dBLi7P9ZpsLbnRFCr0Ojj4H387T8zB0i7B5ab+c?=
 =?us-ascii?Q?8n4k/e5o/Hx3bVBVumMwFZy4YXgH4Fdpx1u4MGlNE9E8couP09Gn+JzNyuaT?=
 =?us-ascii?Q?QzQZ0Ei0s8y+4LLRYskUjOBOv2quv7oKEcqfof492bdPETg3/sJFI5TjhkzC?=
 =?us-ascii?Q?0j49v/wGeoYaS5I7D9y1Pog/VTfXZ2KM+sS1YhVcbZimYHkj9dWp66Z/DKuY?=
 =?us-ascii?Q?azkbNkqJDV+PBb/UudD6qU8Cx3BBnNheefQ/K+OEFdCN6ENFupwLgZanI6Ey?=
 =?us-ascii?Q?5KMRRfajbdMyp6ZfH+lHDtlUrbkO9CtK2+W1vDEF+gakg9cq90jfNlprhViA?=
 =?us-ascii?Q?LbxmU4hTect9wfB03vFc4QRDhS1dzQWXk2GuNM9RDYRZtlnMm8/3hNzFpWFH?=
 =?us-ascii?Q?pqLaxCyLQtObS7UAm4wAm0nbd/TS19Gsil2S4H6g4aDV34HdnyODVaTTUD7R?=
 =?us-ascii?Q?ZVbp9zscOn4RlBMlKDwwhYD/aogWmDJEoEOCh8EBU9GCxzfRCCmyhksC1+N1?=
 =?us-ascii?Q?fKEOf1Lvj2wqlRd7mcLGoDtoMK4vRpZ7J086AJN0MEZhJ62eORtU0JO0Bz4r?=
 =?us-ascii?Q?RjWODeUlgiU4+ILVNRwPVSww7RZEEyL3xf/0e1eVhlYKm02CignMRVAXY2ly?=
 =?us-ascii?Q?n+nKS0AxwM6e40q/Vf+/g/hdQL3nDFIdQ4FwhpRxT+vKkQSIy8uCoChaRDQx?=
 =?us-ascii?Q?JIpyto7HdTu3GvKcmiz7CkHJjws41zzn8r/yM8x/S2TBrp+Rz2mBo/8L10uT?=
 =?us-ascii?Q?+HL8KR2/5sZ0BzwKllLV9aYF3bi2oJnBEwChQBCBgprzqcLUkb8TGqOHqsbF?=
 =?us-ascii?Q?rsVhMbyHuGcyiRLycOJtx4O9svRk+lWl3Cm08JqujWkhJxjXRNeWSa91BkOC?=
 =?us-ascii?Q?iKf4vxMYmMcN/rFpmX37XVbbb57eYHz4A03wy7da1qRiZYci9dyZOjk4GbgN?=
 =?us-ascii?Q?qoO2AgNSGyTdwmvnI3ZMVhW/ebqxgM681Ss2WgtBCVariEmbtamsiA73a936?=
 =?us-ascii?Q?5bowYasoFdElSeReNd8ogfDKn6cjT1p32sIRZ2vw7RfYBgbpkVV1kiCANXlX?=
 =?us-ascii?Q?KfZo/Q+R3YHsIJnV/5wjcsjlJ8UcFGSQGkM+zT3SBtifvmF+8E45R8dHCBqT?=
 =?us-ascii?Q?RDGjuvY+BV0JGcxNj7Dfk3MHgpAAHXHpxu97/4Ln+1DfrtUGO0zvidSNDzvs?=
 =?us-ascii?Q?XVB1LtLFC91ACG+N+ygM6W21WnAHjoZwTc2Wo0UMqY6Wz6C4PMKWbzcb3gkY?=
 =?us-ascii?Q?KbDgvyH8yM2pn5Vjp6IgJSLTHBQXbW4KTvhebrZa1MCD4NtMLX8bD0+LSKxR?=
 =?us-ascii?Q?TQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8452.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebdd6f84-99de-454d-0a86-08ddcf72a363
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2025 14:09:03.0780 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PdWAU4U8R+8X0uVIguBYxddcCmP4Olyh7LmeTGTqJRRuGPvLlQgj4MQbnavKYejgt/Lq/+3ga++E3dli5dA6S+OYSSn+ccMFnWYZdrturok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8181
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753884703; x=1785420703;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y6WlKEMdfUwBQwG8m5nZ3yrQGf7nqO54oZr+GFnNEaE=;
 b=gYHlftLH9Er87Gsu9MM/FlaVigaFS8PBA4tnLZ9zk9tOclJJRTmXWvs/
 a1kejSCHV9zPIgb6UnBuPHUhXguGNYwnSy/YOl0DyHXOyyxJirqEjPODN
 vJ8bERg8YZ42Qib2ayyy7VsR6WFOOrmbb8+/GKzrvvGm1gU7JxFzlX9Qt
 5ldGrzT8/U3ZRXm2VdQPfkml1uJ9jgMsR8qlTckILjEs7/vZ5+wiGEOJo
 LWitb+jnRpn1oxycjKUi5Rmhzy4ls0MDzJKoJdwKH6sf8UjbdIZ6p1DWd
 8IWO3cg0c/6jbzskBcSqAqSdnMS1hRpBG4M5UCYHkrcFjDcgKarHJGKy6
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gYHlftLH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH] net: add net-device TX clock
 source selection framework
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

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Wednesday, July 30, 2025 2:26 PM
>
>Tue, Jul 29, 2025 at 12:45:28PM +0200, arkadiusz.kubalewski@intel.com
>wrote:
>
>[...]
>
>>User interface:
>>- Read /sys/class/net/<device>/tx_clk/<clock_name> to get status (0/1)
>>- Write "1" to switch to that clock source
>
>I wonder, if someone invented a time machine and sent me back to 2005...
>

Probably temporarily, but this was quickest to invent :S

Creating a single DPLL device for each PF/port seems overshot,
Could go with extending netdev-genl
Any other ideas?

Thank you!
Arkadiusz

>[...]
