Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF398AC909
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Apr 2024 11:37:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FA7581E60;
	Mon, 22 Apr 2024 09:37:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hDNLUQNsSaC4; Mon, 22 Apr 2024 09:37:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7F5C81E5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713778650;
	bh=0pcmQbnmuXnjYNhkHoE9muibR5/z6f4KVefI9AFn8kw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yJTAy2a4vETrgeDFRwbv4CyYKa4N2DYm64F5JcDEgx66sYToYB2UpPkNpOrczWrda
	 pKYVDTs8BrQVYIYlqJq8bilZMT3jcqFdtV5BTyV9rXbpv5lMJ04YZvN9kQ+o/WLtJ9
	 gUQmmWo0DKC4HTS3ObLqPJp2o+wjov9PCpl0Bww1mew5qYIbgPgfFKx6WbwyuPO8fg
	 WOC0O1RFlnoSbQL0zLPkH2jNHovUO8M1aoBoItmabJkDICd0RywyeZ4iHMJE4uNo5Y
	 RFDJjlmDgRKvFmWCabkTV2ZZuV6OdUOfpzFZEMiSSByAtIKHxht6lZlgy96bMnPtlU
	 C8v27GQVonxeA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7F5C81E5E;
	Mon, 22 Apr 2024 09:37:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 894BC1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:37:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 806A640638
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:37:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id giWPK72fR3-W for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Apr 2024 09:37:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2825740633
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2825740633
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2825740633
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:37:25 +0000 (UTC)
X-CSE-ConnectionGUID: e6rWNmR8TaCuAKT+UBDg7g==
X-CSE-MsgGUID: 06ejXL7zQ96RItwNHHBGbA==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="26758297"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="26758297"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:37:24 -0700
X-CSE-ConnectionGUID: 98xJlXqqSRaj8po0Byyxxw==
X-CSE-MsgGUID: VmDd6ihzQoGiUQ9ZJDbYUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24564014"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 02:37:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 02:37:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 02:37:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 02:37:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gEcCq2ihhbqHeQygFb6xu4H0Gpvte0dVSiVkNmSNHb6DG5Yq8EB1uWAtcMzKcdP+jvMrSufU2ZEDo5bM8Z9O8MAei6OpGycrw66wGYB7IXGdRjahKREmQQxq5r4m7pJItOQ87sJp3uv78t9YJdgM+bB6Vc0S+CqYDMSdIq17iYgjlmaFpSc4bYq8uszEYVYDuYmvI7AkHhPRhOf/AuGJAMl+V4cdUdLxhq3KRhLy3jYKqUDg1txTCETOqvqtDISwRuATbeMn8BZ0DSsYUKSCzLk/qSaV3quiFNT0puVXs8tl8ubKV052BDyWJM/Cklscc/vtCEeRjmeAsISXMiLJXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0pcmQbnmuXnjYNhkHoE9muibR5/z6f4KVefI9AFn8kw=;
 b=jHcQ4ZCi+JBdRJV9Y0uR9CUK54Qd1XHakh7ftl+iXYYredDW1fIrNvUmpzSFaPSnPpECddDicYwg5zRHIazt7ncRMmng/D7MO6j/VzMm5UmOqiUTsm2zUvDRiThkbm+omvzgn0dQn0E32vBk7vmtJ5/0I1g1OcVjyToDKfeJdALL/vrLhnK0G/5hfARgegh7lKKeKJJNFeTP97oNxBH9wtbY922F2CoSGf0xA+eJ/HnRTmXQYCy6MH21QnZs7Wdj0jUFi/30adaQUMho4tqoxGTVA241e/P5HG/MNz7hwKvZsQW27KDuHWFBmBYsDDIlSwPiNE6kKqCqRsdZqAvTfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by CH0PR11MB5249.namprd11.prod.outlook.com (2603:10b6:610:e0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.20; Mon, 22 Apr
 2024 09:37:20 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57%6]) with mapi id 15.20.7519.018; Mon, 22 Apr 2024
 09:37:19 +0000
