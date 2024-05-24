Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CD08CEBA4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 May 2024 23:04:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FE9D82044;
	Fri, 24 May 2024 21:04:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JS46nCSlcDyH; Fri, 24 May 2024 21:04:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F33AD82046
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716584678;
	bh=0Cl5X4ax8zaaS/3jYLpJ4hsfOI412l0Em+5ZjxdkHMU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bYOe8F5c50YGByeSB10b4/uXWPqJhrwHdcDbBAxGG+RRLNc5PXEb5ARRx/DqBemgE
	 xBtJFuFqX5O7D4GlVu3gsfjCbHSnpWTS4teMb1FuSD6rLdzQIvwVYtxsZ8MNOJKnQl
	 dNdxvgXWxGOrGG4YGN5qJf0Hkla+Up+DqAhZnqYvp2ftyxeLEvBwKX9yYHT1dMr7C8
	 UNSqEOISQFLLCtda8/XbD/Qct2BAwr9c+BORtwoK1hJWLUpgx+8zoCI/KqJbf6xm8A
	 MKhAs0rtuzzjm6G0M6Qc3yGoIIj57cvURztwp3WanV7RblROS/bete1FY6tfE3Qzlg
	 XhJ/pd65ucvhg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F33AD82046;
	Fri, 24 May 2024 21:04:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 607741BF46A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 21:04:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B40A60616
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 21:04:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GAUzTLyjMoPQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 May 2024 21:04:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3CA7F6060F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CA7F6060F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3CA7F6060F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 21:04:33 +0000 (UTC)
X-CSE-ConnectionGUID: L+BL2nWiQVi2gVkVnjcGMA==
X-CSE-MsgGUID: A0ipRvS+SOKKTrPfTJ64vA==
X-IronPort-AV: E=McAfee;i="6600,9927,11082"; a="13099793"
X-IronPort-AV: E=Sophos;i="6.08,186,1712646000"; d="scan'208";a="13099793"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 14:04:34 -0700
X-CSE-ConnectionGUID: 9NKKHl4rTX2YE0ScGoLeyw==
X-CSE-MsgGUID: d7pMSU+RTPOg4maqQV50HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,186,1712646000"; d="scan'208";a="38929963"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 May 2024 14:04:33 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 24 May 2024 14:04:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 24 May 2024 14:04:32 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 24 May 2024 14:04:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ERSpl0kNY7A956vMeA7e5pO0czaQrRk0x/ZqxZVUrO2wOY2tjqtZ2PZSTL0iIspQ7qq71blXLk2t/ksq3QRL6HQeUIStNgckUI7U2FyY0Vek4N83eBWI9urYIs7Iotor2mg5c8jnF5hqinywuuo/y3srrTlxHGAyw+N6ghiEa44tpihoqdDo9Y6oJNaLy4kDuzpmln1MVT7jag+SFrxRIrjlrg9s5b+TwA3s3o9rtMZFBLMpr0FuTpGbKytNOi+KnHFD3W/KfWr/KQDmYFsZZjY8fRWUcLgkuZ+9r7LWuNGdlJzBCTA+Xfonn665KrdKTbAnqOsFhwUPrh8BJCmMHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Cl5X4ax8zaaS/3jYLpJ4hsfOI412l0Em+5ZjxdkHMU=;
 b=D/5H+NMF+z78nhiNvsPgQh3dlnJFKE8o2Mqk5YHlZ/UcXRaURQLaSVYcL59h4NRxuQYbqne77sKHfxybRK2FTvzSyy38TQ/uP4+z4Sul9ubsWGlHiFdzOnbYBEX7O3w4rPyp3m2DXBcjDvVWmixcwDItJRtU8G7jOWpSPyUDHpMUEvHLVi17PXCAJsbm0jl0MxpK5IxmuDDwBK/bcw95gb2H6/nCI3jkVQhDOmMgyvjyoko9MgjYvRbAkVE5Wijirtr8yqOSxkewCw+1+OORcydv7niBAbNVReuWXGZh8xHn/RiiQx7pN2dtgBTFAYJTCGab0GaDU1KjjEfP49f5rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CYYPR11MB8431.namprd11.prod.outlook.com (2603:10b6:930:c7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Fri, 24 May
 2024 21:04:30 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.016; Fri, 24 May 2024
 21:04:30 +0000
Message-ID: <28f2d06d-7ddc-4b98-bc58-b560028611ed@intel.com>
Date: Fri, 24 May 2024 14:04:28 -0700
User-Agent: Mozilla Thunderbird
To: Michal Schmidt <mschmidt@redhat.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240522231256.587985-1-mschmidt@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240522231256.587985-1-mschmidt@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR02CA0025.namprd02.prod.outlook.com
 (2603:10b6:303:16d::11) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CYYPR11MB8431:EE_
X-MS-Office365-Filtering-Correlation-Id: 55beacac-0848-4793-410c-08dc7c351a8b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NFNlaVJJRFhIT2JQQ1BzWXhLdnJ4dysrN09BSlJCQVpzekcvRnFVb05Dcldi?=
 =?utf-8?B?L09uVG5MeTd2dWVpT04wZWFCU3V5UHI2anY3L1dXWW10dXRBQ1ZZWks5bEpD?=
 =?utf-8?B?dXppWGV4Tm9GU3VqSTVzOVUwUER6QTZTZ05INGFOTkVkeXNKQXczd0ZEa2xX?=
 =?utf-8?B?d2FPTUliWFhNTlNDcDg2S2p2OVhFSjM5T1I2ZnVBVmV2cU9FSmd6cVZKS0xF?=
 =?utf-8?B?SHl2RWxFTUxvOFd1TmgreldtT1JsV2xhWlNBeVJCMStzSFNGcEdPaDBocG9m?=
 =?utf-8?B?MTdiZG4vdnlGUFNXYjN5SzcxbU43UWNxS1dLOWJVd3ViZlE1V0dzd1dYQkt3?=
 =?utf-8?B?V3ViNFNUaFl3R3dmZXBKSmprRlA3QUI4a2xwdit6N3ZlWDB4Q0dBa3RQZEho?=
 =?utf-8?B?OUwzZDlUa2l0OHNSZTQwdzJEVkx2emhoTSszS04yd21kKzZFL1N5M29QWDdX?=
 =?utf-8?B?ZDNqT0l0dk1aKzBlc0hZb2p1aE9SU2tJaEJBL2orYkFaYjNyTWxvQlBFN0E0?=
 =?utf-8?B?UFZQY28ySGwvdHpzazQ1ODdUMEtBZXZPSTYwRkt4RjVNQVdGTlFhaXlQM081?=
 =?utf-8?B?dHVOUmk5bWlqQWxJd0tuMVRqKy9sN2NnaXZCZU5jVzk0VDJZcktacVdwSFhl?=
 =?utf-8?B?K2xBVTlpR0Nvbm5VNVF5VUVkNXcwTk16SmVaUXZoMytINVhBZVV5RWh1MUxq?=
 =?utf-8?B?c0c5QzBVenZCUmdIcEpjZUM0Z1FYaHFZKy9Md2ZSLzQwT0pmQzdNMEFJWWlX?=
 =?utf-8?B?ZXRTWnJtU0h3OWVZQmJhSk1DRFpRbWZ6VHNJVVJCTWJXWXlrZ2haT2o3U2Nn?=
 =?utf-8?B?SzZMWHI2aHpNT0VxSzNsSUlNcEgwNDdxRFhwYUdCUUQyaDhTaTFDbVVTdDNS?=
 =?utf-8?B?UFVwZXJYTS80eDRzVmVYcEJKL0lUQmx3bURMMGFjb2kzZ25wdkZtVW40ZEg5?=
 =?utf-8?B?bi9mTWt2VUUvajJ4VkpHaWozZFdKTU5hL1Y3Vk1ZdUQ0T2grNmcxMkhqUHFt?=
 =?utf-8?B?WDd5dHMzWTl6dWxzZ2xHRjJ6TDFJUllMeDdSWkVxVVhQMmM4Q2ZkaGVzK05o?=
 =?utf-8?B?S1hIRFh0NElrblVnakRlL2ppZFBiQ1hIeDdObUI0TTZRMXROSExmbG1tR2p2?=
 =?utf-8?B?bDB3N0tud0ZLVExpaWZQZkxVNWRLOXJ0R0Fib3paVmF1cmJ1R0ZqMEd4Z0I4?=
 =?utf-8?B?TWJDUndaZ0ZjY3dHR2RKUE9KVkRYOTR4VVRMWE85NHNyK1JraC9CdzJQemtY?=
 =?utf-8?B?MllSU2syMUt3OE5wNy9NSXBDd1ZyenZNZ3RPbDhrSWFmSXpyNlU1VGQyQXNz?=
 =?utf-8?B?bkJGWHJGYlFnQkpsUUtCSFo2SjVvVWJYUjYrMm5DMURWZFFpeGtlSkJ6cW1J?=
 =?utf-8?B?SjI3UkR0dEtaZlhDaHhrS0xnelJqaGwrbEttOWlWTVVtdnU3d0xGdjZLMW5Q?=
 =?utf-8?B?c080TU9hWmhTZTJ4cCsxVTFJVTBOS1VWbHRPeEtTdHYxRndQSmJXUC9UQmo4?=
 =?utf-8?B?RHBSVHFrWVVLV1RjREo4SHdYaDFZM3BxaDBQbXlEMjg4VGM5c21Gd1VERDFK?=
 =?utf-8?B?RzNFd0RVQ0NSclF4RUV1MHErTHdZWFE2Q09TK3lZTkgwK01PNHN6bjVPWnQr?=
 =?utf-8?Q?vBX4H3A/Pmj2byggE5vRl39L3fvnL1Yfj0jrW6UibSYM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZXJFRHJvSWwrZDJ2RUd4dDRZTXNPWTRhTnpFNDE2cFlBYndXR09pWVZ5YmFv?=
 =?utf-8?B?QVVXVHgyZTAwb0g4emo1TWh4S0U5dTZYQ0FhRlBjY1owejgrcGkvcFlyUnBr?=
 =?utf-8?B?dzg0S01lVGxJYmdTbGNWVlZPYXlKVG1jQTVkNWxmeFRYeG5KMi9yOVgwdmll?=
 =?utf-8?B?cnNmTnMrTjRHMU1hdFZTdEJVdW9TL3c2OGkzZXJwUGx1UE1DejNUVnhrbzI3?=
 =?utf-8?B?TlE3WVZLNGhZWUNiQjRodHI2bGh4WmZrUjBhZ3prVDRZZTdGb0JtbWt2VTVa?=
 =?utf-8?B?aHhVMEtrQmxqbjJmZnN1MHRBWWZtTFIvSTFJcEZDaHZHYVVBTzhrOHZpeFRU?=
 =?utf-8?B?bjNWWnFTSE85em1HS20wYytWVC8wMyt1U0g1OHJKQWtKWFJ1Nlp3NHpjNzFl?=
 =?utf-8?B?OGhnZnhxWmhxdm10Vk8vQmhNQWppenVrQUx0N282a1VrME5wMmdnRnp2UnU0?=
 =?utf-8?B?VzZSajZVUER4TG1UdEM3STdGWE1GVDRtT0ZyaU13M3VYdytOUy9CbWx4dy8w?=
 =?utf-8?B?VXpVYytTMFZZdlpkL0xwdTB5a05zeFBsSGFHY0M3L29MZzVpeFlZNlVXanJ1?=
 =?utf-8?B?OC9WQUVEMGdrK1VFZEt3cHQxWklvb3NVRUNmODVyZnFzYmh1ZnBsYWlPd0ZI?=
 =?utf-8?B?dzNKaFFmNHpsNXVsajg3MkxROTJueGV4RjlOTG1jQ0tTbmp5VHRHMWVNRXJM?=
 =?utf-8?B?N2ptY1E2WWlEQmxGL3VWWEdmVTBHbXlrUklrK2NnVUp5VS9EYVlLWENVOTM5?=
 =?utf-8?B?NnJaL0xKTk9Hdk9lUHR6TGtNR0NCRk5NS3l2UTBTYWZVS004Q3RTdFlwQXRi?=
 =?utf-8?B?WFNPQnpHK3UxSjIvZ0xpc2U4anV2OWJjOEkvODVMUkpWZmJoaGdFemc1WVlk?=
 =?utf-8?B?Umt5N21aazRSSDJlYkdMZ1pSM2t2QUpYb1ZJUHROQXRJTDZrYXhMK1p3ZGh1?=
 =?utf-8?B?SE1vNWxqV1hOKzVNZHlLZGpsUG43MndocjJUUHJFalZSYXdlaEZIWSs3SlBy?=
 =?utf-8?B?bzdPQm1vM09RZHdPaDFtTlI0ai93REhSU3hjQUpiK1pvakFnaisxQnF0OE1l?=
 =?utf-8?B?dUFmTGxrV0U1SjVVaVZ1MnZqeDhNMHdLQnVrbkt6eGtta3lUOTM1UjFxUlg2?=
 =?utf-8?B?VmZJNzhzUnF3RmE3eUhVWXc4aFAwSlFsTlBPZ3pBZjlYeFkxSVEvSDE1V29t?=
 =?utf-8?B?QWhOdHZudERqeWlLSXpDcWNHdXF1OFdEdEtNS08xdHJUU00rMzFySXBDSHNT?=
 =?utf-8?B?VUE1NFR2akNYK2s1QlFGOVpFbnowTmg2RXJQbXNHVzhiUXpaUHJPbU8rQ2Z6?=
 =?utf-8?B?RGVIdnhSUlNQS1pLb1g4MlpFRkhIVmdDcjZvZmZDZWZQT01QT055b1F2bTBG?=
 =?utf-8?B?a0dxaWtHNmdBM1c5SWZiazUwOFQzaEpmOWpXQVNmM0tReTh1WmdHRGxTTHRx?=
 =?utf-8?B?Y2hsUHloTmtlelhrcHF6WDBZbmpKUlVJRVdXRElhTkd4NE9BQUVmZ0p2SEh1?=
 =?utf-8?B?K0xlLzRFR1RPVDhzWjlFK2tWNzVhQkowVlVFSzVNV0hTQ0EvSi9ISFNCTVFi?=
 =?utf-8?B?eXlqaitVSFJtR3JiTHljVE1OMjNqV0VSWFovZENkM2QrZ2RaNlVLNnpQbUZa?=
 =?utf-8?B?cG5FSzRUUDhnK2lnMzVMbllsUkpnTFpSS1A2ZmNRckNXZkZGNlFjSWZFdWw0?=
 =?utf-8?B?bUYzemE1VnFidlIyRTRGaXVvbnAvb2JFMFRKelJhdmtFK05zTE40eVBSdDNr?=
 =?utf-8?B?QWFXYlRqL2V6ek14QnZMNm4zZ2Fsd0w5d3ZIZ1ZLbm9wK2VpNHE4WmFTeUZU?=
 =?utf-8?B?ZGlkYmVMNmFUWW1tYXFjcVVlUXJxdGtWeC8vdW40OVhxSW5hTVcyUnlFcWFk?=
 =?utf-8?B?WG45TEdNSTMvTmQ1TFQva2JsT2FIRG53QVVaZUlNd0JFNVBzblRIb1BVdDZG?=
 =?utf-8?B?Mm9pbWZjVmp5QWVKU1hhZk4vMFVpU2VZcFJpY1RkWWIzSE5ITzJndWFUdWw1?=
 =?utf-8?B?czJmZm4wbndMT3BicHI2cW82UERYZFY2aDZGaFpIU2VrbEVFWmZXQTByYVdK?=
 =?utf-8?B?UUxnckJrQTd6WmhJa2xLUzJNaG9zQzRUNGNrUi9FOTNMcGNJRDZOWStNTDFO?=
 =?utf-8?B?bWkrNW5aT0lLZHlrRUJQdDNjQS9zaGVrbDRMNzdUQ2dWUDRLZ3hSMWxFNlpX?=
 =?utf-8?B?QUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55beacac-0848-4793-410c-08dc7c351a8b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2024 21:04:30.1568 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2ttZOa5OWvHB0mLZvdBveXZo5o/UGGr+hJcHkClWFoJvQGwtMLKGmd1AQ9f21UKPxR5R8wuxqzrx9ylma48if54+ocLNmhoH/Ssu8ksrYWM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8431
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716584675; x=1748120675;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4HuMdIZ64I3SsanEmECoRyNrDbRbn1qFPpA0VeCGhp4=;
 b=n/o8dRBd7oR1nxEo32JRNux+6CM86b1lXdx1BcRT/MRxM/btnLkPUl4S
 1N2C5FeWNvSg+lC2hmeXpIoY9rtVlIPo0Axhs4fgaQdPWE75OF2CmJV5k
 4R4NPf7GBLWTPuv2b2oHeYLqGvDqtMA7VAAtJR1vRf/pRcOlmMUKR5Lx/
 F2HXtmEP26EcKbqe7FYd42NdlaG4KLY/ek6ylxKzvj6LY3f6Z7W0m44dN
 ArNXHkm7jKXqtbYwzCBnfUZb3puN1U0Sfz38WnfL3uiuyBWjTM5lrTkJx
 OqvrSSfro8aQ7Lbqz9/2qTESbqUq5uaDRqg/tUHjSF6FuB7Z1gHCXMdk+
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n/o8dRBd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: use
 irq_update_affinity_hint()
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
Cc: netdev@vger.kernel.org, Thomas
 Gleixner <tglx@linutronix.de>, Nitesh Narayan Lal <nitesh@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/22/2024 4:12 PM, Michal Schmidt wrote:
> irq_set_affinity_hint() is deprecated. Use irq_update_affinity_hint()
> instead. This removes the side-effect of actually applying the affinity.
> 
> The driver does not really need to worry about spreading its IRQs across
> CPUs. The core code already takes care of that.
> On the contrary, when the driver applies affinities by itself, it breaks
> the users' expectations:
>  1. The user configures irqbalance with IRQBALANCE_BANNED_CPULIST in
>     order to prevent IRQs from being moved to certain CPUs that run a
>     real-time workload.
>  2. ice reconfigures VSIs at runtime due to a MIB change
>     (ice_dcb_process_lldp_set_mib_change). Reopening a VSI resets the
>     affinity in ice_vsi_req_irq_msix().
>  3. ice has no idea about irqbalance's config, so it may move an IRQ to
>     a banned CPU. The real-time workload suffers unacceptable latency.
> 
> I am not sure if updating the affinity hints is at all useful, because
> irqbalance ignores them since 2016 ([1]), but at least it's harmless.
> 
> This ice change is similar to i40e commit d34c54d1739c ("i40e: Use
> irq_update_affinity_hint()").
> 
> [1] https://github.com/Irqbalance/irqbalance/commit/dcc411e7bfdd
> 

This is sent tagged for next, but the commit description reads more like
it fixes deployments running irqbalance. Would it make sense to mark
this with Fixes and target net instead?

> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
