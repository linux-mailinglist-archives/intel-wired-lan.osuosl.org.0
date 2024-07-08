Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 200E792A35F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2024 15:00:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA7A280E6A;
	Mon,  8 Jul 2024 12:59:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L6NWuQ3j-jtR; Mon,  8 Jul 2024 12:59:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DBAB80EE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720443598;
	bh=GiS6ZKLGdvGPs6+UUd0JusViAK+tN0Tzyxv4LbvuDAw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sx7WsQcKg3EOs94i63qcLkNbNR/SDmvPwYGXOdiYMIVGfpD7WV2CdJ7X91zpqju5x
	 TtTdfxrHJF2XUB63O8J0GIjpr+BCXlnFsUg7us5QPSX3VZ0dHZfWrpLT8eA+CXwDj/
	 qMYGVTFTJ1U99/WNOlzYXVe6wvzKlZSLrA1l+FlK8Qrvnr2Cgs7kAkkFdGlDY0tomF
	 +7icPZagVVGmTsI+IXuSMLs6IKr2HMvXhddNv8rN8rTOfKTXtXE8yiY8Y/5MNB4ju0
	 Btb5IW/yI/vgizhZxvdb3lwprJzLlqokDQWlebZZ25pOZCjhhcUQ3XbaUgNjTqLyZJ
	 Oh3hu0Xj0k2ew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DBAB80EE2;
	Mon,  8 Jul 2024 12:59:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 30AB31BF20B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:59:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1BCCD40A13
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:59:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QOSYodAwKwx8 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2024 12:59:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=tony.brelinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 94ACD409C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94ACD409C4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 94ACD409C4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:59:54 +0000 (UTC)
X-CSE-ConnectionGUID: 1JfcCG0QR+2IouL8LYPgKw==
X-CSE-MsgGUID: /bNXqPisTj+u7GNqZQhhmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="17598563"
X-IronPort-AV: E=Sophos;i="6.09,191,1716274800"; d="scan'208";a="17598563"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 05:59:54 -0700
X-CSE-ConnectionGUID: 9TagS/FXQwqQtPQjN/1yZw==
X-CSE-MsgGUID: TlInqhczRhG8ZZ7cBpJLNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,191,1716274800"; d="scan'208";a="48237327"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jul 2024 05:59:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 8 Jul 2024 05:59:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 8 Jul 2024 05:59:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 8 Jul 2024 05:59:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BityHl3hprEkbGLx94AzBbDzZ20gcCsa6WKoeflxMv7vLoKrrHk2f2IIu1mGjf7rSmixYX0P2sKnx61mfpCkAN81ImO5brBRIsB4LgfUP3/HQts5qCjIVB0B6ui2iz8t6eb0LWu/+lvFL/RbC7jb3GK9uztn5hYBHo/KZ9ZGNkdpxvhbdsH+e4n9eysVJuJUqMcpV9yey6QkJVjQP/mI8R/Y45K8gwPWfm53Ckg/k7qPBs3493CvYdAIm1FmbUU0RyW0jX0+UZYILkE3e/jOh8EOjerBro/4cHOqOV3lBYF8R7Pk0ysRtdgHRBZEelatg+8B/pf6kF24WoZPf5sMdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GiS6ZKLGdvGPs6+UUd0JusViAK+tN0Tzyxv4LbvuDAw=;
 b=HP5Lq7nhTTuQOSrCTBF5hFfkK/XcnJzEn0NepRxE7AwcXFqYu157x13EpFdGX4IEpUkYM/EgqjskHVWvrJEz6BSaVvwrX3raZBgj4Ody2angekcGxk2Fd5ApQAoPeBK4yeqT2oFx5KLeXgtWUAo9eMfN9MGaBQYPYsrsDgkpk4diQVwW/jV4c9eT3v8YLGSdiYfqf2pYzCc6RWw7dijC3iWGTiwelkYhI3LCV/bDejyk5DsT03juvzTpS0Oz/b937Bt7dvvgrvRy6UhAT/+6sFVFYGjrxwG4e/lgCssghb5728ESDbTYCpp1qnpPmxwRJLJyx+PEmgBF2JDzR5ZPQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8115.namprd11.prod.outlook.com (2603:10b6:8:12a::12)
 by SJ2PR11MB7597.namprd11.prod.outlook.com (2603:10b6:a03:4c6::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Mon, 8 Jul
 2024 12:59:50 +0000
Received: from DS0PR11MB8115.namprd11.prod.outlook.com
 ([fe80::4cbc:6f18:8a83:eba8]) by DS0PR11MB8115.namprd11.prod.outlook.com
 ([fe80::4cbc:6f18:8a83:eba8%3]) with mapi id 15.20.7741.033; Mon, 8 Jul 2024
 12:59:50 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v5] i40e: fix: remove needless
 retries of NVM update
