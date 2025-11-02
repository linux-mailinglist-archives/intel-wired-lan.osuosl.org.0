Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9943C28C53
	for <lists+intel-wired-lan@lfdr.de>; Sun, 02 Nov 2025 09:44:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26BF28486F;
	Sun,  2 Nov 2025 08:44:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z9hduqV3zeNF; Sun,  2 Nov 2025 08:44:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D74384568
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762073064;
	bh=ALDTP6Pmu47ek5FbF9fU7offKzRD3CfsgpRCimvP1g4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6CtDkJPEPUxBbQaahMfJvu0GgkseZgvgOf9E0unF6q083v0cP+vW73Vz+/1LnTYCn
	 ZMabAP1I9CEsDqZDrt3ficFQK9cOJyuiGKwbF48mLN22SY3W9eDoWU2JNR4/Dz5SS8
	 4jaqDwC0hL3PFCPkgVR6dAJq6smoHPbf4y4kVow2OdADef6ztlyLEmGFaPyWKCD/UT
	 sfmigKf1x2GQleYupUc+L6Nr7i+vSbdYqNGa80XRDr8re6AbYzrzJ9FxboQF2XyPpe
	 Y2qWGIaVRHhO0o89ZE3kkw7paP8sD6PYSczu344Dijn8UpsyMgXaVpKiVKBPkwlyoi
	 2ezYQwWaE/X1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D74384568;
	Sun,  2 Nov 2025 08:44:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B908436
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Nov 2025 08:44:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 522D940EA3
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Nov 2025 08:44:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KIiCYoiPWTyj for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Nov 2025 08:44:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A139A40D45
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A139A40D45
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A139A40D45
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Nov 2025 08:44:22 +0000 (UTC)
X-CSE-ConnectionGUID: 0vfTTRmdT9GZan8ry7vAuQ==
X-CSE-MsgGUID: aeGJ3V7nS7K471vP1n7KHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11600"; a="68037407"
X-IronPort-AV: E=Sophos;i="6.19,273,1754982000"; d="scan'208";a="68037407"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2025 01:44:22 -0700
X-CSE-ConnectionGUID: xrtNymRaQL+FaetOjLL8HA==
X-CSE-MsgGUID: r4TnaUGpR36embEI+i45oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,273,1754982000"; d="scan'208";a="210154365"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2025 01:44:21 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 2 Nov 2025 01:44:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 2 Nov 2025 01:44:21 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.1) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 2 Nov 2025 01:44:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JNrSgtEeWIUXLEAF4wqPzJX3m0zsQ9Fnf+02dWDBLb3lCjLvkKYccP9+04oF4/m+tu0Ryj20rdDcyLx4DVfVg7zcWtkKmUnfltVMyM2eTPt5WNiuneEMpiKkrzWZ8/79kl/TkXRU9ovrnoGdJuMJKCCTEScYopBIeMVRP4LbH1lq95rbiom/GMMC2ISBGZ+sAF5hRJUcfu3BhX9Ph467+w2HC8BWD76kAyF1nBveyj1cTRW9/+4u+/3IUqiTIN6yJF0N1IBj5ZfdTEL2VqxyIZhy5A1A7xzawTmLabfCNcl25N5K2ErBDFVQo8os9L3mWpqPiw50GhbSqradIIBQCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ALDTP6Pmu47ek5FbF9fU7offKzRD3CfsgpRCimvP1g4=;
 b=unzqJsF4K2UtKsljxE0k9YKpSKAjqRaClNpG4CjXVsMXI2CtIZpoq57Sw5QUKsXJYGUHyjbmoKM0mOM5qgpil/ph2Znvoh/l0azUnQc/RpKMJ+F4XSePgWEKWwhNjGpEWlrqkdfrfChxR5KviHrz/VhgPrz3fQlNk6yTfGMHg6x4KyUlk5+Qm7Cb4dhdSXWMsXxQiLRI8uVAz3kHmWuHQ1UZJbaAh/vAMxlGBbud12raIRF2Xy9FJlVnlZXBtYmntuZ/brpEDT4mS5HTKQpYVzw1Lfkgq73ZWN9QUENGNLIxi2cC4M0kOqSrld9whZsSJMtct6YARvKuoyyb5jabNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9013.namprd11.prod.outlook.com (2603:10b6:208:57c::9)
 by SJ2PR11MB7454.namprd11.prod.outlook.com (2603:10b6:a03:4cc::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Sun, 2 Nov
 2025 08:44:19 +0000
Received: from IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563]) by IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563%5]) with mapi id 15.20.9275.013; Sun, 2 Nov 2025
 08:44:19 +0000
