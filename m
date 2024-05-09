Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6768C0A82
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 May 2024 06:39:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42044410AF;
	Thu,  9 May 2024 04:39:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lLk1p6ViPBAC; Thu,  9 May 2024 04:39:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1085C410A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715229540;
	bh=4+l2mH5NHWOivlv3fQrC6pqkCdwsm/cYabokYUgWnxQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MjdAxVIHqTJ4kxp+TFaGE7EHuo9Lt0uF3HUlL1r6gsAkLvIuia0suOvmjhJkCgXAi
	 SGGve0D5hVDmu+3MTiZ1Na2dI1sgTHCOb0UW2KSaCmNGrsLjR1YzXaQy9sPF+UwxUS
	 2qCpNZckcV+FdR/MmD236CrOgEkxdUjQq4vLLs6eU7gly9Fiq3+G+Ebpj6Lw0V1EuZ
	 ltz97Us4U3QW1NFgY5p/AN9Vg1D88nza3I8v0xhpa/rCwGPnnvXMgYFZab4DnZTk5k
	 KOiGly0B+mPcv3D14n2foU+XYbwKTxEPnm1nAHPaEdjbcLNcG6Fvnq+wifMPgo2RIq
	 OHPH+fVfxh7Cw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1085C410A2;
	Thu,  9 May 2024 04:39:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 815C71BF366
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 04:38:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6DAE9404BD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 04:38:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8gi3WqtfZFeG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 May 2024 04:38:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0744E40118
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0744E40118
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0744E40118
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 04:38:55 +0000 (UTC)
X-CSE-ConnectionGUID: 0stDgsw3QWqcyu/hI/B5Kw==
X-CSE-MsgGUID: xF0ONrR5TEi16k09LO2eSw==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="14076215"
X-IronPort-AV: E=Sophos;i="6.08,146,1712646000"; d="scan'208";a="14076215"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 21:38:54 -0700
X-CSE-ConnectionGUID: BVTg3hqeQRytIeJVHJg2mQ==
X-CSE-MsgGUID: WKihyDIGSjSB36iNkHhM8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,146,1712646000"; d="scan'208";a="52312406"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 May 2024 21:38:53 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 21:38:52 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 21:38:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 8 May 2024 21:38:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 8 May 2024 21:38:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NrjYJFQ1rFjAzWTioHH8YkxycRQR10zQJie53uFguociHj9865+KZ7/SCWcQvOUI2rBeV529xL9kL4iS0oSdV4Ed2mQgO0PHD/MGxMTBoL9WeSvS68CSNs4mL1zQvxtm4Voyr3EmaBBr0RYTa38BCWp3/2ENCSE8PIiKAP+zkIPozFaDhXPXfPGHjKKsjGfJ+bBenV9Ym1rdOj4K1lBGYAufOHIS02J07DS0z+FcBAQrr8WHT/+V7FiDkVdTwB4dKo6Jxhsa3Xg+o1AChGpdqHLTZeWAZDzOsufY+6CJRuIdQa5iBFgwTMq2XYgjJjVYPEkAq0v6tihzO1ozq/Nx0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4+l2mH5NHWOivlv3fQrC6pqkCdwsm/cYabokYUgWnxQ=;
 b=jwYanViBrsFcq3SWn8p4jD8/zD/+OxJLLceKTN8LUFZLNneGIUyvkUu7GDiZ8FwhJARWGtIDKYZGxNcrhBhPTsFcrHDVV0yZJMk1km2AOZ+XRoJDapOU7nx1yT2cnCo5w/Rmjc2cZeeHF9f19lIv17cEyoU+7HbWnKKxGDv39r7fens3IX9Ja9zT9r5VtrWvjrAHxzi863lV5fYuOLPPtFBRCyjCACCnYeU2oTGabqtsbFVsFgS4uwZCOWAcjhXzkZthIkH3v1PXcW75Ph84GphS1BiN4SR1HlDK0iZ++ucG8q1OZhMHGQC6dbClFZs6/BrNNSJn6UmD7p7S0qs9og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by CY5PR11MB6464.namprd11.prod.outlook.com (2603:10b6:930:30::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.45; Thu, 9 May
 2024 04:38:50 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::1fe:535e:7c0e:1d67]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::1fe:535e:7c0e:1d67%3]) with mapi id 15.20.7544.041; Thu, 9 May 2024
 04:38:50 +0000
