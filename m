Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MA7iNGswhWlV9wMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 01:06:03 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 270EBF87DF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 01:06:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1BBB83C3B;
	Fri,  6 Feb 2026 00:06:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qSMKl7BlcIUd; Fri,  6 Feb 2026 00:06:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1069D83C4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770336361;
	bh=WbI9LwPqSuP5aENAvAmSsarFFnFnWFS1QFQFh5yd2wg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hckWJuVpP+m2vGopjcJkrP3f8QOSKRtLadyopeabiCL27P80ucii4K+PZC+13KY+u
	 G1FbUbpeUoR7Zy0uqQrOWeTxHWUlcFwwmLREhFF/o8FD3xXpE4Sr2xirsDcw+e1xiE
	 Y6OG2/9zhaqnLR1rwN88Iel9SokUki42FKEu3Xg5XEhi0YRWPBQvwoW3uxF3GajOOh
	 kDr5Rq1oeDCkLOdT97scnfY7eQcuMYvvbXgPq5MKY+p+h3qtOWvmvo8fNw+CunyOoJ
	 k2rbQ3OI7gk08PTSpOIvO0B5rjSS9tchZa7iltk3HuoRxWlQKWuLgm1eKaYoZTggHY
	 Tg6XITWXwRkgA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1069D83C4B;
	Fri,  6 Feb 2026 00:06:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C6574173
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 00:05:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B03D860BAC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 00:05:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aYZXZ-mYHkfB for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Feb 2026 00:05:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B366060BA9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B366060BA9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B366060BA9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 00:05:57 +0000 (UTC)
X-CSE-ConnectionGUID: HQO1/0F0So+M/7jv3tlM9Q==
X-CSE-MsgGUID: scnkInB7RTmk1RaCxLcrpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="71611715"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="71611715"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 16:05:56 -0800
X-CSE-ConnectionGUID: BHO5ebA3R8u2UKIAULylaQ==
X-CSE-MsgGUID: QpRxXXETQYi60MC88IFk1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="214874887"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 16:05:56 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 16:05:55 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 16:05:55 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.35) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 16:05:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XHgMu7YD6Swvb8g4seLtNvp0PZLYbpGpECnb5VQxZyR059OmBuwu2DSahoate9TJjlh05btfDs0u1MoVEKz9F+zuuCmTpSsqvMNF3ZmMlu9CbLFzxoOeuA7cpne3ybkpJywekNkFOf9uwCygPZtUIzUbuThUEuALTk3l40+LV3bGmOgWlpUcoafnWCj5RzNPg5aPXw139jst1h3w67NR9vD1tfiJiCB8/6Jqb/RzKo1NJ+jRDjLHIdNivJBFYxN51i+tE3t7keoFBb9u7CVh17N2Gj9vvWYHsHkTFN3GAtBP9h7ORyJi7BqPhDgQmNaMYQiOtqUO3LoBvEv9BBIhjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WbI9LwPqSuP5aENAvAmSsarFFnFnWFS1QFQFh5yd2wg=;
 b=VINZMCWY2qE+OgCzOiap2JKJ4rEplHlV2ZpmoU8cho89cTWsXxMMLiNkh7pZtqSFMCG0j72VXWBZ4FSqS1WUZbPdGBG1dqjgmbza2B6wZkf54HYQ03Sw8uxq1AfTzz9/kbu5xmstARHWcYSKssPJWxxRmx29AdEp/1DtJjahAVBkcuctaFW4fsD2Vlyl8jKlIMKZAvINEx1h6/IjMjU21fVk2rDN/5b7SbB3sFdsyyg5kWcAi0fdsfUQs0fYz+RerYSeadig7yodxw81Ib6qSJYtlPnYbcvRiALLhe3S8eOjtJBruhpsD5AFywu1sxTzRjS0SiSk/tiDUz79N0KQhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 BL1PR11MB6002.namprd11.prod.outlook.com (2603:10b6:208:386::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.14; Fri, 6 Feb
 2026 00:05:53 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 00:05:53 +0000
Message-ID: <a22f6805-a92b-43b6-8029-6b467f7f4b36@intel.com>
Date: Thu, 5 Feb 2026 16:05:50 -0800
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Kurt Kanzenbach
 <kurt@linutronix.de>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: Paul Menzel <pmenzel@molgen.mpg.de>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>, "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Richard Cochran
 <richardcochran@gmail.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Eric
 Dumazet" <edumazet@google.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "Sebastian Andrzej Siewior" <bigeasy@linutronix.de>
References: <20260205-igb_irq_ts-v3-1-2efc7bc4b885@linutronix.de>
 <IA3PR11MB898652699383BA265C5747A5E599A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <87ikcbwgf3.fsf@jax.kurt.home>
 <IA3PR11MB898682AE39689F854F3BA178E599A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <IA3PR11MB898682AE39689F854F3BA178E599A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0234.namprd04.prod.outlook.com
 (2603:10b6:303:87::29) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|BL1PR11MB6002:EE_
X-MS-Office365-Filtering-Correlation-Id: 221acd15-04b9-4dc6-8cad-08de65137df6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OTFlQ0puYmVCWE8xbzR1cFIyQmlGc29sQ2RISXVhZG9VSzhxK3dtN1Mzckpn?=
 =?utf-8?B?ODdsTUxXL3FOQ0RmOHpXeUkwRFNUNytibWVCNWNzeTVaRmRwb0gzR0U5L0Zs?=
 =?utf-8?B?b0pUbXhjN1FyOWI3Q2RDRW5iT3dGRHoyTnYvSS9XQnRGNEM1d3ppUE1wYXRL?=
 =?utf-8?B?bkFCQlYyTzBoM1ppWDkyUlc3NnRWRW5Lc3k3YzZ0TEhMdWZ4SEM3Z1A4b0sy?=
 =?utf-8?B?TGxETitIR3ZQa0FvSWlCd3F4OWEvMkpEYkJIU0N0REJPWVNHS2xaT1VNa1ZR?=
 =?utf-8?B?YnBveHFNMVZvdDJBUm9lbnVNQXg3eGRPeE5neXdnZjFFZEg4RDFjdXcyNkpI?=
 =?utf-8?B?UHlyaldJL09lNHQ5OUhEcS8vN3J2YmgwUzBGazFuQjRvVVM1U2JTNGNSVlpR?=
 =?utf-8?B?WnE2S2I1TVpWKzFuYXFjRGhibG90N2ZobFpYY1cxUk1vcjNublg5RTh2TW1F?=
 =?utf-8?B?YldzYVY3ekR4TnlGSUw5Sm95NkNzdklreW9HeWlreDFGSzVMOTNCYXVOaU8z?=
 =?utf-8?B?UkN5Z0wyYStqRHZ4ckxadGl4WUF3T0MrYXVkL3ZNT3d4UFQxNUFEN2pBci9h?=
 =?utf-8?B?UjM2YWw1Vy9VNWtzK045ckNQRHJ1b0ovYlNLaUNzay9UVVpyekNzVmNueGFq?=
 =?utf-8?B?WE52aEN1U1huZHRvTlhYOXI2MnZxeE84YnlmcDZzdjY5LzJISVhJODdIWWJG?=
 =?utf-8?B?bEhqemVEcGszQVBPWTV3UDlPMGU4TnYyblFRQUNiYnIzWk9EVHZDbUNCWmlx?=
 =?utf-8?B?dDVvSG5DamR3UkF5SmZ3THUydkJmVWZhbE1PNHRTaVc2L2RMQXR6V2huR3BW?=
 =?utf-8?B?bUJGdDRQMG9reFB5N1ZwY1dmcE10SFF2ek0vWXJrSmsrZ2F0OWJTaGVPRk5q?=
 =?utf-8?B?Rjc1NzhQaTIwUThoN3ZVT1cxMEZkTEVrdEZFdDRnTmw1emdzUlQxOXA2VVph?=
 =?utf-8?B?dkJXdXUrSFRoMHhBRUw1VWhHbUs3ZWNSTm9NL0NMMXljekdiSHJtOFdzWmpG?=
 =?utf-8?B?anVTdXUvZks1NHhXUUFmaFMzL2N2Rk5ySnNQUTFFN1I3cVREZEV6bzhiSzNJ?=
 =?utf-8?B?eWdSbkdQUmxLYkVPbCtrQm5PaEEzNnd0VGV5N3ZiUDk4WG5ZQ3BOdWpGYTZU?=
 =?utf-8?B?NU1yWVJWR0NtK010VUg2L0pjd0JtaFo3QU9MRU5uK1Raem5KblZWWFFkd3Zk?=
 =?utf-8?B?cDRRemlZNWxZS1ZqZnlZTkMyMlhqUC92alVnNTNxU001RjBlNUN3YUoycW1X?=
 =?utf-8?B?dlNNRVRGK1pvSG1KZ3MwRlpJVjVvdUFueVdGYkFDRGJ6OGRxYWhCWWQ3VCtq?=
 =?utf-8?B?U0xUdDR5cHpKZE5yZDNaekRKMFZxWkp3MVltUWkzK3pjVGRrYmxkQWxuZkpG?=
 =?utf-8?B?akhUZWtEWnRoaUt5L1lwUTYrNkNGRTVyNzIvVENTd25IMFlhRW4ydG4yRGpk?=
 =?utf-8?B?Qi9LVlVoRnlGMzZ4STBoMUdCWjFTZ2g5TmVuU2xwZ1E1VjVzZFNFbXlZaHI2?=
 =?utf-8?B?WFo3cGR5bWVDN0Z6N3hvUUhZRlUvNG9RR1g0MUdRWTF0dFpYMGhjZmV6TjNv?=
 =?utf-8?B?NEtmTWN6NUNjV0xXNXpFUXJVWXRhSVFVa3A5eit1WDJMempMTFNnTkRUSmJx?=
 =?utf-8?B?YmRpdFFFUFhMSzV4VUlpRmxuT2Z2bWxkRWNCbUkrWmNRWXdNV2wrVkFRRXhm?=
 =?utf-8?B?ZkRwNSs4dmR5emMzbm9VZ1hPekZCTUhZQ2czMWJ0dE0vamg3VTdQU0pqaFdx?=
 =?utf-8?B?QXhUWHpDUjhJWjVqc053cWNIcFFLbkdJb1FtK1A4UkNtM2lubWdGZWYxazQ5?=
 =?utf-8?B?VXBndGFYa2M0Z09JaDc1eDcyU0c5QUs5a3hZKzNVcDIvdHQwd1RZSllmZkNL?=
 =?utf-8?B?VWZCZkZZYkk4L2RSd0JmTnh4SGgwU3NkZGxZUm1DdzQwZVdKRkdwYVdCKzdl?=
 =?utf-8?B?YVBXQ3QwV05NTkpRNlNaNlNxbUFYeGlKcjh5ejFHNEU4OWE1SmpYdVBET1V4?=
 =?utf-8?B?UVEwbXB2MWxQUDVGaEpYM3NlTG1QSHpiUEFFaE5TUUJnajlJUTVlSlE1R3Bt?=
 =?utf-8?B?Y2FzR24xOHdIYzRxeitXVDY5SHNmMysrbFNrTDRPeWRScjFWcmhaZTFvb245?=
 =?utf-8?Q?9xus=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NC9qRldaNGd3UHVDVlBDbE94ZVVBVnAyUXpzYzB4SWR5KzRpazhjbmpFRzdh?=
 =?utf-8?B?bkRucHMwUHNuUjFzUUZSVmU4Sll1ZStOYU9BNjRsWUZidjhJN3pDM0IyVE9I?=
 =?utf-8?B?aEtzTDUwQWt6OUpqV012dnlvbzlxSGNnUU9LTm9pVGxtZlBXalZnVHpEVWpa?=
 =?utf-8?B?Zlh0MFVpcjFNWjlJQ3Jqb2JWelFQWTdzZnJ4RG1QelVZeS8rYXNjZklmMDlo?=
 =?utf-8?B?VmZrcG1DMThkaEREK0x4TWtqeENPcVJMUHk2RHRhN2hIRTduVXVIVnZkWWM0?=
 =?utf-8?B?RjBOZWxzVzJQVnpzMzZsMHBlQUNBNjdTVW5YSGRWd3pTSm5DbldYYW1tWEhR?=
 =?utf-8?B?b2pkSS9OMDdDTnN3bUVKSEF6cVkrcEtjVXZCdWc0MHZPTWVvUHJERGpmYkNt?=
 =?utf-8?B?eVNJVkdFMFBWOWJJYXJCWmZucnc2bElpMUxTN3RWL2o4am9uaVV2ZW54SXBS?=
 =?utf-8?B?cVgxeWVRUWVMcHhaNWFGTUNXKzJScG1LMk4velVvejJGcEdMejV1cnhGVk1v?=
 =?utf-8?B?ZUdueHZMaHNFSVN3UVhoWVRIdHNrbEhyTEgxaysrb0VHdmpNWW5FSnN4TzNn?=
 =?utf-8?B?UkN0NlRoSnZ3eVk4bzhFN3ZHaTlPZkRFUGJVRHpMVVh1Y1dSRy84RmxwZVps?=
 =?utf-8?B?eGZZRFlUOXlwQTM3TWw0RHQwSVg0RHlqeE0rcEs0clJnQng3V2pXOExVOGpD?=
 =?utf-8?B?dGN3Ly9ncThVWXQ0c2FBY3JLaE1yZWNvTXJsTnFtaW9ac1dndWF5UE1KSy9q?=
 =?utf-8?B?WXY3WUZqZHFyWGE2V0o2UCtOakoxS0VTSVZhaDBmSnVEVkg4Y1JITHd2QTRQ?=
 =?utf-8?B?RnVxYUVBZmhSVm1COFo4NGlQd0h5MjZDZlJabmt6VnFxNmdROEp3d0Z2dFlZ?=
 =?utf-8?B?SkZBclMrQklZaU1Td0tqdHlnL0UyR3c2ZXVSNFBNTERnWXZCY0pvK1U0Y3Ax?=
 =?utf-8?B?dmtENDI5ZllDZHFGRzFrYTdqR3hJK0p0VW1JVmZUMGRiZEJINXRVbnQvWkRZ?=
 =?utf-8?B?dm1IT2dhdzA5K2c3VTFFSERqaDRNSHhWWHRBb1llZjl1NmJRZ1ZMS1oxM29o?=
 =?utf-8?B?NE1NTXQxaFpDRnZobUdtU0ozL0Z5azhtRE9iR0Vib1NoQ2gwN04xM0EyV2xY?=
 =?utf-8?B?QkVpQmM1bk5iaVp3WUNyT0dzekdLa0MzSTFiYXB2amZnU2Zvbk9UVXZEcEJl?=
 =?utf-8?B?NjBTMkZ0aDl0dW1md2FUZXltUVNnUmtEVVlyS05kL3dISjRBQlVGRFlhbDdx?=
 =?utf-8?B?TjdXMHJkZDlVREtabENza01LM1pqN0NIQ1FXeEJJRyt4NENOMjdOWi9XcTAr?=
 =?utf-8?B?c2VKT3pVY0pjQ2ROZ1QrVVphK3Nodk12dVg5L1FqVzdweW9sWXc1Sys2Vld5?=
 =?utf-8?B?WUc5NmhOK3grdmFINkJndDBFNGZ2MzZ6d0IyK3ViRWZzWjV4UUJLbnBRclRp?=
 =?utf-8?B?VWJnaE9lTUNzV0VtUk5UM1FyanhoRWZXR3FLV2lvTllMa3FUZkViMmhCK292?=
 =?utf-8?B?RjYzM0NIM0kwYzJOVFdMbmEyU25jQ0t5TWxpbG5WL3pFd3hqR2RKSk5ha1Qv?=
 =?utf-8?B?UmVqNDZIOGdlS2cxcEpOYkRnc0NiTWZyVXJHcDR4VDNwZE9VL1JOMlByanU4?=
 =?utf-8?B?cHNsL3FPREJvZXpRQVVOeGIzRzdpZGFYZUZDN21ZaHNwaUdiWDNvWTJscXpL?=
 =?utf-8?B?YytPcjVTUTJ4UWxOVGY2WHpYa2RUOUszYUgvdHlTZ1dLbFRlaUs5RUl4czBj?=
 =?utf-8?B?YlFrRkZYMUdwcDJsSG5lMVFwRmpFekNFZGNYSERYMWt1S1ptUHQ4QVBlSSs5?=
 =?utf-8?B?UFhCUFMxdzJZVWVabmVtc2V6NkZCTkZTcklpazNnMkhFZzUrSjBGM09iRENU?=
 =?utf-8?B?ZysyWTdKKzVkdzhWaVZlSndNK29JL2U3dFpoWmxpdWNSSUZXRHcxVnJEK1Yv?=
 =?utf-8?B?UFlRdFVyaTloU3JHdHUxZzdHTGU3RWw1TTBtdno1OWlXOGhqcThqczF0UHFW?=
 =?utf-8?B?WG00d1NIZUs1N2RsMEpXd2M2akJBMWFQQ3dpQW1jZzZnV1BUYzVoWDY4cEFI?=
 =?utf-8?B?YWQ4cTBxeml5QlVOVFhWQ3RlcjJnREM0YnV5TlY5eDh3N2xzRFIrSVFVV0ty?=
 =?utf-8?B?SDNMU0ZIV24vMGxqUEowOWdoVFBZWXowNlFlU1FlT1BUUGVjdksxR3FSL2Er?=
 =?utf-8?B?NzVyeTZvVVR6R3dMSDRTMXNYMGtLZDRRL0pLM3lrTy85Q0VSS0NPUHJtM1lq?=
 =?utf-8?B?ZlN1MXdVZll4RWR2NGtSRTQ3YVVzTDRnRUtydVlpTXBZOG1MeFdSSGhhZFBG?=
 =?utf-8?B?SnhpbWJ0TmV3cE55UENycHpPM0E5cmRDOHRaUWZaTG1Pd3ZweE9nUT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 221acd15-04b9-4dc6-8cad-08de65137df6
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 00:05:52.8806 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8QXchDxXWFOr8sKr7UBoPUMdqS0WPjnQccMB9AKi59RQ1ZB5ozovn8vFi/IlifmCF3+KhAmEWJ79xYPf0pmk6PO3QQAQ66D919mpUzyS0yI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6002
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770336357; x=1801872357;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7UZ3UMtrsgdT32SGkQ3GPdFXevkXulVCFEwfQkgC5hU=;
 b=QACTdeF3dKsF74o/1cFmu4eZA3vzxNaiLhx0oZUr1LiaL7Bkg8V+kiz3
 ZXLUBaCpHQX+PxlFiF6EI/GAIWVjnl/Hu/EwXPP3VmMqTm/E79KMf5dzp
 6+7SXuO445I2Kps+uTMhEdB4RDzDdCqROOV//Y1vK0gVA316ntcacxADS
 Zwzn5zI8pQ/QX1h2Q73gpkDh96CjamIjDqDTkFmBkYYtLk/hP5RR4JgWO
 OVxUNoBXdBpOq872SnuSrg5/8aAuI6jbOAztL37xYzl/Ggo289069FaRe
 QME7DFPCMZ0YE1pOtfnAj1ue7tF96BkMCRwYuFpK+omf3m4f8aIxKb8pB
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QACTdeF3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igb: Retrieve Tx
 timestamp directly from interrupt for i210
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:kurt@linutronix.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vadim.fedorenko@linux.dev,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:bigeasy@linutronix.de,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[molgen.mpg.de,linux.dev,intel.com,vger.kernel.org,gmail.com,lunn.ch,google.com,lists.osuosl.org,kernel.org,redhat.com,davemloft.net,linutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mpg.de:email,lunn.ch:email,davemloft.net:email,osuosl.org:email,osuosl.org:dkim,intel.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 270EBF87DF
X-Rspamd-Action: no action



On 2/5/2026 4:20 AM, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Kurt Kanzenbach
>> Sent: Thursday, February 5, 2026 12:58 PM
>> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Nguyen,
>> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>
>> Cc: Paul Menzel <pmenzel@molgen.mpg.de>; Vadim Fedorenko
>> <vadim.fedorenko@linux.dev>; Gomes, Vinicius
>> <vinicius.gomes@intel.com>; netdev@vger.kernel.org; Richard Cochran
>> <richardcochran@gmail.com>; linux-kernel@vger.kernel.org; Andrew Lunn
>> <andrew+netdev@lunn.ch>; Eric Dumazet <edumazet@google.com>; intel-
>> wired-lan@lists.osuosl.org; Keller, Jacob E
>> <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
>> Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>;
>> Sebastian Andrzej Siewior <bigeasy@linutronix.de>
>> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igb: Retrieve Tx
>> timestamp directly from interrupt for i210
>>
>> On Thu Feb 05 2026, Loktionov, Aleksandr wrote:
>>>> +/**
>>>> + * igb_ptp_tx_tstamp_event
>>>> + * @adapter: pointer to igb adapter
>>>> + *
>>>> + * This function checks the TSYNCTXCTL valid bit and stores the Tx
>>>> +hardware
>>>> + * timestamp at the current skb.
>>>> + **/
>>>> +void igb_ptp_tx_tstamp_event(struct igb_adapter *adapter) {
>>>> +	struct e1000_hw *hw = &adapter->hw;
>>>> +	u32 tsynctxctl;
>>>> +
>>>> +	if (!adapter->ptp_tx_skb)
>>>> +		return;
>>>> +
>>>> +	tsynctxctl = rd32(E1000_TSYNCTXCTL);
>>>> +	if (WARN_ON_ONCE(!(tsynctxctl & E1000_TSYNCTXCTL_VALID)))
>>>> +		return;
>>>> +
>>>> +	igb_ptp_tx_hwtstamp(adapter); <-Calls existing function
>> designed for work queue!
>>>
>>> skb_tstamp_tx() can sleep
>>> Smells like sleep-in-atomic isn't it?
>>
>> AFAICS skb_tstamp_tx() is safe to call here.
>>
>>> spin_lock_irqsave(&wq_head->lock, flags);  <- RT mutex can sleep
>>
>> In case you're worried about PREEMPT_RT: On -RT the IRQ runs a
>> dedicated thread. BTW I've tested this with and without -RT and with
>> CONFIG_DEBUG_ATOMIC_SLEEP.
>>
>> Thanks,
>> Kurt
> 
> Thank you, Kurt for sharing your experience. I don't have so many experience with RT Linux.
> For me calling a function, not designed to be called from IRQ context is a SUS.
> So, I rose the question about sleeping.
> 

My understanding is that RT is only safe to convert such spinlock_t to 
mutex *because* it also converts IRQs to threads.
