Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B9796BC79
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 14:35:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 032666088E;
	Wed,  4 Sep 2024 12:35:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tFZHWKcJW_qT; Wed,  4 Sep 2024 12:35:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 405A960889
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725453314;
	bh=DbYLLcls3Q8ok5G3/RYwFz0vDWhINFuOnP0UV3qIeHw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oNvHVu8yHsY4jzOIeb70Q8A6xkMe/IBYE6HbzNHLAgMG2GVnfmtvN59a18kqw9i6d
	 f7TX7xWAhG62SbQEKQlerjfKxezzRCFUUlwp5e9tLBB3Rnra+wEbdKXRd58Cc8qUU4
	 suYgj8GG8sSjtemnlKfFTOmnh0L5cATB6ilFKaR6HuCbFPKuXidiE68+p9We7rfIQ0
	 sNLfxhJ1ndWU9P2+t886jbSMa37X4OZlv7PakKtpFm3VKOBRl0KhK03EfMMBl75AlH
	 g7M5nW8tCGHbayL5+AgxQFGLRhRiYtuouh+Avb7IIdR2yQT+fr5fMsJdXyZ9OqvhEm
	 wzEho+v9vBsyA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 405A960889;
	Wed,  4 Sep 2024 12:35:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A66AC1BF267
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:35:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9FA3180B5C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:35:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JGz1hK6yRCz2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 12:35:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B453780BDA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B453780BDA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B453780BDA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:35:08 +0000 (UTC)
X-CSE-ConnectionGUID: z9FxAndWTeaOSXP9ycQkaw==
X-CSE-MsgGUID: YaF5eOBgSUO6NMaDIN0Ehg==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="24272724"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="24272724"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 05:35:08 -0700
X-CSE-ConnectionGUID: hm/bnX3OQwWqkdLR62rkcQ==
X-CSE-MsgGUID: kWZ89FNaTGCeHFozIs2D5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="96056656"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 05:35:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 05:35:07 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 05:35:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 05:35:06 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 05:35:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vl1Dqh6XD+C7j0K9vekB/fG5KTP9EkgGyMZDxeROL/DXOs3CCH+zQyn7p8dT+S/03+UMA4Xdd3zkRK13KR0kM4ybsQSkrfRPWloIrnTA3I7zURW0qCGUv2g17kAJwAmJRdT/YQjfJlJ3Zrp2IbRS67phQVo5xMFYTmAhdKSRreiyBECtFmrrYaqHNlORpb8TA4Q2kYfXijdWVGayUax9IU7vqLp6L26aIEJcFErvvMrwbWOa/ITAquC2ZRPVNvagwPMARxhyYs1c2NiXX4PWRSV8tyAMUHesXM/9HVx1YBTxYWk0iHjiIiadzbDKgQhQYAdk7PDeyq/IJ2Pqm5j+MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DbYLLcls3Q8ok5G3/RYwFz0vDWhINFuOnP0UV3qIeHw=;
 b=Q7GtIFUwud7plodAm/b4WjRo/6jcMLwS5bj1JjSNhUm3Q3CuXych8v1NhPCQEsAHLKdm/uqNYU4sRY2LtDa285+RerR+p4cYCdmkR3W86ZoeLRSTGiijpGEJBLxAw9cmD1fHe3jdiwDAXQ5ibVncad0djt9kaUO6Ac6h8PvPhP9TwpFP9tckk4u4uLHkSM8LFpHGVJlqcSViec6C738BZOK3pgxURAfs+11+lx0wlfnAUe9QfSW8pmWvuxp5B5nNZvkTSwIPrjqAIJA17i27wpJGdcQce8aRn+qLCpfVVHevCnxZmOxlCID4rmhxXnmdoXNjUax0ny4JyJ5Qnun88w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by PH7PR11MB6553.namprd11.prod.outlook.com (2603:10b6:510:1a7::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Wed, 4 Sep
 2024 12:35:04 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 12:35:03 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5] ice: add E830 HW VF
 mailbox message limit support
Thread-Index: AQHa80kboJUNggGmEkix2pCL8XeG6bIxs2aAgBXzsRA=
Date: Wed, 4 Sep 2024 12:35:03 +0000
Message-ID: <SJ0PR11MB58657DEF7DC6E656794BCB248F9C2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240820212616.3400449-1-paul.greenwalt@intel.com>
 <d94f5d69-f69f-49af-ad5b-19fe0faca353@intel.com>
