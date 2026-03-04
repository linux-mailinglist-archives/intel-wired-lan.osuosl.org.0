Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OP1nF0BMqGmvsgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 16:14:08 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1572025AA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 16:14:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F91181125;
	Wed,  4 Mar 2026 15:14:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3SQsYpCcyJ5e; Wed,  4 Mar 2026 15:14:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 050418112B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772637242;
	bh=rgIYDGNLyGRQTQu/63w8ilmuOh7Cjw2aqSUB5t3uj0U=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4F+YmpXo6YoaZzxFA4rc9LFzgmsxYX8cZQVkZKCV7RDDBFrYdIuT30v4QtkZ+D77D
	 ysp8K+J19sLt3uf6KVq98w0PrebUaZYGnNzXvHKLz85sedpUFqqeDUG3mxCdKuE8q1
	 cQrhaOdL5IYCJHfM4l0FH91e7lXeSk9vHKgeQR0Hdc1XebBbHn3ynVisJv/Hs03fEU
	 RfxRGuJilynMujZ1Q7W8NFDOHcxpIr4HjFVj4Yr6+ZhGrEPZt2LUCQ1Zy1XRcO8xai
	 h7VyANLWc1mrzsLRVrzXTtUUmE+oZnCIWxb7z3Ef9FYOGx0UlyjE+wEO1ORJC0vw3K
	 4A+h16p+s/alQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 050418112B;
	Wed,  4 Mar 2026 15:14:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 807A11EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 15:13:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7234440447
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 15:13:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 70DqKTMB_Kz8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2026 15:13:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 54B9640434
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54B9640434
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 54B9640434
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 15:13:52 +0000 (UTC)
X-CSE-ConnectionGUID: XVzMM+7cRBORCksDoo5H4w==
X-CSE-MsgGUID: iv9s2B6WQ9mNQyKqK4cm2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="73748722"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="73748722"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 07:13:53 -0800
X-CSE-ConnectionGUID: NS1kb28CRSeRWA5lIjPA7w==
X-CSE-MsgGUID: KTyBP5HzSsSMVh2zWDy2jg==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 07:13:52 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 07:13:51 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 4 Mar 2026 07:13:51 -0800
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.55) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 07:13:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TskD4j5GKuhmEBGaupyyQPiJAbmWS0LC1UDPwYwuQAtplUvc++fjDAuu4554Rx4HxBGxNVjtyP0INZG/dBMVglu6e6uslYCJlI6oayZFqZs52WHXfK+CaWgLKiFv6FyHi7/wWBiRZOCKx6QUMx3BFerg6h7coGEYbuzyBnkXYECcdQcE/Tibt9G0s88FmVwJglDHAFJDMt9Wh3yqzZsfA+w2dGkJ0+Q5mpa9CRp958B2/jNYzUOL0Fh2euLHWz+tJAW91rbLKbOs8Hij7ntPwhzUo3UzHiuu5IqsU/3fLVNKSZHhVQAJbs15963rEXUwf6G2gwU7q5/CjhSeeVuF3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rgIYDGNLyGRQTQu/63w8ilmuOh7Cjw2aqSUB5t3uj0U=;
 b=qgdDdYwQe3dx1ftUCj0t3UWuzW4xbijfwR7QfSiklaTDo9CHvpkSeSrmu7v+CBE/pbtpVvFs68ser6nwExC/ew7dd71BvzGG126BKM6zU6oEFbFU0zf0qFCNbpRuR5R8TeTQ7e/aSkAGhp+dkOKJh9YBoHaxyeZNO+TbC7d9hn3wH+OeiUBAKQ3FJX2cQsK6daiI1ighCQrMlmMmYyiYRqiUtlvzOEoCA5TThQh380kuPrTknR7nDBSpxqUxgyC5FpIeV90ZqadlgmUJeJco/3aqU1ASwrPyKAKKpEpRnPMtCjJnrUVRLwaP+aO1+ImFZE89Z5NiV+4t8QcBxIHDxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH0PR11MB4792.namprd11.prod.outlook.com (2603:10b6:510:32::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.17; Wed, 4 Mar
 2026 15:13:49 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%5]) with mapi id 15.20.9678.016; Wed, 4 Mar 2026
 15:13:48 +0000
