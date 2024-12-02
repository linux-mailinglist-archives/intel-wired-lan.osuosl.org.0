Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B455E9E02F5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Dec 2024 14:12:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A790A40882;
	Mon,  2 Dec 2024 13:12:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7UmP3Kc_u5pM; Mon,  2 Dec 2024 13:12:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD13E40877
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733145138;
	bh=4ICg1TUFaCGcjGxSOZlH+sQsUek7vycawueJjBOwjz8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bDKLfssrmjVf5pQcggc0dFcQGLng2AbDOFs1jX0UWIC/VbQ38YrP5pVEvwUpjGwOS
	 JTIzUKzP80iBX7jyrIGoK/5L/0vPpEMrYV59HsIRtxK2KU732aYfAz9W0u2YgsZkBo
	 tpUr4tGdtaOXdeRwAuwRTa0u0d9Zj4IoLTvwMT8veokI/RCq6vgmf0v4oyXkmxe+WQ
	 eLK2iq4AUY8u9ZXkVPL6EAy9OKxbZBttY/2ItR1xhGWCiFdMTIt1aqyb1I5KnyhiTx
	 0Yn7eK1uo5Ejyb+n51Wb/lmbdmN0BX55DvdhFeO7UpoVrD2k10nqMb5zem4BbN7rbF
	 6kGbN2QU14mdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD13E40877;
	Mon,  2 Dec 2024 13:12:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C119F60
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2024 13:12:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A14B340127
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2024 13:12:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id daismJVe0F-R for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Dec 2024 13:12:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 81ADD400B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81ADD400B9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 81ADD400B9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2024 13:12:15 +0000 (UTC)
X-CSE-ConnectionGUID: LoU8nuDkRHy9xDyD+2a1Dw==
X-CSE-MsgGUID: snLU4eADQYG/hLRkA7JcVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="32664157"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="32664157"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 05:12:07 -0800
X-CSE-ConnectionGUID: mVmpoDabS4yvN1MmRUuY/g==
X-CSE-MsgGUID: XfTkD7W8TYaqbc5o264UWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="93940590"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Dec 2024 05:12:07 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Dec 2024 05:12:06 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Dec 2024 05:12:06 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Dec 2024 05:12:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=svzOkjHqMpnsXH6I+qWiobp7vQUSoZhCnkJs52dOHxN7zfiU9vTPWDHBJmINku2g6jY9Ln3PurFchHDDkK0v1NzkmtAW79libXqnhB8sPzxowwRZPAuZkm9i002++y1ZyC9sZKSKV8kfWTAT4+MmPtGimXr4zhCt+GWwsYj1cxWbagtrt3OVtlp85t/QoGpV7jehDoTRWUu+MDTjrI3zdEcpAJjfa+hpEhVc1+M/XpELEejlUPFSw7XvTl3/AZpu+1W5uf6TzeX2E3j4EetLm0vb27Tc4x7KXCkVNLKPaFfm2QFSjK48uAdvlEK4cZgquy3PptgrvbSoUB6AgKF2pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4ICg1TUFaCGcjGxSOZlH+sQsUek7vycawueJjBOwjz8=;
 b=tyGDC1zyX3lWM0gkulIhGYIPq/li2cWOXmHi2QwlXKPx4mpQTsjA+iO3rXwUYTAdy9o+c+Q6B9xS1LoV3KFQ4+ee065WCwjR3KDBYstnb+aFPpj23TjgZPJb1jfnn2cUUoBCqWjqDHj+sTRA90ZduqeWjJDIrSdnleAq9E6CkB+fNq7CAl+7EhzA28N1zQQh5DaNtcwyy9TqDHe90u+kEuXc9p67SmbwoGKFg4TsfPASTVkxpacwBD2CjcEbsob5nS5rmNkxd/PirRSgFGdVRhZYJs+QAq6J0aE3n5GxB0iy1RaN509O/2X43InJZNs+E+HB1gCCjy954oQ4ucnJBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by LV8PR11MB8698.namprd11.prod.outlook.com (2603:10b6:408:205::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Mon, 2 Dec
 2024 13:12:03 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%7]) with mapi id 15.20.8207.014; Mon, 2 Dec 2024
 13:12:03 +0000