In-Reply-To: <d94f5d69-f69f-49af-ad5b-19fe0faca353@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|PH7PR11MB6553:EE_
x-ms-office365-filtering-correlation-id: 58950c16-351b-4cae-3660-08dcccde001e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WlNhMExYRWZYYUFEUDN5NHFHM3BBNHNXWE9JY01XSi9LRkhueFI1ZVZlRG9C?=
 =?utf-8?B?Nm5EdGJuU0pLK2poTjl6NlJta2d5TGhHL2dJL1N3bnhwNmFBMEI2akk4Ly84?=
 =?utf-8?B?NUIzOUZmZ3BDT0VkS1FwRlEyNjNMZ2NnQlFHNVlLMHZyTTNyaFZFcVNNOTR5?=
 =?utf-8?B?WlNtZll6Nk5hUnlsS1FkdW9oQjRqaTl2VGF4cHVrcmpFeUtpcm9pZ3JCaVhL?=
 =?utf-8?B?Z2JqRFIvQkJmT0RUWmRId2diQnp2VEgyZjB1MWhhUTBIVkR3OVdRZWJwTnZX?=
 =?utf-8?B?dXl3dkhJVFRqOFRheTRaY1hmN09uZEd2bVhNbVYzMmFQLzdTYTl3RGYvYjR5?=
 =?utf-8?B?eWpJak9TQjlTUmxkYVRjQVpZL3BEZ3lYWXV1VmJzRjdlcE12dUVyTVp4a3Nz?=
 =?utf-8?B?dG1heXA0REpFRWhmYXNxSkZES2IrcE5QSVgxTkhlamltYjQ2U0tqUk9Wbm9U?=
 =?utf-8?B?WW1PaDZ5RXY2T3hTZ3JyN3liNVBnN3BzbDVuQW0yUjlLdnRhdHVVL25WemRx?=
 =?utf-8?B?c2ticXBienpuRU9IdUFkMVIyZDRlS2JZMktZNEsvYUFxSXR0bklvLzVkS1Jn?=
 =?utf-8?B?RHphY3NnRHFXNU50b1g2SE1VZTJmWHpPaVkwZVpnS2N2VElHd1JwYWxmNnFy?=
 =?utf-8?B?OU1QL3NQVVp3bDVyTnpNUmg5WitjaGlHV1lkYlROTGdhQkJVeTZqWmVKeklH?=
 =?utf-8?B?SlVDbGVjTzgrKzRFRWtsSkJDN1phZlVHTmZlSU1FdklZcC9FWGlMSFlsSXhI?=
 =?utf-8?B?TFpjWVcrVVV1b0F2SFR1UUlXSGtiSm5iajV2Wm15dmZoemRnc0Uzc3Y0ZE8r?=
 =?utf-8?B?UjlzU3lXVzlPZkRSMW11dzZ2cEhGWWp5SlZtQTkwZmg2U2VQTVdtOERUWVQv?=
 =?utf-8?B?QUxBVnBMVDVmZVBiL2ptM2FhZjc2MHRiTWZ4SnZ4V1lKUXFPeHJqelhZeTM0?=
 =?utf-8?B?THVDQVVCb3RJKzNvY1VmaHZrS3FhV1pSQnB4RGF6YVZnVUFkd2VaTHdQQzZ2?=
 =?utf-8?B?WFMyRzBCUGYyUE1qeWJ0YUhkbFVROWpzM1hhNVk1ZzRBSHFCU0xheXBjQW15?=
 =?utf-8?B?RlFhS1pYOHlremhQMnJjbCsrSFE5cDh3MDh2aVVCTDhJd1Zqd3dMTlZOV1po?=
 =?utf-8?B?OTg1VktLQTcrOWhBRVRxQWE0VlhJS3hhTHpzN0hYekRQT2R1cFhjRWEvQnhV?=
 =?utf-8?B?RGIra1ZZODVUS3pxNXlNeTQ3T05UNHpCbGttOUNkTFF2MWlKQThYL0NTaVJY?=
 =?utf-8?B?WmV3YjE0dG0zbW80elNUK28yMGdZSVFTSVprL2V0azVqWG9iQXNqNmxSd2tl?=
 =?utf-8?B?TFAvVTdpU0VmeVh6ZlV3YW80YkltOHZxOXNQL0o4bHV6ZXRQbWJuYU44RkFy?=
 =?utf-8?B?ZEJiQTVRamhJU1hGM0VZbE85NkFxelhHRHVJTE03WkR0aHZTR1QyVFFna1hP?=
 =?utf-8?B?NFA2Z0h4TlZ2eEF0SVhFcy8yNWNXeS9CT281Qk92anVTT0FsWE96YW04cEl4?=
 =?utf-8?B?RVRHaFczOGk4WTdoMmNwNjByTDh4Q1ZydTIrSzFaSkpFeDJyMHZDdjdTU2Rw?=
 =?utf-8?B?UmtmV29uUkVQZWkwc1NGeitzVVA4VEtrUHdkY0d2TzY2UjRxN3QzakpGcENF?=
 =?utf-8?B?UmliS2hmV2hPVlQva1N4bDdJVGJYUGJtRWFNZmRsSm9ScURicTRwc1F6MThq?=
 =?utf-8?B?RS9GSnpJZnVDeFh4RFhwWkp0dFFaWUhMT0tzb25HOVZBL2l0Kzc1b3pCeVJF?=
 =?utf-8?B?SFk0TG1FOE5JR3BJQ0xVSklaSkNJWCsrQk9MNDFvUlVHUlRYMFZPSktkRCto?=
 =?utf-8?B?bS9odnd6SzBzMlNqSmNuMnRBT0FjN2RMN0xLcnpuOEE1a05jZGNOTkNTK3VX?=
 =?utf-8?B?bzlrUFk1bjU3d05JdmFsUm9kTnJMYWVRK21SRTFFS2dSRFE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dGNmZTNvSVF3QnJ0cDZIQTFyTDFnSklibDJIa09ZbEtHUCtPRjlSUUxpSlV4?=
 =?utf-8?B?UEZOeVpJOXNKSFZpdWJoc2Q2d0RYdFNtdEdMS0xiTGYxclptSW1LRmxaRUYr?=
 =?utf-8?B?bFBhNnJFenJnYnlLK0lEbmRTckdHKzF2K1VsWFdrcVhRdnVxQm1JS1g2YzlJ?=
 =?utf-8?B?TzBGZ1dvU01ONzJoUkFQUUp3bFByMmZnY1R3TW9DQytxQlRTelh4Y3R0Qkxt?=
 =?utf-8?B?R0FFL0IvOWVGeE1ia3ZtSzhsU01IUkxBZlRJd2ZnSGZ2WFE3K3RnbVVRZFZu?=
 =?utf-8?B?OU5McEhaeXl2YVBPV0lkRTdhOUhtblJ2QnlLTTlNMDdBK0tjVzNvakNoV0U3?=
 =?utf-8?B?cFRZK3dTbjBSZURsUnE3dTIyaEtWTWQ1bm04WjNYYmRmWFo5aEgzcDlrQm9r?=
 =?utf-8?B?SkxYR0JxTnN5dGV1alNMa2ZFRGxCUUZHWnMxZGdYT3g1MU5ZN2xJNTRXZmhB?=
 =?utf-8?B?bk82akFlaXZIR1BnNWlYOElSYmtpWUszVEc1emx0VGlSWDMzdWJ2WHN6dlNq?=
 =?utf-8?B?N3A3MUt6c0lwUytCY2JmYkduZFA3L2tXcGhGazExOWIzK1FUREpxQjlKRVpo?=
 =?utf-8?B?UkhvcFRvdE5pSjl5YlNXVlczaDlZaGlKeFZ4a1ZQMTdHVGRLeThUWnY0dmVI?=
 =?utf-8?B?VGo4YitvWXNuR0xwZVJucElTQTVYWVVUYXl1TkV1U1VsZXFVYzhaeDdvQ0hL?=
 =?utf-8?B?N3d4Z3pZU0JxaWhrNVdYR3FIc2tKK0ErNVkwbnNVR2NzL2srMmJmQ05IMXFQ?=
 =?utf-8?B?cGpxN2JrNXBoV1RaNVJOekZReTgyajJodzljN2VtZ2IzNlhSWkt0cW9TR2V4?=
 =?utf-8?B?ZHpOSjc0TDZEWTJ5RE82aHVDNE9JaDdGSDJ3Q3pxcjJNQWFzRnVIKzI5M21t?=
 =?utf-8?B?YkhhK0dhQ3ZCenFCNzFSbmVEQWZVZkkzVnZQaEl3cm9LRmhDUXBqZDRMOUx2?=
 =?utf-8?B?VUxyUUlJaXYwT0xqSFpOQk1sVTNFRU91amlHTVN6RXFNSk5oNFlUalRBL2c0?=
 =?utf-8?B?NFAyTy9jazIxakQ5cDZzRjVtL2YyUks3UzQzdUNhN0RGMW1ja0ZoTEwxUG91?=
 =?utf-8?B?bXpQNXBHbXpIMmwzcjlGQUpxTEo0YWY3SCs0MU1lRzlYMzNTMFQ0U1BWenBu?=
 =?utf-8?B?a0RWeVpmdlNaUm83R1pDTURFTUZEd1FhMExYOHZ0VDA2Y1hkbm9IRlBCSnRE?=
 =?utf-8?B?eEpQQUpWbkF5amNURysyZlRCSjNVdXlOVDZLVmtlZGp4TTM0TEgwTEk2VGk2?=
 =?utf-8?B?MnlORXgxNCs1WUhXR1l1YTl0MWpCWjdGZmFvWi85QWlhQkhNVW1YZU02d3h5?=
 =?utf-8?B?V0xIL3h1clZPcUZ1QThnd3AvVXpIRk9TbkxYcmw3QnBhMDJpb0Y2R2J2blpH?=
 =?utf-8?B?Z3k2MlVVRllEWUV0UG5jdzhMajVDY21NVjY3MERReU0yR1k3eExuRHVjazda?=
 =?utf-8?B?V2NvUlExL0dMQU9iN3RJQ1dTUXBNWG1meDFUOXpsc2RpU2FOL0J0eW9Eellw?=
 =?utf-8?B?ZGNXdGZ5QUhZVWFuWkZWVFpkSVd0SFRYanRENjc0VlR6a0JVaWxBRjJUMUVT?=
 =?utf-8?B?UEEzdnhTeUY0VVMvTm1uV0h6c3VIVE1QMVIxbHFwL3pESjZNcGtGZENKdUNV?=
 =?utf-8?B?N0dtd0c0bTIrdVhzd2p5WlhHR3oxcGZxUmlJMGg2WEhET3dWRXl3QUJxTVpx?=
 =?utf-8?B?Nm9WQ1BvS1hvMzVEWEx6d2dJRXJzUjZ2Y2hOTHNTaW8yS1grc1lJcmRRajRi?=
 =?utf-8?B?WVZYYmw5TTYyU0F4enRwTkpUdG04TnBDTjhKU0R0NjAxK0V3dU0yeC9HUXFH?=
 =?utf-8?B?d3hLSmtRR1A0cGxwaFNvVlRPaUE0NDBqMTJpUmlPR2YzcmtLMkJRQzZNTXd5?=
 =?utf-8?B?SlRaM3gxdHlzVEZScEI4YUJiWTlhdm03Z2JITkRCTFpPWXVXMWpkNmlIVUhI?=
 =?utf-8?B?ZlQvWW41eldiSFVqRGpZdUR1RGpTRUtENzlwRWRWdlVDWnEvd2F2bllNMTFK?=
 =?utf-8?B?MmhQUXp6Z2t3Z1NJT0MzVFMyeGhnaVpRTXZoa3haSDJPaWcvejVGUFJldEd3?=
 =?utf-8?B?NmJseldMV2lTMjdGOWJ5MmV5U1N5dXVTT3pVLzR3YU5mUEdKUHdEcHF6RTh1?=
 =?utf-8?B?VThOTTRNYkNEa2RJWnB1MHN5MUYreUdyeUxwQzgyRGt1MkNxR3Vqb1NEcG1k?=
 =?utf-8?B?TVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58950c16-351b-4cae-3660-08dcccde001e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2024 12:35:03.5917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /i5ESkKfgPoG/mcl/DrFHsRAOwc4zNUn2MZxKICQ89KUJzxaSHHeTDtXfXtNwL0QQC+vMsP23nbBOdZZaspkPhtxCPqVtu+A9Li7dpzoBdc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6553
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725453309; x=1756989309;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DbYLLcls3Q8ok5G3/RYwFz0vDWhINFuOnP0UV3qIeHw=;
 b=ghn38vOnbKZbKDtxh4SKdfr6PcdekCrQ1LWe8a7PuQE3iXtdX3oJrmMT
 f3/Tgt1KaR/PBpIczEjFR5CFt3E/03q8on54FuphY9HWz6SIZlnh0UYcU
 alWXAPFG5FNIHkgBpX2fDkGXOm1kMPmR1h+UcUj94kGTYLS/TnNNf4liB
 xfjrI5sgb88LiYUbtRM8y5g9IMdWLZ0lhKUpdobUHsgvzlYiHgmfO4AdL
 ReZ9RjWaGrdl802sCJd6L2PC3L651dXF0QMkuzSZQfkqTbhwJRGrBPNw5
 LrG1MDvmV3cmc3ewvGl9JB7mLBR3lL+nrLmE45n3EFW0uPxIccV6gw2XZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ghn38vOn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] ice: add E830 HW VF
 mailbox message limit support
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBBbGV4YW5k
ZXIgTG9iYWtpbg0KPiBTZW50OiBXZWRuZXNkYXksIEF1Z3VzdCAyMSwgMjAyNCAzOjIxIFBNDQo+
IFRvOiBHcmVlbndhbHQsIFBhdWwgPHBhdWwuZ3JlZW53YWx0QGludGVsLmNvbT4NCj4gQ2M6IHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZTsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4g
U3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2NV0gaWNlOiBh
ZGQgRTgzMCBIVyBWRiBtYWlsYm94DQo+IG1lc3NhZ2UgbGltaXQgc3VwcG9ydA0KPiANCj4gRnJv
bTogUGF1bCBHcmVlbndhbHQgPHBhdWwuZ3JlZW53YWx0QGludGVsLmNvbT4NCj4gRGF0ZTogVHVl
LCAyMCBBdWcgMjAyNCAxNzoyNjoxNiAtMDQwMA0KPiANCj4gPiBFODMwIGFkZHMgaGFyZHdhcmUg
c3VwcG9ydCB0byBwcmV2ZW50IHRoZSBWRiBmcm9tIG92ZXJmbG93aW5nIHRoZSBQRg0KPiA+IG1h
aWxib3ggd2l0aCBWSVJUQ0hOTCBtZXNzYWdlcy4gRTgzMCB3aWxsIHVzZSB0aGUgaGFyZHdhcmUg
ZmVhdHVyZQ0KPiA+IChJQ0VfRl9NQlhfTElNSVQpIGluc3RlYWQgb2YgdGhlIHNvZnR3YXJlIHNv
bHV0aW9uIGljZV9pc19tYWxpY2lvdXNfdmYoKS4NCj4gPg0KPiA+IFRvIHByZXZlbnQgYSBWRiBm
cm9tIG92ZXJmbG93aW5nIHRoZSBQRiwgdGhlIFBGIHNldHMgdGhlIG51bWJlciBvZg0KPiA+IG1l
c3NhZ2VzIHBlciBWRiB0aGF0IGNhbiBiZSBpbiB0aGUgUEYncyBtYWlsYm94IHF1ZXVlDQo+ID4g
KElDRV9NQlhfT1ZFUkZMT1dfV0FURVJNQVJLKS4gV2hlbiB0aGUgUEYgcHJvY2Vzc2VzIGEgbWVz
c2FnZSBmcm9tDQo+IGENCj4gPiBWRiwgdGhlIFBGIGRlY3JlbWVudHMgdGhlIHBlciBWRiBtZXNz
YWdlIGNvdW50IHVzaW5nIHRoZQ0KPiA+IEU4MzBfTUJYX1ZGX0RFQ19UUklHIHJlZ2lzdGVyLg0K
PiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogUGF1bCBHcmVlbndhbHQgPHBhdWwuZ3JlZW53YWx0QGlu
dGVsLmNvbT4NCj4gDQo+IFJldmlld2VkLWJ5OiBBbGV4YW5kZXIgTG9iYWtpbiA8YWxla3NhbmRl
ci5sb2Jha2luQGludGVsLmNvbT4NCj4gDQo+IFRoYW5rcywNCj4gT2xlaw0KDQoNClRlc3RlZC1i
eTogUmFmYWwgUm9tYW5vd3NraSA8cmFmYWwucm9tYW5vd3NraUBpbnRlbC5jb20+DQoNCg0K
