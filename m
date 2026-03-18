Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKKWOMbVummfcAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 17:41:42 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C2E2BF760
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 17:41:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 259D780C9F;
	Wed, 18 Mar 2026 16:41:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hUaG9Pd4AhZg; Wed, 18 Mar 2026 16:41:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FEF18060E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773852099;
	bh=Lrt1xmda0ncwq6mP1cLC8W/MHFAdIuBwWUowxtuL9j8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jLLv23l6BMAG5qVDvWm/TkRsdOsWQdE+5kyQN9ECWx0sUVKSZ5jm8QuoTnym8o6vm
	 KOfzRwzd6RkPRuADU3+hChCKcw4PdRmvUkX02e/b+/0YGjm3mJB4eLIf+wBxH1JKSG
	 osXL55BNnENYLnohimoorg1NytsjIPR6fdv3QbyCeHLbUK1896Ji737Ahcz/1Fg/Vt
	 vu8rCHLmUkgEkrrD6ZZhEVdFRyw7yL4GmfYCMaWsilO84nGc6OeJdYEYjXjFpualpu
	 54FG1Svh1e40HBsY+VgqaBvNILFGBTgZpR7htFGrp1vj1fx/B0LlKcxyohY83+PJga
	 SradP8cQhnZJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FEF18060E;
	Wed, 18 Mar 2026 16:41:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BA5871AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:41:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC606834DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:41:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dZXKV38bWSvD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 16:41:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 00A2D834B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00A2D834B9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 00A2D834B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:41:36 +0000 (UTC)
X-CSE-ConnectionGUID: eDAHt3XJQESKw4GEX2UW7Q==
X-CSE-MsgGUID: HtSCXN9SQj+tIUZILTLMuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="85544115"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="85544115"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 09:41:36 -0700
X-CSE-ConnectionGUID: FRYRkAuQQOWlED03ZtGI0w==
X-CSE-MsgGUID: 0qTWk0PcTFOQxjjUW+L6oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="226813863"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 09:41:35 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 09:41:34 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 18 Mar 2026 09:41:34 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.54) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 09:41:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YjcqCX31E6bfgd6DPTaEgKFETkuE5/XROHT+iCzRke8vcvNMp9cUwi8uX6KZGHQOSPEq7xRs5ZOuTgejE0zbPoQWjqc1j6FthEmQ4Z4RmKb/Cujy5ngSHaeAiO9GW2cPVKRZtVkCJIXOB0o3IzY2KxNIn/ztU5IkFaJOYy6PvVAndW5Gp+xiHATnSJoarNXhhCsXk5QWoCNSXtbZ1PwiXVL9uTkFhMAzZejW5ORIbq2CAt+64GGdj9IohtGKK2MbLE5ZlvhAwa+d275ABdmUBbtvd075BZJ2tKmdU/43Y8voQomzat9kLfR6Kr7Gbrg+rDmXyEVONGJiTyTvvvZ+hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lrt1xmda0ncwq6mP1cLC8W/MHFAdIuBwWUowxtuL9j8=;
 b=DqonNji6kYK5ILLZG7amfjuYEnBHzwFmEd5iaY9b/SR7feW3/BZ2oKnbRXp35+xpug8FmfaPXIcL9UHRrWj2pGUoOrMCBpBvtm2K+bNhtHumICoeXoNzFUN0brFEJeULf7np432RBqv8rWaWe7VipjjmRn1AOkoYrzor5OuIe19zQJmqxWTnHb7bDYBXgaWj9LoxiMI8FmXQpNiievocFutZL0cDklnxYEbgYzGngkzXf5rL7B9Ob9VdZkHH1MPJuYE8hf9IRMv3ZcYq01pVHg79U45Wob9Yhrd8aKaL8LalueKYxxekeN8GzK8cfigmkafHR59kCxE9edNGGH5Q4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by BY1PR11MB8055.namprd11.prod.outlook.com (2603:10b6:a03:530::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Wed, 18 Mar
 2026 16:41:28 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%5]) with mapi id 15.20.9723.018; Wed, 18 Mar 2026
 16:41:28 +0000