Message-ID: <8b43d234-867a-481f-90e6-e155132100a5@intel.com>
Date: Wed, 4 Mar 2026 16:11:50 +0100
User-Agent: Mozilla Thunderbird
To: Steve Rutherford <srutherford@google.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, David Decotigny <decot@google.com>, "Anjali
 Singhai" <anjali.singhai@intel.com>, Sridhar Samudrala
 <sridhar.samudrala@intel.com>, Brian Vazquez <brianvv@google.com>, Li Li
 <boolli@google.com>, <emil.s.tantilov@intel.com>
References: <20260227203457.558196-1-srutherford@google.com>
 <20260227203457.558196-2-srutherford@google.com>
 <6a7fbafa-cdcd-4bfa-ac00-204e68602f61@intel.com>
 <CABayD+eF30_OHRrGYiG-7qKbJjvs5=7U8H7SH9Hj=ou6aZJBbw@mail.gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <CABayD+eF30_OHRrGYiG-7qKbJjvs5=7U8H7SH9Hj=ou6aZJBbw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BE1P281CA0373.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:82::19) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH0PR11MB4792:EE_
X-MS-Office365-Filtering-Correlation-Id: 34b831a9-314f-47ea-ae47-08de7a00a2ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: YvXde4hoVpNybmLa35uildeJldodY+omcS+zLGLMQL0CStzy0YnR1Uga6z9Fs/87yZ9HfyrJ0MVClt+2zpus/upFRS/8M+Y1m7PdD7iUWJZU48nPRqDYjzGb9v/RVWWsS++uGJ5BNY+HpYPeq7OZ+Zrqh+uLxubASnb2p9xr3xR8baw6tlb6W9+6F4G9HnGj10n1IdC3djWUaKLdY7uUQLhWYeb2xkqbVoJZzsEO72pg8Z60P72SL+RwBbV6vfdJL4jpvXH6DoO7R1o9Kb7LiBoIKSghvsOWoLwNERvKY/MMlxE99VqZao5PZhg0UksVII2tAOmQkZwrUL6RZBoIyWnmVwhCLVB41dpMhd+NnRyG77vZ7u9K3BdCx1RM+xb9lysAIwsLRyKMo56m6bRUsotboWI0wmslr/l4Iw3/FiPcc9Z8A/wTJTrL166GE0WGUshEADhZPTA5g5f6S5z9VvbBe3seE7VURuNfahcAfqFTfhf4GLAHUGR+HluDib/7GoigDLPQbn7dLP3S0UJJjrJViC/x3ZJwHnIfv+TWwrxdl76zUQugQmBTRYztnciadLTlOsmC/XViTiQBg51UljpFQs3Igc0JfeCzQ/C8JWkPaxqJGekzmIDuxceyDmaM6p0rC6twFFJT1s9l/IEWJm3vGSiW36af+4bCjzZZyp4OvqHXVeprEuflvDGcyuglVPCO8mmLOhPp7gdXwddyuzAD/nv3b2HVPdPaXbuRSQ4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QVNXWWtXc2tOanFualNjMk54KzIwN2F0enJ3cUc1cEQvTkJwampkd1RpSThB?=
 =?utf-8?B?VlhBdG55N01OZjc4RERVTmtKMUU0czhhWm9SQS9YUk5mbUxkRm9MTHFUVVFz?=
 =?utf-8?B?WDJBN1paYXdFYjJzU2FGZi93R3RkOWhDci9TeXVaQnhKOU5xR3pPQ3FydHl5?=
 =?utf-8?B?cmpjNWlJUUxZalEwNmhhVFIrN3ZKK0xpbVVnZ0prbnI1WlRXbDYxOW0yS2dB?=
 =?utf-8?B?L0RyVGhmV3BKMU0ydDBDM3NMRVpEU3dBaTJHNWNNaDdUVHc3YzhWQ3dwZ212?=
 =?utf-8?B?ZkFpZjl6VjRUUlRSQ3N4UTFvRlJvUjg1VXcrZEFoOHF2Zmhwb0tld1lVZFh4?=
 =?utf-8?B?dUEvVm4wYzIrZHBCeUhLWUM4NGE1OXlRelRKVk8wbXZ0T2pTWlIweEZNQU5C?=
 =?utf-8?B?bTl2VkRkOUVlWGZyOEdnenpUTTNEVVJWd0xvLyswMDRJZnhUQlFmeUZxNXBS?=
 =?utf-8?B?Y2VmWFdqeUt5R2hNN0lHK2hxUWZnOGo0eWpTUmxqSjhLdXJ5ajFJVlFFRkRv?=
 =?utf-8?B?ZFNqcHhYQkJRem9pSEZlUHE1Rk5mbFEwZFRJdnpaWHMyWlNFYUl6emxRTUt1?=
 =?utf-8?B?SDVJTFYreDBSNitPZm5USWRiZFl6OFFGMnkvbGdSaVZhY3ljaktkUGxUTllt?=
 =?utf-8?B?L3l1MHFvdnlvRFJFVGpITWhyL3MrOHdCSGdjMDNoREJMYVFEQ2pRVis4blY1?=
 =?utf-8?B?Rm5BWXVDRXFneFh4R0hMRUtvYnUvN0JMd1RVQTlnLzdubHN6M0FxZXhDbHpu?=
 =?utf-8?B?VkM2bFphRW95cms2UGtYK3duR0R2by9VTEVsNmFpeTVZRjJuWk5xUERJcW1h?=
 =?utf-8?B?dlhCVDdOZDYzNmNic1lOSVRRTVU2THFTckVnQUttWnVyV1lpSjN2Tm8xWWF2?=
 =?utf-8?B?aUF5UTFRYTRtMC9ySFRndlN6dG1UMWFEZ21YR0lubFAyYTFwNU5HWUhtaXVp?=
 =?utf-8?B?RmNkUGVuK1NZTU9Lc3UrOFBiWkIxbDdaZDJMY09xWjVDVlVib29FTHBVdkYx?=
 =?utf-8?B?Y3dFY29pcFVjZW5kVVlUMkhUYjcvUXVpamdxZEE0RVd4MGR3WVMvbXR2WVBV?=
 =?utf-8?B?dldIM3AwNDA1K2pKclFJUXhpaUMxaWhjY0czYlhQMEpmT1NvNW9JT2k5WmQ0?=
 =?utf-8?B?RzJ5WmRUNVArM3dHNzdISlFleldPL3pGRXRHWWhXSi8vVVZjN1JyVEt2aXA0?=
 =?utf-8?B?TmxFZ3RrUDJPb0ROUThqOWY5SlZaS1p6blRRV08xNFNod3Y2cVlCQnlJSWg0?=
 =?utf-8?B?dWVZL2p3c3diQ2xKUGhMZ05Ndkx4S29rV0FPN2pZZlRRRVpzVlV0Mis1bUZZ?=
 =?utf-8?B?SnhmM0RyckVZSzJwV2VaQnRkRzRLbllBa20zM1BEUzZJRGNRRzgwS2M2N2cw?=
 =?utf-8?B?M0dUUWFRem16WXVSSGV4aWo5NXlXQnFXTno3Vk1zODRhZERUWmphMEVLYkFj?=
 =?utf-8?B?b2t4YjlUbUdtNlRid29pSWVacHBSSEhvNlNMZktva1M1WWpVVmhGSjJ0TGh6?=
 =?utf-8?B?MzZwZzI3R3ZhR1AyaTA2QkdTb2N1SHRZc3dCbzhzcnVNUWkxK1k0bU4zTUdJ?=
 =?utf-8?B?Q1JuYUROK3cwQWg0ZWh2NnAwSUw2Nm9TOWZhenYwUDhlQzJNdWYvUzR6YzdP?=
 =?utf-8?B?QnhqeERuRkFDcWRRZmNUeDI2cjNHM2xwQ1Npc2xScU9IV1NpOHA0ZEp0QW1O?=
 =?utf-8?B?YndQZjIwK3JJUCtlc0NwRTZVbnMvL2NBQ3NEdmhMditkd1JKWWhjcGwzbzdp?=
 =?utf-8?B?UVhQUTVJNW00VzROUVNYQWhaQVg0aHpQN0R1QldERlNTRG9jTHI0dlJrVy8v?=
 =?utf-8?B?dnFtM1h3cVE1TXNPbkp4QmxITkhsQjEvWFlCQ0RzbUU2cXlPZU9lNEdHUUw2?=
 =?utf-8?B?SmhWdjFEa2NkbXp6N3pFZWNvRDRKUllQN0pGVHd2TFAvSS9iVzZCRk4xU2JH?=
 =?utf-8?B?UWRpVHQxRDYyVkROQXRDaW9mS1JOVXdvUzhpd0ZaV2dWQW1uTU9FVzUyRVZC?=
 =?utf-8?B?NnJDRzBBdklWNXd2RHdQVzgwZWpFRkxxMnpsTG1kVFY5a0t5bmdyNmhVb1cv?=
 =?utf-8?B?N3VzTzRaVzNmWEhjbmNmU3VTODdCazI4dkFVZmw3THdXT0FEdmpjbFh4VFlq?=
 =?utf-8?B?eHR3dlVRYWZ5K2M4bXFIWmVFL2Y1L0hVZGsxZEJKd2E4QkVsT1lvUlZtbURo?=
 =?utf-8?B?UW9NOHRFbk55Wit1d1ZYV0x4Uk1rc3JUaWhUcVMrdHBWa0NmSkR0TzJzQ0sy?=
 =?utf-8?B?SW9HYUM2SFhvUzZJQVhOUW9vUlNXbU81U2xHWDRscXFUR0dBQUJWa0lndmxP?=
 =?utf-8?B?WmhsYVhlNWZwRUdWU1hEMzU4blZBU1I0UFVaZ3RjQmNGKzMwQjc0cERhT2Rn?=
 =?utf-8?Q?4SmfgyiovhyXExcw=3D?=
