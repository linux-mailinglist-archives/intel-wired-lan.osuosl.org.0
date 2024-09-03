Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 836C996A9DB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 23:17:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3778540334;
	Tue,  3 Sep 2024 21:17:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HDMsLj4iHnBZ; Tue,  3 Sep 2024 21:17:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF3C240160
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725398231;
	bh=QumXlsuYLlgtClQISZIv/C94xj1WIsMZ0HENEGWy6kY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cnQ5VIp+SrKBqFwgg+QdLvgKnkJ98ao4DBwDLFWtjkXvFrlVLnqd8nhshO1xtfF01
	 ByvtNeIOtGVxhkWNdbumVJZaIC9YOeca5CUdtaQHs1nZPrAfHyxgMUpUZq5zEENRLn
	 GqySUhsuqKf/bRWglJfIelW22FrcoexD5+pqjTz6/17vxYDxyZUtQVunoSPCvry7YZ
	 hfQHmi/g1QHqu3l3LsaU/fWTlubRdyjDx+AIlVhtG6DtFSiDa7AgJkOuIblgEDGkKl
	 vQQuGabP6+Qfy7OT/i0CJ05yfgEW6iTPCnbfBZRw9EJslpB6dxuhm7vzEM9boCaaB3
	 C75VDXuLyzH1A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF3C240160;
	Tue,  3 Sep 2024 21:17:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 863BD1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 21:17:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E96F80F8C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 21:17:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wYqfY4VYqc3D for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 21:17:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 62F3480F76
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62F3480F76
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 62F3480F76
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 21:17:08 +0000 (UTC)
X-CSE-ConnectionGUID: XMasGI5xRlmvz5gQyRspJQ==
X-CSE-MsgGUID: K+/smCHDTHONyLT3QleQZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="41500286"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; d="scan'208";a="41500286"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 14:17:08 -0700
X-CSE-ConnectionGUID: T1AgroQSTIKyNFiQprnEzA==
X-CSE-MsgGUID: FZFsHm0oRuCPL0dqQx/63g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; d="scan'208";a="69860316"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2024 14:17:07 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 14:17:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 14:17:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Sep 2024 14:17:06 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Sep 2024 14:17:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xquuQzZi9XX8at+cdHNzdXvJfc2J2TpcEgQrXZUcpK55HU2Jk1fQr96KcCYJUwohwrCS8vjkc7R6+p66rnMuG5HkG2XpU/J4WG4dn2cZtA5O1VwlCtaVUY/b8aGMvaYSohiBDDxaf/is2a5DsllIpB92egPvxgNSq7qn8hx+8UtxL5fR/Ck37uZEMPLmwlxOyibckz3mFvRq9tDVBVyC4XORV0sAyGMoWHiDkhySntgGCgRAX1KAV1l9aCz7ueBHItRSD2NG9qjmeUB1zfd4LzVqMmm2i2+Ci3fyvKpGenGdfe1vGoYomKYWJTDes5HW6xTGQ/XXsY6pc/eE7Gqn7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QumXlsuYLlgtClQISZIv/C94xj1WIsMZ0HENEGWy6kY=;
 b=NGg3Yh9bhRx+ndTl4+jmd2IZKW8KwvIyW2PrXWHGb3+K2uGneIctU/sJ/p9EXT3QzX0Lwmdab0zvX9wRfFoewApSOY5PqYO4Hnr0dbq7xK12Y5pRzFk3a1ozzusABaaC2nC0CGPc33Oug7fCg3QOQsQaup6IhzLuxNO5SuoAAPwa6KekD0sJnccUc/1jepE2f29FF1lOQFJPD6RfzOX/hqbgF05pwt+Bu1W5Ip71BToKJT/eBNVQ3GNVJNq9CaPvJgSXG6XYqPQhvkHDVKvgqv0UdvhbIlo+L0Y7kUjD7OzPy7JpLsBcRHl9MGiVxMvl9Fqput+7jeG8E50RwchPIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH0PR11MB8088.namprd11.prod.outlook.com (2603:10b6:610:184::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Tue, 3 Sep
 2024 21:17:01 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 21:17:01 +0000
Message-ID: <00d23c42-2611-45d7-9d25-5ad394477238@intel.com>
Date: Tue, 3 Sep 2024 14:16:59 -0700
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <olteanv@gmail.com>
References: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-0-558ab9e240f5@intel.com>
 <20240828-e810-live-migration-jk-prep-ctx-functions-v2-10-558ab9e240f5@intel.com>
 <20240903000800.ue77eim4664dhy4p@skbuf>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240903000800.ue77eim4664dhy4p@skbuf>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR03CA0006.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::11) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CH0PR11MB8088:EE_
