Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08016CD1EC5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Dec 2025 22:07:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B889C60BC4;
	Fri, 19 Dec 2025 21:07:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eBALQ5AgkgzR; Fri, 19 Dec 2025 21:07:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EAF560BCA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766178451;
	bh=63jIQ7sVL7bObEDvE75jcnUdNowLLcA5K4uy1Ngd+4Q=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5IIySDW+4aXgLwP/A2R6zNwh48GGW8lr9/7O0l8lCq+yjYhsGlHbn3+N3V9z6x4/j
	 KgM0/xVFrCgpdCOoJCsBcFBlDOyDEKK61fVuwjXI2lm7BqrfuV90ZarcNyeHdYOEEL
	 HhJvbzWMG3ceFXt7dlFJXlax483VRcnSOu2s31SztZjHh9xaNZ501aYUfGwjIAYhFw
	 S7wJ8PtWAljIZiAIFN/LqsAKQTWwoF684hgf8Kfa9MnTADp+QjVo+D2eWfl30DC4bS
	 +LJ4dDvzkJxKpymTKo9abbmKy/qx5T24977TeuIuHcod7soIakRQXQ4aRBOnNoZqzs
	 lNutgVfOlu9fg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EAF560BCA;
	Fri, 19 Dec 2025 21:07:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0391B293
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 21:07:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E97BC81181
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 21:07:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EDs9GBIcWGi8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Dec 2025 21:07:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DDDE3810C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDDE3810C5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DDDE3810C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 21:07:28 +0000 (UTC)
X-CSE-ConnectionGUID: iXzf7BQZRreYCSQk6W/M+g==
X-CSE-MsgGUID: 6r37O1JwSUKGtjE/+WaCMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11647"; a="68220893"
X-IronPort-AV: E=Sophos;i="6.21,162,1763452800"; d="scan'208";a="68220893"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 13:07:28 -0800
X-CSE-ConnectionGUID: kN88S7vFQhOJtzjGeI+Fnw==
X-CSE-MsgGUID: F1ASNPsmQpmeSth0pVsMdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,162,1763452800"; d="scan'208";a="199012078"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 13:07:28 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 19 Dec 2025 13:07:27 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 19 Dec 2025 13:07:27 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.69) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 19 Dec 2025 13:07:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VABEGavChGk/Q73iTuRIZ8kAv2QvN7fCDWkloUuscF2n2Yr59JWkONpcBlAD+4BCdsyuK5D99NwF2hgDiEYD4Ln6RX0rel5JGyBWaDeZoAx/12qc4o0PqF9Ry+pwmRzFNQ2Prey7d/ew8Y53UtXbbsLUuZYXaRi7NfWo9s+xjnkW0mPudF6v4NOTIH7GCdQo02vwhCkPSJfOj+ly/y4s3EdzoooKvbvpuS+X2AHaaRqRu13AIs/RSi384aEuVurb/h8DQzTwkuVgdJYKvH8WHBguSqyG4689C/7cG9WpusRxd8sTKX3eFPA/7HutB09f5smCfNoxlD6wr2qp/0ktdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=63jIQ7sVL7bObEDvE75jcnUdNowLLcA5K4uy1Ngd+4Q=;
 b=g2f/ustauUm4zIQkmBpiT/RUjAq56ZZmcH6EvW6na69RPAQSUR/UPhDAP6YaCxgP/9GpoZOWFPgUDpVtMoMMQi/EFXURkqP/HM1/6JXcYGW4daTgPBo7SyCdukcptRisOrcTapmVP9NgWbGV257Od8Q6L1wOVW0c4bb0eY3f1fCaX0Qmjmth1Vd5ozlgJhKXfpYQkX0szLMIn8L3wouPPpx1+hbKPmXVYuAWNUZHUh10jXC6d3607YVWN3u5dwxHzUuUb4IYxU3D2N50ust5iVd6zDkx0/9nBQG7ZAbvkWMa5m051yTOB7rR1bw1wOZ89BSVvERuDpVT5xvQsPx0Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DM3PPFAB693A2AC.namprd11.prod.outlook.com (2603:10b6:f:fc00::f43)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Fri, 19 Dec
 2025 21:07:23 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9434.001; Fri, 19 Dec 2025
 21:07:22 +0000