X-Exchange-RoutingPolicyChecked: TsVhLoG4JHakEfm3ZdbqfZa1wto/M2sODcL+YTs3Ewr8qmO5gNY54kj8R9ZrrLxjXCHwaD2pVMzHGmzGJtSkpp+rR88isEWR36/rA8f+S3nD6PuXruknF9KIZqkOxUmJqRafpy8MmcbYVT+PAlmB90DnjAYzsolwy3zRHfz7bzpu6Ko0f+jEj+hEEbO6w9mSavY7vZzFKvJjdj6igut+dgPH6lcIfxPBFPwUtbSGpOaHPokmZ08gzPQBiz7Ae8O4tPi40U7mc4NW4W4ldbJxpO4qIV2DBuOEBOQ0WSUp/p5Ahl0e6lFmobzd09vNCIRXBxZyuGEp64mpZfUMpdf1AA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 34b831a9-314f-47ea-ae47-08de7a00a2ec
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 15:13:48.7819 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Sy/Xv9B7fKdYxlFbWxb/F5ln50WxSsOPuFHJx13jB1yc0aGpNMvBIo64z3sGeF9PoV6K/gIQ56Ohs0tTyIBX7eXnn4nTLm6Ek1Sx5vJP9w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4792
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772637238; x=1804173238;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7Xli6SRLFPuO6eMGyMUNUeqMbdZKd9PcWvLBDPv9SYo=;
 b=VQEjEKVYG9ZQyy3Gvzkn8hEyu6MvX3O0luz27iQXXtrpCPHh9UB26sxh
 CkjKoODOlpF3GaecNye77mE6s0Ke+CfEX6XuYB42RHdZNaAZoDqIx7VtF
 PtpgPD8tKKDJKY/C0afi4PK50CCyB2iBthyFalc+Lf4Q+T+roVBJiUVQ/
 76JnTEpIb7wP/j1v39LehxrMYNcqracj4VXhy3q4TjLuR05CYKHDOFI9e
 jcZCvJa76L5LYe4GOGItA+5JuUOXu739GlrARa+Qt/P8k2NKbY8b6tEXC
 tR0mnWCIaHvpo6fWhFrpis2RsdwB5Tv+emz5FaMrkbErU2Ly5FTO69cNJ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VQEjEKVY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCHv2 1/1] idpf: Fix header clobber in
 IDPF with SWIOTLB enabled
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
X-Rspamd-Queue-Id: AA1572025AA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:srutherford@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:boolli@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim]
X-Rspamd-Action: no action