From: "D, Lakshmi Sowjanya" <lakshmi.sowjanya.d@intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Thread-Topic: [PATCH v7 10/12] pps: generators: Add PPS Generator TIO Driver
Thread-Index: AQHamtvuWPGql+HhbUCDICIaxX/xKbGA1coAgA2JO2A=
Date: Thu, 9 May 2024 04:38:49 +0000
Message-ID: <CY8PR11MB7364F43C08D75878205599A5C4E62@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20240430085225.18086-1-lakshmi.sowjanya.d@intel.com>
 <20240430085225.18086-11-lakshmi.sowjanya.d@intel.com>
 <ZjD3ztepVkb5RlVE@smile.fi.intel.com>
In-Reply-To: <ZjD3ztepVkb5RlVE@smile.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|CY5PR11MB6464:EE_
x-ms-office365-filtering-correlation-id: ebdea49b-efe6-474c-0510-08dc6fe1ec22
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230031|376005|7416005|1800799015|366007|38070700009; 
x-microsoft-antispam-message-info: =?us-ascii?Q?OnrlLS2prDfYqnRVHaZUGsqkVNo/owTF8dhDAVMIF5OLLrnAP3WSVF8Kh1n4?=
 =?us-ascii?Q?PsMWmI/txV8Q7Q39LTz5xjWTmXSsdXuojBWuZ94x70NEKA+Vu5mz/eP4L8WI?=
 =?us-ascii?Q?jqy6tY5bzC7O8litEZI6PqGpznih0h45TsB7TdL6QAoV6/RApZXkU7RACYYc?=
 =?us-ascii?Q?Vy46T11B7KNUxlAyK5si6M2RQ9hCKLmapoKrg6hnwMvpeJEq/u4kY9NrMDYB?=
 =?us-ascii?Q?+RydcguFvkTG5l5vEoOULWC9g6JnrLs93LE9ZtnFygSq17wP4lqjFYj7fudR?=
 =?us-ascii?Q?doz7D/id0c5PZkxb2AFcR+0zZZGnFkPRYg1ZGnWCMmn1MKKE4AvnhNa64cE2?=
 =?us-ascii?Q?Jv1dnCWTT+E8zYq830hESYkQJM0S5ksGRZIy0VSIz9o+lu6OAsG3dE/9YeCQ?=
 =?us-ascii?Q?UniZA1LpV7EfDB16lr7rfmcqQdIEufX/FYMTifjvxmDY0WZDcLRNZtmEAMOb?=
 =?us-ascii?Q?twk3yDdWI3Ol+Q8+H+5rjEYVjAv5gOwrX35DP1zNa1QvI6MV//40IBxk3Cfi?=
 =?us-ascii?Q?Lxft0Z6er2V8lMK9ftiYsOC0OyRjOsB7XXGwt1qP5CjIoWoGNyI5DA78mv7o?=
 =?us-ascii?Q?8THDXqMYQslY/msFwtwGxEifuCDQzPVwWn3fliXZfScwwCcIfiV26aKDeK8J?=
 =?us-ascii?Q?8pc76fvYYLVY4gX81Y8TCEYDpIjPY/lxO3UNb1FI6q1fwzCPBBKzw3pad8nS?=
 =?us-ascii?Q?7sCbBqE/nMqZY6z5zTrKs+ftCFVyGpxcJo72IlTfX4EBp1pDWzCVFrgh4e4h?=
 =?us-ascii?Q?qKt4L1D6eDMVs7nd/5hwoUvcOfZComyiVp+oiIqoOa0gxxARizg2vrAZ9kHQ?=
 =?us-ascii?Q?M0mrQoHLdM3+YHGDNn4Z4GBMO+wbxWaXkJxZ0j7R5c1XG5kLWxG+oaa1xwC2?=
 =?us-ascii?Q?XHkdh0cdNbAMYy9mZGIdOh9ME32rVwiFLVVkhTDDUProKEAZp08HzjAk3dV3?=
 =?us-ascii?Q?EBgCsIrnxDC6Asf7h62C2soQrYo6czi8Kwc505t7fd/MpcoM8y/LdLMhakK+?=
 =?us-ascii?Q?BgLflWYPx9i1iIyWDj/OUwykzis3UzSGJPAkoMcyElGDiNGhgX6UDxrhIJ3X?=
 =?us-ascii?Q?5J4b66tDTVa5+1VeWIQUCZJTi4i/xp0hNhFpv9PnVl8/P2iFvroCesnBbP0n?=
 =?us-ascii?Q?mubtH1g4PChrbaFsZKkwpeTwxPvX283rklcW3A/cIzy4u5m3KADS2ZLBslEf?=
 =?us-ascii?Q?F4lMGM+gB4xMFdtyO+Sa258iMN6anV0DK4IYkxdB63IcZws5xHBMmRrgQVNh?=
 =?us-ascii?Q?Oum3t9xpMhNp8x3tHT5c2UhUCLLMAB8RyT3LHR4fRcnmEJJOtSFhIZMLE5qX?=
 =?us-ascii?Q?bECLLAz6QJAkR6omtHWcgsd+fVdrgGrIBmojyVadfie9jQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(7416005)(1800799015)(366007)(38070700009); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Kf0eEUTH6Ggxhn16s6NARGNj0+ZyvpQvyM+AAez2ce7LI3jsGQ8nXe67MPDm?=
 =?us-ascii?Q?ZTq/uN2D/wtqJIrqEHOKAdGkQjkFfmuia3Y3rGYN2vzNi0Mox5sx13R2S6YC?=
 =?us-ascii?Q?v5nnNHjt/0+rdQeTlnOE7y3NhMBKXcD+blhfY77endEgcTMSDBN1Ix92G5hC?=
 =?us-ascii?Q?bsTQvGkvt3HMY5qE0e0zEvLskkbYTR9MVDt1aE5URF1apdCkMcOzdPvxifFB?=
 =?us-ascii?Q?acIYr6bjg05Uw/K56zfE4i8kJzG/ztRein9JjaRy+qBeMRy9rDPcU7znZ3xI?=
 =?us-ascii?Q?eYfxloZSoTPeJ3/UliEnKRAwSo0Y7FidKN2fAq6/GKfCoKdcEPHxZIBkoqKB?=
 =?us-ascii?Q?yBpLmVQfHc1SitUVqJk+JebiYlT1jaBNIEOlchNA1w2zrL3LreeNvK/ipW/l?=
 =?us-ascii?Q?l2ki2dSB34JXt+TaWUODDH4cjyIpztDM6q9s20OwVA/fw5H4pA5ON2kECHm+?=
 =?us-ascii?Q?59q5qasz+RxjUMMDFFt/98zuCWZKasX33zD8dh3Cif/BKQ9iribkaPRHanEP?=
 =?us-ascii?Q?FpAi6jCV7SruBSrXaFkflAVlvDuMIsgxji3vTjDFTkWRUTrifb5lxAlOnafT?=
 =?us-ascii?Q?fqe7PKK3+vF/DRjLpJp89Fq02ZW3hz0YcK18YBJXVY4jnH9L2j5hpp9bZXJ1?=
 =?us-ascii?Q?cSRCtn3AM0C/ki5LymRSCvYDtuGZy/u6htnys1hwM/VBe24DtrSgdOzlk/Dw?=
 =?us-ascii?Q?mvH42Mmy0NmJoe+/725PiJfvJebaPjl5IKcXycOjc8FcZBFULi+x3nZsh5Yt?=
 =?us-ascii?Q?O1vssBK8USzuWzw2JN+WMNvkRlRdW4bKzgj6tlxINrHxcYr3jnLTZxE6p1Ff?=
 =?us-ascii?Q?f9vWFpyq3fvyQl63HuhePIxlMUbaxQVYZY9R/9Ujv0ac4QuorKOfQYDK3Owm?=
 =?us-ascii?Q?G3yoNr4F96KkdP6S75Or8CO4S0+XlM3pRVlVUfd/fa1LMUxnY7BBUbY0Mo7z?=
 =?us-ascii?Q?CEt11CKQNdx+apQSoUaMGakAuy0Cz2Zg1tSmKLAqGT8ZBbBW58vjWeaNhY4f?=
 =?us-ascii?Q?IECfBCiiBjwSpQ7VItwGo2Ng7xMYPGKunsDfV4GHMGUIumr4qW6q/00QiMHz?=
 =?us-ascii?Q?F+kDavdmR9wUNFWkJN8uHkxORxA/sgJIMyKKfpK9COSWp9eA5ZpU+0rNEVeK?=
 =?us-ascii?Q?2teeblkO6wZMXQSM785VIteIra8iCqU5UOaGFzbnX7F7Ax/3ohTgRC9W11A+?=
 =?us-ascii?Q?Vv0azbQ8XoXT/ZJ2B1Ihj78CHGdetFrF5G9SpcpW2Z0dKVA2J0sPxccSq4Fk?=
 =?us-ascii?Q?vKFxfh4EeUFmrP5OAc8mNOCVxQB+SlGAs2ChyyQ6PicN/eGFuF0DCHiPesdG?=
 =?us-ascii?Q?2V0cMWZvA3ygN+sMfTZEK46HDDo9tmUiG/2ppWb0p3YLV9I5EVuzIbpPQd81?=
 =?us-ascii?Q?2cP4ufTfbAPQJ2CvNA8VcvIG6I5w1ELAVVOYvfDjoUEsZN/F2aa8HPteTsyQ?=
 =?us-ascii?Q?yIn5xpTs8ZGTea6ViuszZcFa4FSMDwG337TyxyhYEtNHIPh3kuleDFTYRJV1?=
 =?us-ascii?Q?zK80JQxqHZ1ocPoYi8WpgDTIl18s+wNeexSCEFUYwpP4N1Ia/2MNvY6NH4dg?=
 =?us-ascii?Q?ZdyMtFIYn3mr57X+kXIyYbIHs4wAWqvs8MvKNFnte2zsWN144P5bkjLXHAB3?=
 =?us-ascii?Q?pw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebdea49b-efe6-474c-0510-08dc6fe1ec22
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2024 04:38:49.9309 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VgZj0CW/Zk1oqXrI7+A9850DszDTJP3xjW/SHbPh9YND3cKS4B9ci8VKQj0azjpX+fRcj26bK+Pnuw+CXQPMM87Z4FFCNUQ0Mfz1Truf2gI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6464
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715229536; x=1746765536;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eM+h29OqTVTSFU9E4FteFSRowfbBGSLpvU7MlgTLEkQ=;
 b=lmaLANUhQHsjP3mZa/rDBWPWWr42kZPThylu+VOZWUZBA9j+PzeYKAiL
 BuySJ6spFmbHUooMMwZJV4umt8iiv3ezjONP8K5jRgSTIp5PdM0/9k0V8
 6LAVHtQ1NzUCjvYnurV6vXKp+nepSpxHH0qslmZeUgPs+qkCnjxVhwqM4
 Dr8JLRrWbxKa+cmthAIb0GH54bDQdNymkEnVYW1ZcLeB8/TrB0NvMfnh4
 z8qv4YZIlEdeo24fSNoFVGTyO1VlwjcDKRU2Xt5UMANVaCXLZ/fmmBdAd
 JvhTFMwtT+JBBycLHZaFbCoOFM17dBTkVbhTsCIwNEA01mIBrQlalAlW4
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lmaLANUh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 10/12] pps: generators: Add PPS
 Generator TIO Driver
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
Cc: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "alexandre.torgue@foss.st.com" <alexandre.torgue@foss.st.com>,
 "perex@perex.cz" <perex@perex.cz>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "T R,
 Thejesh Reddy" <thejesh.reddy.t.r@intel.com>, "Hall,
 Christopher S" <christopher.s.hall@intel.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "x86@kernel.org" <x86@kernel.org>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "peter.hilber@opensynergy.com" <peter.hilber@opensynergy.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Mohan,
 Subramanian" <subramanian.mohan@intel.com>,
 "linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "giometti@enneenne.com" <giometti@enneenne.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "N,
 Pandith" <pandith.n@intel.com>, "Dong, Eddie" <eddie.dong@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "jstultz@google.com" <jstultz@google.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Sent: Tuesday, April 30, 2024 7:23 PM