Message-ID: <64e522bc-60e4-469c-9e18-5db1fbbe67f6@intel.com>
Date: Fri, 19 Dec 2025 13:07:18 -0800
User-Agent: Mozilla Thunderbird
To: "Behera, VIVEK" <vivek.behera@siemens.com>,
 "aleksandr.loktionov@intel.com" <aleksandr.loktionov@intel.com>,
 "jacob.e.keller@intel.com" <jacob.e.keller@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "maciej.fijalkowski@intel.com" <maciej.fijalkowski@intel.com>,
 "sriram.yagnaraman@ericsson.com" <sriram.yagnaraman@ericsson.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20251215115416.410619-1-vivek.behera@siemens.com>
 <DU0PR10MB538764D2C70EACED000EE3088FA9A@DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <DU0PR10MB538764D2C70EACED000EE3088FA9A@DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0175.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::30) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DM3PPFAB693A2AC:EE_
X-MS-Office365-Filtering-Correlation-Id: f7382784-b425-49e2-3f28-08de3f429a7f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NmN1alc4RGNNYTRqcFFGQ1BmR2s4TmRyNHJYTHN4d3FIdnVaeXpPSTJ5dXlh?=
 =?utf-8?B?SUJEZ3gwQUhDZFg4dUdXc1plSVVnWFJLSkRMelRaQXFGeTlIeVdIMUZnY2Qr?=
 =?utf-8?B?SWtWZ2RDOEp2TUZOZ2ZBakJQUTI4WlNSZ2lwQU4xakVhSjlLc0RKcUxaV0VH?=
 =?utf-8?B?VG45RXJxZ1hYVnhNZVhSeGZtcmxqcE5IVnpJOTU3UkZRR2VBWHIzVFRtZHQx?=
 =?utf-8?B?Y05acjRjby9YVi9ab0tNQUhtdmhPS1BPa0hYRjZvVkRsWjJMYmJDM003b1g5?=
 =?utf-8?B?YU42M0VKTW9NNjRSeGpXcTd2dE9xSUswYkdYM2ZxSjRPeG5Bbno0K2EyU3VV?=
 =?utf-8?B?Y1dteThrYkpDUHlQVCtsSnk0eWxEclMwK1FqNXhQdWtVTEV6NnBUY0x6NWFy?=
 =?utf-8?B?RzI4ZFZKa01sMDBMQ0o2bVlydTBZZmRCaU4rYlV6YkdkLzBvbzlNTmNSblBl?=
 =?utf-8?B?S3g1T2lPNVN6WmpSeTJEUTQxMDZsL0FBWmYzSFg3ODc0Mjg2YmVkeWM2aVFJ?=
 =?utf-8?B?K0ZvblZIaGYrRHRWdmVMTjhCNG5wOTgxMzZQNlIwTVJPTVFXbng3cTdoZUVk?=
 =?utf-8?B?QW9QbXJmU0l6VDBQazhPMHJaSFMyMm05YUhleEk0SEFWaStSOFFMVGxsRVhu?=
 =?utf-8?B?QzVFZzhTMWpEc2hzM2JmLzRhY2w0UUg2eWQ3NTZMaFhyRC8xUFN5RTRpNTVY?=
 =?utf-8?B?bDB2Vk8rdGs0aGFFdm11a0NIQTV6djZFcHMweU5iUVpVdFhqS2FwUXZZeVR5?=
 =?utf-8?B?QmxxQmQ1M1lQVnRLWThidFFibHJleHNkRXBKeGZHa1FrY2xidHQ2a0tCZWFM?=
 =?utf-8?B?WVJnc3ZSbkRQVTR5VUd2bHpkZWRQcTRxYVUzeEM5RzlDRGU1STc1a1MwdEZ4?=
 =?utf-8?B?SklYamFGUVdBSHVvMXp5TVExVEI1d0lORFUwT1hCY0JET2lIV1ZWUWdOb3Bv?=
 =?utf-8?B?VURyRFhPeFlrL28rQ3ovZFV0eDRhanF2bXV5RTBYSDF6SHd1MDNmUUE5QmFq?=
 =?utf-8?B?cm1Gc3A0MnloKzZZVnhwUnI5cm16MENTZUs4V2ZtL25LMWx4KzU3QUc1c1Bi?=
 =?utf-8?B?REZWNytERlNYOW1zQjJPcG8xalFtd0N3TGV6UGpyWnZ6clJQbmM2UDk2dWl0?=
 =?utf-8?B?UkplYmdvQTZxeGs2RjNrOVdIdUJMTnhVdU1LczNUczQ4ajBoYXl0UUc3cGox?=
 =?utf-8?B?UndFSTVSQk5xZkFmaEdjdEo5aWc4SUE5YmsxYjFzdjlSQUVtVU9xdS9LL2E4?=
 =?utf-8?B?S0s3ZS8ydko5NVJURUxiMWQ1K05sUnNUU0ZkYVMycVJncUozVUhucjV1amZm?=
 =?utf-8?B?MGJBekJ4dDNSMFIrQ09YOVJ4ejNQWG5ZcHNPdy9kWG43dW1wbnJpTXU3Wjdz?=
 =?utf-8?B?QnFZZ1BuTExONU5uVU85clNYdjJVajl4ZUUreVppOUh4ZFpyUFFOTGVsK1hm?=
 =?utf-8?B?N0ttVHowYU1kSzg3Z0M1NjdPWHMvQlZ2T2NZQ25RcXlJSllNQllBc3h3KzBy?=
 =?utf-8?B?ZGkrUk4zYTZEazQrUm9CMHMzSnJYaEtvaEdnTW15Y3NTc3ZZWCtFbXE4YzRG?=
 =?utf-8?B?cmxLWEN1Znd3UnN2VFF1NWdiaExIeW4vekYzUFpyTHJZNnNaTUhTdnBxb3hj?=
 =?utf-8?B?UzF0ajRwMHRDTmdQYlFZVlFldm9qN2ZtdHM4QnE0VlNLZEJDVGdaUnkwOUk4?=
 =?utf-8?B?SmQrZWtNbHB5VjlYV1BXd1pZMWZudENwaWxpeFhFaWRSZlgrY0NueEdLLzFB?=
 =?utf-8?B?WGsyU3NaZXkrZlNYUjNNY3BWNVdVanZrMTY1T0FDYkloOG9qUCtyUzZUMElC?=
 =?utf-8?B?elVpOENMRHdsdWVCaVJKSld1cXhCNmJYaE9tdFBtU1pPalhKajhLNzQwaStv?=
 =?utf-8?B?S1JSL2pNZXNQMmY1WjlwdG1VZnFPMlVHbnR5dmJVUG9xR2c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d1ZvS21GaDF0a1VUbi9xVzV1eDRUSnc4cXNQaXdIaENIQVBTZVVXNUxQVTho?=
 =?utf-8?B?a1ptb3lXOVkrNjBqUUxrVlJJdFpwRWFnT0xUM3ZMdWpNVTZPYXIweWJoYzIx?=
 =?utf-8?B?cHV2RERld0E4VHZ0SE5OZENiQiswVFFGZDIzbzhQWllTVFpod1o2TllkUTg1?=
 =?utf-8?B?WnFLaHFpYWFzZnptTkRSank1Qjd1Q2VNN3p1K0RFV1llbmNEOURxVWZicWFT?=
 =?utf-8?B?RHZvc0pzTFllOHB3UDV6NVVCQXlrWkp5VDVLWG1meHNuL1pyNUFweGtGREFh?=
 =?utf-8?B?V2hFOW16SkxvR0JyQ0dDQnlKcitneGVveDBWWHdzbk9XVDlIMmlPYVRKc2Zk?=
 =?utf-8?B?TTFZWHFWd2t3N2RDLzNKL2R4Z1dWcHlBVStvcUNnUFNQYkwxd2E4VUNUMmpu?=
 =?utf-8?B?UjZxNEtGZ0hrOHEyRlJhY3NSbkc2NjNwMnMvaEFMZ0VDQUo5Y0Jldk9WcTVp?=
 =?utf-8?B?N3FSZGoxYVZDMko3Ui9OeXpncllNR1lBUWpBanF5bWxDcllXRzhZaVFsMjNu?=
 =?utf-8?B?akNpbjJlRDE2eEpDK3ZLeFpaN1RoU3VZWTc4ZEw3MUFRMWtRU2luVFA2bG9Y?=
 =?utf-8?B?SE1VMDVub014RC9oVG84UnpHbVErZkZnMGRGd3p4eTBOdi9vQmdqZFFqZFg4?=
 =?utf-8?B?OVJWUjB2OWszMDcvblRBb0JjekFFU2RETEprWEt6dllhV3BxNHp5cUVoalFy?=
 =?utf-8?B?SnFvRjZVZEd3cmJrYm1pVEZOU1ZpOW5scHhJRmpvL1FpM3Nzc0FZZ2paTkxy?=
 =?utf-8?B?R3hTc2Qva0hmL2NXNjcvQ2tIdkM5MS9wQmpzN2IwTEdoZFpyb1FxWC9Wc1R0?=
 =?utf-8?B?RStUekpUUVJ6NXhiZ3dwRWRhVUpMRWd0dFdwRW14N2FabkpBZGdERTQ0NE9n?=
 =?utf-8?B?c3FudnpaMVVHSzliWldvait2V0FpbVM5ZExlck43U01sNzFMdXhCVklEYWc2?=
 =?utf-8?B?M0JNK0JYbkJUMURkdEZ0eTVZVVdSVlVVTFNWZkZneGxwdW1oMUFTY2R1L243?=
 =?utf-8?B?bXNaYU84Tkswb0xGdjdWOTdDblFiS0JHbUxtTURsZDRCSStDMElVRXhPQ0R3?=
 =?utf-8?B?d1NXc3B1cWdkOEZ0QjlycWphOFc4S09UNmtHVUJncEYwZUh5eVpmdkZvdDIy?=
 =?utf-8?B?QTFyS29wTHFJSE9wNVorV3BDTS8wZWs5a2prYkN4T1NkOEx0RHQzUUxzeWZr?=
 =?utf-8?B?a01KcDY5K0UvdDUzQWFEanZFUG5GMGJvdmx1dzVKbjk3S25rcmQ5RUdEVFdT?=
 =?utf-8?B?dDl0OURNOVdjOUlMS3RTL1lZa3VYaXNoT1RqdnlJTGxVS2xEeTFVZy9NZXhC?=
 =?utf-8?B?T1RvNk5va3ovZHBwUjVtdXNvM0tEMjR1cTFZdVF1bHAxcndMd0NubFB2amYr?=
 =?utf-8?B?ZFV5bitaZWRxZ21Yb0JGY0RqeFRNWWdZZ1ZMNTFsSThtWTQ0OHVRM2hwdS9a?=
 =?utf-8?B?dmNhRW1xc3F6RmdPR3JUSnBzak4vT20vaUFzZExYZzVlUHI0RHpzdlZXOGhR?=
 =?utf-8?B?SmJLOWRaVlJ5SjZQNFVNVHRmZFQ3SUMrOTA0OUNraWdRSDFjcjVuYU9yaXZp?=
 =?utf-8?B?WWFhTkFCODZ6N0o2ckNDeWh4Q1c4QmVGTVJ6c2JDNWhTRDIzVTlNOGQ4V3R1?=
 =?utf-8?B?aWEwdkFXN0loWVd1U2I1dFl5ek9memIxSW8ySG9lUmRHZVg2Snd4T25LalVS?=
 =?utf-8?B?QTlEWEQ2aWdLZE5PNTkyVkNlVTVURkhHVEd6ZEo0NGtIaE1PaVIyWWxBTGh5?=
 =?utf-8?B?NDRMakIvWmRSMjlUTDViYk1pM2dyeThneWRnbExjNzBxaXVsRythVWdjMjMy?=
 =?utf-8?B?Nk9zSm04NmhPaTZIWUdLbUtDekZpTXFReFBhaGVrOWpjK29ZaFR6RWRDS1Ey?=
 =?utf-8?B?Z2tveWw0amtLQWd0WTZuNitWOW9obW9MS1J4MzB4M2psWFdoQnhwWkVVZHg2?=
 =?utf-8?B?cHhHenFOU3UxU25IdnJwdTRMZjVMb3doaENPRmkrN2RlajB0MlZwMjJ0T24z?=
 =?utf-8?B?Y1Nna0JGZXBCamlkd2xyZTQzaVRMK1Z2YkRWZmloNm4zODYwUFd0c1lxak9M?=
 =?utf-8?B?cUlJcGJWb1FFQ1FrM3Awd0tBbHBuV2xQZFV0NHZxdFlRYVdQOE1lMjBmOEhk?=
 =?utf-8?B?OGhlbFZtSzVlZmxSSkhXR0VQM0tvRS8yWThHOEdXVEFsN3I5NFcxWGtMTjd1?=
 =?utf-8?B?cFB3cld6Ymo4WkxaR2F0UE1hcDNwQlE5YlhvaXdyYzBuNEJUSmxjUmJLZ3NY?=
 =?utf-8?B?cFpyUm5TTlF4N1R0K1hWYkJ3NnJPUVYxdnhGYWl5SXVqc1l5VlZqRVEvVjJO?=
 =?utf-8?B?VzhmSWZRQkt4RWQwRFFvWThCbTZLVW9qSEVLb1BKQ2dvaVNSaGoyN2lOMnpu?=
 =?utf-8?Q?UfbpwOHO9tUTd6Qs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f7382784-b425-49e2-3f28-08de3f429a7f
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2025 21:07:22.7138 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: za4qVEY7Oj7dAjx8GVLd8Dl8YkxHyMevUoY5ZEFbkZ5slmcV19bDH107/1EEHeHhjc4csrXcXWNmWe5TTOIlUflQGtdICj9XtlnO4bxrV38=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFAB693A2AC
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766178449; x=1797714449;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uZnCsUhQY0mHWnl4u7G2yxISMR26FZ6zgPUr9FC+qFU=;
 b=Q7xMInReU22HSbN5ZEYzlB2GZGoNGSzi1MKPGlybAZRXKqs77k+kUQpz
 tbc9aHk9VdV8BrElk/QF0qDnNCTSEjv1TqRSX3yJUUHZC6LPDgpHj3cFr
 2uUzE9LNey2J+RsMTd1C97dQkcjLJq7HTCygop22GmpHz4DoynCtJyU4i
 nW2Xi3lbKFlVNUc/OGCRgPoYQw/AWjTuL3dqW26zmt/SZ9Jq3oRXXi2vB
 VOUorngfCc1xdevo3wdw7yppE51m5qE+0r1Js0fSjJW7RrokCD3rfft0K
 KuEbs/IK+TF4xCqEDIW9BgAUxfD0q2UTQdM6ycDwkyBC9QTkRBJtK4vS+
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q7xMInRe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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



