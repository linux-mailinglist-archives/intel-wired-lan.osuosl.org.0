Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2848BC6BF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 07:25:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3343B40639;
	Mon,  6 May 2024 05:25:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 08qQpQ7P8X9I; Mon,  6 May 2024 05:25:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A172A40633
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714973127;
	bh=FEPrBN9fqcWbdOZpX5X46rqGPjCydbwmlq0yh4wB+eI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=47UObtsKkejAz/LqtqzWk8p+M4xd6qhqhcZ8rOyGwvt4DocubdOX3tT8l8XvEMiwJ
	 jG386LUwLLA2NEsSy8Cj/1cUGay4vR/WreqU8yf9n6l3JVGVb7WpfBiD3Pj/qxLfB0
	 XNFf2O7R/l15F3rYDby/i+8/6fMrMHnkYrCoSe54fmEIS3rvoafDvkypGQbMkpnhmb
	 uyACIlG1voY3QuNXyfIYWWce2qdXXtThzGazX2ojBPytmuYGth1bWZaO8XFcwxWn6S
	 CByTZnvKqIm3PsA417aE+8kgHidd8Njmlwb+1vdOQZWPdL9SDfGyCVsBdhno8/WXRM
	 TLQB/BoZy6sGA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A172A40633;
	Mon,  6 May 2024 05:25:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 00A041BF28E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 05:25:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E9C5D4048C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 05:25:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qztH3JdBON8a for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 05:25:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7C03A400BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C03A400BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C03A400BA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 05:25:23 +0000 (UTC)
X-CSE-ConnectionGUID: 0DXQwWtnRfyB2J4dVttnZg==
X-CSE-MsgGUID: qJbuwwfjRHu45FUPNx13Ww==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10628681"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="10628681"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2024 22:25:22 -0700
X-CSE-ConnectionGUID: 8SLiYx/GT52yCwVIGh1NmQ==
X-CSE-MsgGUID: 4W3LaX5DS+aHrt98TSpF+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="28561860"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 May 2024 22:25:23 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 5 May 2024 22:25:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 5 May 2024 22:25:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 5 May 2024 22:25:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z1GZhxXB6nv4TgPBms624xyeUU69QZRT5jxpKES22JlWHMrqFwaMtsm54bIbPFq/FRCXTl5LcfeJWbPK7joS4IlMhlfCvAWNkTZMrG2eNNzxzYa2+Fhan6+hlwlDIYG6yDzaPLZfz1058kPjiA2auKmHaw3bdG9m6tdO5iP1D1OMbjJX8WVCclj+JYNf4FvLytpmfA674RiuofzBl4ovIeVG9SNDe1cWzJ2x4sHssX9LI9pPZTJwvPvSoYCmX1BrseOSrAVOq6PyiWUWofh/lD7/llo6k5/0+2lUrDXNWSMYLg0qNDb1QHDQSiWJnKFNIBV+RUA0nGHbAtPnWjJdCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FEPrBN9fqcWbdOZpX5X46rqGPjCydbwmlq0yh4wB+eI=;
 b=ZzBcIsF2HGsAT5ge/LhiJJQVOA8fBj1p/XzeLptp1VstsozJbMGFtBjD8QLoSmW4hJwtHEcDCeWJA0+S0yCGokRGGaBl+5U9rH0TzpwFpX4gQG8Pg6eARQOnt4P0VjwoOfhAdpsoDKQTtpkLxCHLfCpfqdCo2C35ntVf9RnmQQYxRPiXWb4lp8zisszPCuPIGrAytD2qLrq4K0C4Du6ze7ldDL7jkpK58m1dJGDL1pTq7V7ppBHgU/R2Co27B0Uc4mu0jubttRo7LNpw6Mcys/97jX3VXeJ/peM7CK9bA8x3/0y2Qrm12NtDbPhpPf4CMLnwiiS1sgomVJ/iJslFcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by CO1PR11MB4915.namprd11.prod.outlook.com (2603:10b6:303:93::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.41; Mon, 6 May
 2024 05:25:19 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%3]) with mapi id 15.20.7544.041; Mon, 6 May 2024
 05:25:19 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: =?utf-8?B?QXNiasO4cm4gU2xvdGggVMO4bm5lc2Vu?= <ast@fiberby.net>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: flower: validate control
 flags