Message-ID: <f4696921-caf3-4873-b5ca-0b4f6a993cac@intel.com>
Date: Mon, 22 Apr 2024 11:37:14 +0200
User-Agent: Mozilla Thunderbird
To: Rahul Rameshbabu <rrameshbabu@nvidia.com>
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <87v84ectez.fsf@nvidia.com>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <87v84ectez.fsf@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI2P293CA0004.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::15) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|CH0PR11MB5249:EE_
X-MS-Office365-Filtering-Correlation-Id: 305b61aa-b55b-495a-5e5d-08dc62afcd24
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VkxvV2V3bUpyMWpnZlNHdmpBRXkwR2M1NW1JQmtaa0RRRk5DcWVCYkU5YlA3?=
 =?utf-8?B?YnRkQ0JJblk4NnZFZStITUt0UXhUYVVyS084Vnk5M2RmdUxGUHpOWHFuK21O?=
 =?utf-8?B?cU5ueXhKQzV5YkpXdEFGcU4zalIwWEdzdmRRalpxTmlRUDloTHJsMlBxOXRE?=
 =?utf-8?B?b1lUeEphSjJNVm15Y0RDR1pSOWsvQlpNa0VYajNQRWJicC9PN1F0MjV6Qkow?=
 =?utf-8?B?V1V1b1BFSkFOZEdHdnM1Q0dzRzV2a1U1cldlMnI0K1R5Kzgwd2RKYUVuanVx?=
 =?utf-8?B?Q2lxdXNubEM1YkJxMTBNa1UwTXBuR2UyZFlzdmxzSTgwNkpmTW5iVHFFT2c1?=
 =?utf-8?B?cERWNEI5bWJjVVRxNm5pM2dyTlNlVzE1TTA0T0NONHgxRUdVTStoVmNUMDdP?=
 =?utf-8?B?V2VKdmk3MW1LazFkbjBGaTdLam01b1MzVEFZZ09HOXVaWGdxZ2szSTVrUXN0?=
 =?utf-8?B?NnZhb25QNGJ2bXh3bmxOWElJSDM1WmUzV0dqcWhHRDhRaStOK3czYmh0S2pU?=
 =?utf-8?B?ZEN3S0RERlZkaTFOTXBYVWhHSEpJMDJQcVEwWlZWcE5hRzR4RU5xU2VaUUZY?=
 =?utf-8?B?N081SVpNY1QyZk40TjIxenRuV0R4U0dmc1FTUXA1WFVjOTFCaUpMOXVzM2xl?=
 =?utf-8?B?eE9mQXBmK1B1Ly9hQ2NubG5RaHlXcXRjNUc0N3lkZitHbGxnYzhTTGE3SHVI?=
 =?utf-8?B?aEkvMHBtTHBGalBtTG5Bcm5MajRKdStwSzVtdlJGY0RTSy9YdHNENXo1Rlhh?=
 =?utf-8?B?MkxQdURBcTZiM2V0aHM0c05ZcTRLMTAxWjY2SDZpMmJQSHZTMkdtY2k2bytL?=
 =?utf-8?B?TkJXY1Qva3FpYUxKdnVvWnhVOHMwV2pLb2wvTll4ZnpyMFhHandoZ1ZXNmRh?=
 =?utf-8?B?VUZ2SUNqcWY0VHppRGg2MFozSEc0bzN1UGQxcU11SVhHZVVvYzc2OXJYUzM3?=
 =?utf-8?B?amFic1pKUlc1UndscFpISkFmTHk4dFg3UDR6RExyWVBjc0RSVWRMM04zRlM0?=
 =?utf-8?B?aGU4clJxbGt4eURBL1lQUDNBc1N3OTV2VFkyWExNSis3c25iOFdScTFxcU5v?=
 =?utf-8?B?Y2NsV1F2RXBEUmh1eEVCQlNsQzkwWWIzeEhkS0JYV25KREdrY2M4Y0hCU2ZC?=
 =?utf-8?B?Y0t1UU5JOG5sai91TWFMK0pINWIvcExWeWl6WThtbXpzd1E2cEVRcUR1VER4?=
 =?utf-8?B?a0dadjJoQ3c2RDFQNVZGVUVSM25XS0hvZUJxV2tnYnY5Y3hhVFk0ZGp6Q2hr?=
 =?utf-8?B?dnYxQThwNzRKbzBtUE5RbFFUd2pOMFdqS2t3dUhCLytPbnQrSTllVmdKQnoz?=
 =?utf-8?B?SmFPWTkzYjlRMWpWVUd3N3RocEM3RmVZRThiZkVnRGhjRGlHU2Y2QllWWFFt?=
 =?utf-8?B?VHc5MDlTZlhrUUhDa0xxR29RcWFTb0FmNHl3RXZ5WGNvOWRVZTNTbzQ5Mm5j?=
 =?utf-8?B?eXMvcW1hSHBPZ0lYaThQbkVhSG5EVnNBa0tFRmlmVm1jeDNiNGM4T1hFV1Q5?=
 =?utf-8?B?Y2dzWnI3TFJXZWxxbG43bDhXQW1oWEpSNytqb3BnUk41b29ubDYzRkdvbGhD?=
 =?utf-8?B?aGpmZDRETUhRMkVqZVJ2NldUMHRNRTFpZUNCR1ArK1Nsd1F5eDA2WFVUZHFP?=
 =?utf-8?B?V3pjQ05lN01FK00zbmhGbXVMUCtCYk9UT01IQjRxYXJ1eTNTMW15clhXQ2hq?=
 =?utf-8?B?eW02R2hmWGFlRFRWcEVHNVNaRkYvQ1FIZzc1cEk2RzRIa0hHNGNoM1pnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U2cyem1NTjhIUXZOUkZxbHlOU29jYzFFb0VuTW9oVFkrNnV6bXJoUGJPM0tP?=
 =?utf-8?B?a2ZFVGIvY2lWYm15Y3ZGSG5INFJVUjlEMDZtRzExTm9hMGZBUUxzKzFyYUtG?=
 =?utf-8?B?RkNsMTZXMitmWGs0Q1ZjeEtMM1c1M05KclZrNm1UcnFGTHJYQlRMYm1CdWV4?=
 =?utf-8?B?ZHRhNjNZTzhMNG5GWU5rQ3NsMmhKbnY0b3cxS3NQK2UxeTJqS3RGelR3Y2FQ?=
 =?utf-8?B?L1UzS2Q2OEZmNk5KcWRmZEkvNW1rUXpWem5ZOFhoT3FPTGN5SUZvZ1dZc0ZL?=
 =?utf-8?B?bmYvY29iMDh2Mm9VUVN1OTJGKzBXZG9FYW53Wk9wRXM1RWFCRXcyakpVU2Y2?=
 =?utf-8?B?ckNQamxPbEExTWZSMFpTMjZTby9HNTFpZnVMN2EwWjVpbkthT1NlMmIxeVVI?=
 =?utf-8?B?WDd1UXVwbEhGYldBUU9Ta0pxbHh5SzY3YTBqdTRlRXB0dDEydkxPbnIrS0Mv?=
 =?utf-8?B?c0xzTzM2UVllM2VFN1VYS242RGx4MUVmWmpDMEZmUXZYMTFxa0ZsWkYwM3RG?=
 =?utf-8?B?cE5VVlkzQ2Y5VDVnZ2ZhcElaMUFLZkw2cW1vcVl2VFZWNkZmekVQc2x1NkRV?=
 =?utf-8?B?cExQQ3R2U2xYdzhtNC9nRTFUdi92eThtSVBuSW1TQlVVNktWdmRtQnRFNXFG?=
 =?utf-8?B?MUROUlhhRVQrQzZSZDZNcHhLVExpdWl4ZFlGSlhkWU5rOXRyWWE3NTNTTTNX?=
 =?utf-8?B?WnZZN1lzcE4xQXRsNGh0VjNJa2dWQjJQa0xKakY4bXpNM3R5bkZPRmpMejdy?=
 =?utf-8?B?QmduditLSzdwYm5QRkxjMUZpK09qcjlPWFJvM0RTTGZpclFLQ2k4a3JUaFN0?=
 =?utf-8?B?WXdqTFdhS1hqR1hXTElBL0hNdVpYelVpVEZRcHNUNW90QS8zOW8yejNzVlhV?=
 =?utf-8?B?OG10WG9IZ1hSUmRIVGllVkVNRnVmbGlNMmY4a0JmUjFINWloamhUNVoyclRu?=
 =?utf-8?B?OVdPTVlnWktPTm9vV0R4cHJCWndxNVQ3T3JEMmprb3NNVEpldm5IODQzUCtr?=
 =?utf-8?B?ZW0zK2NQOHhkMGk5bDNNT3M1Q3BSSEttc2lvandIMzdUWEluWnFpYmdxK1BU?=
 =?utf-8?B?NlFOR0phYVNLOFRqajNDMnBTVUkxS0hmcWpMa2ZRdzFoNEIzNmhud3BRcE9m?=
 =?utf-8?B?Slc4U21TTzNYNmRyYURvZ1dKT202YXR1TS9iUUtqNm96bW10bG1VN1V4ek8y?=
 =?utf-8?B?akQ3QkRwSVpZQmNqekJnb2s4Z0w0SllxZGxyY0xyL2owTy9tandibUNTMGdo?=
 =?utf-8?B?dWVpbEN4RkM5VjJuMitsYk5vSmxQeTV5cnpzbmdtRnhEdFlhNU50VjZRMGw3?=
 =?utf-8?B?UXF6cFZGQmV6Rk1tTjRkN1NZZldwNGhGa2g0QS9CUHdyOU9PMjkvM2xabzQw?=
 =?utf-8?B?ekphUmk3d3luSzlmWm4rTEJIWVhxbGtpRUduSmg3NGN1S0NyOFdYdmlkKzRz?=
 =?utf-8?B?aE9BQktXam5Hckw0V003ZXFqNVRlYjd4SW1IRFdvRHBNK0cwRFlqLzhKWjVY?=
 =?utf-8?B?L01DcnVkZERpY0FrdVI1K1NZQjc1TER1aGU2NHZJRnl1ZC9SN0xhSG9PbVRE?=
 =?utf-8?B?UlQ3d0JFb0NHTnJzdmsvVFFITGZzTnJpUmZKTmM0c1RTbEs0Q0F5Vnowd3R5?=
 =?utf-8?B?Y29oU1RMRytLL2RmbGJqUk1hQ1YrU3dHMTljbzg3dFdBbnhIN3ZDYWg1cFBR?=
 =?utf-8?B?TFRZZ0JOOHg0dER4emJ0Nm15T3UvTlFuSmVhaEpKVFBQcER3TUFQWXJ5R3A4?=
 =?utf-8?B?Ni9QbERJK0R2U0dhZWhTYnlxTlVtZnF3L2tmbW1MNVZ5R21uT3BYYXBkN2lj?=
 =?utf-8?B?YjN4RDlyd09tRkxCb2tQcG8yNmJVaWY1ZFdhOGFpSVA0OW1KQXVPck9CRUZn?=
 =?utf-8?B?N2swUjlLdVk4RlJYM3RMd3NwWnhRNG9COHcwdGphNWVaaUN3VlQ3UUo2a1Nq?=
 =?utf-8?B?ZGtiR3lpY05YMENXOU9oSU1VaGUxaFFLekZFeDNnem9hOVg4ZTdadVNaVmVr?=
 =?utf-8?B?UVJPd1R1OWFiSzR6bytDc3A2NGFmT003cEl0RjBWcEVLMEwyWFFUNVpWMFhT?=
 =?utf-8?B?K2RDd3FFTVQ1S3krS3ptdXJCWFM1MWpsbEVRMC85anpnQy9OVUFEQit3S2dx?=
 =?utf-8?B?ZWhJRXgybVNUMmR5a2dRcWNXc1pFck5yeEltdUZ4dWxGaWtsbE53VlZoNXFD?=
 =?utf-8?B?Qnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 305b61aa-b55b-495a-5e5d-08dc62afcd24
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2024 09:37:19.1686 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zjlv0pAjYbQOlJ3f+GTkf1YjD6e2DEPjrw/dZV3qM42gDQNy2D+aeAMBF5FHW/BrumWdHw5i0GQsi7mG0Tt9GDJXIF4tAWl0EMEVFWEQsrE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5249
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713778646; x=1745314646;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NraCJDDvc63lTK/WjEQs1uFz1hlYwnmwqe7LbQ/Z5TQ=;
 b=FYePw+j1j3qJfWqnbStrAuUMw6jfLpJeywO4+46sl8X7Mlmkde6x71i8
 vZvYfwjtQOw3g4g7NCQHh0sOfUBoMFdYP4tTjhsO/4MQfJvKsgxQStaug
 Xyh6OclWsYaEWJurMExeFjlugwBAXBxgNLt2gViEaSIQpmfngMkS0aoeK
 gnL67r61OCj5isLKkUBlJC00Ll+NVz5RB9iP1zrCZgyJKt+NJfde9gmwQ
 eQQVGf221MF0jRniw7IZUZ88ZOS9VkPgSo14iHDW/LKHouvrI1NdYCkBg
 j9TYzAFglNPdmX4ZVr4fTGVAftwOqvLKg8JVC4+kro1ejucx5gtyYYOGh
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FYePw+j1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 00/12] Add support for Rx
 timestamping for both ice and iavf drivers.
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/18/2024 10:19 PM, Rahul Rameshbabu wrote:
> 
> On Thu, 18 Apr, 2024 01:24:48 -0400 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
>> Initially, during VF creation it registers the PTP clock in
>> the system and negotiates with PF it's capabilities. In the
>> meantime the PF enables the Flexible Descriptor for VF.
>> Only this type of descriptor allows to receive Rx timestamps.
>>
>> Enabling virtual clock would be possible, though it would probably
>> perform poorly due to the lack of direct time access.
>>
>> Enable timestamping should be done using SIOCSHWTSTAMP ioctl,
>> e.g.
>> hwstamp_ctl -i $VF -r 14
>>
>> In order to report the timestamps to userspace, the VF extends
>> timestamp to 40b.
>>
>> To support this feature the flexible descriptors and PTP part
>> in iavf driver have been introduced.
>>
>> ---
> 
> Just one general/cosmetic comment. It might make more sense for the
> Reviewed-by: trailer to come after the Signed-off-by: trailer, since the
> review happens after the patches have been written.
> 
> --
> Thanks,
> 
> Rahul Rameshbabu

Hmmm... I think that the Signed-off-by added by sender should be the
last one on the list if there is Co-developed-by before.

Thanks for overall review!
Mateusz
