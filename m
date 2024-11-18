Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CE79D1046
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2024 12:59:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 896B641975;
	Mon, 18 Nov 2024 11:59:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 44_529snlN0P; Mon, 18 Nov 2024 11:59:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5757C408AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731931149;
	bh=8nKJHx2SN3ZFtv75ap/Y+fxsI0nvroHaLShLYAEPrcM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tiCYGrilzN62NjBaG9EDHg3k7Uhyda/pnCU5OXwZX89uu5y/0RlmF/LEDdly8KI/s
	 VdhOIWEnWFVNMeDofrXayZ4U/YG5DNMc6Ccge3Ur88vfGoTeyeLlU5MhUMv/v7e1Qe
	 iTzi/fTxxFlEr3wf4TCXwUTAzXBImy0dKI8WGDfvbpCmINGlMj3v3/WYBgom7jjV/I
	 OgdSm52N+jz0xAVM9Uf11CIyP0lPHYpjA8ZdEULDY5AO/RMDgxh77xMBc2ljappWDO
	 QVDfPSXkEql0VtbB4SaqatfbtyjPaOu79DQYKB1/OcIPyK+1CSAlwyMFvXHRXX7K9x
	 PSWm5BxAAhoEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5757C408AA;
	Mon, 18 Nov 2024 11:59:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 02902B14
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 11:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F1C5E607A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 11:59:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7AwCkLCkTVf4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Nov 2024 11:59:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A442560775
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A442560775
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A442560775
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 11:59:01 +0000 (UTC)
X-CSE-ConnectionGUID: XOAM7fUzTfOq5kkCFt2+Bg==
X-CSE-MsgGUID: 0ZJ2UsllT8muW6HfF7Yfww==
X-IronPort-AV: E=McAfee;i="6700,10204,11259"; a="31808279"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="31808279"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 03:59:01 -0800
X-CSE-ConnectionGUID: cRTc3tUgSeGzDoSdn1bpJg==
X-CSE-MsgGUID: J9MAJKDZQnWxCvXPXWgxxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="126744739"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Nov 2024 03:59:01 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 18 Nov 2024 03:59:00 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 18 Nov 2024 03:59:00 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 18 Nov 2024 03:59:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CnYV1eUk0NrTZCgcoZfARv7PUkemSRwlEL6uCgHqQFh5YJW9sFfNB+E6q+/tAkc0s+8EDU2sYcYchKn1DRQrIC/x0xJWS7TZ5PglmBiN/IAo2rWtZgolxDhsnCZy8U/YF7VFDzApPMh6kfDF+TFG0u/QK6Okq7Rk5s56GXqRpMbzn3i0Ai9EtmGqmzT8hVnSQRjj5QaveZcoXfmLK1I4RvvPWYK6uYQMRV7S4PBlU6RB1cZpyYLZvhmRqFYGKvFSLTkwzf3knMDh3nJ/kUQi5ITvDLfDHgcuqqFh8XrMKN6CYja7bBNTP6+78x5uCww95BUA3gEB77ztIDcq2Gmetw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8nKJHx2SN3ZFtv75ap/Y+fxsI0nvroHaLShLYAEPrcM=;
 b=fv0GwpGpRv1/86xlpbGxiuOpLXLXbgzHhYa7Hxp5GDRwv8cy/wSmTAE/x+UHV4YEbEPSSYySi2B0lp9AREYhlH9IETBGUIW0HYn1gYeZVtxsWGCZVj86o6d76EHt6bCffsMqNkSMzTEIDANrHPmjW/zqRDR1C4/1jA4+W09gOv/2MNnKE466dXfOSkk+DHy+coHIyvDBcxUOk137658qXbiLLFXcEryAeSpzFuep2Mz3GRn+OW2NMV7oMpDlzOir4J1dmAKJcQy5JHXAVCLeV32E1cvJxUuT13x1sy3cjf8pNaUKSKzx1y5/URykVN5GI+nJRgGPdwe2A+S9wSHXlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DM4PR11MB6550.namprd11.prod.outlook.com (2603:10b6:8:b4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.22; Mon, 18 Nov
 2024 11:58:57 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8158.023; Mon, 18 Nov 2024
 11:58:57 +0000
Message-ID: <1c737424-7f27-4318-8959-69bde80ceed0@intel.com>
Date: Mon, 18 Nov 2024 12:58:53 +0100
User-Agent: Mozilla Thunderbird
To: Konrad Knitter <konrad.knitter@intel.com>
CC: Brett Creeley <brett.creeley@amd.com>, <anthony.l.nguyen@intel.com>,
 <netdev@vger.kernel.org>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <dumazet@google.com>, <davem@davemloft.net>, <andrew+netdev@lunn.ch>, "Sharon
 Haroni" <sharon.haroni@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20241118104810.477794-1-konrad.knitter@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20241118104810.477794-1-konrad.knitter@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA0P291CA0014.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::19) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DM4PR11MB6550:EE_
X-MS-Office365-Filtering-Correlation-Id: 402b3754-edf0-40aa-f1a6-08dd07c86207
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TEtOZzM4VXVEYmc3cjQzWFhzdGJTWmhyRU4vdUtvaGZjTkFsWjVlYU1xc0Ry?=
 =?utf-8?B?Z0ZLNmovcndiRDNlblYwWXlaRTFzV25xYkxBQVc2YzFhdVpoSHFyN2JsV01I?=
 =?utf-8?B?b0JsY3BqRkR0eUtCaW1HOEI0R1hUdUNvWUhKek4xV0VKdU95UmVXNk9FNWo5?=
 =?utf-8?B?OWs0RnpkS3RiME9RUnpqaThISHFQRnpuRFJORFp3blN3UUx0T3dkS3dmM2Rq?=
 =?utf-8?B?L3VWckNyeVpmbnBYZmZYRFRwdks0aHVHdG00UXIyUHZyY1JYQ20vUTczR3ZW?=
 =?utf-8?B?Slp6SWhhdmtsVUtOemQ3S3hDSVltOVFTVGFjdGJkYUJpbzE0SkZhNWtRQXQx?=
 =?utf-8?B?bjhsQ3l1MUVxSnZlNlY5SmZ1azZ4VUtMcVZFTFRYQTMybTNNb3krV2R5a1BQ?=
 =?utf-8?B?SkRmY1ZMTTE4cjQ0S2xiR1hSZisvQUxYZ1lPYzdDTnhRRnpOYkRvb1QrcTJY?=
 =?utf-8?B?UE5mbldiYUtyOEZrc2lCbzh1eWNUdE5MTTBSZmxZOGRYN2ZNbVdxdTZTcVk0?=
 =?utf-8?B?ZTk3eTNlN2ZLd2p6bE5oTUNtWnJuemVWOGI4Zk92NmRZN0orbHQ4YWhZK2Fv?=
 =?utf-8?B?d0plTE1LTmp0dlIwUnlpWFJCdWY2ZkVBVll1c0dzU3R4ODF6NjBwR3FUYm1L?=
 =?utf-8?B?eHdLN1N1bTBLTjMzMjdoSDdjbDFTMVZoc1RZV0dOTFd1VkJVRllFZjlMOU05?=
 =?utf-8?B?WkpPTVdZVnlBOXRGT3VBSjFMdVovVDRsMVhtTHVVdXA5bHlsZEIwbmM0czJi?=
 =?utf-8?B?RnBxR1N5RVRiRWZuTS8zZUVUU1RpdEZLRnF3OHJHbmZBbUw5MkdtNCtKSnMr?=
 =?utf-8?B?NHk5eGg3dkhVanZ1WkFxb2ZCZVV4aFBaTnExTlRudzRvT1NqOGlFVzV5Mnkz?=
 =?utf-8?B?bnViYS84U20veStFTXBnUko0QVo2OEExM0R2aWRrZU5lOUM3RlNDbFQ3clV6?=
 =?utf-8?B?eWtmTTVDSlBIa3l1MW54aGdDVjBaUW10bjV0Q0pkd1VXWkUwNTJuc1NvR3lp?=
 =?utf-8?B?M2hHT01DV1hXNjVwZm5FZFFwOFZPV1BSbnovSDQvaHRFZWhpekh1VDJVRjl6?=
 =?utf-8?B?Q0t2VE0wV2kvN0RIL29WSHh1bGhnVXNLNHk0TnU1Y0haZGQrK21KeUFnbHhi?=
 =?utf-8?B?T2o2RUNLZ09YQVpmTC9kaUQyUFc4NVZFZUwxclFmT1ZjRzZ3WmxsRkIzSmpi?=
 =?utf-8?B?TE4vMlBXN3huMjA4RUx5cW11L2djNDR6UDZSNks4OFAxY3AzKyt4RnowR1hF?=
 =?utf-8?B?YXc5bXg3SHZHd3RLWlV4TWc1Vm80U1cyb0NtK0JvdUkvVUU3WDlTV1dpMDhy?=
 =?utf-8?B?K2E1bE1sNXMvWXFqaFZJVXVpcUtDRWlINmJNOC9kVXFteXV3cjYrZ05YWFpy?=
 =?utf-8?B?cUhocENxZUZHbTlUU01NSm5Oa0EvbEdVL2tRdlZhajJqZjFOd0hrK2xySElv?=
 =?utf-8?B?NW1wcmVQaWM2VHlrb2hrTUcyT0xTZERUT0hKWWkvcVQrNmp6aUpJQXV2b0xQ?=
 =?utf-8?B?UG5pVm5FNDVyRWE4N3E3ZnllLzBaZHR6eHlxME5Ob3ZCTmdzUm10eFpManBI?=
 =?utf-8?B?M2habVg1V0JvSFR5WDNYRW52NUxYUWdUdmZWU0g1RkhqeXIrR0ZySHdaTDhx?=
 =?utf-8?B?ZWd6U0ttK3RSSUhtK2NUK0dPb2I1aTBUWmlMSStBM0ZWdENlWmU3ZENDSjRZ?=
 =?utf-8?B?KzZIbDVvaTBwelNoRVBuVUgzbUdTSHV3eGJSQmRkRlBmQUg2U1hjOE9EVWlS?=
 =?utf-8?Q?h8Di1i7FVMbaGKlqevQdi34uFGQNppgGMCDht3j?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZW82TGhweVpiT1dTdkJFWmVHc3hsdW9DbWY1c2U0eDRpNCtVb1BWS2JXVjV5?=
 =?utf-8?B?Wm90RUdERUxxbVlyZ1FqeTVzMVR2cjNXUjJ6dVE3ZG9EOVpjeVRXN2dDS2JH?=
 =?utf-8?B?blY0dVNpMWFwbzZyZVlGUk5hY3dkdWpqbXhQNjhMVS9QTnRyQ3ZqK0FPTXhp?=
 =?utf-8?B?blh5dktaTm03THZsd3M2UGVlelBJdjFPemNQVWwzWVF0RGR0TiticEdRb1JK?=
 =?utf-8?B?eDdxUE0yS0o1TXoydFM1ZHFxejlEelJuOWhSeE5wZnhIZVRGZDYva2V3eXUv?=
 =?utf-8?B?YnhScVMydHVqdi96Y3F4T0tTTld6cUl4MDdONkRGMzdnSlBhdnN0MXNOL3Yz?=
 =?utf-8?B?RWF0TENicE1QV3VCYll1NXo1U3V2MzVZUFpRYmVVL3FLWUNTZDZtK3hsL09P?=
 =?utf-8?B?TWVEQVp0QnI2VlhJVHFhKy9YK0JOa1c0ajFtSEh5Z1lnZ0NrNE80QzJOV3Yx?=
 =?utf-8?B?ci9ESUNqUGU4dHhFREVwSlRFZVpzZWY5RVVDbExnb0Nuam1Tc1NhM1BkT3R4?=
 =?utf-8?B?ODBwWmlUcXM1emYzMjF5ak9sRVF1a3A1Z3BxcVJKVWxjT3FTdkZ6amZVUlA2?=
 =?utf-8?B?ODdsa1pNY0IxM25FT1BNK002U2VHbm5GSUpPZ29SM0FGU3AvRzZZNkZlL3dG?=
 =?utf-8?B?RmEwSEtTRjE5dDh6SEFpRXNFWFZHdDBhNldvMXU3UFlkSmQrTGVqMXlzeWlw?=
 =?utf-8?B?NCtIMllpbGp0WXdhK2VCWFJJaTFuVVdGbVl3OEJIVkEzOVNQdE1LMXh4b2pE?=
 =?utf-8?B?S3g2RDd6MzFqUHRHUmhHSG9tMDEvUVB0WC95MTNQY1dPWEZmSDkwTnBEaWlT?=
 =?utf-8?B?cHh3Wlp2Rjc1TjRSdG9GMlYyalZrT0pYS3hXUWlyRHlBUkI2T3QrMmNmV0Vk?=
 =?utf-8?B?bFRUOW5yTC8zb1lEalNYdFViNWdNcnA5UStPdUhnSkgycnFaekFYZXpLMlBi?=
 =?utf-8?B?b09SNDB2UmFaSGVwQnF3QUFBQW9TYmE1Nkw5bEhUYnNaT1BrQzVneDNaa29F?=
 =?utf-8?B?ckwzRGtuWVdTaUl3M0QrelpycVZsOWlnSTE4amhkNGp5cjkvQ2s4VWhNQkFU?=
 =?utf-8?B?cVo3SnEyeWtzblN5VS9WbCtOSWVrLzhRWWlBMHMvV2FIcm9rWnJyUUZRZzYw?=
 =?utf-8?B?dmw5QmpJakRBT0hLbWZJNjBYam9PaXNRd3B6ejh0WHgzVzFpaEV6Vjh5RHEr?=
 =?utf-8?B?WUtxMDdLZS8vcDYrUDZ4cFphOG1ZRXVRNzZYN0hSZy9NTlhwTnJrZzkycjA2?=
 =?utf-8?B?d1pPVFdIN2MxenhsUFJFSllBN204NmpaemxsU3V4YXA4M1FaVk02T1JHY1N5?=
 =?utf-8?B?UHNtVERtUGE1WFo1S2Mzb3pxQ0hxcU1uL0VGZVdSbERqTzZtdGdhdHFEMTlw?=
 =?utf-8?B?SWxZclZ6aTRvNXZ1aXMxVnNxTDJSVHMrY21kWXNMbzc5TEhDTVppUlhtTzJM?=
 =?utf-8?B?MlExdmJ2OEwrTXFwa25lNXhTZWI5SFQ2TVQ2ekphM2ExdEU1RERXWGMyUlc4?=
 =?utf-8?B?ZGtGODlPM3BKb1pkeXBEdG1ibDlHVXcrK3h2bjI1a0pxUmljV0U2TXhLMHpr?=
 =?utf-8?B?MHhTYmFBOCt6SGRCTE1SRUJXMnlJK2xxVDBuelNTMHBhTS9CU2VLY1FYL0FJ?=
 =?utf-8?B?NG00bXlBdzFZTlBEYXZuRThpZGVpMlJlaEpxaTlEbGZIcVVHdkhteldPdkFr?=
 =?utf-8?B?dEJLOXY0M2NicHBwMk95L0hvWmVPbTdPNk5DSTlPZkJHNmp5Q2VPWWpac2V1?=
 =?utf-8?B?RUU4QUY2dFNPaVordUttYmU2RStsZWpJVS9MMXlmdDErYkN3d0tJZGhqZlFU?=
 =?utf-8?B?RXdFdElYT2xNbysxcWNHM0RmQ2JBR3NRRy80SzBQeitEVXY4UDlIY3h4VXF0?=
 =?utf-8?B?TmpuTC9nYlVZbWJlS1pIelExNU54Q0Z6QzRHZTdSTG95RTNMQzg1bXVyblha?=
 =?utf-8?B?eG1EWW15N2pyWkl0c2Rtbi92Ync4M2FEWHhvUUxoRmxtM205MEtENXJIRkk4?=
 =?utf-8?B?Z0E3aFRMdlBidTRKanU5TXNicEI5WmRjODZ3eVdlS3NpdWdvWS9yZnVxMitW?=
 =?utf-8?B?eExzY1JUVTcrS1A2ZlIySjBabiszb2htTm04K00wa1ZycUo1QmJnd3orMDd6?=
 =?utf-8?B?R055eXZEem9hM2pibG5JMGgxMm9KZUp0QzlKQjBzUllkTTVxdFlCdUlTUEdP?=
 =?utf-8?B?bnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 402b3754-edf0-40aa-f1a6-08dd07c86207
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2024 11:58:57.7925 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VVKdwrhqlaTI8nHxJ43zkKkkf0g4ojPVsLvmnR6dPB+wQ3JZh6DfT9BKVPW4AWQtPIRSB9NBvQ85/HooDZzmme+IZAwhVjKi1TWFBQFz9N4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6550
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731931142; x=1763467142;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=57ajfRppuOUmAi/Tsxb7bw6y+AIg1QKfa33/48jLUB8=;
 b=jS7IFEwIswVkquR/Mynz6UQF5IScchnKSNJwjY8ZkRTUvNBxXCV6AdMx
 z2dTOxDAiDtEvdumuF95TyfgSFcgffQvfDaUZ61pWA2BKOJAmNYEu1qro
 2gBF7JgH0IAELmdTRImqAZQmRy+/eRZjhWxeYS5+UgLbz8V/hUedgiOJY
 ZmJkkcEdS5PXVHRs4yBHOy8JzGiGZs6WmKH1JTwRz8hWzpGnlkms3sHBO
 s7hRwlxUIeaYaKtHJeqwwNxpOkRrJUDe94MbbwotIJp8Ksi0PN/lfBvAr
 id6cGac8fSWQuq9q3dhbBm+rX+B2JNuvldCY/7YeTwn6kSgwAeJJWtFvM
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jS7IFEwI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: fw and port health
 status
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

On 11/18/24 11:48, Konrad Knitter wrote:
> Firmware generates events for global events or port specific events.
> 
> Driver shall subscribe for health status events from firmware on supported
> FW versions >= 1.7.6.
> Driver shall expose those under specific health reporter, two new
> reporters are introduced:
> - FW health reporter shall represent global events (problems with the
> image, recovery mode);
> - Port health reporter shall represent port-specific events (module
> failure).
> 
> Firmware only reports problems when those are detected, it does not store
> active fault list.
> Driver will hold only last global and last port-specific event.
> Driver will report all events via devlink health report,
> so in case of multiple events of the same source they can be reviewed
> using devlink autodump feature.
> 
> $ devlink health
> 
> pci/0000:b1:00.3:
>    reporter fw
>      state healthy error 0 recover 0 auto_dump true
>    reporter port
>      state error error 1 recover 0 last_dump_date 2024-03-17
> 	last_dump_time 09:29:29 auto_dump true
> 
> $ devlink health diagnose pci/0000:b1:00.3 reporter port
> 
>    Syndrome: 262
>    Description: Module is not present.
>    Possible Solution: Check that the module is inserted correctly.
>    Port Number: 0
> 
> Tested on Intel Corporation Ethernet Controller E810-C for SFP
> 
> Co-developed-by: Sharon Haroni <sharon.haroni@intel.com>
> Signed-off-by: Sharon Haroni <sharon.haroni@intel.com>
> Co-developed-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
> Signed-off-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
> Co-developed-by: Brett Creeley <brett.creeley@amd.com>
> Signed-off-by: Brett Creeley <brett.creeley@amd.com>

Brett signed-off as an Intel employee, and this should not be modified.
But it's very good that you have CC'd the new address.

> Signed-off-by: Konrad Knitter <konrad.knitter@intel.com>

There is no mention that this depends on my series, still in Tony's
queue.

> ---
>   .../net/ethernet/intel/ice/devlink/health.c   | 290 +++++++++++++++++-
>   .../net/ethernet/intel/ice/devlink/health.h   |  12 +
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  87 ++++++
>   drivers/net/ethernet/intel/ice/ice_common.c   |  37 +++
>   drivers/net/ethernet/intel/ice/ice_common.h   |   2 +
>   drivers/net/ethernet/intel/ice/ice_main.c     |   3 +
>   drivers/net/ethernet/intel/ice/ice_type.h     |   5 +
>   7 files changed, 429 insertions(+), 7 deletions(-)

Weirdly I find it nice for review despite the size, at least
in a way that I think it's actually good enough when not split into
multiple patches.