Thread-Index: AQHakA4WoMrCetPpSkCXQWbM721odbGFG3mAgADOGgCAA+CGUA==
Date: Mon, 6 May 2024 05:25:19 +0000
Message-ID: <PH0PR11MB501348B4C2970D26DFC48C1F961C2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240416144331.15336-1-ast@fiberby.net>
 <PH0PR11MB50139E3BE2709C5BE7F4AC78961F2@PH0PR11MB5013.namprd11.prod.outlook.com>
 <80089193-33e8-4601-bdbc-71d10ff1ab58@fiberby.net>
In-Reply-To: <80089193-33e8-4601-bdbc-71d10ff1ab58@fiberby.net>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|CO1PR11MB4915:EE_
x-ms-office365-filtering-correlation-id: 79d4fdb1-0208-46bb-1021-08dc6d8ceb5d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?NlpRa0xxWTBFbmtPQ283cWZFbFc3UUFCRVN0cjZnWkxNM1U0MkE1VFdTSmRO?=
 =?utf-8?B?MCsrcUNINWFFNWJ0ODkxMnd4UTVvamlCSTAvNExEM3ZtcG1YWTlZUmpUK1Mz?=
 =?utf-8?B?enlLcm5ZSFNKMi85b0k4OFYxU0xOQ0piRk9sOW85VHZORStUOEdtSWpUTjJk?=
 =?utf-8?B?R0pQQndhNGgvVnNyNldnYWFyem9jam0vSVYxbHdRQkNBVkhnQXBnc1VGZzFL?=
 =?utf-8?B?dDloSnVnSmcxTGkyWC9yWmQxYklwQTBGZlNxV1hnb256NGxYaDY2SnEwM2th?=
 =?utf-8?B?czI1Y1lqUThoOVNkRnkySGY0YUkwekVacEJxbzlRd3J4OWtnbWg2WTdueTdt?=
 =?utf-8?B?cCtqQ1JDajE0Zit6TVNLZS9UN1E1VHNPdDc3YklsWHlZMzArVmQ0YWN5T3g1?=
 =?utf-8?B?VWxQMXd4TU5YRnlWM2NTc1dQYzBCakNLRkhnLysrUXk3d3RteG8reUVUMERj?=
 =?utf-8?B?YVF4RkNibW16c2p2YW40NEVJbFd4ay9ueXhycUhaR2NUdWI5ZW5wKzB1Wndq?=
 =?utf-8?B?cWhNSlFsQ1B5NElKSTliUmZOWG1FeURlclBGdkpqNHZBR1VUUU9NQlN6MU1u?=
 =?utf-8?B?YnBOUzZHbkRET244MlE5Z0VneXpTYnJZMU5hSkwwcVgwNlRhaHBVOGZTdmJz?=
 =?utf-8?B?dWVOSW9JNXdWVUdCdmZaRHV0Sm91SzR1M3ZwZUplMVhlRXRTeWhPNGxaSlc5?=
 =?utf-8?B?L0VscEFJRXZvY1Bja1VxZ2RTNVBBREFLS2NnWFZoZDM4OW1ybDZLelR3bFJy?=
 =?utf-8?B?UUdKdFlwMi9GMGFSdGt6cDNmMUZUTkNKL1NBd283ME1mR0E2MmZKNmhxa1or?=
 =?utf-8?B?ak9nR2dOL2JwUzBuT3NMZ3Z1RWoxTnZRbVlheDFCdzVsVmlQOFhHZGt6bWZz?=
 =?utf-8?B?b3k1emtHVXdVbUVjbjViQ1RJbDVBN3pUQW00YnpTcVpsSGd5MmhyYjBxak9h?=
 =?utf-8?B?L2RzZFVkdHkyNFR2dFVPdWgyWGNpNytidHJFbDQyeWwyWmxoZDh5TERDT2N6?=
 =?utf-8?B?blY4bFdWSHI4cXVIWlRXYjdtbGMvb0k1K3VWcTZvMUJLUGV0eHlIcWNKWlVh?=
 =?utf-8?B?NmJBbW1GYm81dEtNS3RKNGlMM0t6c1RVNFBnVnMrV1JtaDY2YjRzWllGKzRn?=
 =?utf-8?B?dGt6aStsaUs5N2FQaFZZODRzL3NhMmo3aUNIOERQaDZhc2ovVVZuRmdXRXJI?=
 =?utf-8?B?RkRwVGlIWDVxNWRDMmNJY1plNjZaandVTUJPckdGZS9lVUd3VzNoUXVLTmQx?=
 =?utf-8?B?UG8zQlVjUlEwQUxqZWthOFE1ZElrVTFrZWJNNVJMZWdFcUtpQjcwVDdKVHln?=
 =?utf-8?B?OXZKWkMrT3VpUTZ2UWc1b2NhakowaFAxMDE2K1o4b0FQR0pHZHMzVlBFdkN4?=
 =?utf-8?B?VXFnekFkMS9ueUxRUWRZeTByRGVIS3FJZTlZSUZnWXg5dE14b3hPVXlLODlM?=
 =?utf-8?B?SU5OT1hHUFQ4T0VwNytMVVRkdmgzUkFiZlV1Mkl0cmJKWFpCM05ycFdTbmYz?=
 =?utf-8?B?eisrLzhuQmVvMXVaM211N093ekd4MzViM3BLSVU0VU5FeFRQZUlURG9abUVV?=
 =?utf-8?B?bGxqK2dYTlN1bzVlQ1lGT3NWRjJXM2JXbWNudGV1RitYTmZsYU4vY1J5NFN6?=
 =?utf-8?B?R2toNXduYzRaa0ZIY0JKOHNXL2dsRHZTQ3F2MXB5SzFKcnpvT1JhcWRraFNX?=
 =?utf-8?B?Z0tHTXg5MXVrRDhYNDBDckVGeCtweHowSTAyQ2Ftc2cvc0NCaURXUHRnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WUN4QTIxaVlmWWhZZm11VWF6MzU5SjJKdzE0TFlpanFvcTM1aHNPWXJpK0Nj?=
 =?utf-8?B?UXdQSmVvaHdYQWtvd3RzT1RlQ3FLRFpBRmVTdXordldmV0R3SUhMdFZ3SGlB?=
 =?utf-8?B?d25ycVdGeVhZbG9NdjFWQTBPbm5qeE1vSDZxOGkzMmVFMHJSMkgwQnlpV21E?=
 =?utf-8?B?UlBjVmhHVGZKQlRPVUM4Y00wQWdVQ1BhMGhZa05PVjdqbFNVcnZ2YU4zS1N0?=
 =?utf-8?B?Y1NVZWtqNC9HTVhocTZZUWphSCtQc2lTMnVYR1hGQWlXZjRFRkJhdkVmWUFH?=
 =?utf-8?B?c0w4MFNFMjB2Zkh2T0ZVSkZ3WndJdkVrWmgxZzRZdUdVZ0JSMU1BVHlLd1gx?=
 =?utf-8?B?OHB0cTRQTDBUaWJ2dmhVOElKclFZSmhPKzRwbUpXcmlvS2lUYnVORlZkZGIw?=
 =?utf-8?B?dVV5bGtPRld2eHBOV3RNajRmcTZnZzFLckZUY01aVTF4RXJ0ck52WDdZeTBk?=
 =?utf-8?B?WUZ4UStlYlFiVkJvdFJYejNDaUhYMGFQQURlVlhaVjBrclRHeFFvc2N0M1U2?=
 =?utf-8?B?ak01NnliSzMzT09nTkdnMyt3WWhHYjZ0ZmRVOUFOYTRIa1VOZmtWSWV3SkNq?=
 =?utf-8?B?UnlZT2NLVmNid1NBUDZjczFVdU9tSkc1SnpaYkhreko1WU5odVVuUG5iVG9j?=
 =?utf-8?B?dEpWNWZrb1ZMOU5NeWJic0w4Zkx6UkwxKys0UmlPTDNFR1RKakgzTU1rWml1?=
 =?utf-8?B?Q3p6b2ozaUtqUG1uRk56L3BYcCtlZ0xLNTFydHlBYld2QzduaFRSUHlBSHl2?=
 =?utf-8?B?MVc1UDZnMy9pSkdPU2lPdExNNWVETzhmT0ZRcWZJMmFnczdRUTZMdmdlNmZJ?=
 =?utf-8?B?MDhBMzFGRHZDMmlYVlcrS3pENmswV25pU1hXQ1MyTUFIbkFnNGdnN053dmNX?=
 =?utf-8?B?aHZ2aFNrMi83RXYxZnZSSWt6dXZlekFqWkFrb3NiVGx2aWova0lOaC9mdC9V?=
 =?utf-8?B?VXBuRG43aDl0b05NdGt2MjQzWXdURDBqdEFxS1EvZE9QbUUvNkFwNTh4WjNJ?=
 =?utf-8?B?a1o5UzhRMEJEa211b3VTN1N5UnJ2aDI0VEY2MmIyY0tMMGdPSVhsV3Y4d2NC?=
 =?utf-8?B?SjAvTm9OQmpxRGRMOHBRUER4bHlOcHBzMXRZWURmZ1BSZTRzM2NGdUZPaUxS?=
 =?utf-8?B?cEpBYjRjbjNLNmtIYkU4cmlaY0hoSXFwZGR3U3BFM3VzeW9uUTRwakRUQmFu?=
 =?utf-8?B?TFQ2R0twZkpyWUhhb3VPL2lpbTJOdnZ5U1I0OTk3czkzWUxhZzkvdlVYQjVC?=
 =?utf-8?B?V1VKdk5aOHdtRUFvSktIUDhPUkQxaWlpSVdSbUtObXZ4UG1xcHZGSWJOUndx?=
 =?utf-8?B?bWlSemIyQzgyK3VOcGFFUXV5VFZoMFZvZnI2a1BRSkJpT3hQYU5tZCtoQi9C?=
 =?utf-8?B?dS9sUGNOVmJUVzVBS0hURytJUUVmbXkzY3Z0RURYU2JCK3NXeDM1MUFPZUVu?=
 =?utf-8?B?Y2R0VUpkaHhoZFNERTM4UG11TTZOemtTR2huK2VRa2pxTGxXSXk1NWZ6aUM2?=
 =?utf-8?B?L2F2UVVtVjh0NnFtVXg0VStjUVVYSm41Y1I3bG9GMXVYOEdnRk9FVzJucWtC?=
 =?utf-8?B?bkVmQ1lZZFlwMjJiR3N4NWJxK0pub3l6K3pOU1ppTmw0RlV2eUl0cUtJWDUr?=
 =?utf-8?B?RklnZ1R6aEVXYnR3QmJzOUorV3JJMEpEZ250aWtpZ3pRUDhMSFN3NXFvc0hM?=
 =?utf-8?B?MkFzbFc1M1ZFUUNyUDJDemxRTDhaQ1JEWlY4TzYxOGVWMFBMYXNXYWVMR0dS?=
 =?utf-8?B?THdrQ2V3Y2VnRzh5aUlnbmF6dlJDRW5UYXh5V1NQUTlqR3h1cU1pSG9XTzNu?=
 =?utf-8?B?ZEJsZTNZcFc3VjFCN1M5cjhlNi9GSWEzQlYrNkhiU1VPOHkvMTJvbXJPSEh2?=
 =?utf-8?B?ajFlR1FnNkQ5OU5sVjM0M3RUdGhDeXJLQ3djZzFrSU9FV3FrVFkwY1lKcSty?=
 =?utf-8?B?Z0tiak9sWWYvU21BU2F0aEVXQTRZeGJVaUVtanl4L04zOWwra1NGbmVscndD?=
 =?utf-8?B?aHpJQUpmbFNYVFFFOHhablY4V3BGdFRJMlZYTnZKQVpLRUx1bWdROUZ4TXI5?=
 =?utf-8?B?ckFlRmlDNHVCRFZJSDlKbndzczdzOUJFSWRvdXZnblpvOUZHVno1ekdFc3ZM?=
 =?utf-8?B?Y0VKRDFzUzBmekJLdGZySVpRQzRQZ2VDNGhsSzVpVmpEeFJ5TXJ4bVZaREo4?=
 =?utf-8?B?OVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79d4fdb1-0208-46bb-1021-08dc6d8ceb5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2024 05:25:19.1332 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YLxFz4hqxK3vEzFQVxrFhx5ZZJ+TahQeveWWTtqHsnAA/WtzSzNJwJ2h3Uq7M93W+QQLkeX+Lc+8PSDat4NN2H33eOnjJT/IMVKx3VN5G20=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4915
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714973124; x=1746509124;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FEPrBN9fqcWbdOZpX5X46rqGPjCydbwmlq0yh4wB+eI=;
 b=QEFs0OFJJlJ3PDXxv3FPNy+fGjBBdaLhdZWOExpsTYAWRWpXEQY4bzZq
 Vu8zrOeF0jpk+/WgGNKWahcXGnehfuAYHn4tAo+Kv8v/GXdIfO5QR0SHK
 fDzQzwvBeyylUhSdezeJRhRtHthNhNImKRlKtxirIJuCMRNeLKhMhripG
 TAsdPhp1qgVsfTDVJJSWft0xkNob53v1wcTiqkl/lvKakzzIH9D63VJ03
 g1tZ4C/3mqM46UgPpJlKXFTaX+A8u8HiCXEIwjTFZFbpU79o+KwoyeuCS
 P9dhbMjQoi8/TsUUkfuayX8ExBFlK4TOHEpTeSR1IBATTBExo0FRwSazY
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QEFs0OFJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: flower: validate
 control flags
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgQXNiasO4cm4sDQoNClRoYW5rcyBmb3IgcHJvdmlkaW5nIG1vcmUgaW5mb3JtYXRpb24gYWJv
dXQgdGhpcyBwYXRjaC4gV2Ugd2VyZSBhYmxlIHRvIHRlc3QgdGhpcyBwYXRjaCB3aXRoICdza2lw
X3N3JyBwYXJhbWV0ZXIgb24gaWNlIFBGIGludGVyZmFjZS4NCkl0IGlzIHdvcmtpbmcgYXMgZXhw
ZWN0ZWQuIEVycm9yIGlzIGRpc3BsYXllZCB3aGVuIHRjIHJ1bGUgYWRkZWQgd2l0aCBjb250cm9s
IGZsYWdzLiANCg0KW3Jvb3RAY2JsLW1hcmluZXIgfl0jIHRjIGZpbHRlciBhZGQgZGV2IGVuczVm
MG5wMCBpbmdyZXNzIHByb3RvY29sIGlwIGZsb3dlciBza2lwX3N3IGlwX2ZsYWdzIGZyYWcvZmly
c3RmcmFnIGFjdGlvbiBkcm9wDQpFcnJvcjogaWNlOiBVbnN1cHBvcnRlZCBtYXRjaCBvbiBjb250
cm9sLmZsYWdzIDB4My4NCldlIGhhdmUgYW4gZXJyb3IgdGFsa2luZyB0byB0aGUga2VybmVsDQoN
CldpdGhvdXQgdGhpcyBwYXRjaCwgdGhpcyBydWxlIGlzIGdldHRpbmcgaW5zdGFsbGVkIGluIHRo
ZSBIVy4NCg0KUmVnYXJkcywNClN1amFpIEINCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KPiBGcm9tOiBBc2Jqw7hybiBTbG90aCBUw7hubmVzZW4gPGFzdEBmaWJlcmJ5Lm5ldD4NCj4g
U2VudDogRnJpZGF5LCBNYXkgMywgMjAyNCAxMTozOCBQTQ0KPiBUbzogQnV2YW5lc3dhcmFuLCBT
dWphaSA8c3VqYWkuYnV2YW5lc3dhcmFuQGludGVsLmNvbT4NCj4gQ2M6IG5ldGRldkB2Z2VyLmtl
cm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IEVyaWMgRHVtYXpldA0KPiA8
ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1
eWVuQGludGVsLmNvbT47IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbw0K
PiBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVt
bG9mdC5uZXQ+Ow0KPiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBTdWJqZWN0
OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0XSBpY2U6IGZsb3dlcjogdmFs
aWRhdGUgY29udHJvbA0KPiBmbGFncw0KPiANCj4gSGkgU3VqYWksDQo+IA0KPiBPbiA1LzMvMjQg
NTo1NyBBTSwgQnV2YW5lc3dhcmFuLCBTdWphaSB3cm90ZToNCj4gPj4gLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRlbC13aXJlZC1sYW4t
Ym91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gPj4gT2YgQXNiasO4cm4gU2xvdGggVMO4
bm5lc2VuDQo+ID4+IFNlbnQ6IFR1ZXNkYXksIEFwcmlsIDE2LCAyMDI0IDg6MTQgUE0NCj4gPj4g
VG86IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+ID4+IENjOiBuZXRkZXZAdmdl
ci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBFcmljDQo+ID4+IER1
bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA+PiA8YW50
aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBBc2Jqw7hybiBTbG90aCBUw7hubmVzZW4NCj4gPj4g
PGFzdEBmaWJlcmJ5Lm5ldD47IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9s
byBBYmVuaQ0KPiA+PiA8cGFiZW5pQHJlZGhhdC5jb20+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVt
QGRhdmVtbG9mdC5uZXQ+DQo+ID4+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBp
d2wtbmV4dF0gaWNlOiBmbG93ZXI6IHZhbGlkYXRlDQo+ID4+IGNvbnRyb2wgZmxhZ3MNCj4gPj4N
Cj4gPj4gVGhpcyBkcml2ZXIgY3VycmVudGx5IGRvZXNuJ3Qgc3VwcG9ydCBhbnkgY29udHJvbCBm
bGFncy4NCj4gPj4NCj4gPj4gVXNlIGZsb3dfcnVsZV9oYXNfY29udHJvbF9mbGFncygpIHRvIGNo
ZWNrIGZvciBjb250cm9sIGZsYWdzLCBzdWNoIGFzDQo+ID4+IGNhbiBiZSBzZXQgdGhyb3VnaCBg
dGMgZmxvd2VyIC4uLiBpcF9mbGFncyBmcmFnYC4NCj4gPj4NCj4gPj4gSW4gY2FzZSBhbnkgY29u
dHJvbCBmbGFncyBhcmUgbWFza2VkLCBmbG93X3J1bGVfaGFzX2NvbnRyb2xfZmxhZ3MoKQ0KPiA+
PiBzZXRzIGEgTkwgZXh0ZW5kZWQgZXJyb3IgbWVzc2FnZSwgYW5kIHdlIHJldHVybiAtRU9QTk9U
U1VQUC4NCj4gPj4NCj4gPj4gT25seSBjb21waWxlLXRlc3RlZC4NCj4gPj4NCj4gPj4gU2lnbmVk
LW9mZi1ieTogQXNiasO4cm4gU2xvdGggVMO4bm5lc2VuIDxhc3RAZmliZXJieS5uZXQ+DQo+ID4+
IC0tLQ0KPiA+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdGNfbGliLmMg
fCA0ICsrKysNCj4gPj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+ID4+DQo+
ID4NCj4gPiBIaSwNCj4gPg0KPiA+IEkgaGF2ZSB0ZXN0ZWQgdGhpcyBwYXRjaCBpbiB1cHN0cmVh
bSBrZXJuZWwgLSA2LjkuMC1yYzUrIGFuZCBvYnNlcnZpbmcgbm8NCj4gZWZmZWN0IHdoaWxlIGFk
ZGluZyB0YyBmbG93IHJ1bGUgd2l0aCBjb250cm9sIGZsYWdzLg0KPiA+ICdOb3Qgc3VwcG9ydGVk
JyBlcnJvciBpcyBub3Qgc2hvd24gd2hpbGUgYWRkaW5nIHRoZSBiZWxvdyB0YyBydWxlLg0KPiA+
DQo+ID4gW3Jvb3RAY2JsLW1hcmluZXIgfl0jIHRjIHFkaXNjIGFkZCBkZXYgZW5zNWYwbnAwIGlu
Z3Jlc3MNCj4gPiBbcm9vdEBjYmwtbWFyaW5lciB+XSMgW3Jvb3RAY2JsLW1hcmluZXIgfl0jIHRj
IGZpbHRlciBhZGQgZGV2DQo+ID4gZW5zNWYwbnAwIGluZ3Jlc3MgcHJvdG9jb2wgaXAgZmxvd2Vy
IGlwX2ZsYWdzIGZyYWcvZmlyc3RmcmFnIGFjdGlvbg0KPiA+IGRyb3ANCj4gDQo+IFRoYW5rIHlv
dSBmb3IgdGVzdGluZyENCj4gDQo+IEkgdGhpbmsgdGhlIGlzc3VlIHlvdSBhcmUgb2JzZXJ2aW5n
LCBpcyBiZWNhdXNlIHlvdSBhcmUgbWlzc2luZyAic2tpcF9zdyI6DQo+IHRjIGZpbHRlciBhZGQg
ZGV2IGVuczVmMG5wMCBpbmdyZXNzIHByb3RvY29sIGlwIGZsb3dlciBza2lwX3N3IFwNCj4gCWlw
X2ZsYWdzIGZyYWcvZmlyc3RmcmFnIGFjdGlvbiBkcm9wDQo+IA0KPiBXaXRob3V0IHNraXBfc3cs
IHRoZW4gdGhlIGhhcmR3YXJlIG9mZmxvYWQgaXMgb3Bwb3J0dW5pc3RpYywgYW5kIHRoZXJlZm9y
ZQ0KPiB0aGUgZXJyb3IgaW4gaGFyZHdhcmUgb2ZmbG9hZGluZyBkb2Vzbid0IGJ1YmJsZSB0aHJv
dWdoIHRvIHVzZXIgc3BhY2UuDQo+IA0KPiBXaXRob3V0IHNraXBfc3csIHlvdSBzaG91bGQgc3Rp
bGwgYmUgYWJsZSB0byBvYnNlcnZlIGEgY2hhbmdlIGluIGB0YyBmaWx0ZXINCj4gc2hvdyBkZXYg
ZW5zNWYwbnAwIGluZ3Jlc3NgLiBXaXRob3V0IHRoZSBwYXRjaCB5b3Ugc2hvdWxkIHNlZSAiaW5f
aHciLA0KPiBhbmQgd2l0aCBpdCB5b3Ugc2hvdWxkIHNlZSAibm90X2luX2h3Ii4NCj4gDQo+IFdp
dGggc2tpcF9zdywgdGhlbiB0aGUgZXJyb3IgaW4gaGFyZHdhcmUgb2ZmbG9hZGluZyBjYXVzZXMg
dGhlIHRjIGNvbW1hbmQNCj4gdG8gZmFpbCwgd2l0aCB0aGUgLUVPUE5PVFNVUFAgZXJyb3IgYW5k
IGFzc29jaWF0ZWQgZXh0ZW5kZWQgTmV0bGluayBlcnJvcg0KPiBtZXNzYWdlLg0KPiANCj4gQWxz
byBzZWUgSWRvJ3MgdGVzdGluZyBmb3IgbWx4c3cgaW4gdGhpcyBvdGhlciB0aHJlYWQ6DQo+IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi9aaUFCUE5NYk9PWUdpSENxQHNocmVkZGVyLyN0
DQo+IA0KPiAtLQ0KPiBCZXN0IHJlZ2FyZHMNCj4gQXNiasO4cm4gU2xvdGggVMO4bm5lc2VuDQo+
IE5ldHdvcmsgRW5naW5lZXINCj4gRmliZXJieSAtIEFTNDI1NDENCg==
