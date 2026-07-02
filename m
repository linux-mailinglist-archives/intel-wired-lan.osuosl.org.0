Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qzjoAqlIRmoANwsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 13:16:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE5A6F68D8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 13:16:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="26c/Kqz7";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64C9F60ACD;
	Thu,  2 Jul 2026 11:16:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VlfS8pHVtGi3; Thu,  2 Jul 2026 11:16:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A505560B1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782991011;
	bh=PLQqmYBb9AnrzHpWBLWtmgAsaPmXpULJB7a7T/QeRx8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=26c/Kqz7TmygWeagAwMhEseixqKqdlm4SA0LNWSiiJ4Vq7DbQ5NvtPslC1FAl5f40
	 cRXISr53xmlJgdpTYDo+t3QdZ+fQj06zt0rUdkbp5Wlxf5jAdEqKphuGuxNoHo8ST4
	 HExwrrb5j/PW2+8eQdX3AwIhQ4zFzzSk+VUrBnK/GKY5tBasXbOtthuE9Zqop6UJPG
	 H61iZZr0C0UCmDc5MfR24trS5fqGa9BKmDVGheQnvluEQyBAkfByZOh8I/LjvKen4/
	 yJwG7Oo/V8i3DpA5GEeA16V47kmU/z2Cr86Ru69FiE2Vik+ckgGKMdEwaRdF3xvqEQ
	 Btm+ERf+9/tmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A505560B1D;
	Thu,  2 Jul 2026 11:16:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B7B4316
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:16:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E2F060A61
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:16:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C-p0Btz00uFb for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 11:16:48 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5D78860AB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D78860AB3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5D78860AB3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:16:48 +0000 (UTC)
X-CSE-ConnectionGUID: JgjWBhqkRTm0sVsEDie/zg==
X-CSE-MsgGUID: CpY9XKhcStGUu4qBzMxfEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="101165547"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="101165547"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 04:16:45 -0700
X-CSE-ConnectionGUID: FbXHJNydSVKKHTJRbOuLRg==
X-CSE-MsgGUID: vqizt973SnyRYQMxjVyGtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="252388101"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 04:16:45 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 04:16:44 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 2 Jul 2026 04:16:44 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.30) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 04:16:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qLbofsrdhiUV+dbLswwL2f5Rz16PTRpVMiuZuBf2kVhbLNPIRZXob4frDIWQj3WpGlAxQGqsq4jHCr94nZu/P0Zkzrve88nW3By/M+cIYRnTcVzPUxHv2Ki/xoobxGrZAH2dRjRMFZbC7k8QFInkEEfk0lZsQeNJSkmi9DUVZn7jXY46ZLD273bPDTSMaNB20MZcvhnF+wsTB2dHheVdqHxtx/o+ye2LozkBk4cN9tweKk2zNdvQEQkCQ+TYn+J38BTR6spY/TygBL2WpVvg6/YWYSVi8CF9fPy0qOamu94vu9KJYTJlOKq7FEbUxJB7wWqG+z+2B4/X/SA2utj1nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PLQqmYBb9AnrzHpWBLWtmgAsaPmXpULJB7a7T/QeRx8=;
 b=lpQHvbMEvU2AkYPpouatIltlLkYP5Li3Cg2YXJs/NaArXIityUR+To1uIPIrEFfGOTOByBtcdUFpzbhtyD4vLCCJYUXxxtKSWLqH+lNU2jTq9VxDs4I5wIG53Gm75N2KYWVOF8PwBpdNw/nLDcCeXURjSOrvxsyCjvyGMXEq71BsOH1E5whGfrSq54O0AXHS1NDiZATaRmdDaG36pIYuMlOsAhseDpcq4d78bWR3fadStEbcNUIiogPCwV4N9ZHsBMmKvn+AfXzHA6koTtiS15t51sba4kMdIqKGewR61AHFY0zOfJS6H3E1lePqQDNw5T5tUHHHufmcU1i72AMIfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8)
 by DS0PR11MB6375.namprd11.prod.outlook.com (2603:10b6:8:c9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Thu, 2 Jul 2026
 11:16:40 +0000
Received: from LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51]) by LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51%5]) with mapi id 15.21.0181.008; Thu, 2 Jul 2026
 11:16:39 +0000