Thread-Index: AQHaxzCJeDBMGHK12EmSa/GQUd3oPrHs3qdw
Date: Mon, 8 Jul 2024 12:59:50 +0000
Message-ID: <DS0PR11MB8115AFEAB17A7EB4DF55235082DA2@DS0PR11MB8115.namprd11.prod.outlook.com>
References: <20240625184953.621684-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20240625184953.621684-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8115:EE_|SJ2PR11MB7597:EE_
x-ms-office365-filtering-correlation-id: 22fb2c3b-6662-484c-7bee-08dc9f4dda78
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?MpyJvFUkGuM4b46rDLLsZwxAY053z2dkzeZ0UwtZJK/S1Uqb71ylrXT4JrQI?=
 =?us-ascii?Q?4SWEV0SRS7RcygwGDqS0OGPMKO63FWOleM6KAyplKKeQeY1dMWPkMzCLXBWk?=
 =?us-ascii?Q?0NLsPl5Dl/BX6TWNa3EgBz/jSYeoL+mE+cZ7xO+netuo2v3bC+dZqLSKanEC?=
 =?us-ascii?Q?E6Hcs0aHIFyB5+F3HiFKVSC8OZ63hRWBgwHnYmeiTrBHPnf2WM7puU0uqO53?=
 =?us-ascii?Q?6UoiYVFjZDe153TO9KIaU0kk9pkoZb8QEMoBbpIMX7ofFjxvicKe1m4/nJv8?=
 =?us-ascii?Q?b7bl3jOKS49hQ/IwYJntEfcBErCUvT4cnDBVSI4BdU6jRSXb4mXXXXHNiIv3?=
 =?us-ascii?Q?d42DOtcpgz/XdTiTCOfQhikb8p0x2OdnSDRyrim9itYugbdkz3B3wc3J+L4L?=
 =?us-ascii?Q?I9zRqaXanLfSKHa/SBOYq+snRsSjU5nfYgON/z/jgdbDqEKKYlt6dFTgWC+3?=
 =?us-ascii?Q?7JUpObUWzHRgKjyoTcKf/VwnIAyGYqelkj97xEcVukVYn5CnJSNVcQ2m1/Fu?=
 =?us-ascii?Q?NYbsSE/h15NIbPdXkfSy6HJ8FAUWmJnvhiEGrnHQ1Rq/Coy08GD1VSq4z9N/?=
 =?us-ascii?Q?gYQLJecX7vpn/PdWiT68UoFv3GxR4dQ1F+mL4QHr8McegjqvF/nKg1z3Rdju?=
 =?us-ascii?Q?lBi4iR8ONvS3ic6oxhioWt1MmK387aSsuV7X99Jh1c6zDjPvOkO1jSzUmq7Y?=
 =?us-ascii?Q?rOkR97KiqCyMdyvsUKsdWtbeNiRUpTUI7PmBSawfrn8Z0bC5ktRjrScyBojJ?=
 =?us-ascii?Q?3uYqTlKn/4aEU4SW6lAyY18VQGofV6I6oFLjohy2g9Hls9QgzXuHhXhOey+C?=
 =?us-ascii?Q?3qbEDvmFhowT1OC7qPTVz/LL5XnktaWIQSRyIbHnypVRV/FhLyhMQcrh49UG?=
 =?us-ascii?Q?cw0nULZUkF8ciQ7DREJsHpaP/4Xh3xTt8S6WFuyH0038HFx5CiDSXGkGW6HP?=
 =?us-ascii?Q?0rqtgl1gyz91/UPTAo7rBnBI8m2hagR3B5Qq48LSUhsGh9FCvGa7S8aTBWQI?=
 =?us-ascii?Q?kSex78oBd21KfguQCR5qJ45KelNV3ms9WlSDKIFbdcQQtSlySahR+uu9yTzk?=
 =?us-ascii?Q?+LCfaD19WxwT4PJdZWDe+ODRWIEowcg1IJH6rOWLM+3Sjsxvlofg3M4EqVJJ?=
 =?us-ascii?Q?YKnwp+MYOYaLEg4lgCh1bWJmcC6HYqk7MgwjA6pgLGrqwqUOr0PyEylSWGqJ?=
 =?us-ascii?Q?SAmZ+FyTxbiLJtzYbtuUgBYxIyucPdvqnzf6X4I35ov1UVT5JOzTrwSusRh2?=
 =?us-ascii?Q?eRYVXNFiP7SksHB3UqRr4h62BDMrZhXLNu6AUW9ogPzJxlnoqZh7nAslhGe2?=
 =?us-ascii?Q?mDAODB214gH+wu4mrGa5fkvZ+dUSFKVFAObbQVlESKYSvWW4poNupS0tjH+T?=
 =?us-ascii?Q?xCtfy6w=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8115.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yXGEK3FGOZMtdNAtKFI5Shh5xZoik/DTbvQn52rHQeoX2F7N9eR8EZ/UH/yn?=
 =?us-ascii?Q?oIeQlRz6CqiW4ybo27wc79sxyRLKBY/Jm4Y9+TgUH6T9XKX5Msd62T27Azvq?=
 =?us-ascii?Q?IB7obsvE9off7JIMQ/fPnCk3Pd/3kwXFOnfComVx2e12XnMB/rpnXdTvC/wM?=
 =?us-ascii?Q?6Gv+4gdajLOmR4UAuYVG9EU6+7aFg5etjXad0nrK5gx//pVLIKy/Wv87oljN?=
 =?us-ascii?Q?AyI0pNR97kvMznOda4S+8sSCK2HwX7EAHwcMC5y61MDL5aC9vd1Je86dQYLb?=
 =?us-ascii?Q?+5AH05mYVZSAAnuGjLzOnoPNxWICrXCUGoNoSLesGtK5L9dxMOJ+brjvsRdy?=
 =?us-ascii?Q?En2OyZCsc6sCK+N1eG6BBwDtDmjk0p4GKU4yL0mmbnnNDiDC32qSg49c+i2I?=
 =?us-ascii?Q?61sCP+Ok8hZdJc/fniRPRnfkeh3vMOeddVSywDC69/z1n3MvE6Ym3JEnRD0F?=
 =?us-ascii?Q?nxXRY2NNHyKZWbrYptx7iAKOq3AG625U8pEQAkPOGLTeIpuh6bXF7vRruOtI?=
 =?us-ascii?Q?GaRi3Iyir512gTtxED3ri9ior5KNx4H9IFZteFo6+R3AlEG263tq6qU6tTgt?=
 =?us-ascii?Q?eBZLEZSRE9KQ+HH/GOkLixMr6LcroDvnSiSXj/ujIdkyqosl4xarZ91s8zOL?=
 =?us-ascii?Q?jWVqNGCLqt3dl6S6mzydIH23lT4GcfnhFTNrwwdgwrSiUTxYJdP0nIrEwzSy?=
 =?us-ascii?Q?ClyiBti+3DzOmOgUTHVOUmi+XfnYRg2u1fTQ0A/EhNO3HCSoGX8tFdthWQDF?=
 =?us-ascii?Q?tFrsora7hL5P3I8tzGp9OL7OCv0u7LDjVy32KCp70KaR5OsDhyCNbfLiGgnz?=
 =?us-ascii?Q?gfBw3yTT7I0TUr4gAVfO1OquwEHyu8syuFmbbqhKhdldj8wMW7VRmCrZrNrt?=
 =?us-ascii?Q?qhashnUdcyexr2Ir4tHnptvFrjzaw3GJ4R2MKLLXfVDSWAir7b+HI3D6VWuy?=
 =?us-ascii?Q?0SsyX+2PE1gY99wQue4uHcfS9O5Zr9+hcMHXPk1tXMIvoycNzO8RKAW/yFbu?=
 =?us-ascii?Q?FiZc/WdsWYebMIRBwZVto0FTFZGBHxj73Wlo9M97pYwDUBI+E2hy8heNzrux?=
 =?us-ascii?Q?9Kjs12eHnQtPnfxLK9h4UyLeGDXbGn3c3PSWjoUmCzcK3Z37v38ClzAhwWEk?=
 =?us-ascii?Q?bMrpzgj3stUfxs0MHFDl82USyYCdSmzHNxsz2kiyI+iKn2mHBBeU3stZZyYL?=
 =?us-ascii?Q?J3CWzqL4xTtDPG25LPmK1GfPGvIXUNifM7s7gRz3euA1v+SUdkecE8TftPrp?=
 =?us-ascii?Q?vEiXrULSoD+7EXLMidbn70Cx0B5TbrvZliM9e3aY1CSYBcL7WaFpWdS9FlZW?=
 =?us-ascii?Q?F0JAQBvE48qxyvbApNbdMrvwcfXUeZmO2XfR7Hr7dg63NntoKWJobEfjsxYE?=
 =?us-ascii?Q?g1zkQII+RIBb0DFvubW6kcecR+EfL6xP4G/QYcOsguZTNOVlbUNFrabEq6/l?=
 =?us-ascii?Q?TxDfkh1Uw04DzBRSwv7KAmPm0hqVt3JcFHOtNpR0t88+SoWzRxvZf17V9Du9?=
 =?us-ascii?Q?PEZOTs2KtY7qGlLdKtZw6lHEtTLdrPacWtv72+6PrjfjVBKN4fgm4j3fd8PI?=
 =?us-ascii?Q?XxAd98oQboAXPaGlFMxBvr2ffQfwCRKpq0bDsXc6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8115.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22fb2c3b-6662-484c-7bee-08dc9f4dda78
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2024 12:59:50.5798 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3X+TaejLZkAFQsw+X6iNesr40PT38un0LF/e3GQ8Y/3uZQ96HdZVzrv3ZXRUBGCWjr0CAEZCEzQv7NjUMygLzT3SG7PAoFUIsz0TigXpIZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7597
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720443595; x=1751979595;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BVwk9fVpXTwCo4Axu9KwRmKYxgG3y99iTLN4OYktHAg=;
 b=l1WwD9z+bko6VlxlN/oKMN42FWh/Rx2lKmzukKvveWoNZoz4k4CwrMVq
 J65QWHxUhDzdmLh4PlViDfwQJ20gVHAEfYT0ee+5/rnNdM6QLN4arWm4/
 8Kuj+eWooULqqtM0nBwkYWC/s5gyu2ctDFk3NGcxCDQA4TmF+17U70eiP
 8b9wdMKeT/5HNBP/Pmy+uLgHYOV6hwx4cQmUPQOh3F/h1R+MeHlgBLC1X
 cz1O6u72oaskr6bbzIXgAKm4TM0AT4JuaHuY68STOoPU6r/fqthipObXV
 rCTlKjm4eSL5N5B4lHh4NjkuDdcOe7w6cN9zY8xNfoXOEu8B3HcgPur/A
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=l1WwD9z+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] i40e: fix: remove needless
 retries of NVM update
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kang,
 Kelvin" <kelvin.kang@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Aleksandr Loktionov