From: Steve Rutherford <srutherford@google.com>
Date: Tue, 3 Mar 2026 11:44:19 -0800

> On Tue, Mar 3, 2026 at 7:34 AM Alexander Lobakin
> <aleksander.lobakin@intel.com> wrote:
>>
>> From: Steve Rutherford <srutherford@google.com>
>> Date: Fri, 27 Feb 2026 20:34:57 +0000
>>
>>> When SWIOTLB and header split are enabled, IDPF sees empty packets in the
>>> rx queue.
>>>
>>> This is caused by libeth_rx_sync_for_cpu clobbering the synthesized header
>>> in the workaround (i.e. overflow) path. After the header is synthesized by
>>> idpf_rx_hsplit_wa, the sync call pulls from the empty SWIOTLB buffer,
>>> effectively zeroing out the buffer.
>>>
>>> This skips the extra sync in the workaround path in most cases. The one
>>> exception is that it calls sync to trigger a recycle the header buffer when
>>> it fails to find a header in the payload.
>>>
>>> Fixes: 90912f9f4f2d1 ("idpf: convert header split mode to libeth + napi_build_skb()")
>>> Signed-off-by: Steve Rutherford <srutherford@google.com>
>>> ---
>>>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 9 +++++++--
>>>  1 file changed, 7 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
>>> index 3ddf7b1e85ef..946203a6bd86 100644
>>> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
>>> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
>>> @@ -3007,9 +3007,14 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
>>>                       u64_stats_update_begin(&rxq->stats_sync);
>>>                       u64_stats_inc(&rxq->q_stats.hsplit_buf_ovf);
>>>                       u64_stats_update_end(&rxq->stats_sync);
>>> -             }
>>>
>>> -             if (libeth_rx_sync_for_cpu(hdr, hdr_len)) {
>>> +                     /* Recycle the hdr buffer if unused.*/
>>> +                     if (!hdr_len)
>>> +                             libeth_rx_sync_for_cpu(hdr, 0);
>>> +             } else if (!libeth_rx_sync_for_cpu(hdr, hdr_len))
>>> +                     hdr_len = 0;
>>> +
>>> +             if (hdr_len) {
>>
>> This is for a very old tree I believe? We now have
>> libeth_xdp_process_buff() there for quite some time already.
> 
> It is, yeah. I thought I posted a cover letter with more of a description, but,
> frankly, I may have messed up the process of posting.
> 
> From the cover letter -
> Found an issue with the IDPF driver when SWIOTLB is enabled. The issue
> results in empty headers for packets that hit the split queue workaround
> path. It's caused by a spurious sync in that path. The header is synced
> from the SWIOTLB even when the header was shoved into the payload.
> 
> I cooked up a sample patch, but I'm not an expert in this driver, so I have
> no idea if it's the right solution. It did allow my QEMU VM to boot with a
> superficially functional passed-through IDPF NIC and SWIOTLB=force.
> 
> The patch was written against COS's 6.12, so I assume that it will not
> apply cleanly elsewhere, but I figured a wrong sample patch was better than
> a long paragraph describing the same thing. My read of more recent kernels
> is that this problem is still present, but could be mistaken.

Ooops, sorry, I haven't read the cover letter =\

Did I get it correctly that in case of SWIOTLB, we can't sync the same
buffer two times? But if the hsplit W/A was applied, then this double
sync corrupts the data?

I'll prepare a patch for the latest net (with you as Co-developed-by or
any other tag you prefer) once I find a way how to play this nicely with
libeth_xdp_process_buff(). It performs an unconditional sync and bails
out if it returned false.

> 
> Thanks,
> Steve

Thanks,
Olek