X-MS-Office365-Filtering-Correlation-Id: 716794e8-1c69-4444-9110-08dccc5dc0b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OEpmcnVMaHp2N01pTHZEaEFXZzRWcmNob0FYMlJQRnVCd0pNSm1raTFvUFQ5?=
 =?utf-8?B?UnQ1T1NEWkZXKzgvL05LTjFzUk41QmJqSUNhYlNQZnFIQTgxOFF3U2ZLSjd3?=
 =?utf-8?B?UnVTYlJ5Z1gyMkRnMUt0M2NhU2d1dEZCSTZBakVJcmRodHNmdGJHMVNBQ1Jp?=
 =?utf-8?B?czlIaUNkRGptWUJzemxnZWpEUVB6YVdSN3o0NFhkbVRUL2p0QkM5SGdmZlJu?=
 =?utf-8?B?bzBVdUxlUnFhd0xJbEhjS0hUQ3RaRTRGOEhKQkpMVmh0cjRQNjV5cnZOTThB?=
 =?utf-8?B?RWtuVkZHVEUxbkk4Q0ZiZVlwS2pObnQxd3JVTzZUdkVVNEtiSytsVEhpdC9o?=
 =?utf-8?B?QW5PRllRS3E0R2NIanFwekZiRXZNU2lqUGFlaDA3NDVyNlpwUWVpV0xBL3cr?=
 =?utf-8?B?Yi9lQXRkQndHOERrOFhOZ2dEdmRkMEliZEk2bnUyYkNSeit1L2V0K25pWEZv?=
 =?utf-8?B?V0t0c3hqU1dtSEpFbUFUbTg3WmxuR1FBL1Erblh0aysreURoc0tVTDZsMFE4?=
 =?utf-8?B?TkFrR0pseDNENWdvWXZWQjlDbWF2bjJyNGZ0elNhbEhOZ0EvQ2h3cE5FVGFD?=
 =?utf-8?B?aURFekg1K0J5eUFzZmQwUmVqSGJTTlM1bDdqY091ck5lQm4vTVFCWUl4OGtS?=
 =?utf-8?B?ckhEU3dpNVJYL2V1NzZIdDlESmJJUTFxdWY5eHhkOEdueEhpRC9hU1FEQkVY?=
 =?utf-8?B?em9KbU9yUkN1dUs0NjJrSDJ4TStLNVl3TXNrb0ljL2JmQXFTTnFVZmFaM1FL?=
 =?utf-8?B?S1BzbTlFZjNtVGoxRUxndHZ2VUhraTFZZ1JiMnVtQlEyai9vUHZZZUdLcWRj?=
 =?utf-8?B?TUlqNXZZb2pDSFFzYkNzQ2RDTGZ3QklZT04xdVZseEdBRkpOZGFpR1pmcGgx?=
 =?utf-8?B?NHZSYlUrK0U4RHZ4YXBPQlorNnpFZVYvc2dCUjFqTmNiNEx1R2h6cGpFZXdK?=
 =?utf-8?B?c2FycnpRNlNRMUxibnA5aFZ0Z2JHWEJsZG5ubThlcHUzeTd1U0p4ZTZWeHNS?=
 =?utf-8?B?Z2gxRlRQbzZJUXZJRE5nTkdoK0hpVkZEeHZEdDI4Z2xpaHZ2N3ZLaUlrREJx?=
 =?utf-8?B?dURlUHdPU0JGUXVrY3FKRStSTTVTaDROWGE5YzcwTERuNVdOZk5HandRaCsx?=
 =?utf-8?B?djFNRWRHT09xWnJCVlQwQjEwcGJ4T3l6VXpVVlJtVTlrcy9Na01aNzBhd0dw?=
 =?utf-8?B?S3RRZHNpZTZTTUJERDhCcWp3TzJyMFhZMyticHovNklHWGpTZEs4TWozeWxH?=
 =?utf-8?B?NXMvZDlYUkhWRjBNcW9QVnprWlNRdGd2cUpSbnE4YTBFcVBmZGc1VXZ3MHFy?=
 =?utf-8?B?ckl2SFpWZzZBUXJ4ZnFHTDFpTW8zQkRIc3ZGdFhxcTB2WjlMVW4wMXhFcTNW?=
 =?utf-8?B?V1R0R2FZNEJMbjFYdVFmUGFjRGpuaEVxM016Z1hnMWluTE8zbjFHeEJKeVlQ?=
 =?utf-8?B?NFZ2UVlkK2pTMUI2bktsN2pQQkdMVkNrdVdOSkxtdmRmNFdPOEEwdndLeEUz?=
 =?utf-8?B?SWpHWXROcVA3QUhPTStNSHU4S3pTNVV6UGxUeVV1WUl2N25EOTh6dWhCSndC?=
 =?utf-8?B?RmJMLzBUM2JhdjNvWHh6V0hRL0pheXVEQmVoT3pDN0hEc1RtTUhUMkdYWXJV?=
 =?utf-8?B?OWdYNnM5b0Z1L2orOXJTbjdMbm5yTDMrWDBSd3B1anE0SWtQSFR6a0toNGs2?=
 =?utf-8?B?czF3T1VnK3k5U2MvRWRqOW1jLytrbkpQQVVSbGd6OG1NOC8rQXNBMXhxTEJ5?=
 =?utf-8?B?QkpVaUlVbkhVSjdGTEV3TkhsaXY1dFF4NGFuNjhjTWlXZDFsT1o2cDJXZHZY?=
 =?utf-8?B?ZzlLM0wzYlduRzAyTzBNdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ajEwSGo1M2ZaVVBDWjZVdTk0ajNhRHFzODNVOEppNG5zLzVrL25SdTBFUy9G?=
 =?utf-8?B?bVk2SERGRllmaXNMcW9WdnRDekxJK1ZZOGVkbWR0NEgzcU9EbE9icUQxTzRT?=
 =?utf-8?B?RnJ3TFYyUGgveStVR1J6N1hjS0xJNG84TVNtMnJ1K3pkVmd4TlZJQ3ZCTmx3?=
 =?utf-8?B?c2FzMmFlZkpkU1lCTGtIQlpabHNHWkM2amUwZHBXZEFLV0NwSlBxMlJaNGtG?=
 =?utf-8?B?NWlnUHRqK01WZk5SbGhKY0dkZ2xaTWRFY0c0azBwR2VkQjZrNU9SNlppTG1E?=
 =?utf-8?B?RVBtVUc1YWNVWlhuOTRtV3NIemhRVXpJbHNhaENJSnJOL1U5d1dXNVVRWFgv?=
 =?utf-8?B?WFFqTWxMODlMMXlWb0ozWGY5RU4vS1l0bnBacTVDOUg2cEJYS1JvZHRHNmlk?=
 =?utf-8?B?Yi9pMWowOHZXMGcxV1RtRXBEQnVYS0l6eTVBaWp3b1VGaG1veUFva05qYzdI?=
 =?utf-8?B?RmFyVUZUTkVsUXB4L2lvM0EzMUorekxhbWdjYnhXRlM0aG44dHozd21PQ3ow?=
 =?utf-8?B?a1J0SktWRU40enB2V1JxeCs3VmxjdlJabUwwVzU4UUhzckc3N3huZTdxSlgz?=
 =?utf-8?B?eGVldjhLbndFNkpSTTlwNjJVNTA0UnhZTzJMZHdvRDk4K3JLdURpd0k5VjN6?=
 =?utf-8?B?c3BJeDFjZDZoZHlzNEhVeks4eWlQUTFSRW5ha3RXd1BRaVd3cWQ1YU00Y2tp?=
 =?utf-8?B?Y3J1WEJicEV4YWc5YUNwUDgraWhTbC82RitqWjVJKzdiV3JkTnNmVWZmdGU2?=
 =?utf-8?B?T256RlpFelRFZ29PMjZHcWNHVGNvcVA3bXdtTWc3WFpicFNJWitDaDJxdE4r?=
 =?utf-8?B?dStGYlJFRlJyaWU5N0t6OEZuRHhUVW1aV1JINjFXcFR6c2laQjc0b2F2a0xH?=
 =?utf-8?B?YjFkYTVIVTVHN2VHdlRkNW8rTzV0Rm5XWGF2Znc1c1M3Y1Q5Q2llVXB1dm9m?=
 =?utf-8?B?MnZncmtETGw3Znh3eXZvWllZQjF1c3duenpZS3JLNVdpdUtjTnFzRUVZemNN?=
 =?utf-8?B?MmlENmJ4cDE5TnpOcnlibWFsV2F1Tjk3WnJsZ0d1bDRwcjFRNGU4bzJ5U1I2?=
 =?utf-8?B?UHlSZEQxSjBiazRCVDZUWWhwci8vYWs5cGIwZlhFTUdmU0grN0FMR2RaTGZY?=
 =?utf-8?B?NjdqUFpySGg0aGRtSzNYODc0V0tDZEN1NmdkTHlsTUI4WDNqL1YreHpGOXRh?=
 =?utf-8?B?c1IyNDRKVFVGNkcySHo5ZXlVSWlYZkxBcjROanJ1TlBHQXk4emt0eDhnbStw?=
 =?utf-8?B?M1lKUUVlNTQvREc3a3RmR0dJQVRXTTdhcVgrWWhmODdUbXpoYVZBa2tZbHFp?=
 =?utf-8?B?bHRyVDYrN1V3bjY2MHlMVkdRRzFwL2l2b0d0Lzk1S1A4S3NtSkQ1OHV1Wmhz?=
 =?utf-8?B?K1pCZXA2Zng3Q3RNSUJIMUhuS0FjUE1qeFBNa0xNVEZjYm5keFdyc1d6b3lC?=
 =?utf-8?B?aUxlY2QzMUJxcGVyWnErSkdyS2tHMzMvbVNrZ3BCa1RCMTdFemxzTFFpZ2Qw?=
 =?utf-8?B?cC9aN05VbCtMYWx1MHhSdm5aNFh3YUIxNW5CTjJsdnRtdXFhMm5RSzZabVpn?=
 =?utf-8?B?MmkwVzlWUUpyRjJIVEFVcUZycEduOVExMEszd3J3WkI5cnY3djdHZ2xVTGc1?=
 =?utf-8?B?T2VWbFZWdHBocnlmb0gydTBFM1hoNFdhNlM4MUQzMzZJbG1pL2NYQm01UmtC?=
 =?utf-8?B?Q2pPSzM3emxMTVRLN3d4aGpRNDZNUXM2cWlINm56K0RFTGtvaTdLOTdtcGlW?=
 =?utf-8?B?NEVrTERsS25zSnhDWFVoZy9RRXpaSjVTTEE5SWR5Rm9wdXBTZVFhT2NFTHpQ?=
 =?utf-8?B?Nm40TElJQjZKc0VnNHdMemNyODNWbFlCb2grV3RrV0lvTTJwOGhJYWxlN29r?=
 =?utf-8?B?Tjhmd042amZmMVB5aHhEK05zZlRjT2gxVkdLaXJ2OVpFNzAvRFdUKzVoM2lL?=
 =?utf-8?B?U0dCbk5EY0hpVk94ODVLRDBKNytCWGxiUUhzYzRWbFR2TCtoNHFEdjhLR1A3?=
 =?utf-8?B?WXFvZ1JyTGFXWlEyQUtvR0VpeDdrYlV1THBZYUplTGVwWHRhWFpScnN0blNQ?=
 =?utf-8?B?K3BTcFVhaFVod1JZd2ticjFzZlAzekpoL3RINUZRM1k2dS9mWHJDN3Y1MlBU?=
 =?utf-8?B?SW80YUUvL1FSZk5sRVVCaXhHYTZLQ00vUkFnZFdaam4wY2FaVXUxZ1BmbEY5?=
 =?utf-8?B?OEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 716794e8-1c69-4444-9110-08dccc5dc0b2
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 21:17:01.7619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MlRBNFtMtqK77e2TOGyr/BFpF8MExSuCRAy3UJHn416dVKOVIGjaAjKEoy2EX69Fgytkure9v9VFAnfMb9733tQHz/sjjoQ7VlS6oEzpPQ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8088
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725398229; x=1756934229;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ubuRJBULje/ARAuWpGjHmnxEKerfyXpAiJ4xLxUqOkg=;
 b=VyRATXdrzzshLKug9ljwO1WTUGAU4GO0wwUqA8rYttVtnVdAFLO7FZBb
 lS+n0ykc8fIUsBuqAz78Q4y/B1gI2xqJWn6LLFEZRNu5CN7iVcWK+9VKc
 5r+zLa3UMiE8eVJD7N6ZayRot10cXNd1siUukMf2JX5mLkCv8tdX3X4Te
 pzzlQwqpR+jSd8+GZJFYg5HyHKMMhQ3yY3LjKUXCw04iEdj2liyCXLfrl
 MSKwXbTPUC+U1mXDlvEez30j78Gr926LvY21ePidXFH2vapqGs7+QDdsz
 D9Aplaw6Ebq49kcOdBvM0x/MSR9lejgfpvIgBpx5PtAk3s0g3Bl85paNZ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VyRATXdr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 10/13] ice: use
 <linux/packing.h> for Tx and Rx queue context data
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
Cc: netdev <netdev@vger.kernel.org>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/2/2024 5:08 PM, Vladimir Oltean wrote:
> On Wed, Aug 28, 2024 at 01:57:26PM -0700, Jacob Keller wrote:
>> The major difference with <linux/packing.h> is that it expects the unpacked
>> data will always be a u64. This is somewhat limiting, but can be worked
>> around by using a local temporary u64.
>>
>> As with the other implementations, we handle the error codes from pack()
>> with a pr_err and a call to dump_stack. These are unexpected as they should
>> only happen due to programmer error.
>>
>> Note that I initially tried implementing this as functions which just
>> repeatably called the ice_ctx_pack() function instead of using the
>> ice_rlan_ctx_info and ice_tlan_ctx_info arrays. This does work, but it has
>> a couple of downsides:
>>
>>  1) it wastes a significant amount of bytes in the text section, vs the
>>     savings from removing the RO data of the arrays.
>>
>>  2) this cost is made worse after implementing an unpack function, as we
>>     must duplicate the list of packings for the unpack function.
> 
> I agree with your concerns and with your decision of keeping the
> ICE_CTX_STORE tables. Actually I have some more unposted lib/packing
> changes which operate on struct packed_field arrays, very, very similar
> to the ICE_CTX_STORE tables. Essentially two new calls: pack_fields()
> and unpack_fields(), which perform the iteration inside the core library.
> (the only real difference being that I went for startbit and endbit in
> their definitions, rather than LSB+size).
> 