Message-ID: <a666510d-8664-4b74-aed5-91eb28ff9d51@intel.com>
Date: Wed, 18 Mar 2026 17:40:15 +0100
User-Agent: Mozilla Thunderbird
To: Emil Tantilov <emil.s.tantilov@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <anthony.l.nguyen@intel.com>, <aleksandr.loktionov@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <ast@kernel.org>, <daniel@iogearbox.net>,
 <hawk@kernel.org>, <john.fastabend@gmail.com>, <sdf@fomichev.me>,
 <bpf@vger.kernel.org>, <decot@google.com>, <willemb@google.com>
References: <20260318011545.12874-1-emil.s.tantilov@intel.com>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20260318011545.12874-1-emil.s.tantilov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0232.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b4::6) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|BY1PR11MB8055:EE_
X-MS-Office365-Filtering-Correlation-Id: 8847563d-55e0-42ce-0525-08de850d3381
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 1QUFG6x7D07NKgk5owPye3hNtLYSU7cyg7iDevSwJ/30Ll6UgcZgKfypEUJ8ovQbV+ZqQ3dtb+p0NEIQ+LquhmA518a+kLcDRekmyMbEYoKiB5GJDOBYPhBAUHDeqcmgVAxY6YKx+D/uGRGd19y4heTZdQh7n4Y37sp4ZwvWY4g7qeYbhp3f6D6IL6McMK6DDqu4fjyzmCFWSd81sUgErrrsRs29pfhqpsNGBPLEdPzIFDYH9BhmtrNzuVmDDHuL1i06nPSrxl5ZvtgkugwiMNKn6RDhGPxwT9nu6Qt6ALO9fHl9tICK1aJ9Iq2b5NAy35z8YeHISmtQ9N7d3XWON1iHxWWh7zfss0qPnK3lEpWfkEmNgsE9RzrFGxVKFH097poYGiTV9I/U9KjONg3NFs+hYzf2UNGdBSRO88O58r9tBQVwRkUZV4U44L5TCGNieUFI836QB0Sjscv1aItcBSx32AnPEf80d9M4G4MIs/yIRFRrNf9CMQv2yV2iJgvej8SabmioOuE537OoR4rD52u6FzoyBA87WhgH9fymctri4BbCR3ZRGzuJouzSTP9c0vBIghEySCbmgFOmlnByIncp6cJ67EQboO80YyEa/z3IffcIvuFPVQp9M+JQ8ueGMh35Ssg809A/7I+IMIgMiXXiXMgoeL8PoT4K1k1CjT+AKcoKKXgav5owNdeFwEnpdKTyFMPjOiY+dOpTctGrz+E5F5jG541DCcx4dQWP1y0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M2NyL2l6cjBLdVBOQ2JMdXliSlY1UWNGVlpQdWMrUWxkN09yem5iVmJvMVhF?=
 =?utf-8?B?ZHdFT3drdlZuRktsQUI3bDZOSmo2S0lpMDB6OU50SE12SGtjckxlRU90OWN5?=
 =?utf-8?B?WE1UNTg4ajdLNTN2YTAvMUorVVlyMEJicTVXcW5UekNWMHFibzBMLzJFTS82?=
 =?utf-8?B?OTdjTlRBVlVnVVN6Q2lnWFlVSVBiQVhwSDM2QzJvOGdDdldkK2lqc1NsTU4w?=
 =?utf-8?B?QXRrb0RJRWNnSko0SzhYR0R6R0ovMWhUSnZlbjM5U1dkeURRNWxrWTN3YVR6?=
 =?utf-8?B?Z21LNCsyRnFrOXhIdDdvRlAxaCsyVTJrczR1ZWVUVU84czJ6MkRadGJjNTEr?=
 =?utf-8?B?TVREdlVHQy9jdWRBSlZnRWRXUVRDUW1GMDRDTGlqOUh2TTdac2dsVlJLOGFS?=
 =?utf-8?B?MXRBcWpNZ2Q5SXo4RTAxeEE3SE1BRnRNUE5NZjBndG1MNkM1ckk2aHFZNTNR?=
 =?utf-8?B?d3owKzZBa00xOVJ3NGR1eEc3RFFZUVFQbng0WFpIL3ZkNzN1QzluaUF3clZa?=
 =?utf-8?B?MkNEY0wzTUx2anlaaktNeFVkTFNxeWtYYnFNeHpSYUozVnJMbGRCMkR5RUEx?=
 =?utf-8?B?TlJBRXRRR2Z3Z0lZM1V1b28vRkxGZTYzOUNWQlJiMFErcmJsK21BcGJkOHVQ?=
 =?utf-8?B?R2l3dVRlbTVCQnFQR05qa2tkUEFWVmtNa3E2bzA4TlZ6Y1N5dWtPNENFODNn?=
 =?utf-8?B?UkZVdlhudDBlZUxoTFM5aG1SOUdvazhrdmczUlRRczlBRFk1SlpQZDQvUFBy?=
 =?utf-8?B?WFJMN2UrZUs5OEJIanQ3VDljU05WUlpIb01PT3pOVWlHVWN4OWVZWWlnM043?=
 =?utf-8?B?UnYzaittU1pVblNYdXlKZURoTEtNNnRFclF3V3Q5amlEakZrOURkQTJjcDlQ?=
 =?utf-8?B?Q0VnRTFPSXo1djZmWlRnNEdrQ1hCRmhxUWp5UnY1UlNzaEFNTFFHa2pKSngr?=
 =?utf-8?B?bm9RRzc3OGRYalUvRWswT2F4Yk9Na0tQY1pTNFZKdHBTRDVldW0yZjkrSUg0?=
 =?utf-8?B?TXRXSG16OXRGeEN3LzR2bTE1bWR2TzRSNEwrbitDMCt3bjljb1VtT25IMG04?=
 =?utf-8?B?b09XWGYxdWtjRUdza1NSSUY4bVl6TU9pL1ZaRW53TUkwUmRxWkl3OVlnRnNi?=
 =?utf-8?B?YXd5aW0zU0FGczFWNmxJNC96ek5MUUpJakc4NTg4Y3dlcmtMUnpUUVMyZ1ox?=
 =?utf-8?B?N21EeUFqd2pSZDVYWVh3OFl3TjBvRkdjd3VFNDVQa1NXbzFCeENtdzl4Sy8v?=
 =?utf-8?B?WlhzczE5aGpyVFFoeXdWV0NMWmJEa05sWFF5UGkyMFVlckVSMjdrZXN3Uk1l?=
 =?utf-8?B?VUVZcGtKeVBGYUhFc1RFY3V4SlQ4Q2NPM0tVK3VIcTNySThVNEVBbWdYMDZz?=
 =?utf-8?B?aFd2WXdOblVTbThRQU8zK0VndTM0TjduQStnY0RacjJabnBKYzRJUnlWMkMw?=
 =?utf-8?B?T3Zacm5KNy9VSFF2TjRuL2ZUVEZxQnZaeUNGSXFDNkI1eXhJc0lyRXpDcXFh?=
 =?utf-8?B?U2hnaUVKSVVvUVBCMWFlUTdnSVQ1VHNFVFpWamw5SGF1Vm9lSWFwejYwMTZB?=
 =?utf-8?B?RElSUm4wcVNiOUFlNnhXOVZreWlBYWhuUUFxVFNUdU41c3Jpd1lKZFdsT0sr?=
 =?utf-8?B?cXI5NmxnRzl1S3RHVjZhT1gxUlV6U3pXRy9keHFicml5K1l2bjA0WEZOUG9C?=
 =?utf-8?B?SWdJc3FvdTFZblhJbFBwNnJYRFdzUStpTUZGZ25YVVcvNllMZGlOSGdlZHVZ?=
 =?utf-8?B?YllMdGxZRjdMaVkyc2NGdzdPUWs2Wit5YVZiVWhtcUxYcEJ4aFY0QWJScUhx?=
 =?utf-8?B?UnZTdlJLTkV2SzVjS0pqTWtMTXAvd2F6V3BPWTF4Q0gyOGk4U0JmWUxyMW5Z?=
 =?utf-8?B?bTJHTHVESGFuR1p0NEFodEhzNUlKUFYyVStLVWlFeGs2Wk0vVWYwQTN0OHlX?=
 =?utf-8?B?ZTROY3FNV2wxYUFjcFo5T1VMYm96clRMRXE3QW1VVXdrakZyV3JoWUJseEtv?=
 =?utf-8?B?U3ZwWkxGMW5sd2hsTGp2VVBWUVN5Z1BFak0xMDFaYlpUcVQ1N3ZqbXVkMUVm?=
 =?utf-8?B?dnFJamQzSWwySHU1N2JrOVBYZmk3NHZqVGlpRnp3WC8yM0RNWGs4Y3FUZGFJ?=
 =?utf-8?B?ZU1RZ2ZTcm9Tdkcwa1Y5RSsxNG9oTmEzQ1p0RXFxOWExSEhQd0h3Nkd6RGdK?=
 =?utf-8?B?Ykp3bGUrYWFvZk1FWi9KUU56Q3g0Y3FuK2loVC9ETnJXOFdmalY5WWU4VVVa?=
 =?utf-8?B?dmtXWWFMQTdNWjI5UG9QSWNyZDRidC9iZFl1RXlyWVdVQklXWUNHT0s0NC9S?=
 =?utf-8?B?VU94Z1JqSHptUFBTT08vaHNzSnJEUDY5WXlOa1JOM1lhNkxGaHAwMXJ4dFZi?=
 =?utf-8?Q?W7NloLLbJGaOoN+s=3D?=
