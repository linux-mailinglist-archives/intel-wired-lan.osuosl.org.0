Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7109BE73F7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Oct 2025 10:46:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D791B80CAF;
	Fri, 17 Oct 2025 08:45:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dM_boOn9xadk; Fri, 17 Oct 2025 08:45:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CDED80CB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760690758;
	bh=DX4tV17zUJuUCCgdZ28aJ9qyLpBGBzaDD2qsgm+cyyk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lEkjzvcUxIu1jWQTjfkGpul6Udabqs/zkHgZOEfSI+p9nvQ0vDxB/0PJHzArP5wDe
	 r+mzbWmY+CqIhTfZvLlPVxXwYS5GIOW4cTnHEIeUZnjPiZFKn+nW/Ezs0cIrugk5Jv
	 j/EEOoRyEGzKwkLKcyq1Nj4jhWrkYr6lt7Z98fgRyEAgBRr3vU3pK+N/VJGMPknEaW
	 6FrvnrLkPObeijEHdlkX84Kr5yl8AQYBEglerO9acchSUqIOBHVVEt9jVN+7AA96L3
	 M7w0QOkj+sNJgH6GzPaIG3Zzec8SBiCpsz00tM6aaOHKEdC4PLZdSI1arTc13KEh5H
	 q4GpA/8F2X80w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4CDED80CB8;
	Fri, 17 Oct 2025 08:45:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9EE9BEC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 08:45:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9036080CAF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 08:45:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4mQucywgSb9J for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Oct 2025 08:45:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B716680BD9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B716680BD9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B716680BD9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 08:45:55 +0000 (UTC)
X-CSE-ConnectionGUID: guDmt05aQ0m2H47GoI2oVQ==
X-CSE-MsgGUID: fLuwvy2bRbyR6QHFwR9KaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62821558"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62821558"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 01:45:55 -0700
X-CSE-ConnectionGUID: Q6ibvtYhRgmcaf9Lp2+VbA==
X-CSE-MsgGUID: 66yaF4xoSzShBwd4EkosQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="182676404"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 01:45:55 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 01:45:54 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 01:45:54 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.30) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 01:45:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d0NhtIL7m+ldSuOHnFME5RDa5ePXAUAxwoxfPYOaTZEboPJELn88RyAqZHVz1Wy5zV0KqdC+fyuFwaEpyQjTzNEkG/Uic6ehwM7opMAkGvAj/WrH75f89UqFvbOMynVOKOMjJCzd0NaKVLG2xMNWNak77vJhUSLWmbuhIJuyXOe++aAoTty4YjcBC0mqSBDgm8MZwwWEJzJVCeLnvOorRGUx2N6B4f3am0e6WFivNBEi++aZB0Vw6HY7eX8S4apfcgnXT18/+E7euuNP/Gb8EW6EXYAgejCn15ehkRtwxiik7nMwvSmmtFqOHPvM/jLoxlgkAiHu6Pyoh5D1j+qhkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DX4tV17zUJuUCCgdZ28aJ9qyLpBGBzaDD2qsgm+cyyk=;
 b=As0hZCLh0BOEhOtbceLxQiWWwog95UU/K1j2bS2oRaQfbY8af0EK72uwtO3XcW376CVbbj4+DQYQpvP+yGmAkM2xsKR0irmGsP2a/or6EQEuSZ6/3Rpy/EgCZQM+ESgtr3+RilzVzJd2/w/BuNP9frXWCxVSHt1ZSu2pfPerqz0p0uurCtCdd8ONJ2rtFj9z4KXIWOgjyxph2rq2i86LjNmLtPku+XKD8MqwLlM/SCQznPNWlxlLKxC+YPtKqTij5IcmRk7Bn7VeV1neJv6xn5iLBrZQ6hH6qjiF7orqBXCaovC8Nd0cu6HIlvZIQoSPShXPOIibn79LlyrZDTCghg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by MW4PR11MB6666.namprd11.prod.outlook.com (2603:10b6:303:1eb::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.12; Fri, 17 Oct
 2025 08:45:51 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%3]) with mapi id 15.20.9228.010; Fri, 17 Oct 2025
 08:45:51 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: unify PHY FW loading
 status handler for E800 devices
Thread-Index: AQHcPOdQqAWitSijN0Ofhm7kNRPMULTE8EyAgAEabVA=
Date: Fri, 17 Oct 2025 08:45:50 +0000
Message-ID: <IA1PR11MB6219C60279624AE6843C5F5B92F6A@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20251014084618.2746755-1-grzegorz.nitka@intel.com>
 <834ff332-b41e-4418-a496-7ea51a2bcecf@molgen.mpg.de>
