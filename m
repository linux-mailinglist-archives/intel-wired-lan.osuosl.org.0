Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNeSLO7TgWmnKQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 11:54:38 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 17673D7FB4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 11:54:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF83880A7B;
	Tue,  3 Feb 2026 10:54:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YFnIyFP3_XgE; Tue,  3 Feb 2026 10:54:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DFE938099D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770116076;
	bh=s+YbXnKeMivsoTcrKY3GFydk35l/1F+vsJpQFXtm99k=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v492shFdLbBeOcF5sW8hsw35kqQIah//j5tNriZ4KabHIO5zQwelqDSksMf1eyA7y
	 5GaBuG4kEQRl8ZPGvEi8CbmZjWktM+oNNyaBpp2NYsjwNbLxUdK7eazGhrCbb6xdZ3
	 kjUNNGaJO1noefT1ay1prthfg1jETQq7fJyVXB9SXzfu+i447RMR1bkpCFO+4+Y7+6
	 r01RWXFOiYGAmbbZYKRgLiG6KYcY2UpwXLnIrAPTBMaoTg0J4qBH1XGPYTe1BJQwBq
	 ZS+mg2ud9gwnXmeE/QNqypnUJUuH28KUrCmHINQNB5xpbtowcU7CeKXvthCu6A/HXw
	 tG6//OnRvcrUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DFE938099D;
	Tue,  3 Feb 2026 10:54:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 837A4F4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 10:54:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A9594048C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 10:54:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GZMnDXipw9Hw for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 10:54:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 83D604042D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83D604042D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 83D604042D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 10:54:32 +0000 (UTC)
X-CSE-ConnectionGUID: O2i7ruxLQ6itv87GdYWA7A==
X-CSE-MsgGUID: 3L0UM62hTEKmdoOZz77OUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71006428"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="71006428"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 02:54:32 -0800
X-CSE-ConnectionGUID: D4ByTzSmS32GwDEdggOVzQ==
X-CSE-MsgGUID: MOhdQa19TPurHVdVh8R9jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="209983355"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 02:54:31 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 02:54:30 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 02:54:30 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.36)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 02:54:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J8BUwSEaZ++lw2gTMTBSV35ysWielIk5HK+Q6R6jEF45borRAF5i7ZQRDc57plmaIoJQVD1iF1cgkVsSLA9NQ0bIyLuuODdrfkrSkZ40QnBOVwZHJXMum6jXs8QG7RQ3A1y0ks/yOcsgqVW36K60hb3CHSJbp2HpsiQdYHlwW1TEwDjpl7bbujHmksIUE0p0wmrbDwXwCK8I0jVMfakP7pVwRNQLoIDHGrn4BjFJGrsmsOMxdHwuk4EbKzNuFbCiaNHbuA2H9vSGviCH4CEqbRELseQ/p/onpvjPDpMlXx8dwsPkrB0itYx+TCcOHBcY/BxL08kWLJzV6V3xYzX84Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s+YbXnKeMivsoTcrKY3GFydk35l/1F+vsJpQFXtm99k=;
 b=k2MEkQ7j8g78vtDZdko88g4fS2lU0dejmXomnYAKLX3YimIm62n2JRcsJ5vbIOpDiStCjkJEasWFXc4i4s5SHMapjfV0smodPrRzbeIvyXw5k/hPeYGh+YzHtpjo9kNgt8sdF7fwHMHwFEzrnQeCjKgdCTUBv1Dk4MfhLdBivDk6IW2mPfS0uHr8GUJSYVFGa9TmDZSMKQjaYV79SGlpJ0+9NJJYNspjDl4UcCo0hQTEgyBMOL6LO/Nly6vKyEfqA//rJdWvC0QsAUm8sYi+KjJByEIhpy9gsvej7fy5J350y4p/j3o6kbGrXrmDUVykI+uOs6PxJroAURSM87H6Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by SJ0PR11MB5167.namprd11.prod.outlook.com (2603:10b6:a03:2d9::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Tue, 3 Feb
 2026 10:54:28 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::2769:b184:69c6:6eb0]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::2769:b184:69c6:6eb0%5]) with mapi id 15.20.9564.016; Tue, 3 Feb 2026
 10:54:28 +0000