Message-ID: <295ce5e9-9de3-44eb-a057-27fa2425df09@intel.com>
Date: Sun, 2 Nov 2025 10:44:15 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Kohei Enju <enjuk@amazon.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, <kohei.enju@gmail.com>
References: <20251025150136.47618-1-enjuk@amazon.com>
 <20251025150136.47618-2-enjuk@amazon.com> <aQEHes7y5QQw_gOt@horms.kernel.org>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <aQEHes7y5QQw_gOt@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::15) To IA3PR11MB9013.namprd11.prod.outlook.com
 (2603:10b6:208:57c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9013:EE_|SJ2PR11MB7454:EE_
X-MS-Office365-Filtering-Correlation-Id: ce51c287-da88-4c71-f9ed-08de19ec0364
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aStQVGNVcEJMRkVDcjFSalVHUWNNdk1yRmN3WGVHcjlEU05ubU1LVlM1U2Jl?=
 =?utf-8?B?ak4vWE9UdWoxRWw4dDFVTG5IcHhSR2ZNRjJ1Z1NaNWFJUG9NNm5VQU50ci9M?=
 =?utf-8?B?MS9FNTI5Q1Q4K1BSY1dpTjNORXhiRjlldGZDaWRYNlplN0FSUllrMWNSbWJ0?=
 =?utf-8?B?emlSVHQ2TEw0SXh0NVVSeHFwMzNyNTN2VWE0bkFzSVd5RHplRnBHekxjTjl2?=
 =?utf-8?B?YXhsN1NjWkZXUjZjV09LN0llUHNxMEVqNm55YXcxS0t3eUJQa2JoM0UwWjFR?=
 =?utf-8?B?UGQ2bGZaL25JRmNSUkRIakc2cDA1WmUrVlBNNUlydllob2FDSlZ4YzdKRDVm?=
 =?utf-8?B?aHJ5QWNJZGxLZU56WGZLaWphRWwwUzNXbkJDMGRqbUZyUWFoaDBYcE1sNGlm?=
 =?utf-8?B?NlJWUUtpelR6YlYvWUcwdFJtSGIrMjZ6bjFvTGtkM2tUWkVYZDZkNUdsb1JO?=
 =?utf-8?B?NXliTUtJd1EwNVdZZGxLcUY1aEpjeWRTN3NMYURZUzBlckxudHlmTU13OU1J?=
 =?utf-8?B?bDZKNEpwaStVQndFSnNuM3VpMGNzNWN2UXFDK3A3ZDEvRG5VUGtrYU9hdk5J?=
 =?utf-8?B?ZUprMzJWVkNQOTZSZmJPTkt3TzJaMFBLN0VMYStxSERqbHFHcERCdUdBYUY3?=
 =?utf-8?B?WFl6VE5FemdPdVdYdjVNWDY3aDhCWVByQTVjZ25vbVRzUnRhekFBakhDb1Ny?=
 =?utf-8?B?V0l6NXQ4a0s4STZzcHhGSEtaamI1ZGxxYzA5TDc2U3ZsUlQ3SVRVRXpCS3Yw?=
 =?utf-8?B?R0krRTZMSy9tRy9nRXU3VURKeE9YdEVUZkxKbWVjT3BKUmE2aFJwSzdxVUZC?=
 =?utf-8?B?RUVLNjFVWnhwTFFuaDNPdG1RS1FyUlJlY08wR0xXMGQ2MHR6TGRCUkRwWXc5?=
 =?utf-8?B?ZjUxQjZSaERmbG93RmZLNk1BbEFpdWF0blNucEFhQjRXc0V3ajgzQW9YOVVS?=
 =?utf-8?B?TEltQ2o4L1ovV2pFekxudEJaKzdCbkVLUVQzRFlXclIwZnFUL1h0M3FFSzBK?=
 =?utf-8?B?TUFGWXQ0VHdKZ0gwOW13L29oek5uUHpKaEZhTFkzdGlPTjlaQmJlbk9YM1dJ?=
 =?utf-8?B?bUt4WWlTeWFuMVkzYjBkaTdKcHhwSCtjei9CRXdCR0oreWExY3ZwUGtlNWRy?=
 =?utf-8?B?L0dzQi9vaEZrbzBFbE1neXhKMitFT20xdERIUnF1aFdFR0RKK3ZSaUUwNFJq?=
 =?utf-8?B?N3B6ZzJFdmJpSy9HSEFuTjFsSVovdzAyUWxKNjE3ZGJCRDFjbHl3Z0ZKQTZZ?=
 =?utf-8?B?WjR3TFZsVFR2aHVybXo5R3FDS0NCM0J4T1lkZmRvbUV2eFBiZjhMKzVvTE50?=
 =?utf-8?B?WjhCZnNqendORTlvSWU5N2k1NDB4Rkx2YW1hL3dxN1orejhscDZkTTcxczRR?=
 =?utf-8?B?TnpXeFFqMkw3MnlIb3FMMjlCUG93S2sySmM3VnlXdStzWXpZZkxyZDZhWElz?=
 =?utf-8?B?WHQvY00rVVVKUG9teFFZNFN4WTdBSFBZV0tib2FRZmUrV1haeDdOQXZ4TVNR?=
 =?utf-8?B?Ty85bGtMT1RzSkVBTDB6NGtkZ3NRZDArRUhyRjllT3g5NjVJY3QvSDFnYmU4?=
 =?utf-8?B?ZkpYWkhDS0xmQm8xOVR5Qm1OWnlKWWt5Q2dkWnZWcWJKV0p3ZXcweXFjWldN?=
 =?utf-8?B?RmlQdUpJRzZsZFl3aXJWQWVHYlA0eDVuWTFnaVVVSG5BN2l4amJGRWJVSzA0?=
 =?utf-8?B?VmhYZERsdGMwNHVvK2JPQzcwUCtYUnVqYTVyTVJMcFBPTERqZmw1K2l2UjMw?=
 =?utf-8?B?aGhIRmZ6R1dDSDBkRHZYcjJHbmJsQjNObWg2ejN3MElWV1FwVElMcmovcUpN?=
 =?utf-8?B?MHhlRGRRckdzWEMwaksrUUJOaWdsYXBQUDJPZnZVUnNMSSt2T3ZkNzF4emVa?=
 =?utf-8?B?dkgybEt4R0pvUlJsSVYwUXAvL1FhSlFlN0k3akx3RmlRc0ZTMkhNUldqK1k2?=
 =?utf-8?Q?UVlRR25UrCo2FFFQIKecg/5ZtPrV+O/q?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmQ5QUx4VjUwTENDbCt6eEgvcjRQUDlxeUdCQ2hxczdNVnoveithRnl1Rlo1?=
 =?utf-8?B?dWlFLzFnZEVaMTRxZHdwYVhGNHFWNVkzZGkzVzBkVzR1QmZSUUdKcGE1eE90?=
 =?utf-8?B?aEJkTHpVTHYxcFBzRnEyZitxSkUzRXExa1BVUnJUTmltalBWemh1VTdydjhJ?=
 =?utf-8?B?QUdrVjVrelNnL1hkcHhmSkttejlHaWhtYUREcmFpOGt4VWs5d2ZnZ09kdWdn?=
 =?utf-8?B?SW02cDd5KzlkOEQ0Tm5DWnkrL3hNQ2tNekxBZzhVNmRDRkJ1NU94NGVsQmd6?=
 =?utf-8?B?NSszNFFreFd2UXZXTDJEMFhqblNQVWhCZXZWOVV3dk1ZTUNxNEF4TjVueGxX?=
 =?utf-8?B?czhRZUZyMlA0cUVKbExVRWZIZy8zT3lzRkJjUEFsVURBSGloRHRhY0VrK1dE?=
 =?utf-8?B?eENzOUduNjZOM2xQei9aNE9selZxajNyRmkwMWxUaXdnLzl5WEw5V0E5dWZR?=
 =?utf-8?B?TkQxZHpKbmljTm1hVnRoMko5VjVIL2Ntd3dURU1xeFphSFVLSEN2SjZRU3F6?=
 =?utf-8?B?RFV4YlpXR1ZQWWtDeTZpeEducGN6ZGlRcEYrU2piTUxiUVlEV3M4eGVIOFJO?=
 =?utf-8?B?UzFVMWtWTUxBaFluZjhZSnhOaG4rdTlGSDRqQWt2aGJqLzBwRm95MHBjR1Ns?=
 =?utf-8?B?cjN5aXNCeWg0SU51ejM5M1lQeG9xZWNBTDBIUW85MnFhOHZ3Z3pkc0gxU1hu?=
 =?utf-8?B?OXRwb0JocnRZV1FJRWhiNDZZVTNTNFliRVNCVDdqbzF5MXR2QUhpc05GTk14?=
 =?utf-8?B?WEpHN3lqQm1rdktPZlpXa3duUmd5bCtheTROQWJXVzVsUlBrRGt0TnArQnhH?=
 =?utf-8?B?b0FsU1dMK0JDV3l0TkFNaDFGeVdhUWFrRnlIMmxOV3FhNnpYbkR6YXBPRWI0?=
 =?utf-8?B?SDB1NkNObmhMRWlmMjBVTk9jQXp4R3c2UFp4aUZEUm9UNERqQ21yRmkrRUhJ?=
 =?utf-8?B?dEVPQ1EvV2pMRGU2eGVKbWFRY3o0UVlFVDJCdjdkL3R0UC9KcDhRemJNWjBu?=
 =?utf-8?B?dXd5eWNsSUw4dFVCelJBK2s0S09ZT1Mzc0g3aGZRa0dIbWZUdXBtY1J0N1hh?=
 =?utf-8?B?SFhVdG8xUmhWTlBITERibWRVd3RiV3lpUm5jYWFDcDJHTlBzNzdKaFBzY2w4?=
 =?utf-8?B?V3JuZXpYcmxoVUY3S01SNnN6dXdDSW9yTWdHWDdhUnF5SEpKZ05aNUF4T2dM?=
 =?utf-8?B?UDQxWDUrOU9ucmw5dER0ZXk1R2ZYMGpydExucG9PR0dISVliM29kM29IYjk4?=
 =?utf-8?B?TDJiT2Fjc1NTVlhmbW9MTXB6OGc5dDZlSkx2ZS9jbFpHbFhrbnZzRWc2eDRT?=
 =?utf-8?B?eUpDVS9iOElFZENsNVBCTDVqM3FONjRzU2NJUjZaakpMZWo4a0dJa1FQWjg2?=
 =?utf-8?B?NGFQMXpROEdsU3pkWUgyQXc3TStPL2JUWGlMYzFNVC9sUTBJd3BXSFRjU1Jm?=
 =?utf-8?B?K1Vqdkx0RysweHM0c0hqVVN1Nm1QVXNMaDRhSHZydk5hOXFIcmpBcEJVbTlq?=
 =?utf-8?B?M2pqU254L2tWdEJuTU5jTzRWT04xOXQwbXZ6L2g2amRFQUwvOWFaOWd3S1B3?=
 =?utf-8?B?VHM3a2J5TUFpNzdCY2FMZ1pLSUc2NWMvZTV6S1h6am45NGM3TWZnZy8rSU41?=
 =?utf-8?B?QnBta1locVhESFJVUzUwOXVUMmR5blVLeW95dGNTTWNqOXIzS2FzOWtucUZM?=
 =?utf-8?B?TTY4WlZlVmFHUlRmTS9rakJacCtBSUtZS0NuWEVxUFFiMEcwVTBVMXpoWkJa?=
 =?utf-8?B?VFd6bm50UEFVNkNDeDRvM2hvaGVJQ2xWRG1DL2FCNmdvVnlTci8wRWJNYm0w?=
 =?utf-8?B?Zmpqa2tIc295ZFIvUUxtcjUwSWl4VEJFV2xBZFBuUklZVHEwWmtWa3gxWVdp?=
 =?utf-8?B?QzRXUjNCMGRBaU1GUmhiajd6NDlDSXBvanhtdGl4YXV5ZzRrUjNFWW8yVjFm?=
 =?utf-8?B?Q1NQenc1QVE0TTNSQjhHN1JSMVpybXZUT1E3aHF6MG9lK1B0eWhaam00TElG?=
 =?utf-8?B?a3NXS2pkSHhlY0l3QlIxZktRMkRwTE1BRjdjWURoZzFuZjN4WG56bHdXazRW?=
 =?utf-8?B?RWFwcm1IOUg1SHNtZkhkZzYvaHVCcUEyQURPT0tUOXk1cE1HcU5kc2xWTWVu?=
 =?utf-8?B?Mk1neC9UOE1Dbkw1WWlubVlvWWpGRFBIUkdIWFppQUF5bXN3dUxPYk8ySy8r?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce51c287-da88-4c71-f9ed-08de19ec0364
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2025 08:44:19.5145 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0z1S4HO8hSWBUSxAr9Oll9Ta8yxnlD5DAuN02UbqackAVdDDtDqNmP663svhZ0JmASIrg7ghXoGkX5K1USJTqF7+oOV6BW0vV7k1PzghhR8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7454
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762073063; x=1793609063;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=su0qWARjg7k6KQq4x1VxfHNfN8RxNHz3U+JtSV/RDpU=;
 b=bQo5oOJa/XbaGtjm81UZnEMEqA4BdAM0KBMrJ9HREcQa9o38Ot97BE4+
 30lnL58N3rttbZ+jPVUP7vCDjnB5VhIwjsSMM1jV6JmyViy3565Mc+F5R
 xpAKnnR16jd/v0RDYsdHfML4bAWPWvJebphX+UwvPHXASnUjhitPKVlog
 4mhElKdzs9Hpw0I77FCjv0oBWqauV5PDXfAfG+IgDQhLUkVjtlrXJeq1K
 BB08D90MynTAI/amBM729S/qdfn3XO/lLv0c195Dg/pewpnSNCudU4GbT
 QW6Uuwl/ooJPksYrOA3L6fK7s3WtuwYVKAo2aM88k02XjIJFlab1Ml4FG
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bQo5oOJa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] igc: prepare for RSS
 key get/set support
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

On 10/28/2025 8:12 PM, Simon Horman wrote:
> On Sun, Oct 26, 2025 at 12:01:30AM +0900, Kohei Enju wrote:
>> Store the RSS key inside struct igc_adapter and introduce the
>> igc_write_rss_key() helper function. This allows the driver to program
>> the RSSRK registers using a persistent RSS key, instead of using a
>> stack-local buffer in igc_setup_mrqc().
>>
>> This is a preparation patch for adding RSS key get/set support in
>> subsequent changes, and no functional change is intended in this patch.
>>
>> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 

Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