X-Exchange-RoutingPolicyChecked: Tqcso5opaklcr/d/KLmlmkAUBVcfiMG7ewDCX/It8+AGguZy0LJvJM00g9UD2EwwaL0RZtg8tjgbLdo/vQYsvT1ts5wkCoC9yyWdqOn0IsVwzyp0mWh9xhefxDR8wvbXS5iaSGQSFRDSSI2T9c8G7MTE/vFK+09ReJHltKdXgCZxtLnmvQ6U9t+h1zF07F+eb0z4+HpP9EXf91iYFZd/679zE5AC7XGkJmRBDG/mEe9XhpKb6hQKmWSxHhgmx6KZ3j4LoKiv6v8FZDNYncOXX7nwj6sO+n6rX/LX7keEh2BObHAOJofZqf4nfMsZhz2lhJXDPzSRt5uDk5dbm76khw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8847563d-55e0-42ce-0525-08de850d3381
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 16:41:28.1243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bVyXpv3Ocq7J8AgdXR8HBeYA+Pw+LrF7UdSlPSRnl/nveivRNDc9uciMPAvNv1kVWD0/Lmh4cGC2r/JxUpU86S+UatLDMPSebwliT2SdDMA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8055
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773852097; x=1805388097;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s0R5cxgvvjStN/WUzpMGFmWD+XyRel2a6q3jxMnBezQ=;
 b=nZjX5g4kbXBUOg36u0wgKr6uqYlg+3quOnuWjQAoknSD5vA2Y3Ir7WUR
 NH4McZ/I2IzH8QihS2DMDtE6QNrz43oIqqiLsfulkGWbQUVc8T3/axzJm
 9lJ6NR5rh8yq9UaiweFNYhkuDsOgMtE6LW16FW5dRbJTysi3WXwJktav0
 0hSslBYnz9UpfWWtEEdN/p9/4LDO/szJWrrJvWwy6ldJdLo5utjVOmXqZ
 8VeFGjaqDNCYsEXN8F9v6JeB+wtk/gTtzj6UoBoSAMyVMfWUzE+L+hsd7
 o/aZ3YrCpxHr2ftmZigSBDZ5PK/eHGdrUInPbOronuYKVkHbcagmi2UrQ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nZjX5g4k
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix xdp crash in soft
 reset error path
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:bpf@vger.kernel.org,m:decot@google.com,m:willemb@google.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim]
X-Rspamd-Queue-Id: D2C2E2BF760
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Emil Tantilov <emil.s.tantilov@intel.com>
Date: Tue, 17 Mar 2026 18:15:45 -0700

