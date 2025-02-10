Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE29AA2EA21
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 11:54:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76EFF81469;
	Mon, 10 Feb 2025 10:54:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iHcd3khtJrrW; Mon, 10 Feb 2025 10:54:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 810DE804E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739184883;
	bh=nZ0usIPh3Xe1EHm8QP7Hf0+za+fwghgsmogo79yMt10=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cH/DPBnNetFmVp6vlFe3taCFdt+aPZBNgbglp98vX9GDf3VYbYT/7BU07pDzLzjiA
	 9HM9X5HSUvUyMKG6g2sJ22ShIAxL9qMnsigPZtr3ACIsNSQiczJQJiQcPHEsJyoCw2
	 bZ2TBA+LgsCumsI3DkD4nChzawgDClopc1aIo+/j1q/ha6/sNJwdbKgwsezAPgjBo7
	 AnZXkBLhWUKK34aY5crTsG0QBBO60U3s1LSgRwsy52LFyqKU3zxet6YFKOSo2cMq/B
	 XWJVpXJJGykUpEgCaSO4XUWyH3bYUuIIR0hjKXhNTozfexrzlHEILNvy0YB7NL/YZp
	 Mk0ZiqpuXgtjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 810DE804E9;
	Mon, 10 Feb 2025 10:54:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6D035199
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 10:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E8DE81036
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 10:54:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yaHb3AXvqg0q for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 10:54:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F0BDE804E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0BDE804E9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0BDE804E9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 10:54:38 +0000 (UTC)
X-CSE-ConnectionGUID: JzjRJkGpTHCQV7XILRR4gg==
X-CSE-MsgGUID: g5r76RHZQJqIlX7BdpqPlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11340"; a="38995326"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="38995326"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 02:54:38 -0800
X-CSE-ConnectionGUID: sXqLHyF1T/yLXsuzv0Hu3g==
X-CSE-MsgGUID: KfitusQWRyWPeRZS8N0yvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="112685240"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 02:54:38 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 02:54:37 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 02:54:37 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 02:54:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bsph5lWSl63qHGx0nlBgN1T32I93IMS9lLydyYKtX2P5uY4idQ8Z/bHyImFNg3XYCAictUBEa0o3l4XT1rUTnSaWmLimT23wmvjZLm31NRMBQ349w3mZdSe4SX09EltQ0ZychcuqcTbcwWzbuErCqOX/m/1Csx1eJ64QNIzMsWX6CQ8bFj9A4iCKFqeV+n2i8Kt3WrlYHRNcO0sRRuzl54USvGp6qZJfVkfT85/mOg1gl1RSCeyp8FqMlX/JZmIZrS53htUXqyl2He0WSn/WVbORFBn5omuIdhlm4Wus1uCHMuyipqGCfj2p3w8UD1q0zJ9SZy5c9eZF6c2HwX14Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nZ0usIPh3Xe1EHm8QP7Hf0+za+fwghgsmogo79yMt10=;
 b=gOivEAw3zwRXvjOqHNPP9Mn3oluaJyOCWxzv1r8EEHcFz3MAb0AFbgbIoQdBjqeBOebPT7sx87ovwVhNskjvHRZFgGXohBYaZM+wQ0MzjDhBTzk7C1cCbsBK+XI1WLMDyy7HatfACmBskfVFEgA6SdIBmJ9/a1CgPNROUVXNA6s7jzO/LWIie5PAvIb+lqhGr5de6epEFd6rzbCBJF6UB/SGHLuMOQVrpBWTB/+M+AI8F6la1EOD5W/qVbEkgDPDf0Tt2jwv4io6LBupPVKAxv6+rq7MGQr+3dvLCmzK9xL1RAtMsr6LPMVyMsSG8mz+zPLDyQyvt6GAgKsmYz+BdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by CY5PR11MB6308.namprd11.prod.outlook.com (2603:10b6:930:20::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Mon, 10 Feb
 2025 10:54:34 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b%4]) with mapi id 15.20.8422.015; Mon, 10 Feb 2025
 10:54:34 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>