I only kept my interface in terms of lsb+size because I did not want to
attempt to re-write the table. I actually did re-write the table at
first, and discovered a documentation bug because our documentation for
the table has incorrect lsb/msb for some of the fields in some versions
of the doc!

I ultimately don't mind switching to the packing convention of start/end
(though my brain does have trouble sometimes thinking of the start as
the higher bit...)

> I came to the realization that this API would be nice exactly because
> otherwise, you need to duplicate the field definitions, once for the
> pack() call and once for the unpack(). But if they're tables, you don't.
> 
> I'm looking at ways in which this new API could solve all the shortcomings
> I don't like with lib/packing in general. Without being even aware of
> ICE_CTX_STORE, I had actually implemented the type conversion to smaller
> unpacked u8/u16/u32 types in exactly the same way.

I think having this in the core API with a standardized table, along
with support for unpacking the types would be great!

> 
> I also wish to do something about the way in which lib/packing deals
> with errors. I don't think it's exactly great for every driver to have
> to dump stack and ignore them. And also, since they're programming
> errors, it's odd (and bad for performance) to perform the sanity checks
> for every function call, instead of just once, say at boot time. So I
> had thought of a third new API call: packed_fields_validate(), which
> runs at module_init() in the consumer driver (ice, sja1105, ...) and
> operates on the field tables.
> 