Message-ID: <8524c812-b659-4670-b370-35682aba2d2f@intel.com>
Date: Tue, 3 Feb 2026 11:54:23 +0100
User-Agent: Mozilla Thunderbird
To: Ingyu Jang <ingyujang25@korea.ac.kr>
CC: <anthony.l.nguyen@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <andrew+netdev@lunn.ch>
References: <20260131162128.3334803-1-ingyujang25@korea.ac.kr>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260131162128.3334803-1-ingyujang25@korea.ac.kr>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU6P191CA0050.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:53e::13) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|SJ0PR11MB5167:EE_
X-MS-Office365-Filtering-Correlation-Id: ff0f1e6f-cf79-4c84-01ee-08de63129a28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q1lyaUY3b3pDcGdIZS9EMW5aRVRFQy9RT1VlTjExSmJyOGFNbjFZTElvbzM5?=
 =?utf-8?B?K2IzVEg3OVlvZnpIQjc5eDF3UThRUStmTEI2VlVjUGRSRkFvcVRiNDhiVW9s?=
 =?utf-8?B?ckNEZ0tCNlVVVXVuSDZJSlZqV0RRTlpERUx0TE0vZXFxb1hZaEw3R041TUdO?=
 =?utf-8?B?VEhXck1UdkxUamVrOFBDdVB6WUNKS3FhbEdLNkJOSElzdGl3bzQ2aWJyZzZy?=
 =?utf-8?B?V0tibllFSGM0dDFNNER5WXY3ckFyTnZydU1WenFwbGF2R21zRlNxY0Z0T0dr?=
 =?utf-8?B?cXpHV1lKbDU0eE00QjBMdXBRSGU3Zko1TGlVVmw4S0szOUpwdHc5NHhBcFMz?=
 =?utf-8?B?TC8wblNCN1Y5NkRFS1NQMmN0OEpwY1QyMklHUmpkdittRnBobUExRFRRTWgy?=
 =?utf-8?B?N2p6TWVrRmk4T21tWFlvVGdMclVNbnV1MktTZGdvVm50RmEvdHlrU1QzV0h3?=
 =?utf-8?B?Uzgxd3BISGp0eldtRDkxM0VjZDhpd0x3Nk9pY0ZFVmxUWnlHRjJ2YlRBQ0lU?=
 =?utf-8?B?WTBQMkp3WXRwb3pLOXhuZVF3OHhKazhzemNTTG9rc0VmanJkdit5Y0krWlNu?=
 =?utf-8?B?bjdhdkNVSVVBRXBnemVXaStpaVp4M09ES1lTTmhMTkxrSTc3enFxWDA5S1dW?=
 =?utf-8?B?QXhVUWNEV0pKc3pwV1lYcFRWejA0SU1mTno4eGVXdUxQeGU0U1VlZVo2dklh?=
 =?utf-8?B?TWFQaXpBMHAwdklPZzU3R2FRck8zVXJKeWtZVUdoNERsSU1FVzBONWdXN1BQ?=
 =?utf-8?B?WU9CbDJOSU0vdW9MRVUyYkVDNDFIQ2dlT2dWeGlZU3VjRklxTUtlaHpIMktl?=
 =?utf-8?B?Uk9taEZTdkNDaG5uWGJJZ2xiMFBpOHphaWRHYk82dFNtQjlnUmJ3RUpiU2VW?=
 =?utf-8?B?UHVmbTEwWG5kOURPRFQ0Qk9mQnhYd0gvcUVRcXVVUG1md0NYbXRWNEN4OWI5?=
 =?utf-8?B?TmZXVVBzeW9iUTM0bXE1R01CUHFSUldJR25BdzhEUFFZSTRxK2pNN0VMOUZI?=
 =?utf-8?B?My9LOXlIR245MnNVK0pKVnFlMGJscWxCT0dnbFZ5U1p1Mm83VjZ2NS9yZ2pV?=
 =?utf-8?B?dzBiM010bmxlSEJZb2pGOGtiL3ptT0l5Njdoa1pUYXlmNEFsbWtRVWg3THNm?=
 =?utf-8?B?OFo0RWFuVVVLQktjb0Jsbit5ZjhlM3o2dlVXY01xVnBhcWJKUlhRUGhjZE5j?=
 =?utf-8?B?Qk1mWnJ6WmdJcWRIQ3d6cyt4Q0JZMUFUMW9MUllQenpKYmpNWi80MG54Mmt1?=
 =?utf-8?B?ZGRwcGM5cjE0WTJHSEtaVlI0VFg1VXB2dEd1UnRKUkFUaEs4T2c2SXQxQXRn?=
 =?utf-8?B?K3UrTzExZGdVOXpUNjZkVHhlY0lVdmFiU01KS08raWRZNElWdGlmblJrVHBZ?=
 =?utf-8?B?Y05CZ0dHOFpBdjl6YXZOb1ZVd1BkUFdjdERLd0p0NkN0dVgwZzl4RndVaEx2?=
 =?utf-8?B?dTdFSThUZmZQS0s5REdaWDcrNng2MUdFdnA0RndRRFFyVTJHZGdIWHlMdXhK?=
 =?utf-8?B?d3NpRFVCWGYzaGxiN1BOYy9zMUcza1hNaDJxTFlZSFhVTTJUS0xsZ3RSamY5?=
 =?utf-8?B?ZXk2Vk9EZnJQZWMyOXRHMitjRVRJQnYvdjJLa1NSZzAyenFydkhpUHVCSCt6?=
 =?utf-8?B?SGY3Q2ljQjF1Z0cvcysxOTdqTmNveWxTbjN2eHFOa3piZ3FjZlRzWU9LcGtI?=
 =?utf-8?B?TEpWNExpQVNYYjQ2WS95L1pla0Z0amx3YUhyalZ1L2JESWh1K3NTQjlxMWhv?=
 =?utf-8?B?MWduU2Z0N3NZOEZOQWEzUUsybHFRSmt2WndJdVFSNE91SE95QXpIVjd0OEhq?=
 =?utf-8?B?bWNoZHcxVkVBa093WTNGcWdyQm1xc1FsTkZlZlFJemQ4Qk9WNXdxUHgzVnhX?=
 =?utf-8?B?SldDNXFIYzkxSHRNWUZQSlg2VVRNRm50Q2JVZmZ0ZFNxV3NlL1MxSW53TXMx?=
 =?utf-8?B?aGd3UzZYekZpMzF6ZFBKVUlacjN3L1hRZHdxTm83bS9DNU93aCtJNGJaYWZK?=
 =?utf-8?B?Q2xVU01VWTNka0xIVzdEOTlkdWdOWnFiS0xHL2hzMDFsMjBpUnVaVWx5T3Ew?=
 =?utf-8?B?L1R4eDU4eGVBRU9Ia3h1Q2xGb1lYdGtDa0hIRTJvbm12L3UwT09FRC84clpN?=
 =?utf-8?Q?Mh/A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1ZCZURnK1lodUpLRGlySEVMc2FWM3crVEhZVlZ2SWFPRmRrWEExRm04YW1E?=
 =?utf-8?B?clVaS3dlQU9yMzdaOXpiQmZuem9xbHBHZ3g4eFR3UHFpdkRHYU5uYXI2MzZn?=
 =?utf-8?B?WGFvQ2J6MUluS3B4aldqVStsM2RLL3dNbDdJR2hSRzI0ZTRSWHJnaENJL0hH?=
 =?utf-8?B?U01yR1lqMjlqbmhpYXpKZFJGSklUbVZybGlUbkZYYy9WZzh0bUtOY2M1Vm0y?=
 =?utf-8?B?dUdibGVrOUowVWJGcWcwVXVqWFQ4Uks0V1hkSEdKRCtFYzUwR24wMHlEL1Fq?=
 =?utf-8?B?MnhadnJpbFhkdGlxbWtPZkpFeHRhemxxdDBLRE15TXhkWFl2aExjS0crQ2ZS?=
 =?utf-8?B?QmY3NjBSS2NpSngycUErWnZVcHhlQkVGbHlkaXlWOFdpMmZPa0gxcXk4TWNp?=
 =?utf-8?B?clFsZWVKTWowZ01VK29Sd1ptY2xWdUFnVlVqbGhHUGxlZWtpVlppWjV4ZTJI?=
 =?utf-8?B?NkF3YWdmbVlqWTRwM2phT1V6WEFVQVpLNUV6TmI1QTZtam5qd2dyOUxXcnpB?=
 =?utf-8?B?WTNDMXhOZjliRHlpNENJakJOSTBIZW5vZk1qcVJWMmM1NnNCM3loMlJHdmRM?=
 =?utf-8?B?U3R3eFRTV0JqLzBWSHJPYVpxS05lNjdRQUFDeDhKQ0MzeURPUkNOeTRDT2ox?=
 =?utf-8?B?cnRYcVpTUFByK1R1bXVFbE0xYXF1NXRlUWx1NHBhZ1VhdXZ5TVFKNEIrMk1B?=
 =?utf-8?B?RXNuKzdWNmk1Rm9FVzAzNDh4WE91SzFFNERCbTBFaVpyRDFON0lJK3Z3RHF1?=
 =?utf-8?B?NlA5VWJpM1BlYmQycWJEN3Q4NHpMTHFpcmtkYlUxelM5UWZkOThOaXFDdXd1?=
 =?utf-8?B?L2h6YWxOZXhKRE1wSGNZaGR3T3ZYd0JjeHhta1pkTFdyd1UxQmZLWWwyb3Rj?=
 =?utf-8?B?V1U5UkRwa3prVHFjSFQ3OFZKaHIyMHA4S2QxeXVtTHdpQzZOQlkwQ3dNbDg3?=
 =?utf-8?B?M3ZHT0U1V2plek9WT1dMaXZKazV3VHlVSW50a2pCVGJJU2JkK0FZWTEwdks5?=
 =?utf-8?B?UzNFQ3JJa0hrRThOamdDZXFUTjloeDJYZE4vRzAyTDdvbWw0anlXY2ppNTJn?=
 =?utf-8?B?SUE5QVg1TUpBV2xhekFDVysyRDJ4TXRSTFhCNFBNOTNTcEpPbnQ2empYekxa?=
 =?utf-8?B?K2pSbllLVHRjNE1EdDFKWUZaSlFWajJpMWtGQjVFcmVBc3h5QkpFeGtyak9K?=
 =?utf-8?B?b2hsS2F1WWZUcmFIT2tRVUlwSkJtT1pZSmdrV0tJMkdhbkNVeHJyTHhhN1pS?=
 =?utf-8?B?dW1pUDRTdHorM1crNFhQR3pOYTBlNGsrS3ZQLzZQSDhXYWVpcW5BNTVNaXlt?=
 =?utf-8?B?ZDhYRVdvU2NUQ3A4cFd4V1FnS0ZiZ2R2WDFQalB6QU1jaENuZmtHeTRsUWFQ?=
 =?utf-8?B?bHMyMDQ1N1M5Q0l3L3crY1RvdHI2L1Z1MW5yNDR1TDlDbHBSeGhmaitlSElZ?=
 =?utf-8?B?NWkxR2NzZ0FKRHRNMTV3bnJMdldiOVJTTW9SeXlWeXB0RENjSTMzMTNTVlZE?=
 =?utf-8?B?eTNvT0F0c1o2TVB1RDRxa3IvZHF2NzRLK0JEVkNpUkhWT3dBd2NydE52UkRL?=
 =?utf-8?B?djAxYzc1ZzJzeGpCM2syUFhjNzlYTFc5Y2tJUnJkNWdmaUo1NS9rYUEyRmln?=
 =?utf-8?B?QlFPMEdsZVdCbUUreFlQZnN0ZndtY2VPQURXOGp6V1ZtYVM1NlEyOUhwZkpo?=
 =?utf-8?B?TFZ2Q0FZVDVVakdOUGt3M2ErRjhKbDNtWVN2a2RscDJZdEtkaVRDZGhKOWdT?=
 =?utf-8?B?MmFEODdSQWF1V1RHNy9ZQ3VzUEdFTUo0SXFqTWFBUklzaGlER1JTRE82UEdT?=
 =?utf-8?B?cTdna2hteEh5akFhcGRjWlVVQWdMQWpuNTlrU3EreHVrQWRSNTlZMHJuZ1FH?=
 =?utf-8?B?bGxnQ09YMWk3d0xrR1VLZDFseGFvQmozY0I5amNsb0NKQlJPd1JrSTVwanpT?=
 =?utf-8?B?VkpJWVZFemkzM200MmYyd1U5Z29GTmtJdE5Sa3lEajVENStsVjJKQ0k2NHRU?=
 =?utf-8?B?ckQrZFUvNFJiKzM2eHpHZEQwRHptL284VGI2SVNRWkVNQ1lyYkFLUThUd0xR?=
 =?utf-8?B?cThUTUpmNUZUSmJyYmZxc0ZBbnNEM0RYTFkrRUhIbkJrbDZRSG5xKzh4Rmwx?=
 =?utf-8?B?Y0M5YTIxdndmcUJRdVFKazNsdW04MHBQbDJJSHpJTi9kcHF0eHcvYmtlVlZN?=
 =?utf-8?B?NERoYWIwWER2d1FZSnBTVHM4VHpFeEtvM09BbUN2cDZ0dk53Mng5OTFwUTBM?=
 =?utf-8?B?ZzMyaTBjdHJNTTZzMGtKVE1WVnlWUHR0TzJOUW84blFhOXBZRlllNzhzeTZS?=
 =?utf-8?B?dkF3RFVFTkNVOEdQNUNackNNN1dnaEQvWWdPV1NNRE02YnduZW5KSDBCTDNX?=
 =?utf-8?Q?Dl0M+02tnv9tSyE8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ff0f1e6f-cf79-4c84-01ee-08de63129a28
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 10:54:28.3353 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qlxG3kiBOust1KhimauxsTcTrZdDFvuniAcDk5SrWa8CTAqE3BUOKabPdkI0qBq72FHDklu6I3ZUMOEDwNrL23HGqT07RnPuS6As5wcB4B4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5167
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770116073; x=1801652073;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QqgSIDnmoVhsoyA/zdi6OM6YvszBOal2Yk0GclxuYms=;
 b=eVUK7SlhasHS3agfPHPHtISp+w7G8JCfL2FwABZn/8heBXL0Iw0ZUjzO
 +5yKYYjJ9ECQWxst6rL7DSdzu7QIDHneANGZHCgUlajpstkAAygkTIuSd
 Q5cA1hckEJ5/WU6gUhDroO9+C0wqhIvHMjcTQdZ4IjasQKyvR/p4HkWTu
 OoiYnPmpf2tHUlUFL165kJTnSFMVg25bpaO1To/UOscOfCRVONNANDVpm
 wh22NBf3zQpTSSyohQdSnMnGUyWvl8XMlxRnkFEznnf1gOEqwUUqZtMwp
 v4xcQ4knXTqJOoh0V9iYlL5zQnQQm4V146DfOrHpyMTT0wXBngBFDiF43
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eVUK7Slh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [Question] Dead code in
 ixgbe_init_eeprom_params_generic()?
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
X-Spamd-Result: default: False [2.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ingyujang25@korea.ac.kr,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:andrew@lunn.ch,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.985];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 17673D7FB4
X-Rspamd-Action: no action