Message-ID: <e6ffda15-7a9f-4223-90b0-bb42e50f7b1c@intel.com>
Date: Thu, 2 Jul 2026 13:18:55 +0200
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>
References: <20260701104141.9740-1-przemyslaw.kitszel@intel.com>
 <20260701104141.9740-2-przemyslaw.kitszel@intel.com>
 <f2c285ba-8089-41a1-b28a-9062f2b584c8@linux.intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <f2c285ba-8089-41a1-b28a-9062f2b584c8@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VIUP296CA0003.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:800:34f::6) To LV3PR11MB8508.namprd11.prod.outlook.com
 (2603:10b6:408:1b4::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8508:EE_|DS0PR11MB6375:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a9368c4-7052-46eb-6620-08ded82b6345
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|22082099003|18002099003|11063799006|4143699003|56012099006|6133799003;
X-Microsoft-Antispam-Message-Info: mQ+B4TuL1xtnTalD8inxVP6nV40KAjswOhwOY6/ymDDfJbEr6f5ExTv2L6WvFgLu+Qa33e++e2K6Y9yx/DlJw75Sx9DRlUSOBWNj4BUur37QwCJDU4Eb3GYTul2cQUjnjeCuwHilt6sXVMCCD7S50Qw9dggsZ6JySKNDad6NcMqegsl8ZsKW88Qqt5Bd6EkGESwRQLE0DKEdyAOA1BUoT7Q8uoR6Y099klmoEYi+yJJwkKoqiLe4hWGTVDpwPQAZ1ZpweDKLNy5EK1UpYQ+CzHyvN4mLr4s7w2QsomT0cJF+mG4tTM08YW5R2TZAIUGDrAFC7MAvuShFHADkutoOso8dBqZSdBkAsDhDu0wewFdgw86qNKxCa4YOeR7K2L9a/LxWpA0y3P3JfNThtaU99mpk+LwFXBEzfMpyq+6fgLcIsFgBw+TBjkvwlQ4mZB8Dk7QcWaQ+B8Ed0/QOU3teDxJ/cppS2N3PHig2TbfJdvq7/P5ZXfTm5wRt0X4BiLlvQ88AW33QR21mA7tlVbcaKBofmOC5cCxA+CAPMD3Vc8813vUr2iaH9k+1S8oHYCrtiWBKKEIEFH77UgkNdrIg4rYRb3TQ34jtsWiVUV/FicwfNBDlJBOfh2K5sX0ffD29zebtmgLeNn4kHQ4FjJTNWQH6uGyHYYNnGYqoIFfJav4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(22082099003)(18002099003)(11063799006)(4143699003)(56012099006)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?djc0TVhWY21XZ3BFclFxOUNOQzRvbS93TUhIc2I3NE91VnNYamRMSlNobW9l?=
 =?utf-8?B?SEtYOXgwZHdtcVdWVW5kS1J4TldNOE1uU0R2Y0trakR5ZHRHUWZQNElSZ2l3?=
 =?utf-8?B?N3VPdTF5NSt3d1lZRG15Z1k0MWxCYUlrVkFPd2lpcFJaUm90cjZzTGlCL3FP?=
 =?utf-8?B?dXRNSW1mRVpGSVl6QzdUQTZDbXU1NG42TGlyelVjeXRsRW50OHlRbEltc1J0?=
 =?utf-8?B?N0FPNlFWaENNSTljdlp6UmErMFBrOE1sSm13bUlWVC94WWVnQ2pCOXh5djNw?=
 =?utf-8?B?dUZZSm1oUE55amRYZFZZTHNuYWVXbTFUTUVSck8xQlUvOVJ2bXhpZm5JUXF1?=
 =?utf-8?B?alpnMFVERm1NQkU3WWh6Y2I3ZndyQXJkQ04xMG1lK2tXUHZsWEpxaUhmdGh5?=
 =?utf-8?B?S3J6N2M1QU9xT1o0bHVNOGhURWFtTmJvdkhjWC9WMytNeUt4Zk4wQnhWaU9p?=
 =?utf-8?B?QXlyc29BeXZwT2MrWTVGbWkyd0Y3MW93NVBUbFhoeVZXMEh3U0hKOVE0dlMy?=
 =?utf-8?B?UVNZVFRTMm5zTlZkQk8xL1JET01WcHVuV1NuYmpsVlBEZ2J0RlRjZ0hNczF2?=
 =?utf-8?B?b3R4c0hIVEg4VGVkUGc2ZU5BaE80QktKYnpYcDFhK0RpTGdtUEFYdjh1c1ZC?=
 =?utf-8?B?eE1RVzR0R0pWcGhiT2NrZmUxNTZKZEMvaExsM3lTSVBxTGdGMFhwY2o2UTFz?=
 =?utf-8?B?L21Zanpocm1YSGxWTks0WHF4RUhMU1NpUnV6emdYTVlRcWNwMFVFSktPWnV6?=
 =?utf-8?B?UkhSZ2E4K2x6QTNCRnA4VCtCRU1UU2xPL2NGYXNpeGhneEdZMXgvOVhjRmdM?=
 =?utf-8?B?M25FcnFmMzFzN1JrM2JSbGF5NlRCcWx6bHVaQzFCSkljc2M1NUxIaXFOSlQ3?=
 =?utf-8?B?OWl6Y01HeTNURVQrczh6RG1BM3dtVG8xK2dNSUVVY2RXbFYvWUJwS3E2TW5o?=
 =?utf-8?B?Q0E2cUhlb1c5aTY5ZGxDYkNHeUlyWVhpa3Yvd0VWQ2pWc2d6ZWtsVDlGTEhG?=
 =?utf-8?B?cTRkTFZDNkVOc3o3dFgvZmx4VCt2ZEVUdGlNRndGcDgxdHFtSW5leGVLR1E3?=
 =?utf-8?B?bUZVdFVRU3RqZTdxcjFLVXlVRHEycDhNRE9iUkdZaGVZMy9mNThPaEV2Qy9p?=
 =?utf-8?B?TWlqdFcrQUdKVitzbzhQM3N1Nkg3T1JsdDZ2OTNpZS9pVVVxbmxzS2ZiMEQ5?=
 =?utf-8?B?eEhtbHZhYUtEQ2RxQmdjQUVGUEZhZXMzZFE5QlliaDRuYUVEQXlvRFJTVXRz?=
 =?utf-8?B?NzFUczFaNnZ3MjZiU3QwUjFxTVJQa1V2M2taZFlKWmJvcmc3NUJlY3BhNnVY?=
 =?utf-8?B?RkdadU9uRHFNYmE4MldJZlVsUjNmOUpwQ1FiSU1LeGh1RFZmQlAxcEM1bkp3?=
 =?utf-8?B?Mk5uT3N6TmhBczRBQmhYa3dpN25kVlBzYmN6dkdLNU5BVTBteFdOZjBOR0pa?=
 =?utf-8?B?T05NVy9tZTRqNUlqOW1YN1JOZUNUcC9xaHZudm9tRWZEcWRDWm9KK1AxTVlD?=
 =?utf-8?B?ZEdiN0d3dkRCeTU4ckxyREJkVTdxZE9uYU9YYWNhR0UxMjJlYTdabTFXNUNQ?=
 =?utf-8?B?OWpBZUhHMEh6SlkxQnJ4amtiTTBmbE5wUjRzb1VjdThNdE9QVVZJc2ZIV1pU?=
 =?utf-8?B?VEhOSE9MRnlzclA1bGwxVVBndWdIMjVVd2xXZ0EvWUhCaWdUdE1JSDFlTlhI?=
 =?utf-8?B?M3RXcXN5L0pYZnNzVlFnZ1IrYVdaUjRXQVBmc1lIR0c2NDMzcDF3UXRtaWt3?=
 =?utf-8?B?MEZYOUVwcVUxem5STnp2b3JGK2VuRldrMEFJOVlsNDMxdjllblFyVmhXK1lw?=
 =?utf-8?B?NitZditoYmFUNkhmc0gxNEZDZHVWam8rNDVwVVZUR1AwRzAzRzhrbUMyakpv?=
 =?utf-8?B?cmJoTzBJeWMwMkFTNTBmNzllN0MrZTdrNTN2TFhDNzY5ZGpWOW9BWXd4ZzZB?=
 =?utf-8?B?RWI3RGNyU2t6Z25UK2IrOVY0ZDVUclQvZ0haTW5qMHg0WUw4czR2NGU0NG00?=
 =?utf-8?B?MGdtUFZVOGE5amY4UjRRSmhBakxteDRmWEFDRG1ab3Q3UHladU9FbEZ2b3JV?=
 =?utf-8?B?YkR0Zm42dWNCMk96UFJvdkV2SUNUOE0wVU5GR240akU1MXlQNzZER1VSZ0tR?=
 =?utf-8?B?T2J3bnV1QTdVNjVlVGR3aFp3TGhSSFU1UCtuNDZ4UGU3dUxwNUxDUno4NlM5?=
 =?utf-8?B?V000ZE9tSFUvbms3SkNpSEdmUTlPZjRwQ1RMV2p1aGdsWmZMdDZ1MWprdXdL?=
 =?utf-8?B?L0VEeEluU1d6dGt3S0wzZzMzZ2s0ZlZIcVpOdEpBcS9kSkVDYjZnblZxMVRL?=
 =?utf-8?B?eWp6WllZY0hyWldqajRpM050RlUySzUyNHQ1aHNzdE9POE5mdTFXdXNJOEFX?=
 =?utf-8?Q?QMgRDtLXkumTpskQ=3D?=
X-Exchange-RoutingPolicyChecked: YBgxVz5JsfYW3ZxBc6MYpoNxEvR9Qed7m37YhlQkyxte64cbuXvQd4ISKEkKdq31YmbMA9EFKWAxNe5+ktZZQpEmNuh8vHEftJMaaPg4Dd0S5uLNHGI+V1upkyw4aDy0qLUvB1cQH3zQdIHFChSK53r2/5NKUEOkMUCyFfuHEWJeJg7qz9Wd9/+sOYEqcBQJiEy5xTid7dSI/nAS1np1++n9/CdwYWhmJ+4dOy2pJPcxSTpCq/Xsc9nGtucr5sTlqXxPapUDCGPvgFPeyG7ankQxh+tVarfOq7KNVbPgTmBWqo58/GCOJsn5xpoa3NXG81qm7YOdIN2bixXh3iQXGQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a9368c4-7052-46eb-6620-08ded82b6345
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2026 11:16:39.7242 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0kWvCvnz+yNL2jeynmiyjgN8l3UrB4TBGd2kDwl+QDlzu1cF8LGiEyzvm2zLSTtmzYavHOGMEOImxyfYUPebNXmwX+ekI9GT1cvqa4q17QM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6375
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782991008; x=1814527008;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9BLYk6mhtbQeVpsGO8kY3vcQRduxnMExaZfD5idRjY4=;
 b=I5OLbLQynbLJNVhECci8DewvbIJmpbgIXwDfp+kzyB5jdCdLv9VZT6yp
 0aISEfmlRw/8j2sOC41syLPQ+8tuvLG1fCdvgoTJzZX4JcjCk3Lix1o9N
 4FYoOjo8cSgnlALcc4CVM8KfRHmxpeetL5HGlIHTrVTHW1HWoRrkdVR5C
 0Bw1Jwkl9mjrou7ZSMyTImD5ZM/06anmXSOrCIBtI8erxPDxa+anc4xbQ
 vgofL228SUOQXj9nfC+mlREQFOCZkmBcYd53USwQWRpj9d28+nJIlOWR9
 83mD2phtO1zilHnXPrJ6bO2vdxYygr/BWabM82tbppnAju1cI2nGoIrB1
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I5OLbLQy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: fix stats array
 overflow via proper realloc
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub
 Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:piotr.kwapulinski@intel.com,m:netdev@vger.kernel.org,m:jedrzej.jagielski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,atlassian.net:url,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9AE5A6F68D8

On 7/2/26 12:25, Marcin Szycik wrote:
> 
> 
> On 01.07.2026 12:41, Przemek Kitszel wrote:
>> Integrate ice_vsi_alloc_stat_arrays() with realloc variant.
>>
>> Instead of keeping two functions for stat arrays allocation, change the
>> ice_vsi_realloc_stat_arrays() to handle initial condition (no vsi_stat
>> entry) and replace ice_vsi_alloc_stat_arrays() by the more generic
>> ice_vsi_realloc_stat_arrays().
>>
>> Note that VSIs of ICE_VSI_CHNL type are ignored in realloc variant as they
>> were in the replaced ice_vsi_alloc_stat_arrays().
>>
>> This is a fix for stats array overflow that occurs when VF is given more
>> queues (an operation that will be more frequent, and by bigger increase,
>> when we will merge my "XLVF" series).
>>

>>
>> Fixes: 2a2cb4c6c181 ("ice: replace ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()")
>> Closes: https://redhat.atlassian.net/browse/RHEL-164321
> 
> Is there a simpler reproducer than the script attached in the ticket?

My original reproducer, but with XLVF series applied, is very simple:
Start VF as default, then let it use more queues.

The overflow is not always immediately visible for the user right now,
with up to 16 queues, often all of them assigned by default at VF init.
Anyway, the bug is real.

> 
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Thank you.