> Sent: Tuesday, June 25, 2024 11:50 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Kang, Kelvin <kelvin.kang@intel.com>;
> Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v5] i40e: fix: remove needless =
retries
> of NVM update
>=20
> Remove wrong EIO to EGAIN conversion and pass all errors as is.
>=20
> After commit 230f3d53a547 ("i40e: remove i40e_status"), which should only
> replace F/W specific error codes with Linux kernel generic, all EIO error=
s
> suddenly started to be converted into EAGAIN which leads nvmupdate to
> retry until it timeouts and sometimes fails after more than 20 minutes in=
 the
> middle of NVM update, so NVM becomes corrupted.
>=20
> The bug affects users only at the time when they try to update NVM, and o=
nly
> F/W versions that generate errors while nvmupdate. For example, X710DA2
> with 0x8000ECB7 F/W is affected, but there are probably more...
>=20
> Command for reproduction is just NVM update:
>  ./nvmupdate64
>=20
> In the log instead of:
>  i40e_nvmupd_exec_aq err I40E_ERR_ADMIN_QUEUE_ERROR aq_err
> I40E_AQ_RC_ENOMEM)
> appears:
>  i40e_nvmupd_exec_aq err -EIO aq_err I40E_AQ_RC_ENOMEM
>  i40e: eeprom check failed (-5), Tx/Rx traffic disabled
>=20
> The problematic code did silently convert EIO into EAGAIN which forced
> nvmupdate to ignore EAGAIN error and retry the same operation until
> timeout.
> That's why NVM update takes 20+ minutes to finish with the fail in the en=
d.
>=20
> Fixes: 230f3d53a547 ("i40e: remove i40e_status")
> Co-developed-by: Kelvin Kang <kelvin.kang@intel.com>
> Signed-off-by: Kelvin Kang <kelvin.kang@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v4->v5 commit message update
> https://lore.kernel.org/netdev/20240618132111.3193963-1-
> aleksandr.loktionov@intel.com/T/#u
> v3->v4 commit message update
> v2->v3 commit messege typos
> v1->v2 commit message update
> ---
>  drivers/net/ethernet/intel/i40e/i40e_adminq.h | 4 ----
>  1 file changed, 4 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>

