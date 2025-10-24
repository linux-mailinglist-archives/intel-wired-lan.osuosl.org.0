Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F08C083B6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Oct 2025 00:16:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 537C940CA4;
	Fri, 24 Oct 2025 22:16:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uFMCd_Ev-fzv; Fri, 24 Oct 2025 22:16:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBDAE40C9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761344181;
	bh=mcqUqVY7xhCbbepUXYWbstN7dCZGbg3+gI+9RoZ0vXA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yYnnXqvN3kWrPIiOBgIPipu0ZzzVdyw+PhBBnERdYZEEvLGjzjgE+6nZtKAPmE/j9
	 RB0e80SMho8R8FFVkXAszBuoHhjs2EvojnxbxsIOizPA8If81WnQoJiq2olp3WzDJJ
	 HLJHLcV2e31ErjwX7tgq6wr4hIb9v2klCARierrPMGO3P1B8sqryqrG0B47TMbzmgx
	 rCU8NWWXLJdhrC3brfDOmS7bksKm7sJ6oEdOU2UsSD+YutxAi4As+K2SiB9UdiBd4m
	 rT4oUzJIN0fHfKYjTd/CpZP+1RM+yUkQ//DzA3daEA/4h9l1v3G9IEINYCNx/gK+SA
	 qvBBEgxPW5NSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBDAE40C9D;
	Fri, 24 Oct 2025 22:16:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C2D38129
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 22:16:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B435684803
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 22:16:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2q2mkSla9eXv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Oct 2025 22:16:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0189684801
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0189684801
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0189684801
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 22:16:18 +0000 (UTC)
X-CSE-ConnectionGUID: jkkH0SVHTTuiyqCarxsJzw==
X-CSE-MsgGUID: dDSKP4F5RTaLjfN92t4oIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74973832"
X-IronPort-AV: E=Sophos;i="6.19,253,1754982000"; d="scan'208";a="74973832"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 15:16:19 -0700
X-CSE-ConnectionGUID: 7MlmBwVmTeCYf1evZs1veA==
X-CSE-MsgGUID: bXAnjJ6wQzWP1efq2NRBoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,253,1754982000"; d="scan'208";a="185297741"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 15:16:18 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 15:16:17 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 15:16:17 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.36) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 15:16:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VglyBKBEqG0naTY5Rc1fg/eaVVRGVxnVoCqKRjAKgUXRLXIRIHwQ43tvB6IZ0Gwa+5Ohc+vL72b4gT6aMXrXhhEWK/uAq7Cx330DizJ0otHbf01pvR0ozNltRvUZKXKsrQuqoGsmN9XoCCFOwjmqcT9p1B8bZKTwG0EuCsZLzr1IwqCfDtMMSGGCaDcCm+Gk+VwZ9BfOg7CSLVtOkoKv6FaSRnaPxQBCJemarQlprEJUkfHglFHomuKxE5fWsO0aJCwt2Q09CvSZlAs+QxP1Ww1iXtU2QSFDy66UviTpf2OU/ox4x8dpah0sZuQ0Jgk1Pm6Ky6oCojtA+4b4FZE8sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mcqUqVY7xhCbbepUXYWbstN7dCZGbg3+gI+9RoZ0vXA=;
 b=kRDl1GXRv1/0m7M9kLKYq2jBeJiD381q4Nr58HxIjZkDkA70EY+KP2XL5YBpTMl3rErhiXSkVEbp9M2/g0L/MaB3x7ilr84OXrz4f98v9oTRiZ6BajDrwzHw55/eOoU+OxEGjF0c6Q7sdqY1i6Fm4BYF71ySlw6o2VnxzWH6VZfX4aISf9kNuKWgiDr9Z/M1sZEta/FtVyjYVWhjaYor4qy2J9JfnL0cGXEfyyZgnKQBPo+AVWV+4qKBL90fGS62X0PJIskVy0SVinLHga+90K8x7436SYCPklD4JzmtMYLo997CPTUAUKFaiYJFKMn4cmt6DjnqfbtzXs2F/u51KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA4PR11MB9348.namprd11.prod.outlook.com (2603:10b6:208:56b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Fri, 24 Oct
 2025 22:16:16 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 22:16:16 +0000
Message-ID: <aafb762e-b98a-4262-b0e3-ae43da901ef1@intel.com>
Date: Fri, 24 Oct 2025 15:16:12 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <jacob.e.keller@intel.com>,
 <kuba@kernel.org>
CC: Dan Nowlin <dan.nowlin@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Simon Horman <horms@kernel.org>
References: <20251022131225.2304087-1-aleksandr.loktionov@intel.com>
 <20251022131225.2304087-5-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20251022131225.2304087-5-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0186.namprd03.prod.outlook.com
 (2603:10b6:303:b8::11) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA4PR11MB9348:EE_
X-MS-Office365-Filtering-Correlation-Id: 91114709-a19f-4b5e-4be4-08de134af31e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NVB4K0pSSEpTNTFEVHBYQVFSUkZXWWtsWGxLNVFwVWN6Tlc1Mm5BdXVRNldM?=
 =?utf-8?B?TkxVNlFPYVFUUUsrWjQxYzNwUmYzVEJ0dUQrY01YNVFxRGhXcnVsbTJzK1dt?=
 =?utf-8?B?cmlZNWMvOElYeWd6c0FTT0ptczN1Y2tPd1ZHT3VFdy9xRHBOM0gwTlo5VjNR?=
 =?utf-8?B?Um5vZnRRM1VtRmxuODMramMyTkNXN1lFZ1hiRHFJcVhGMzJydHVzVFRhclJF?=
 =?utf-8?B?SXdOU1ZBZVUzOUNvMHpzRDgwQlcxaWZNa2V5M0xvUzV3UEZTVEE1R0pxLzdq?=
 =?utf-8?B?TDRidXNZaDc3c1JKQnJLN2NuOU5NNm9zZ2dlMy9wKy9ldGdaNEl5a3JrZWNt?=
 =?utf-8?B?RnRkekY5V085enkya2IzSnFTRFJ6MklHc3JBRzJxZDkxbkcyTWIzajVxRVBo?=
 =?utf-8?B?Z3ZUUjdhWjhOQ3d0YkVGQ2U0Rnl2YXJsb3ZPMUwrWkdFR2R5M2hmYzJ3b0Y4?=
 =?utf-8?B?R1JTZ3l4NXAvUUVxbXA1R2xwY3A0cCtVV3hkd1c2WGVtaEdTZG9CM2FseEgz?=
 =?utf-8?B?dGhPVFhkalVmc3R0KzNtbW9mcGlYTnExWjQySEJSd0dFYmgybWFEbW41eDFS?=
 =?utf-8?B?Q252QWM5UVZqcXIyeFFpeHFSTmxGZks5ZG5yY0VESzB4SFI5cFR1QmRFUXpa?=
 =?utf-8?B?c0RtcXR3SitjUXRYNDk4QXduZWVLS2gydjQ3M05CZFZGSDdYcXhLaUlSeDl5?=
 =?utf-8?B?VDh5RTFTdFUxZ1U0WUNIUTFIZnduNndYWkNwOWdzcUVWZzhnb3NJV0IxazFx?=
 =?utf-8?B?ekJoNThEaENhMnRhbHN5cXJlZFdneitVV0JRSHQwSmJFQVFkUGRDMmxubXBZ?=
 =?utf-8?B?Q0JlYUFkQlFxQ2FtUkx5M1VpbW95eU5CL2J5VDlsVEhCNjJOYkM5SjVFRGpW?=
 =?utf-8?B?WDJNKzZrZ29QNXJseE1QeGZCaFBkNUhwZXJoZm1TZm92RnpGdWwrb2tFZm1W?=
 =?utf-8?B?QXpVNmUwZEJwOFdWZXJMOENTbGlNdlNmeVEyeitWUjFTRFJBSVNjUTE4V0dX?=
 =?utf-8?B?Q2E4SHY4aUZaek1GWml1eTBBdndPZnJkMTU5T1NVRnRURjdhMVlvWitGWXcz?=
 =?utf-8?B?NzR0a0VPNW05OFl3NzBnbGFMTnd6UnZnWFdObFd5SlBqUkVQcnhYSmxBWm4z?=
 =?utf-8?B?dEJZZTBLOUhiZSszQ1VHbXRRS29lMmp6cGNSczE4NTVndU0rWDhoejFwNktX?=
 =?utf-8?B?eHFoaFZQalhPUk1rRWdycVBhL05aSG1RSGRLcGdwald3amNTditpTm4yR1Ar?=
 =?utf-8?B?QmhBeHlCUnZHNy9jeXVaRkgwOVRuOVRQQ1pLTVlmVDIrRlFTZWhSdk43eEpr?=
 =?utf-8?B?VkxxNzgwOXhRMEwwc2VVV3hCall1b3M1NEJySGNPT2dSMDdsek1aS200czRU?=
 =?utf-8?B?SlZyMkFqYndPaGRuYWs0YVJTRGZWSlRqcUFseS91QjhWS1VXTWYrWEMzNlZV?=
 =?utf-8?B?aFZ3dmR0K3ovRkNIR3RzMVp1Z2tPTGNHQmV4Rk0yVmZKQ2JaYzU1Y1NncVBE?=
 =?utf-8?B?TnRnRHNic2RBbGJLYUhvM3AvUTcyUWMxV2lBUHRWL2VEdm4vTHQ4Q0FsR0xn?=
 =?utf-8?B?RnB6Q0ZPemV5QmFYakZldW1tYkJ4TGpvSjhvWVpxZnZPcHJrWlJwRkVLK1Jn?=
 =?utf-8?B?bGU2eXdwSG1lNXZ1Z2puT1RxU0RIOVBzTEhpMlpRbzEvWTJqK2lrNXVBTGhT?=
 =?utf-8?B?aVZONC9sK0J6SWFzaGdVZHlMV1ZoZTc5YlNNMmM2QnNXWVQwWHIwMTlMM3Rq?=
 =?utf-8?B?eUU5ZDc2YmwwV2hteWQyWEtpczFtcFcwN25MU0Z4em9kVXhNaEJUZjFTUEdl?=
 =?utf-8?B?Ujc3eTlMeXRCUUdQeXFDRlFvWnVHRWFUemRSSnZuWkI1U1lTeXBuTTFwZFQ5?=
 =?utf-8?B?Ynh3Z1ljZm8yaE9iWmgwREluMGxQd0l2c0FJc3k5UHV3VzRKU04zMEZRQ0pM?=
 =?utf-8?Q?bVjwklln+/llyI0JFx6wbssBtkf/t9ow?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UldJSHB4eXBONmllcG5DVDJYOVhvdWUvd2hRRFJxS1dKUWNmaUl4YkRBckl6?=
 =?utf-8?B?N0htM1JYdGg0S095eU5TRzdPMmpNTncvbm00MlZ3OU0va3VyaU03UHhFOWtP?=
 =?utf-8?B?a3JvMzl3Z1JobnVpZWZyd0ZDU0FNamVETmFGa2ZUUHBkd25pVHVML0xPQkZ5?=
 =?utf-8?B?c0pqSEt4SitiVkV0NUQ2VVM3ejRkVFdnVmEvR2xmbHZWOFQ3Y2tGQUVJa3lC?=
 =?utf-8?B?QTRnb2tNb0Jmc0Z2ODRvcTljVUFGbGNkLzllZm1EN0Z5Zm56RUZKM3dXVHB3?=
 =?utf-8?B?MGtab1RldEl6Q2pCTkY5RlJWNExpaEhtM0NBKzJJSllhWmUrdTM2Vlg0OGZS?=
 =?utf-8?B?MVBYQmJ2dXFqUmpKWEo2VGpLS0F3aUxYSG9MaFZJdE9RL2F2NXByVkJVM3J5?=
 =?utf-8?B?YVF6S2gvUWtlZmdBTlZGbmZ2d3hqYTgvZDdsYXFzVXZWY0k4Y3FWRXNDWmxo?=
 =?utf-8?B?OENuUmQ5Tng2MVJKSDV5ZWRwU3Z2c3BJVDM5NDNEUGRlNDVMb1hEdGVpM04z?=
 =?utf-8?B?MVI0MWRPWVJwN1RUQXM5c0hQa0tqTnJ2L3RMSDRWSlNmbzlzMFpjQUhVbjN6?=
 =?utf-8?B?T1VtRnFRNWlHRk5JVG4yUzZZdHZXZDVRczliNXZxa0hoeFVPTWJ4TkVCckd4?=
 =?utf-8?B?aC9PTG4wYXA3R0pVaTd4TVRhZEYzaTdUUWZqaGpkdFd4VEFRd1VldzlnaGdm?=
 =?utf-8?B?ZGppalgwSTlQYTMvRlRUeFI3V3hwUElHQzAxYTZBajRieXpoYUhpNXZGUzI3?=
 =?utf-8?B?cVAyOW9nbHlvcnFXRFJBeVBWdXNpc0R2UkdLSGcvMlBqRkI3cm1TMnQ0K1NF?=
 =?utf-8?B?RTdtWDdIYmJXbjJmOW43SVpDMGZxOU1iMFRxbmY1R0ZVTms3ZG1CdTIvd0pV?=
 =?utf-8?B?QWVaMEtERkdkRklMU3YxNlAydUtmTU5wLzVpcitiNWFNOW53cGpGV0pmeXBB?=
 =?utf-8?B?RFF3VUMzbEp1dFptMFJuZmM3VnBndjV5WmdvN0p5QVNxaW1ralZXdFJDdjNJ?=
 =?utf-8?B?cndjWmJ1eDh2Nm84dG1VVjNpS1d1NWRGRGJxaTEyT1RwYmRzOW02ZS9GSEIy?=
 =?utf-8?B?TmtjNGQ5ZnNZeTBVdzVJeHl4VU9NTDltbEpNeW9BdFB6dzFWM1FXcm5TaFpJ?=
 =?utf-8?B?dHpmOFR2czVEa1ZHcTdSRUw5MHRUb1FXZ21MckxrREJTRi9BWktXMkwxL3dC?=
 =?utf-8?B?aWZSZEdyUWVlQzdTK0x0VjNhNlI5SVJmaytwRHZwYmVQeElGNWxGK0JQWmNB?=
 =?utf-8?B?QkRxejc5bkNZWHZkeDBJbGQzT3MwSjRwb21wZ1RYTjJPSU14c3R6WVU0aXJZ?=
 =?utf-8?B?WkpXbWdhYWkzRFBwOUV0YmVZcXB1SUpsUmJ6aUlSWWEyUUgxUjYvWThzK1Nv?=
 =?utf-8?B?dk9LR2FRclBKa1VZKzlLRjJMSFpqVGJCMXFSNXhQY1BGbnJDTTRJMnA1UDJt?=
 =?utf-8?B?c3NkdnJuRXdXZFhBTWZGeHhVVDk4LzdyMDdvKy9SSUhjY0g0ZU5mZzd0RHdU?=
 =?utf-8?B?MnUzN2NWemJNVW1ya1pJdUJ0UTNmUklxVXdMSnhzS1lXOWFpbzdrb2dZS0lO?=
 =?utf-8?B?dmh3a1g1MEVGSWVTM0VXZi9JYmYxRGFwdUwxWko3eWdLa2JqNWNXZ2hGbTRV?=
 =?utf-8?B?bFliWHlHd1ZaZGhMWUJKL1ZCdHlwVlBPL05KU1MrNEl1ejQyRXdQTXlCZ0xx?=
 =?utf-8?B?VXFtNko1UDA5dDhrOHFlajFOT0QwdllEY2QrNmJCOUZYN0RHUkcwZjZWMkU2?=
 =?utf-8?B?UE94SnFOakJXV3NEcHY0b2tzdGpkVzVtam5QVDVpMzVIVnhDSFJzaHNnVitN?=
 =?utf-8?B?L1orSjU0bEVkZmRJRjNpblZ2U0hSUS9GQi9PVWI3LzBoMHEyZEhPK3ZMTmho?=
 =?utf-8?B?UTlnVnhHMU5OV3ZPcHRDZVYxYUowQnVUVGZlSkVIQmlnQjEwVWliZmV0bjV4?=
 =?utf-8?B?YUdvSGtGRzBoMzEycjdXTm5IUFRtQ0I2RTN0cFE4T3lzdURCdlREbVAvRllY?=
 =?utf-8?B?UDVuTnRwTTlPWkxCMXY2Y08yOXF0YlI2UHcwZHJxbVd1OWRtejY3VWlkdjRs?=
 =?utf-8?B?WTJ4WXl3MTJCZ1lDZ0VNajQ5bndUd2l4MWZZOHl6a1dmODMrNXVjVkZNU2FT?=
 =?utf-8?B?L0JUQm92Y0oySFF4NXB3RU1lYmU0cUtMekpHbmtnK2JMOHhCMzRYOHlHZnhD?=
 =?utf-8?B?eUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 91114709-a19f-4b5e-4be4-08de134af31e
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 22:16:16.2385 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xPakeJCH+BGFd/DsjK0Ys4cRXe1JB65Ghd4uz/Rc9PitRvTVFb18gonbb6KBXyOfBPKbwZbTePijBjuGImePcYMgd0HtpHVIlbe4eIswv0Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9348
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761344180; x=1792880180;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hgvrNljN2Lk66ahRyWnkJhPFmhVSvsQ9QhDemIOkTXw=;
 b=IPoiJvTc2qKhIfOzJXvlJyMK38epiGYinXTKJwd5YdIi4qBKgt4aZkSd
 yfrk53P97VCJl2y/z0KeSdUb2D1JDJ1GZ6UNDZjq9OuUfbn9rp0mF1c/Q
 erdNDyaWtD3za4vql6Cb7C1Vz50VPJsTTjo3D5+Bi3CstrHSFG2iq8GCN
 6+oY54GvtiMXaf/uElY9oRAoWM+lhVMNt6MoUUISR6d6NEKuBS3ZMjwj9
 RE2F11i9/E4S8IMDhDlHXUojpWqPYVyvV8xT+AqX5V1l8iZP/h8Qlql+/
 qU+Txeo9wj1CwoyV/OsMHqSKQCPSMzPRPO8mjlT1USq/fTMlHNnqnfr9O
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IPoiJvTc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 4/6] ice: improve TCAM
 priority handling for RSS profiles
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



On 10/22/2025 6:12 AM, Aleksandr Loktionov wrote:

> +/**
> + * ice_ptg_attr_in_use - determine if PTG and attribute pair is in use
> + * @ptg_attr: pointer to the PTG and attribute pair to check
> + * @ptgs_used: bitmap that denotes which PTGs are in use
> + * @attr_used: array of PTG and attributes pairs already used
> + * @attr_cnt: count of entries in the attr_used array
> + */

Missing the Return:

Warning: drivers/net/ethernet/intel/ice/ice_flex_pipe.c:3700 No 
description found for return value of 'ice_ptg_attr_in_use'

> +static bool
> +ice_ptg_attr_in_use(struct ice_tcam_inf *ptg_attr, unsigned long *ptgs_used,
> +		    struct ice_tcam_inf *attr_used[], u16 attr_cnt)