In-Reply-To: <834ff332-b41e-4418-a496-7ea51a2bcecf@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|MW4PR11MB6666:EE_
x-ms-office365-filtering-correlation-id: 6f7ac80f-1af2-4e31-67d9-08de0d59936f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?WVN5NGFyT0s1VWo4RnRlU1l2QjRsckh6VUc2c3oxRW10UVRGSXE4ZDV0dHpC?=
 =?utf-8?B?R0szaHU0Smx6K1Fva3JGVGtDMmJRMHBIZzhaNzlBSmhRcGtUZ2VIbTZLbjkz?=
 =?utf-8?B?UEN6c3ozRkc5MEprR29YM1FoMmNwTGhpOE5UaFhZTmxpNTlaUkE2am5lMkx3?=
 =?utf-8?B?dlhKUkNNNDQzRlRxMVFZMTAzK1U1bGxhdUtTMU5CKzdjNUNhUUJvSG1NR3NO?=
 =?utf-8?B?NENZcnY5cmVzN3BZRnRZME9jU2ZBWEtGMFVNT3I4cGowSVZ1UUlHRGlLeC8y?=
 =?utf-8?B?d1pJK1VPcE1YclVHSXkydDF0Uk80bTVwMU5RaXpEM3E4WnVtSGFzWStGcEhM?=
 =?utf-8?B?ckw3TTJtTjU0d1BIL0p6MkdxOW41dlVsaUY5ZVFRdzVkMWpvMU1iRlhLa0pG?=
 =?utf-8?B?cmdTQlVSR3VpZmwrZDdqbnBEZVF1ODJuL0RPTXcvaTY2Qnl6NkFicGMyT0g1?=
 =?utf-8?B?NzFWOFFCSitMUUxOczFUcHFWc1hSYTF4bllJSzhWZkhkSDJHcHEvbklWMmUv?=
 =?utf-8?B?TzlITmJUdFFPZDBEeUw4YkJ1SkNEc2FkTVltNU9lUWJSdndsODFvbk1DRSs0?=
 =?utf-8?B?YllJMW0zakgzenNRamdRaC8vVElnbU95OTJWeWsrbGVzMU8xMjdpN0g3SzBt?=
 =?utf-8?B?SXNXbHJyR3VUK2JlbW5kcFgrcnFKNkhtYXVOMnZVbE1PK21IalU3Z2FhdTcv?=
 =?utf-8?B?UHhFbTRFVlp5NU1xMjM4VU9pdXdBamJLdk80cTRXK3U0YXY1OTNCRTkwbG5R?=
 =?utf-8?B?QjBiZWxKQ2tCckljaUdSaXZJTzNsYm53NEVuZXVjTkthb2I5WHpUaG1YSEwr?=
 =?utf-8?B?dzJGVEhvR2NhQWxnTCt4VzJZTm1KemFvaFgrMmMzTWlCSnVlUVE0cXFOTmpH?=
 =?utf-8?B?QVhRSUpOYzJCQytjSkxJQkxiVXpaUy9WUiswdnl4NDEyS1dIdjFxQjVWaXVs?=
 =?utf-8?B?TFRTaFVNYWJzeWhHcWtwOC9QSEJVV1lSS0xxaDNrcFJDWVU0dnZoeEkwejZ2?=
 =?utf-8?B?VWxIRjBMcUowUGlVSXVSeGgybkJ6VDdKREtkczNMUDRkejVIUkVhZERvYTlU?=
 =?utf-8?B?RzdzL2p2SHg2RkFreWFYMWY4cU5ON1lrUGh6SC90RzBBVUFuRGZJNTlhRWFW?=
 =?utf-8?B?VGRwWmpSSmFNdW9VK3UvbXFXckZYbG9sd0xlNnVOc2NnRm51NDh0VWRqV3Fp?=
 =?utf-8?B?eHZMUHNpWUo1eWRidW1rU2Y0YktaS1pIdFFTdlZ6M1gya1ZpOWsrWW9naFBO?=
 =?utf-8?B?aUFmQUZjM2gvRjBWRi9xWGlxenVxV21yUEJWRGdWSUhoSWMzMFp0R0ZxZ1h2?=
 =?utf-8?B?UVkxQk9MT0dabWlZWmNMYjlxZk9jM3pHcTU2dEliVlBFc0Q4OGMxZTRWNit4?=
 =?utf-8?B?Vk9UaklBVTRpMXFDNG9Tc0V2clpuLzRwa2UrU1djWFY1QzBNdEE5NlNteHh2?=
 =?utf-8?B?UmhTaC8vMzJYUmpzWlZtaWNobndTb3VpVmtIK05pVXo4RVdoaVpsdUQxR3BH?=
 =?utf-8?B?bjBqQ25MYzBQZWRna21kSFpKQThSWDJSTFpjUXJkYldxNllEL1ZvV2NtSjJ2?=
 =?utf-8?B?L1MwelJOelFGRXJKRDNmYnIyNnQ0YkJ4SCszZ1g2L1d1bmNqbE5tekZVUlU1?=
 =?utf-8?B?cGtiTEZ4dWRTUEdMQnV1bWxSck1wYk9RNndIUzYxWUhFbkszclZTdTBiRkJD?=
 =?utf-8?B?ZjhRQmdKSG5zN0FENC8zVXk5VGo3VTZERlBVcFlEcWhtRDdqZmcyWWRobTlI?=
 =?utf-8?B?Vk05eHpOdS9zQUoycUMyakhTSFJjY2ZjV2NYTTkrVjQrL3E4Rjc0MWhFTVdB?=
 =?utf-8?B?Z0VFYjRwc051cnlUeFE4UGJ1c2ZZVnN5aTkyYm5TQ1h1cFB2ck9oZkloNkh3?=
 =?utf-8?B?ZlVKSkFURjhvQzV4dWZQWHdIVWdJNUxhK2tBY3diK1ppbW5CcHUzZGMwMitr?=
 =?utf-8?B?YnZsa3FMOEpENlk0d0R6emFJdktzejgyUi8vZGlLc3FHcjQwcEdpTFlBb0g5?=
 =?utf-8?B?VjZCVEI2MUlXLzZibGpONjFERFkxK3BablRNUVBnNG9xT2o0VlRtMVRqb1Ex?=
 =?utf-8?Q?YWDvKJ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZmprTDZqU0VBTXd0VHF5Z0dNVlkza2VCT2R4ZWYrQ3ZuL2F3SThOUnFMVkNK?=
 =?utf-8?B?dHU2NXJqUDFFL2NvbjlkRlArNUZWSk1TdkRjdGs1ZmhMZ1VvM1NqQ3lmQWs1?=
 =?utf-8?B?UmZveDRVTTNDamt2YmNEclVFTE9rWkJYSHRPWW5ubmR3UWRiOEh6Z3I3TFVm?=
 =?utf-8?B?WEdkSFFTQmdveURTMHNEdkt5U3M1bzVNVGRicmlmMnJjaEpUWXhIS29RNHh6?=
 =?utf-8?B?WEpkL0VUVk5ndG5zYis1TEt6V0xhdnFQU2dHNEZXeS9oQ2l5azM1Njcxdld3?=
 =?utf-8?B?dEtMdDZGNCtTQTFtTko2TWlacXdjR3ZwaThmTm9heVJMN2d0SnNEUndkN2t6?=
 =?utf-8?B?SnpIaytNeHNhMFpwbHpoaUVEeHJnKzJ4WjRzL2UvWXRBY25WYTdVdll0dFlH?=
 =?utf-8?B?cWpxSkhVNEFMMWF2S05ucG9OSXJtT0xXMnRKUSs5SHY2ZFBoWkVtRmd3U2VF?=
 =?utf-8?B?SEpBOTZhOEdTY3duU2ltT2FNbnovVzJSUWlMZkhJN08rMUVvQThjUUhQaURL?=
 =?utf-8?B?c2tHYUR3cmlMcExpQTFVUUt3QThJY1F0VDlPUlp6dkJEU28xSk1vLzdPbStN?=
 =?utf-8?B?L0Zaa0tyQXlId2tFMzNpQWRxRW9OcGJQWWViYkxJcGhWUmR4L1NOdHZsK2pz?=
 =?utf-8?B?RWFvN21wS0hqelFSbmZXenBrNzlVRUNMVDgrL2hRZjdRbU1ZQVFkWXFLNDdv?=
 =?utf-8?B?aUpjNi9kcUJiZTF2N2ZSVUpJYUpBNWp6aE9xVDViNHA0MndmZUwrQUlENFBx?=
 =?utf-8?B?WW5ZbXBvVklTdXIreVRKRHBkaG11UTJrYnI1RWlqdE1XK29TeHEzTVBSM1RF?=
 =?utf-8?B?cDcxcHdjWldYZ3U1RWtiUjJWYVFteDJ4YVAyVXNZcW9QZVdvT0E2OTBBNnZk?=
 =?utf-8?B?V3E1ZUZCUE5QdFl3RXQyRFk0ZWY0dGxHemxpNkNibDV5dDlZanNEOVBPT29Y?=
 =?utf-8?B?anlmcTl2VkVKZHlocVVIR2hWdHdsbWpwejZXNUJ1aHNQb0VtQTgycWFmTEw5?=
 =?utf-8?B?ZjNHWnNTemh2SGQ4bVZhblpYblNqc2M3c0RwUThGVmZBTHVTQlBoeXFFZXZU?=
 =?utf-8?B?ZEhxZ1BtdCt2VTZJRVVjSk1QMUgrT2F5blNObmJGQWFESnNZdVZVQ3dTU3Mv?=
 =?utf-8?B?VThOc3BoWVZ2Z3RESTJHOWN3OXBrRktqZ2J5ejUzK3ZOaHdwdHJHdlkyYU9v?=
 =?utf-8?B?ZEJsTHkrWFlNQVUzajVMTUJuK3JPMkI0YytpenJDQktmN09JWHV0MUovcVc3?=
 =?utf-8?B?TW8xd2h6SlZ0K2FhV25tNW5yOUJicmprbUMwRTJRTk1rWll5cU0vWEx2Q25u?=
 =?utf-8?B?NWd0eEZkU1ZLVThuNWdWcS8zMGRqRmx1bEZsaDNJZVhJRzhCU1o2cnc2R2Fa?=
 =?utf-8?B?bEcxZmFENlZlcnl2ZXRVeTVlSXk2ZnYwcmpRcTlQano5SE41OXRRMHJzN1N4?=
 =?utf-8?B?SnNBNVdNVFl5ZmNia2NLbmlsWi9adCtCVEZVOE96dStnL3BmSUZRL0c1bTdw?=
 =?utf-8?B?cmpXenZMMm5INSt0N2diWFYwaCtkTWVmUWpXa3hTYkYyajhldnNnU25iS1VM?=
 =?utf-8?B?Ujg1Z0FrbUU1TUdxVjRtbGJXRnM5c1ZsaVNMd2dJenBlSlJqV1lodndMd3FU?=
 =?utf-8?B?RkZadTh5NTI3ZFB2MHJVNzE3SkprZzYzNFZPSlRQUkJ5WXBJOFF2TUdFR3FW?=
 =?utf-8?B?U2x1ZFd5MW9Jd0kzTnc1THNxcVdyU1pnd0k1NUpwbTJtUnRYV1FBSlJFK004?=
 =?utf-8?B?SU1EK2lvV0VQbmVlaGNYc3dLOGxmMmh1VEFJbjRORmhFTGtIN0pCdmhwVHNQ?=
 =?utf-8?B?UW9CUnh2c3NGWVFjeExGWm5NOWZ2UDMvVWZ4L2haTC9DTTdLOEVTUWVDWHJw?=
 =?utf-8?B?SUdLbEhqZGVHME42WW43TVJ5Rlh1RStFVmlXK2tUNUJzakpzalUyWUJXQjdL?=
 =?utf-8?B?WU1TUHhDeUpUUTBTd3o1NHBzRFFlc3JpMXJBQWZDUWNTOUVHbFVsK2M5Qndz?=
 =?utf-8?B?U1NUNnhqeDFoRXArYzdrUVFSa3RhTVBNUk5qUWNlZkN2MzRWYUxsOU1PSGRH?=
 =?utf-8?B?YVZuZGdlN0doZjNJZ1VUOWt4Nkt2UjhhTHdmbXFZWFErUzl2NHoxbUNyQ2hw?=
 =?utf-8?Q?wn1mCfDBFtzHYngOxcI43MMv0?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f7ac80f-1af2-4e31-67d9-08de0d59936f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2025 08:45:50.9839 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TxhqG9TBmzx7UUvHNjklsJquOqE/T9Chu7vF33tAnD4KUKMTO6OKiNHHONCfbhj7h3KNvJwMJuvDrlXQQnFDpaTM13o29qQAb9Bn2XMu5/U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6666
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760690756; x=1792226756;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DX4tV17zUJuUCCgdZ28aJ9qyLpBGBzaDD2qsgm+cyyk=;
 b=DdIbC3/yxGHPYoDRzCmfY0o6dwRxhBU8Xvhb0ob9LGPF0dWqtPrK60F5
 g9O+wU1MtwW3tYQKZz4FbmF+wIYQm3kwTAIC8iaKwuNNLLbW05B0W5Y3R
 8MVvjL2C2AROiKoH7hrxuQYoakWnRrcT6jYCt/YfSJTPias4ma25LtJ6v
 1YJ2DF3GZwSpFvO0Ohs7PbTRNRmcIyy9Oigorxal6f5NgXLIMnltmSweU
 Cwe4oY0fV1DE/CSi6Ne72pA6vsRYsoiIBUduhXXSSaWgx1mDpNZD7z7CW
 JRiAuqaeb3jLtrMe+rqTpsdrwKWwP4Tq0swvoz/A6aQZScnW1zPeen7xI
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DdIbC3/y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: unify PHY FW loading
 status handler for E800 devices
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnpl
bEBtb2xnZW4ubXBnLmRlPg0KPiBTZW50OiBUaHVyc2RheSwgT2N0b2JlciAxNiwgMjAyNSA1OjU0
IFBNDQo+IFRvOiBOaXRrYSwgR3J6ZWdvcnogPGdyemVnb3J6Lm5pdGthQGludGVsLmNvbT4NCj4g
Q2M6IExva3Rpb25vdiwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47
IGludGVsLXdpcmVkLQ0KPiBsYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVs
Lm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0XSBp
Y2U6IHVuaWZ5IFBIWSBGVyBsb2FkaW5nDQo+IHN0YXR1cyBoYW5kbGVyIGZvciBFODAwIGRldmlj
ZXMNCj4gDQo+IERlYXIgR3J6ZWdvcnosDQo+IA0KPiANCj4gVGhhbmsgeW91IGZvciB5b3VyIHBh
dGNoLg0KPiANCj4gQW0gMTQuMTAuMjUgdW0gMTA6NDYgc2NocmllYiBHcnplZ29yeiBOaXRrYToN
Cj4gPiBVbmlmeSBoYW5kbGluZyBvZiBQSFkgZmlybXdhcmUgbG9hZCBkZWxheXMgYWNyb3NzIGFs
bCBFODAwIGZhbWlseQ0KPiA+IGRldmljZXMuIFRoZXJlIGlzIGFuIGV4aXN0aW5nIG1lY2hhbmlz
bSB0byBwb2xsDQo+IEdMX01OR19GV1NNX0ZXX0xPQURJTkdfTQ0KPiA+IGJpdCBvZiBHTF9NTkdf
RldTTSByZWdpc3RlciBpbiBvcmRlciB0byB2ZXJpZnkgd2hldGhlciBQSFkgRlcgbG9hZGluZw0K
PiA+IGNvbXBsZXRlZCBvciBub3QuIFByZXZpb3VzbHksIHRoaXMgbG9naWMgd2FzIGxpbWl0ZWQg
dG8gRTgyNyB2YXJpYW50cw0KPiA+IG9ubHkuDQo+ID4NCj4gPiBBbHNvLCBpbmZvcm0gYSB1c2Vy
IG9mIHBvc3NpYmxlIGRlbGF5IGluIGluaXRpYWxpemF0aW9uIHByb2Nlc3MsIGJ5DQo+ID4gZHVt
cGluZyBpbmZvcm1hdGlvbmFsIG1lc3NhZ2UgaW4gZG1lc2cgbG9nLg0KPiANCj4gUGFzdGUgdGhl
IG1lc3NhZ2UgaGVyZT8NCj4gDQoNClRoYW5rcyBQYXVsIGZvciB5b3VyIGZlZWRiYWNrLiBZb3Vy
IGNvbW1lbnQgaGFzIGJlZW4gYWRkcmVzc2VkIGluIHYyLg0KS2luZCBSZWdhcmRzDQoNCkdyemVn
b3J6DQoNCi4uLg0KDQo+ID4NCj4gPiAgIAlody0+bGFuZV9udW0gPSBpY2VfZ2V0X3BoeV9sYW5l
X251bWJlcihodyk7DQo+IA0KPiBSZXZpZXdlZC1ieTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9s
Z2VuLm1wZy5kZT4NCj4gDQo+IA0KPiBLaW5kIHJlZ2FyZHMsDQo+IA0KPiBQYXVsDQo=