It does seem reasonable to me that we can move the sanity checks here,
especially since the main programmer error is if this table is incorrect
in one of these ways.

> Basically it is a singular replacement for these existing verifications
> in pack() and unpack():
> 
> 	/* startbit is expected to be larger than endbit, and both are
> 	 * expected to be within the logically addressable range of the buffer.
> 	 */
> 	if (unlikely(startbit < endbit || startbit >= 8 * pbuflen))
> 		/* Invalid function call */
> 		return -EINVAL;
> 
> 	value_width = startbit - endbit + 1;
> 	if (unlikely(value_width > 64))
> 		return -ERANGE;
> 
> so you actually need to tell packed_fields_validate() what is the size
> of the buffer you intend to run pack_fields() and unpack_fields() on.
> I don't see it as a problem at all that the packed buffer size must be
> fixed and known ahead of time - you also operate on fixed ICE_RXQ_CTX_SZ
> and ... hmmm... txq_ctx[22]? sized buffers.
> 

Yea, these are fixed sizes. Strictly I think we could have a macro
defining the size of the Tx queue context as well....

> But this packed_fields_validate() idea quickly creates another set of 2
> problems which I didn't get to the bottom of:
> 
> 1. Some sanity checks in pack() are dynamic and cannot be run at
>    module_init() time. Like this:
> 
> 	/* Check if "uval" fits in "value_width" bits.
> 	 * If value_width is 64, the check will fail, but any
> 	 * 64-bit uval will surely fit.
> 	 */
> 	if (value_width < 64 && uval >= (1ull << value_width))
> 		/* Cannot store "uval" inside "value_width" bits.
> 		 * Truncating "uval" is most certainly not desirable,
> 		 * so simply erroring out is appropriate.
> 		 */
> 		return -ERANGE;
> 