> NULL pointer dereference is reported in cases where idpf_vport_open()
> fails during soft reset:
> 
> ./xdpsock -i <inf> -q -r -N
> 
> [ 3179.186687] idpf 0000:83:00.0: Failed to initialize queue ids for vport 0: -12
> [ 3179.276739] BUG: kernel NULL pointer dereference, address: 0000000000000010
> [ 3179.277636] #PF: supervisor read access in kernel mode
> [ 3179.278470] #PF: error_code(0x0000) - not-present page
> [ 3179.279285] PGD 0
> [ 3179.280083] Oops: Oops: 0000 [#1] SMP NOPTI
> ...
> [ 3179.283997] Workqueue: events xp_release_deferred
> [ 3179.284770] RIP: 0010:idpf_find_rxq_vec+0x17/0x30 [idpf]
> ...
> [ 3179.291937] Call Trace:
> [ 3179.292392]  <TASK>
> [ 3179.292843]  idpf_qp_switch+0x25/0x820 [idpf]
> [ 3179.293325]  idpf_xsk_pool_setup+0x7c/0x520 [idpf]
> [ 3179.293803]  idpf_xdp+0x59/0x240 [idpf]
> [ 3179.294275]  xp_disable_drv_zc+0x62/0xb0
> [ 3179.294743]  xp_clear_dev+0x40/0xb0
> [ 3179.295198]  xp_release_deferred+0x1f/0xa0
> [ 3179.295648]  process_one_work+0x226/0x730
> [ 3179.296106]  worker_thread+0x19e/0x340
> [ 3179.296557]  ? __pfx_worker_thread+0x10/0x10
> [ 3179.297009]  kthread+0xf4/0x130
> [ 3179.297459]  ? __pfx_kthread+0x10/0x10
> [ 3179.297910]  ret_from_fork+0x32c/0x410
> [ 3179.298361]  ? __pfx_kthread+0x10/0x10
> [ 3179.298702]  ret_from_fork_asm+0x1a/0x30
> 
> Fix the error handling of the soft reset in idpf_xdp_setup_prog() by
> restoring the vport->xdp_prog to the old value. This avoids referencing
> the orphaned prog that was copied to vport->xdp_prog in the soft reset
> and prevents subsequent false positive by idpf_xdp_enabled().
> 
> Update the restart check in idpf_xsk_pool_setup() to use IDPF_VPORT_UP bit
> instead of netif_running(). The idpf_vport_stop/start() calls will not
> update the __LINK_STATE_START bit, making this test a false positive
> should the soft reset fail.
> 
> Fixes: 3d57b2c00f09 ("idpf: add XSk pool initialization")
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/xdp.c | 7 ++++++-
>  drivers/net/ethernet/intel/idpf/xsk.c | 4 +++-
>  2 files changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
> index cbccd4546768..b670f0ea20b3 100644
> --- a/drivers/net/ethernet/intel/idpf/xdp.c
> +++ b/drivers/net/ethernet/intel/idpf/xdp.c
> @@ -488,12 +488,17 @@ static int idpf_xdp_setup_prog(struct idpf_vport *vport,
>  				   "Could not reopen the vport after XDP setup");
>  
>  		cfg->user_config.xdp_prog = old;
> -		old = prog;
> +		vport->xdp_prog = old;

You could just add 1 line here:

 		cfg->user_config.xdp_prog = old;
+		vport->xdp_prog = old;
 		old = prog;

And it would behave the same.

> +		if (prog)
> +			bpf_prog_put(prog);
> +
> +		goto out;
>  	}
>  
>  	if (old)
>  		bpf_prog_put(old);
>  
> +out:
>  	libeth_xdp_set_redirect(vport->netdev, vport->xdp_prog);
>  
>  	return ret;
> diff --git a/drivers/net/ethernet/intel/idpf/xsk.c b/drivers/net/ethernet/intel/idpf/xsk.c
> index d95d3efdfd36..b601b6c298c7 100644
> --- a/drivers/net/ethernet/intel/idpf/xsk.c
> +++ b/drivers/net/ethernet/intel/idpf/xsk.c
> @@ -553,6 +553,7 @@ int idpf_xskrq_poll(struct idpf_rx_queue *rxq, u32 budget)
>  
>  int idpf_xsk_pool_setup(struct idpf_vport *vport, struct netdev_bpf *bpf)
>  {
> +	const struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
>  	struct xsk_buff_pool *pool = bpf->xsk.pool;
>  	u32 qid = bpf->xsk.queue_id;
>  	bool restart;
> @@ -568,7 +569,8 @@ int idpf_xsk_pool_setup(struct idpf_vport *vport, struct netdev_bpf *bpf)
>  		return -EINVAL;
>  	}
>  
> -	restart = idpf_xdp_enabled(vport) && netif_running(vport->netdev);
> +	restart = idpf_xdp_enabled(vport) &&
> +	       test_bit(IDPF_VPORT_UP, np->state);

The indentation is messed up, should be:

	restart = idpf_xdp_enabled(vport) &&
		  test_bit(IDPF_VPORT_UP, np->state);

(two tabs + 2 spaces)

>  	if (!restart)
>  		goto pool;

Thanks,
Olek