Thread-Topic: [PATCH iwl-next v1 1/3] ice: Add sync delay for E825C
Thread-Index: AQHbeHLNg6cxkljSk0aw72vpIX558bM7ni+AgATCzyA=
Date: Mon, 10 Feb 2025 10:54:34 +0000
Message-ID: <IA1PR11MB62190D71B315202FB7BB4D8A92F22@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20250206083655.3005151-1-grzegorz.nitka@intel.com>
 <20250206083655.3005151-2-grzegorz.nitka@intel.com>
 <20250207100331.GJ554665@kernel.org>
In-Reply-To: <20250207100331.GJ554665@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|CY5PR11MB6308:EE_
x-ms-office365-filtering-correlation-id: 563ba4bf-e0dc-46de-a317-08dd49c14e4b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?SCaz+cZZHHbZoM2p1ybJlWpV4FS+7F7OhzxvPlCPgTdFkM62TWFxzpY5A1ft?=
 =?us-ascii?Q?T788eHI1jCZ7o9PUa2H7YNvA3Ab1Lj6zrkD3dUT06p5R2SZoNusk/2T/0Uov?=
 =?us-ascii?Q?6rEf/UX4VpmqXN4w+/r7iU09NrwbKpXQNrFR1Q2vKc3bR53WuS1FCUqIq+Cs?=
 =?us-ascii?Q?4IRJX2uzQkFBuHxA6dyicKkeTae1+CWD3tl+9dJ/1n41sN3QUKn0rkl274LP?=
 =?us-ascii?Q?yWAjPbBETXVSA+zmjxgefwbts18xkpu/LyKqiVYNwmOR+Gk+V+d98bpQ4DoU?=
 =?us-ascii?Q?rA8fOArJnQIXDVjHi5s1rtzAVUw+/2U/Z5h9kdkAgdxOWp1Ru/BbfMhTWW4x?=
 =?us-ascii?Q?Kvu/NE36woGtdPTTkfIA8ts0Ca1JgPXDfR9KYEwWuD4f+0dt3LCbq8zDh//M?=
 =?us-ascii?Q?i9hSMlI2L5VyITaae/CvHG6X9UkN3x+FcKj3u6ZeR5cYRUC2x//mLZs8qbUH?=
 =?us-ascii?Q?juu/HaogMg3YUon+xMol936s/OGD8aD1qgEdFwGMSG2Nng2BQaneiKKVO2NP?=
 =?us-ascii?Q?x0ykApnNLQAsvGLdM6Y/AKl9CVSXLRYevUPG3aGQ2JuStOMrYL8dGs27e7+p?=
 =?us-ascii?Q?Ik8mHnBG9DkIeEFuR53oP4qjX/Yo79OKDUy1PoaG1HLmKmBHqOrfGqhwi9R2?=
 =?us-ascii?Q?Yy00iL1g/eYnd3ZAC+GNiBM7Gz0GyOMLEU4GkJkudgt8nyasf1wo0JbVoJNX?=
 =?us-ascii?Q?GZbwY/tVM/anZZT87xgvS2O0GTlEVCI0ieWVfXNOfSMYJgxmMh7liXNF6Zxu?=
 =?us-ascii?Q?gLc/u2+65JvaRzdm9E/OD9N1q6cWJI7JKn1HoZePPlcra1F7ZCjgUQUjY99x?=
 =?us-ascii?Q?WgExlgyQAtjDzCVGC9XqhVN0YOF4g5UJcyl7bBfD8Gzfs6/KY1McOIi8cYzu?=
 =?us-ascii?Q?z+M1LhjgAajsSCURoJUJURKJ5DrNJBaSXJ4n/cb3md0DWi4dEGfXV4y7mHHo?=
 =?us-ascii?Q?ivoT2Z1hpJ/dM+/Swn00u4kyGqE4uv9E8onC3MiN4Jm2a18MOe5djEWbokmU?=
 =?us-ascii?Q?EtkdwzSbxVEQ3KrizsMUmdI5gFYA/sknw8GC178TffXl1gs39f9vXwu5pA9/?=
 =?us-ascii?Q?JfbOJiXwUeD/MCna6firx2odx0FmpUPSml1+pui0OCiYU7aMKafhPnd2HOsP?=
 =?us-ascii?Q?txHObNOP5d42A7TlcNkhulh6sVwbFI9oS1lPWj5yu/sEOeXa0xh+XtQG3Ray?=
 =?us-ascii?Q?3K7rWuVk1PalseyA/D6RGj3Tl9G+q3uFK232X46O57mq+iFRO+zUTtnY4F40?=
 =?us-ascii?Q?8JMD3VaXs/z4tqjrH1Pl1Ybp/t8Mf3Y4qAQ9AyezeqBFVKUpDRapUHu6AM5D?=
 =?us-ascii?Q?aqatccOLDFKJf4uja2/CNOw6ZcC5eos8f4/jcqRH7QuUXxA32+im6dbjXem3?=
 =?us-ascii?Q?M9aUtOrICZ7IwCZyPeKOexanjC4Um12KzBc0JyuyDeTBHK1uIRg4T2gupFGC?=
 =?us-ascii?Q?Ou4Np7+czp89f6AQSI5JORhSZffKl7qV?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3qizLEl5DX5So8wowd1+0Ovq0bOYG/QM5SAyOOJW4c2rr/T3DeBVKFpY2YB+?=
 =?us-ascii?Q?e0He0mtWqm0Vvjl0yo49SEdMAdAl1ZFoUFSRRLEpuE5V1JpPGOxg6Kt+nLXJ?=
 =?us-ascii?Q?2qqODoBSTuUAXk0tsKRLbhlLCVfy3h33T8trOMy1z583yZLmf3FMK31GIaLo?=
 =?us-ascii?Q?DH5QZJ/8GAXnD1sA98pIZA+BIc5dTyCwj/t2d4qcPtFKvBCswLh3KLfHcvBr?=
 =?us-ascii?Q?zku+SAaroRu06AclcjnSMcyLOautRSTSEXsha8RcLw7UfzmyHzq+H6oqTZO5?=
 =?us-ascii?Q?/b4M6Inyyi/h7EjwzgZqbheqPk8VWqRKEiKDPLOoY/lqsqmZjydc0LgrUkyO?=
 =?us-ascii?Q?wUfJZ+I+Ob2vm4Br+1/+eYe59tMaq7iGaIx7UORINtUYVou6eZFpXRZdLfCM?=
 =?us-ascii?Q?XBpiJd0YmXekGzmNdSNtq3HkePGVs4u+p/kyzb8iYinFbv4cPSBGZCdJ81SU?=
 =?us-ascii?Q?u5qz+9F/5NjGG6qudQWLdwSXBnkGskPb9qauKtF1T8bp2NFQj0L5TDKFDJ2n?=
 =?us-ascii?Q?cuZJCb3yERu6ix+03s+z5szpHtocRfMpIQ6b9UkGjvsE5nwNSf1Ss+2KzUlj?=
 =?us-ascii?Q?vUshFWjQPdYavTbuyoCefVOlxdNPA/UPy8Nw0Kqw7rpmu0PxisZ5n8UxPTnz?=
 =?us-ascii?Q?1EIgdsTip0EmzazG/aVt575ayjyVH5r1UZ2lalHnB3HRtLnQrOFXNbtb0tA4?=
 =?us-ascii?Q?OLExEDEhhS/ss/6Acg6ItPNP3dN+oZ5v0motMS8IdKb+TU5wgoD8EwdtNd9r?=
 =?us-ascii?Q?wHUoUq73B2xPTC0UUO2Nk8sqDjel2Eg1eyKnvEzisD822mcG1v7VSfZNzNf5?=
 =?us-ascii?Q?qEvUJFNEfxcufGY9y37u78FiIR4v8unMiPf3B4v4e7zhhxW1YtybwgGVt/TZ?=
 =?us-ascii?Q?puohWr1XPZFn5KR3NOqmk6vwVoT6zvwJTbVu1MVwgb5zAE7cBIGPlZwHly+y?=
 =?us-ascii?Q?3OIOPn1GMovwZHwCP7gX/lpdHYkUG6B+ZFa9svAqDE7Z8OGPT29PTaxlacYu?=
 =?us-ascii?Q?ESyauUUpV/w3GsUNhsQNsTZx7ruFQLZRDTy/3Tin8i7sVMKVw7ZZh1qnG2ho?=
 =?us-ascii?Q?NANA75a/mrN9w2vbxwkpPD1hb8ByEnRfLRkoiQw/y6yC4yq3Qk6NnjhFfMh7?=
 =?us-ascii?Q?G0mvUzL7Z5Vwg98zejsXCm3ut/SRy1woFXMwczlR6wIjAW9Z+fvkbXBHos5h?=
 =?us-ascii?Q?1+4r0FgBnSCyruDd0XV37uWCYF+WogLtHk4XVKeB4nlJZXCujg20ivKE6jJH?=
 =?us-ascii?Q?l68df/ZtR1QJIJLpWw4MBPIhFbKSBr0bpZASg8K5MjKy1Q4h8S+/MvETeeNu?=
 =?us-ascii?Q?fqKs5h/RKptH92TrlIDGXk+I+XGEQxGK8isAGE9On4psnQ08LO5mcbg1AE2+?=
 =?us-ascii?Q?to8YKQLM9r+KwMC1KKcQ+CQi3gUyda2Umf+nBdDG1Ay7mL4QY2j8d99iEzjI?=
 =?us-ascii?Q?HCyTtixdoNiJKyoBsFIBsQK/hAH/Ada/8RnoBus2GTEw4zZPLmbHc0dd8Pi3?=
 =?us-ascii?Q?B7Pf44xkcD9nvrsvRxEkSkLuqOz0Fyn+Stsz3uHg3SD7W2R/BRceKejRZBaC?=
 =?us-ascii?Q?38hBCvoFqW/UA3gmwzPkqbsEssVzYgXc0EsWkJvP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 563ba4bf-e0dc-46de-a317-08dd49c14e4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2025 10:54:34.7077 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qHn5+657gEFVH2CD87UX4tAlIreWr1GtzrwAk9tl902JndS6hrJxpCgzp9dBsR0Ppv+BP8uDLz7P9TDIsMmbFwyPkXT3DMHPMNwQoNYmToM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6308
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739184879; x=1770720879;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nZ0usIPh3Xe1EHm8QP7Hf0+za+fwghgsmogo79yMt10=;
 b=iitgo9191cJHQQ/xmF/hFzdIkaZsmOsksXIqE6DfhPWdQJZSxAG0hnub
 pDv9TAdO7py1Pt2nrNIuzE2A4mTfsBmJoH5570KuREc7D9feNgBb25AXD
 SbGfAd3joBpDQ/kAM/vz1IozxNiwdUqT2KOf+pE9qRJb+wbTVCzEVVo0X
 9+1VvkK2SQXZRlo7xoZRf8LWPTx7Vgiw4q7DiST1hz0GbLjUBbtEiILRa
 6dwZq24rRgktfo861cJzPZZkty/w4azLoB/jdKJpntX1Vr236yBG1REqe
 Gtd9TP+TTGvBM/1z/+Y4+qeFSgMoEUH2dB6jo8WJwW3p8A7KJYsA6ohb1
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iitgo919
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] ice: Add sync delay
 for E825C
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

> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Friday, February 7, 2025 11:04 AM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Kolacinski, Karol
> <karol.kolacinski@intel.com>
> Subject: Re: [PATCH iwl-next v1 1/3] ice: Add sync delay for E825C
>=20
> On Thu, Feb 06, 2025 at 09:36:53AM +0100, Grzegorz Nitka wrote:
> > From: Karol Kolacinski <karol.kolacinski@intel.com>
> >
> > Implement setting GLTSYN_SYNC_DLAY for E825C products.
> > This is the execution delay compensation of SYNC command between
> > PHC and PHY.
> > Also, refactor the code by changing ice_ptp_init_phc_eth56g function
> > name to ice_ptp_init_phc_e825, to be consistent with the naming pattern
> > for other devices.
>=20
> Adding support for GLTSYN_SYNC_DLAY and the refactor seem
> to be two distinct changes, albeit touching common code.
>=20
> I think it would be slightly better to split this into two patches.
>=20
Sure, will exclude this commit from the series and will submit it as separa=
te patch.
Thanks for your review and valuable feedback.

> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> > Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>=20
> ...