If we support u8/u16/u32/u64 sizes as well, you could check that the
size of the unpacked variable too. Could this data be in the table? Oh I
guess technically not because we are checking if the actual value passed
fits. I think keeping this but making it WARN would be sufficient?

>    The worse part is that the check is actually useful. It led to the
>    quick identification of the bug behind commit 24deec6b9e4a ("net:
>    dsa: sja1105: disallow C45 transactions on the BASE-TX MDIO bus"),
>    rather than seeing a silent failure. But... I would still really like
>    the revised lib/packing API to return void for pack_fields() and
>    unpack_fields(). Not really sure how to reconcile these.
> 

Since this is generally programmer error (not something where uAPI can
affect it) what about making these WARN in the core?

> 2. How to make sure that the pbuflen passed to packed_fields_validate()
>    will be the same one as the pbuflen passed to all subsequent pack_fields()
>    calls validated against that very pbuflen?
> 

I guess you either duplicate the check and WARN, or you don't, and let
it panic on the invalid memory? But I guess that would only actually
panic with something like KASAN

> Sorry for not posting code and just telling a story about it. There
> isn't much to show other than unfinished ideas with conflicting
> requirements. So I thought maybe I could use a little help with some
> brainstorming. Of course, do let me know if you are not that interested
> in making the ICE_CTX_STORE tables idea a part of the packing core.
> 
> Thanks!

I think moving this into core would be fantastic. Since pretty much
every driver handles these sanity checks the same way, I also think that
moving those into the core and making them WARN or similar seems
reasonable, so we can make the pack/unpack as void.

It would be interesting to see a comparison of the resulting module size.

How much of this do you have code for now?