> To: D, Lakshmi Sowjanya <lakshmi.sowjanya.d@intel.com>
> Cc: tglx@linutronix.de; jstultz@google.com; giometti@enneenne.com;
> corbet@lwn.net; linux-kernel@vger.kernel.org; x86@kernel.org;
> netdev@vger.kernel.org; linux-doc@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; Dong, Eddie <eddie.dong@intel.com>; Hall, Christoph=
er
> S <christopher.s.hall@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; davem@davemloft.net;
> alexandre.torgue@foss.st.com; joabreu@synopsys.com;
> mcoquelin.stm32@gmail.com; perex@perex.cz; linux-
> sound@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> peter.hilber@opensynergy.com; N, Pandith <pandith.n@intel.com>; Mohan,
> Subramanian <subramanian.mohan@intel.com>; T R, Thejesh Reddy
> <thejesh.reddy.t.r@intel.com>
> Subject: Re: [PATCH v7 10/12] pps: generators: Add PPS Generator TIO Driv=
er
>=20
> On Tue, Apr 30, 2024 at 02:22:23PM +0530, lakshmi.sowjanya.d@intel.com
> wrote:
> > From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
> >
> > The Intel Timed IO PPS generator driver outputs a PPS signal using
> > dedicated hardware that is more accurate than software actuated PPS.
> > The Timed IO hardware generates output events using the ART timer.
> > The ART timer period varies based on platform type, but is less than
> > 100 nanoseconds for all current platforms. Timed IO output accuracy is
> > within 1 ART period.
> >
> > PPS output is enabled by writing '1' the 'enable' sysfs attribute. The
> > driver uses hrtimers to schedule a wake-up 10 ms before each event
> > (edge) target time. At wakeup, the driver converts the target time in
> > terms of CLOCK_REALTIME to ART trigger time and writes this to the
> > Timed IO hardware. The Timed IO hardware generates an event precisely
> > at the requested system time without software involvement.
>=20
> ...
>=20
> > +static enum hrtimer_restart hrtimer_callback(struct hrtimer *timer) {
> > +	struct pps_tio *tio =3D container_of(timer, struct pps_tio, timer);
> > +	ktime_t expires, now;
> > +	u32 event_count;
> > +
> > +	guard(spinlock)(&tio->lock);
> > +
> > +	/* Check if any event is missed. If an event is missed, TIO will be
> disabled*/
> > +	event_count =3D pps_tio_read(tio, TIOEC);
> > +	if (tio->prev_count && tio->prev_count =3D=3D event_count)
> > +		goto err;
> > +	tio->prev_count =3D event_count;
> > +	expires =3D hrtimer_get_expires(timer);
> > +	now =3D ktime_get_real();
>=20
> > +	if (now - expires < SAFE_TIME_NS) {
> > +		if (!pps_generate_next_pulse(tio, expires +
> SAFE_TIME_NS))
> > +			return HRTIMER_NORESTART;
> > +	} else {
>=20
> Redundant.
>=20
> > +		goto err;
> > +	}
>=20
> 	if (now - expires >=3D SAFE_TIME_NS)
> 		goto err;
>=20
> 	if (!pps_generate_next_pulse(tio, expires + SAFE_TIME_NS))
> 		return HRTIMER_NORESTART;
>=20
>=20
> > +	hrtimer_forward(timer, now, NSEC_PER_SEC / 2);
> > +	return HRTIMER_RESTART;
> > +err:
> > +	dev_err(tio->dev, "Event missed, Disabling Timed I/O");
> > +	pps_tio_disable(tio);
> > +	return HRTIMER_NORESTART;
> > +}
>=20
> --
> With Best Regards,
> Andy Shevchenko
>=20

Thanks Andy,

Will update as suggested.

Regards,
Sowjanya