Message-ID: <6e1f0b82-53f9-41b3-9a89-4c942af76d3b@intel.com>
Date: Mon, 2 Dec 2024 06:11:01 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20241109001206.213581-1-ahmed.zaki@intel.com>
 <20241109001206.213581-3-ahmed.zaki@intel.com>
 <20241111185438.319bbb79@kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20241111185438.319bbb79@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0100.namprd03.prod.outlook.com
 (2603:10b6:303:b7::15) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|LV8PR11MB8698:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e73ce10-d0df-4ca8-2e7b-08dd12d2e9d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R0llS3ZOVnpUcVJLbXdYQjV0N25YK0xqVUlqVHdJd2NwZzB2VEIxZVFmL2Js?=
 =?utf-8?B?aWhhQjBjQkEwNVJBQzAvQnFoYW53TWtJcXF1dmpvUTlYaElrZkFzNCtFNnFL?=
 =?utf-8?B?WWJsTURVOVUwNFJvSUhXV2htckhxWmdEVms4V3Q5U1RhM29vdWw0Z3IycWF5?=
 =?utf-8?B?ajZxOTYzYmdCY21NUDlCQW1ydEpzaGZxeDFKRktRc0paVS9aVHFFcHZmRndH?=
 =?utf-8?B?a1pwU0doRFJiNzF5MllyUnIvOTZOMW5LUndGc1NSRCsvU1FiUjljQSszZis2?=
 =?utf-8?B?VW9YSnUxQVU4Z3NDVGZZdk45U21RaFpIb0d0dmtrYkZsR0dRczUva0taZkt1?=
 =?utf-8?B?d2NTVTBtTmhOalVNUWNrV2RkbVZUUXYySlN0SGU1eWJpWUZDZzJPYjhTYWRX?=
 =?utf-8?B?dUF1SjhlUjF2WlpQZWI3WnRwd1RFcGpCOFZEKzVERWIvbkk0aWtSWjZOam8w?=
 =?utf-8?B?eUhaVjJLd0hhSUZHekRNM3RLVTRYOTBRV2g2K2tnTCsrNzhEZjhBS0Y3ZkZn?=
 =?utf-8?B?WHUyZzNpU08rYWU1NjF0RWt2RzVicEVjSGJ5U1ZRNjZqaWo2WlZSaWZRY0Vk?=
 =?utf-8?B?L0dkTjVMWEV6N1BlazI0U1hDY1BlbE4wc09lK09SdExUTFM4eHAzS2hCbkdQ?=
 =?utf-8?B?RmVtZkk2STZhekt0ckVmYWpsOWFKWWdtMmJESEQ3S25nN2pUcEVRMWhhYjhW?=
 =?utf-8?B?SGhSNHFPQzc4MzcwUnBpaGtaaHR1UXNaelMrUE5rWmEvN3pUNXNYMmhRQVo1?=
 =?utf-8?B?RlZUVjE3SE1GOG1nZS9KRFRnS1IwSXVZcVU4Rmp1UTZDMmdza1I4MGJ2akhs?=
 =?utf-8?B?emZka3lQcFE4NkxNUWVyWTRkQ1Z0UVFvcWhLako0S0IrL3U4SC85VGpqQytD?=
 =?utf-8?B?NFhQVVRHZkJ4M3prZklLSGdxSkh4SEJiNytMRjRoeUFoclFjSXczNDdyR2Vj?=
 =?utf-8?B?c3V5cDhtQW5kdENLcmpVZ0EyU0JZOTJ3RWtkYWZXcXc2L2RRNUE0SVBVMDNq?=
 =?utf-8?B?Y2dDQmlCWFpPbTNBQ0I4bEQwTHAzMkhNSWlBS0RaUHEwVDNMRHlCUEhvSVZ0?=
 =?utf-8?B?WWtZSlExQ1hoajJQcGVqK05IVTUrV3JBZUxWT3kxanVYMVlvcGNvTWdQQktE?=
 =?utf-8?B?amdqazUvWEhHbEN0bkhNa2tObENQS1g1L3ZnYzBFMnR3QlYzZzMwTUtQUWJM?=
 =?utf-8?B?RnhudkxKaGtHKzRiT00wTUNvN2dGTlZ6akNrVEoySllla2ZRdVlIeVpnUXdU?=
 =?utf-8?B?dmNzclBWdjUwczhRMHYzQ1lxQklCODFtbW5jWFpleGxjNlNnMTZ2bW9UUEVO?=
 =?utf-8?B?SEo1Y0JFNllVWittSHlYdjUvMGhQbGl3YTZ5UXMvVUl4cndySkN1dW1ORk9k?=
 =?utf-8?B?eCtYUkQ1NWxQVkVtbVJqUlovQjIvWGdHU1FPZjhoYmFRV2xZcUJQRi9KU0Fu?=
 =?utf-8?B?R0M2bFN4N0R3azFsSVgwdGFqOUVHc0FkK0hSZlJMZlNGbzVjZ0lBcmpqVmVv?=
 =?utf-8?B?STRkMWhxd3pDbUsvS1dqTDBseUQ1U05ONDhhaFhzcWZrZ1RMWUhLK05SdDJw?=
 =?utf-8?B?Um13UkZKYVRGY2pyR2lqeGtKcWplUHQwbncrYzYwdS9yRW01Szl4UWdEUVhl?=
 =?utf-8?B?N1ZPRHFwS2hMN3pndkd0a2ZCeTFudkZUdTdlVmozQkVWK2NNVDdsa0RHbFBm?=
 =?utf-8?B?amN3V1pkbEd6TXJHenRuVm9wZTlaVTdrSmwzWHgwWU9SVU1VbVpieWo0cC80?=
 =?utf-8?B?bVhoZHlqTGxzM0t3VHllblR2czJKRmJWN0VpUG9OWXE5d3NBK3hIK1B0NnY1?=
 =?utf-8?B?SHQ5a0lPVTV4VTh5RFZDZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFAvMnorUnF1Q0pnQlJUY1J0bDhRc2lKVXRWSDNoQXpDMWhJeUpvL0YxT2s2?=
 =?utf-8?B?aEI4blVkdzl2SU52Rzk2bjgwRzltNmhESVlVMGNsWXJjSE1MMGc3UkM0WUxI?=
 =?utf-8?B?d0dXN3loNkFMWVNHZ2FHNGorSHRMREs5YmNqelFjekZ2UTlpWjlmeGVFcEI4?=
 =?utf-8?B?Mm1Ha1lwaXl2NVgwUXNITTRmU2UxMVMvTHZpSXNCcVB6YlB2b1RpaGtCNkZy?=
 =?utf-8?B?a0w0bk4xUytoZzFmcnVvdDlCcHg0bUxuMEg4ZlpXOG9VME82aUZHa294U3VQ?=
 =?utf-8?B?cVB0MFFkOE5pUzQxRDF2Y2h3amRZczgvdDRWRURCamZOUkdUcXRHOWJvR0J2?=
 =?utf-8?B?U0g3dThIWnh3bWdOaVk5TC8zbGJJbFlLaFJVaWZqNEtnYU81Ulp5TVBvTDNQ?=
 =?utf-8?B?K1VRNXRYTHFCM2hvYStDRW5IV0VmNEd6cy9YUUpKakl2b3pUZS9TMUpsSVVn?=
 =?utf-8?B?VXNwK2RENjRrcGYrR09MU242RmY4S3oyR2hITlgyR2dYeGVnWjBkTXhwYmpz?=
 =?utf-8?B?WWRjaW9jRHY5V0xMejhHNDdoYTAxd0hmckZSMndUT3RkQkNOdEE4b0RyTEZ4?=
 =?utf-8?B?NWxYL1g3V2xNdXNGYW94KzltanBaTFMxeDdwbGtsTVl3M1crc0NNN2pudXVJ?=
 =?utf-8?B?bTA1NWhBV3UzcGpPdGNTL3h1djV3ZEpwS0ZHUWJlY0d4STVHMzlnRTZ0c2Qx?=
 =?utf-8?B?eUVzMGFBcXB3dFFaTVB3YWRPKzFlVHlDVWhWcVRhVmc4RW91QWpDamxONWdY?=
 =?utf-8?B?bldFWExCSW1UNjRBV2hPWXBtWE1oc211ZkJnU3F4YUEyZXJCdnNoOGM3MDM0?=
 =?utf-8?B?RnFXMk94Z3VoQmo4RnZvZjNWUjFGUGJyNVBDVkY4WFhRM2w1bzVKeksxSXdi?=
 =?utf-8?B?UkhQZmQ1ZVpWRDQ2ZUlFWVlwVDBSdXdvK255T2sralB1TEZJOXVkSUdhbkZO?=
 =?utf-8?B?V3FuREJYN3VQZHRBZ1o0TkxlOHB2MGR6RnB4UmhhKzdiQkpVMzVMalZKczI4?=
 =?utf-8?B?NFc3VmdFQTc2bTJEdU1nQytaNk1GSWNUMi8zZ29TYXAyTHpyRjFjeVV4K2Q2?=
 =?utf-8?B?Z2RtZ3B3TlpPdWdtSDJOY0VlNTQ2NHpCQzJXVWVSc3pwd3FYWHlrb25iSWE1?=
 =?utf-8?B?VFdLdzk3ZFZWUUJRS0tsbDhHeVVQWVRCK0V4NysvcXpZOFlrRmY5YTNZMG53?=
 =?utf-8?B?RFhjR0U5K2k4MkhMaHc5NzJ3TitKYkQ1TkhoYXpYendDaXBnejZlT0xYZzB2?=
 =?utf-8?B?YVAvWG5jYkRIcEdLaHROSFBFa3loKzBQYzVqZ2RUTkRTRjBHM280d1g4bFB4?=
 =?utf-8?B?K1YyaE9icWFSd3p4VjJZMWY2OVdRdDFJQWhuL1llTytEOW9oZHZodDlpbGw1?=
 =?utf-8?B?N3hSUE12YWlCdUNMZEpLZFZsd1ZGZENwaFdZNGc3SStSRDJlRTNpRUlXcW8r?=
 =?utf-8?B?TzNqbE5wYXZ4VXE4QzI2dWFUWnN6eURIQllMY2tBWHBVV0ZRVkVEbVNadjlw?=
 =?utf-8?B?THpDd1NRbE84N3Rrb21xb3pyaUhuS0pocnRMK1A1ZW9IMFZCUHo2VjVCRWF2?=
 =?utf-8?B?U3Ruamp0SitqMGNKNTNOV2V0aFptSC9zTnRYVDFJd0c3UWlYeUJ3U09wQUZx?=
 =?utf-8?B?LzVxTk16MlhTUXdpSXFPc3BNSGJlU3dXbGpKdE9nZGxTU0pZR2lPeFhmSTlt?=
 =?utf-8?B?UlpJU2V3UkhuOWxpRk9wUC9TMHVhNkw3MmFZcUdTMG5LSFRYb0gzNmkrRzlU?=
 =?utf-8?B?YWFPZ084K0tDdUxmT1NteEJpNVJoR1JQU3BldjVlbVYxaE5JOW9hcDVyK09h?=
 =?utf-8?B?Vk9YcnR0WTZBM1hEWWVXaFV4VG1hS3lhclJiV3RwS2VKTlJaREZiM3VYOTQ0?=
 =?utf-8?B?SXFKZmVlSVp6NjhTTUcyZVk2YVhLcHpVZXVHRkNqQnBsdjBzekdqYnhwc3pX?=
 =?utf-8?B?VW5YdWs3L081YjA4QnZ4OHFDOVJzSmR5STRkcDFENENkMmtkamdtZFhONzlE?=
 =?utf-8?B?UHRad3kzcno0N0VLcjFoR2lKMTZtRHJxUGpsb2RycHlESGNpcDVUYzFsNXRR?=
 =?utf-8?B?MXdaeWZQR2JWMWw4NXFYaW9tQzBXQ2hiMEJndmlaMmNVcnUxcEtWL0VJK2FJ?=
 =?utf-8?Q?zy2skBOpauozLcnXtCVtxUGP6?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e73ce10-d0df-4ca8-2e7b-08dd12d2e9d6
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2024 13:12:03.3848 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R0St5Crb+AFLnYFuSWin4weWwPfvz1OnfxoQgCMzD18yNkAKT13BkkxyzSgERt+SMKwFnp8mpjNe9jpTx++weg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8698
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733145136; x=1764681136;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EuPiWFoYh1ATECh25rfV0RodjjZ4cOlJJN29HkkwS3U=;
 b=icHfvF/Pbi59AelVbyhQRAkvr+PbicAmHIpmNs5qEhvrP3eJXmjprO2U
 XrBFr6weSvHQ6CCV9r5OQEv8BJsFMS4uvT6/U6dkAmgQlDuNc2zt49/1H
 x5vEsHSZLWse0UF+IYr8oOvnuI0CapW4KoBTvlBYkUXzoXmZM02zXm5QT
 EBdDRDuooWb0xu8bLFmLEr5jRLTBGeu7t+rVYsoqof/AfmJyoju8QNV0O
 DqA8rrBG/R/C2vQ1LCRD7MkZEiRzsAQcFGBxQ+Cw0F5ct84fhGMGDGs7B
 DAHfNV3CplV7B4V40TeSNoizl2H5A6u6poXPKrBliwjE/oU12HdtHpmZk
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=icHfvF/P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: finish pending IRQ
 handling before freeing interrupt
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



On 2024-11-11 7:54 p.m., Jakub Kicinski wrote:
> On Fri,  8 Nov 2024 17:12:06 -0700 Ahmed Zaki wrote:
>> From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
>>
>> Wait for pending IRQs to be handled before an interrupt is free'd up.
> 
> read the kdoc on free_irq(), please


IIUC, this patch applies synchronize_irq() after the IRQ is disabled. 
But I will move it there for clarity.

Thanks.