On 12/18/2025 11:05 PM, Behera, VIVEK wrote:
> 
> 
>> -----Original Message-----
>> From: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>
>> Sent: Monday, December 15, 2025 12:54 PM
>> To: aleksandr.loktionov@intel.com; jacob.e.keller@intel.com;
>> anthony.l.nguyen@intel.com; przemyslaw.kitszel@intel.com;
>> maciej.fijalkowski@intel.com; sriram.yagnaraman@ericsson.com;
>> kurt@linutronix.de
>> Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek (DI FA DSP ICC PRC1)
>> <vivek.behera@siemens.com>
>> Subject: [PATCH iwl-net v2] igb: Fix trigger of incorrect irq in igb_xsk_wakeup
>>
>> The current implementation in the igb_xsk_wakeup expects the Rx and Tx queues
>> to share the same irq. This would lead to triggering of incorrect irq in split irq
>> configuration.
>> This patch addresses this issue which could impact environments with 2 active
>> cpu cores or when the number of queues is reduced to 2 or less
>>
>> cat /proc/interrupts | grep eno2
>>   167:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>>   0-edge      eno2
>>   168:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>>   1-edge      eno2-rx-0
>>   169:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>>   2-edge      eno2-rx-1
>>   170:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>>   3-edge      eno2-tx-0
>>   171:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>>   4-edge      eno2-tx-1
>>
>> Furthermore it uses the flags input argument to trigger either rx, tx or both rx and
>> tx irqs as specified in the ndo_xsk_wakeup api documentation
>>
>> Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
>> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
>> Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>
>> ---
>> v1:
>> https://lore.kernel.o/
>> rg%2Fintel-wired-lan%2F20251212131454.124116-1-
>> vivek.behera%40siemens.com%2F&data=05%7C02%7Cvivek.behera%40siemens
>> .com%7C1199ec6c63494235f90408de3bd0eefa%7C38ae3bcd95794fd4addab42e1
>> 495d55a%7C1%7C0%7C639013965726377756%7CUnknown%7CTWFpbGZsb3d8
>> eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoi
>> TWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=uTarFq1Uj3h0H1aZeN
>> 06HWf0ts3BsMJkfPq9pPBegrI%3D&reserved=0
>>
>> changelog:
>> v1
>> - Inital description of the Bug and fixes made in the patch
>>
>> v1 -> v2
>> - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configuration
>> - Review by Aleksander: Modified sequence to complete all error checks for rx
>> and tx
>>    before updating napi states and triggering irqs
>> - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix use case)
>> - Added define for Tx interrupt trigger bit mask for E1000_ICS
>> ---
>>   .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
>>   drivers/net/ethernet/intel/igb/igb_xsk.c      | 98 +++++++++++++++++--
>>   2 files changed, 92 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
>> b/drivers/net/ethernet/intel/igb/e1000_defines.h
>> index fa028928482f..9357564a2d58 100644
>> --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
>> +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
>> @@ -443,6 +443,7 @@
>>   #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change */
>>   #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min. threshold
>> */
>>   #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset Aserted */
>> +#define E1000_ICS_TXDW      E1000_ICR_TXDW   /* Transmit desc written
>> back */
>>
>>   /* Extended Interrupt Cause Set */
>>   /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git
>> a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
>> index 30ce5fbb5b77..d146ab629ef0 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
>> @@ -529,6 +529,7 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32
>> flags)
>>        struct igb_adapter *adapter = netdev_priv(dev);
>>        struct e1000_hw *hw = &adapter->hw;
>>        struct igb_ring *ring;
>> +     struct igb_q_vector *q_vector;
>>        u32 eics = 0;
>>
>>        if (test_bit(__IGB_DOWN, &adapter->state)) @@ -537,13 +538,91 @@
>> int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>>        if (!igb_xdp_is_enabled(adapter))
>>                return -EINVAL;
>>
>> -     if (qid >= adapter->num_tx_queues)
>> +     if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
>> +             /* If both TX and RX need to be woken up */
>> +             /* check if queue pairs are active. */
>> +             if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
>> +                     /* Extract ring params from Rx. */
>> +                     if (qid >= adapter->num_rx_queues)
>> +                             return -EINVAL;
>> +                     ring = adapter->rx_ring[qid];
>> +             } else {
>> +                     /* Two irqs for Rx AND Tx need to be triggered */
>> +                     u32 eics_tx = 0;
>> +                     u32 eics_rx = 0;
>> +                     struct napi_struct *rx_napi;
>> +                     struct napi_struct *tx_napi;
>> +                     bool trigger_irq_tx = false;
>> +                     bool trigger_irq_rx = false;
>> +
>> +                     if (qid >= adapter->num_rx_queues)
>> +                             return -EINVAL;
>> +
>> +                     if (qid >= adapter->num_tx_queues)
>> +                             return -EINVAL;
>> +
>> +                     /* IRQ trigger preparation for Rx */
>> +                     ring = adapter->rx_ring[qid];
>> +                     if (!ring->xsk_pool)
>> +                             return -ENXIO;
>> +                     q_vector = ring->q_vector;
>> +                     rx_napi  = &q_vector->napi;
>> +                     /* Extend the BIT mask for eics */
>> +                     eics_rx |= ring->q_vector->eims_value;
>> +
>> +                     /* IRQ trigger preparation for Tx */
>> +                     ring = adapter->tx_ring[qid];
>> +                     if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring-
>>> flags))
>> +                             return -ENETDOWN;
>> +
>> +                     if (!ring->xsk_pool)
>> +                             return -ENXIO;
>> +                     q_vector = ring->q_vector;
>> +                     tx_napi  = &q_vector->napi;
>> +                     /* Extend the BIT mask for eics */
>> +                     eics_tx |= ring->q_vector->eims_value;
>> +
>> +                     /* Check and update napi states for rx and tx */
>> +                     if (!napi_if_scheduled_mark_missed(rx_napi)) {
>> +                             trigger_irq_rx = true;
>> +                             eics |= eics_rx;
>> +                     }
>> +                     if (!napi_if_scheduled_mark_missed(tx_napi)) {
>> +                             trigger_irq_tx = true;
>> +                             eics |= eics_tx;
>> +                     }
>> +                     /* Now we trigger the required irqs for Rx and Tx */
>> +                     if ((trigger_irq_rx) || (trigger_irq_tx)) {
>> +                             if (adapter->flags & IGB_FLAG_HAS_MSIX) {
>> +                                     eics |= ring->q_vector->eims_value;
>> +                                     wr32(E1000_EICS, eics);
>> +                             } else {
>> +                                     if ((trigger_irq_rx) && (trigger_irq_tx))
>> +                                             wr32(E1000_ICS,
>> E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
>> +                                     else if (trigger_irq_rx)
>> +                                             wr32(E1000_ICS,
>> E1000_ICS_RXDMT0);
>> +                                     else
>> +                                             wr32(E1000_ICS,
>> E1000_ICS_TXDW);
>> +                             }
>> +                     }
>> +                     return 0;
>> +             }
>> +     } else if (flags & XDP_WAKEUP_TX) {
>> +             if (qid >= adapter->num_tx_queues)
>> +                     return -EINVAL;
>> +             /* Get the ring params from Tx */
>> +             ring = adapter->tx_ring[qid];
>> +             if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
>> +                     return -ENETDOWN;
>> +     } else if (flags & XDP_WAKEUP_RX) {
>> +             if (qid >= adapter->num_rx_queues)
>> +                     return -EINVAL;
>> +             /* Get the ring params from Rx */
>> +             ring = adapter->rx_ring[qid];
>> +     } else {
>> +             /* Invalid Flags */
>>                return -EINVAL;
>> -
>> -     ring = adapter->tx_ring[qid];
>> -
>> -     if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
>> -             return -ENETDOWN;
>> +     }
>>
>>        if (!READ_ONCE(ring->xsk_pool))
>>                return -EINVAL;
>> @@ -554,7 +633,12 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid,
>> u32 flags)
>>                        eics |= ring->q_vector->eims_value;
>>                        wr32(E1000_EICS, eics);
>>                } else {
>> -                     wr32(E1000_ICS, E1000_ICS_RXDMT0);
>> +                     if ((flags & XDP_WAKEUP_RX) && (flags &
>> XDP_WAKEUP_TX))
>> +                             wr32(E1000_ICS, E1000_ICS_RXDMT0 |
>> E1000_ICS_TXDW);
>> +                     else if (flags & XDP_WAKEUP_RX)
>> +                             wr32(E1000_ICS, E1000_ICS_RXDMT0);
>> +                     else
>> +                             wr32(E1000_ICS, E1000_ICS_TXDW);
>>                }
>>        }
>>
>> --
>> 2.34.1
> 
> Hi Intel Colleagues,
> 
> Would you be submitting this patch to netdev list after your internal validation just like the igc patch?

Hi Vivek,

Yes, this will follow the same path as the igc patch.

As these drivers, and this patch, are similar many of the recent 
comments on the igc patch apply here as well. Could you apply the 
applicable changes/updates from igc to here as well?

Thanks,
Tony

> Regards
> 
> Vivek