On 1/31/26 17:21, Ingyu Jang wrote:
> Hi,
> 
> I noticed that in drivers/net/ethernet/intel/ixgbe/ixgbe_common.c,
> the function ixgbe_init_eeprom_params_generic() always returns 0.
> 
> The function (at line 860) performs EEPROM initialization and
> always ends with:
>    return 0;
> 
> However, in drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c, there
> are multiple places where the return value is checked through the
> function pointer hw->eeprom.ops.init_params(hw):
> 
> 1. ixgbe_read_ee_e610() at line 3627:
>     err = hw->eeprom.ops.init_params(hw);
>     if (err)
>         return err;
> 
> 2. ixgbe_write_ee_e610() at line 3660:
>     err = hw->eeprom.ops.init_params(hw);
>     if (err)
>         return err;
> 
> 3. ixgbe_validate_ee_e610() at line 3693:
>     err = hw->eeprom.ops.init_params(hw);
>     if (err)
>         return err;
> 
> The init_params function pointer points to
> ixgbe_init_eeprom_params_generic for 82598 and 82599 chips
> (ixgbe_82598.c:1164, ixgbe_82599.c:2225).
> 
> Since ixgbe_init_eeprom_params_generic() never fails, these error
> checks appear to be dead code for those chip types.
> 
> Is this intentional defensive coding for potential future changes,
> or could this be cleaned up?
> 
> Thanks,
> Ingyu Jang

thank you

this originates from our OOT implementation which is over 20 years old
by now

feel free to send patch that cleans this up (and similar stuff if you
find more)
