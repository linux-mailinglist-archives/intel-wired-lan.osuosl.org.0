Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNXdJcAM7Gn3TwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Apr 2026 02:37:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5A446446D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Apr 2026 02:37:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECE2E40CC7;
	Sat, 25 Apr 2026 00:37:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gk3mVgRoX3Bh; Sat, 25 Apr 2026 00:37:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 690BD40CC3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777077437;
	bh=xtlvaKVh95N0a0hH03CEWUsF9ZJH7PBFRKK5H2DcOVM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1sOPi/WaJcwD30UuKfAFm/lIzk7MT+aH6AYCXiWIPPDT2QSW9o2QtoFJlt+RUvw87
	 aBBkwPere3OrX3EFyf0T2nIltRhSBRFNqLYVttgtORg3eAUQubUKhBBgQQ/R0PXAIR
	 qZylunAiqp1DpGmIQDhPaJLvkbo46zcNTjiWxWsSXImt6GPCk+9AjZEfSrnAMFDd0h
	 1WyDvWLsDC2ztuhfBzNXEvRiPqG+Bm8p7B373zptvOy0SvYzvNBxfO5rT5J53TiSb8
	 PJ6D11eurt1dkLW5HdSjb4BfeefDz8P3UM9wmGrE+TsDRz6pGbxYlLUZ2fusOaoNuG
	 fyWJREXzc22PQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 690BD40CC3;
	Sat, 25 Apr 2026 00:37:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 16886194
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Apr 2026 00:37:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F0A1240368
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Apr 2026 00:37:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S0u92gXngVyX for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Apr 2026 00:37:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0A1AA402C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A1AA402C6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0A1AA402C6
 for <intel-wired-lan@osuosl.org>; Sat, 25 Apr 2026 00:37:13 +0000 (UTC)
X-CSE-ConnectionGUID: W1gQJqsjQymTz7yB3aQSqg==
X-CSE-MsgGUID: PUx27jp7RKCClu3Y/DuuUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11766"; a="77768098"
X-IronPort-AV: E=Sophos;i="6.23,197,1770624000"; d="scan'208";a="77768098"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 17:37:13 -0700
X-CSE-ConnectionGUID: CLeqwgyxTzqDhoiBbFtIcg==
X-CSE-MsgGUID: BbGDvyMIQCON7pMc7D9TjA==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 17:37:13 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 17:37:12 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 24 Apr 2026 17:37:12 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.10) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 17:37:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lhaVdricQ8fP2w03Oi0wknSzVgHBSC4A/sY2Zfceg07biU23o1GgBaJowPc2p3revXO+jY9WpOWPstdTpc975V8oRFZRPIDBC/4SP0NGMOG+qtUjDWr1thKLdjRQSQI3MgY4VQaEtf8nRjRL+eZ7I0+l8AOg9sFtaFWb6zfY4dKub4D6IPtD/YoRyCe7J7pZrCcgmEDd8EEEZyL8vQiUe6JFpqlebWBMGaCHWd8Y3BtSF3pd+llqB9jixCdeEClAsRQSffwMxCbTWccaI+97UiXIjWdWqFmfmZwSIljHZl5cj7M9IBuvisXIjNu1ZkH4CIt0N4LzbAf17MO7b7sATQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xtlvaKVh95N0a0hH03CEWUsF9ZJH7PBFRKK5H2DcOVM=;
 b=TLZF9FCd8kqVyYQdiDagybIh8cqnNV7oQiI5HUe3DuRxCFXUbFzOU3BdHBLvBoaw9EqOTgwJKz5JvbwwX/m+8D2UR9VSPJ3o1gjlNlHnHf3F/Qk7DXfXUKat+rjgatNK8EG7EoHuUlx2x/ZO/QLrHD7FkeX7aKxW5cEp63bx2skYsWBl25PFK0ekQZWF9ei66JlkqwqSmgcTL7FSnvjiIxhEudEaQq7akve6tfVnkrczXU0VPUDyOffeeKvteIqYrPJGBaF79c4Zlm19bXAZ1IyWCzQModp8f85ArSemPw4ylbFPjeu53yd5qJqWUFHctTwf/jfKgyfSxqjEiHZZ/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 PH3PPFD9B78DE02.namprd11.prod.outlook.com (2603:10b6:518:1::d53) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.21; Sat, 25 Apr
 2026 00:37:05 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9870.012; Sat, 25 Apr 2026
 00:37:04 +0000
Message-ID: <30b2fade-2545-4f2b-98ad-c6449512c04e@intel.com>
Date: Fri, 24 Apr 2026 17:37:03 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, <intel-wired-lan@osuosl.org>,
 <stable@vger.kernel.org>, Jose Ignacio Tornos Martinez <jtornosm@redhat.com>, 
 <netdev@vger.kernel.org>
References: <IA3PR11MB898664A49E614F197D4FED6EE52C2@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20260421111236.875379-1-vinschen@redhat.com>
 <20260423185530.GI900403@horms.kernel.org>
 <aesqjovwYNeLlfX4@calimero.vinschen.de>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <aesqjovwYNeLlfX4@calimero.vinschen.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0145.namprd04.prod.outlook.com
 (2603:10b6:303:84::30) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|PH3PPFD9B78DE02:EE_
X-MS-Office365-Filtering-Correlation-Id: 11a3fbd0-0259-4883-a1c5-08dea262c612
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: pWjdxBFk19GEBril/cUYdhehib6s1GLct7YfQ59NZ3PTHXZ5e/5wmS0PkZjUAsrrW2mNAEymKAmnbEyXnW+P5iNwkQKOB3IsB9fSlqbDAvXAQnBI0JnaYtMOLFwSswBxMHUyED18TMQIo33SI8U+O5ZILcjfKINt9KNV8DVhTfPk/qcIqxCdoqK857XDV4Hu83UAyjwXni8cHz8+tp3837y9N/sSG+MjZi6efb1u9Qn09y3mUL9Xkugih0ntnLSnYC9aD7O22xpHpEJPiFA1D3wejLQ9UpNG2cT1WyOxTJZibkZ0GI0aDwm5GIrgnhT5uLdQMYkaFdL0992wxCJGkkvw0drK5YeMgvFJINheq6TjpVSjUoQ8vcC4XBuImej9pnTWokC44o5trZox+WzCrjykNps1PQhio2HKpp69pWPXJcSri/c+MGqRLzrs4IZTVfz8oRkv0MthHylWDLe0ka6WQdZ9RVMsNptYLrgmKcueArtKiMiIfZ33VD1zaznKb2lVV4EUUMVNrN77SruYlVuSVu9yCnEPy9fz41GvbNOWBW/TVnel3egs6wDRwu1QSgDMlQZNfp6MwpFZnKKloDmngFI68cz9Y39lm9rkEqowQRxW/5dY5ofOciQXwjJdnIgROtJevLoPdFzgniQnkuhD7Av7k/hA6FBmr8pq6AT9igrTtFgoaW5b3LqlMEmkB72zYC/SUBbU7weQ5nnZYC2EY6/VQdgSo9B8elosoBE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2RoS3pZWXhsMXdrVy9NTjMrR3oxOXBPK2tFV0N4ZnQwZWZuVTRtTUw5cVB2?=
 =?utf-8?B?T3BvYUgrZ21LdnlpQlYzYk1IMUNpelhGcWhqQ21BQ2NIdVlydXgvMFdkZWh6?=
 =?utf-8?B?WHJHQVZFQ3ZIQzlXa1NrK2tTS2EreXNhaXFzWXlLVmpEZ2hIVFZzUHRrQkp1?=
 =?utf-8?B?U0hWaXQrN1ZDS0JKNjhFeUxkZjdjVGw3SmFkMk96UDJpRHlTbWRnM3paelVw?=
 =?utf-8?B?bE5JOXVtSXd2a2tJamtxTjdSMU9sUGp3RUZ2VlNXeG42L3I3RFo1azcwT1Fx?=
 =?utf-8?B?KzVaTk1FZ3dROHQ5dUNnNGgySXVGWGxaWGxHWFlKQktOVERJNU5pMlJLMitr?=
 =?utf-8?B?SFE2OEczd05qU2tDdTllS2dKMlJIWXBYSUNJSWFTaGpJTWVvYnY3dU9HTE81?=
 =?utf-8?B?ZjlIQmdrQlpaQ2pWMFBoT090SG9kbWUzNnl5QlFKbmZjcTVnQlVQOGFzVzRv?=
 =?utf-8?B?dFFXdHJudEtSZGVicUNuSGFVSHUxYjY4aTQvNUNkeDd2Qkkycm1uYzNTbTUy?=
 =?utf-8?B?TnNVY29vU1R1NW9oNUErMGxBSHd1NUUzVGN0eFhwU1NnUlk0dEtIMmNJbkli?=
 =?utf-8?B?S0FHTVQzNis4NlE4eWIwMTN2R0RrQlkrYWJvQUlsSU1XQzNnbHZEUGQ2bjdw?=
 =?utf-8?B?Qy9kL1lpa2gxdGptTVBXRURTVlI3TjhRa21HN241TU53L0UvRU9HNTBlcktl?=
 =?utf-8?B?VG8rdGJBbnZOVjhUZ3ZrVFRZbmxpNWZ6QUFPWjh4amN6NTdiMTFleDNOQ2gv?=
 =?utf-8?B?UUwxeUJ2bmdydTJYVlhlU1JDMHFJaWZPWkd1SCttRm1NajlxakxNYThHakcz?=
 =?utf-8?B?UU5qSmlTSHAva0hDWHZMWDBCQVh0VzBSR2JNUjg5WEVPdDRETE9xdkpGM3BJ?=
 =?utf-8?B?dlI0MDViQkFoazRON1ZzSDJCNTY0U3FVV2luZTMrK2IrYzdEYzVobFZsUkdp?=
 =?utf-8?B?ZGJlUkJ4MVBXQXFwbnV0SHN3SkhKdDFaTjZZbWlqS1JDZGh5T01Fa0UyajFn?=
 =?utf-8?B?SVUzUWdCZDNUNC93bThjKzlzT1lPQ3ZyU3kyVzN3d3hld3RaSHpoaUx3NFlL?=
 =?utf-8?B?TE9ud3I5dC9BaXZ1RkZaNlFiRG1nRGR0dEtjanBUTkpsbkdielBmUHBXVWxy?=
 =?utf-8?B?UXZlTVpTWEJHOFZWcXVaOVp5a09qU3RsdUtMdko0QU9kSWxtNWRHMjV5ZlY1?=
 =?utf-8?B?dTErd2k5U3RPMGlnSUpYYnkzVldSNTU4clIxc2c2ZnAwVUFSWExaakxlMHFD?=
 =?utf-8?B?RitwSlZNTnhVQnZmbkFFUWZNWS9UQTArUWV1eDNmNVhYeC9LVHdrN2RJZ1kw?=
 =?utf-8?B?SU5USlhqdnlXLzZVNzNLZFBzMmtFempXT2p5eG1FWjZ4MFRpQ1BEbGNubHg2?=
 =?utf-8?B?eDVPbUZRWXlRR2pSS0lWVnJLRXJjVmRxMnJ4Sk1qa1Z3SllBNFFiRWFKQjJj?=
 =?utf-8?B?ZEpWOGxoaDRDckZKWTdKd1NVZStNL1orSXdzMWVveXQ1WmlMMkhTdUFHWkg4?=
 =?utf-8?B?Y3p4NWJ4T2VoUmVlME8rUVl1Umk3WG9iZzJScGhtWU12Z3JURnAvVFhKSUZj?=
 =?utf-8?B?bVBHdVVUQTRmVzg2Ry9iZVFYWDMzbUtHek5ualNvSFFtZUxWbmdOOEpVVXdw?=
 =?utf-8?B?a2Jja216aWZqcGhpLzZyVHRpc0xjN3RZKzFWTjd1d2RHNDc0TDExajZaWjNN?=
 =?utf-8?B?Ky9rbERJMVc2TG5VSkZjU1ZPNFpwZTJvWEpuaHVLVDh0NXl2ZUJnelZ1K3RH?=
 =?utf-8?B?ZHhlV21LdWVWeEdzZzRuWHd5WGxvblc5M3V0b1hUaGRTcE5wSXRnaWQ1N0lv?=
 =?utf-8?B?dFd2bTlXdVdUSXc0VGVGc0V1cVdqbEQzOW1ZcTQrdy8rVE9CbzdPejhhdjRO?=
 =?utf-8?B?S3hld1ZVZHVUSXZvK0tWVEN0NlEvZEh5TFFJeTVBL04vT1pPQklvSGVWL0ZT?=
 =?utf-8?B?SDVUVWlFNk5RQ01jVDQ3NTIxSEtXZlVRSUhOcXU3UGJMNzdTZHU5TUVabzJ1?=
 =?utf-8?B?RjNKMUJJS1BTeDdrSnZmdVFJTGVJVG5vY3NKSVpBTWVrT0prdlRCWHdRVDM4?=
 =?utf-8?B?aDFxc2hWU3NMV3MxdEl4TlZOb2gwVVg3M1ZQSW5DWnNUTE1wWG02M2dHZVdv?=
 =?utf-8?B?aVZLb0ZHeCtIaEJBdFZRQVZjR1JQcS9IU0l2NWVET1ZTR0p6ejk2QkxiUGpC?=
 =?utf-8?B?YTAxS3V6b1M5dzRLRWVUeFVuSUI5dE1YVkZvbmE4andsSFpWdnRaay80MzZr?=
 =?utf-8?B?aFE5TTlmaXh3R2Vpb0hTTzA3SXphSjlCQ21RaHBOZ01qa241ZzNmYkR3emFy?=
 =?utf-8?B?TlJ3ZW5GTGpsREJPcDBZZEh5alhrUEk1YnRucCtMNU1ubGhwck92QT09?=
X-Exchange-RoutingPolicyChecked: q0crB3WNJXjwgT4ifNFhNFEf//3odTvhab3IRaXdPUpAlXNyLF1fHYXTuNF9rFK8oaoORru8mhttuto5X2LNAYpSgusnEzKCnwsKFzG3Fi4ODcR77gCSlBwb5Y2A4Ea3waAzViBS5SS0bGu+aSLwJhr9hqCV6ubn5w2I90p65Txg+ZrRMBfzmj1EXoWeg/PwCwjsEVEjEGYXkmcS+or+MI8ioDQ5hRS5Y/C+GS38a5/FpOg/yeoiUGed6gI16ZPPTdnbwS0oZ4ZgOtK94JdM6on97gUJ4np4u9cSASQ5hqS+v37cZjhiwfoHEDr9U/BLOSM/lWTxhMCJL6MFa2zkCw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 11a3fbd0-0259-4883-a1c5-08dea262c612
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2026 00:37:04.8962 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oYt4pCgJ3OrKq6OUQbkCEVBPIxFukDL9cSjHGOiFc9IpYXGlOgL4YDn12q+xJPx792YP9+hw6/NxClXRWNzk7GPrz7A1AjK2ydEOIHp0GnY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFD9B78DE02
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777077434; x=1808613434;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/KyMMiE99DOSMpYwvV3NvGHfLTj9Cu9ojiHtAcbewSw=;
 b=j4B8Qs2BCA3ctUUqsajy4xI45yeTAODmZxCFHF2Yaeo1QunovRWVJXqf
 hqiiX0qAizXMnBV+A+9XsdiqiF/PFJfJtU5q7/cuDSVUWOVDTByFAu9z9
 iaO7o5sgouaq3KAYn5BY6i7Om4UOeHYOwU9byNCtltPwsjei2y8XkaVpZ
 XwsPK5xuOAeNbpr3ap8qjur/l3a8gOcomERyJ/QUGnXN9P4LLz7NprEPB
 783T6UtQYm45+9BPGiYU8ynk2do4X444tPjzfeGXvxWDKndTbLbLftjge
 MDXVq/e+J+N/zSdWrGUIwjK6gZnFxXNWsWeCsAb/fkQ1ET3n+WB2nv8Rq
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=j4B8Qs2B
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: iavf_virtchnl_completion:
 drop duplicate ether_addr_equal() test
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
X-Rspamd-Queue-Id: 7C5A446446D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:intel-wired-lan@osuosl.org,m:stable@vger.kernel.org,m:jtornosm@redhat.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]

On 4/24/2026 1:32 AM, Corinna Vinschen wrote:
> On Apr 23 19:55, Simon Horman wrote:
>> On Tue, Apr 21, 2026 at 01:12:36PM +0200, Corinna Vinschen wrote:
>>> This is just a simple cleanup fix.  Commit 35a2443d0910f ("iavf: Add
>>> waiting for response from PF in set mac") introduced a duplicate
>>> ether_addr_equal() check, so the current code tests the new MAC twice
>>> against the former MAC.
>>>
>>> Remove the outer ether_addr_equal() test, remnant of commit c5c922b3e09b
>>> ("iavf: fix MAC address setting for VFs when filter is rejected")
>>>
>>> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
>>> Fixes: 35a2443d0910f ("iavf: Add waiting for response from PF in set mac")
>>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>> ---
>>> Added CC: stable@vger.kernel.org
>>
>> Hi,
>>
>> This feels more like a cleanup for net-next (without a Fixes tag)
>> than a fix for net. I'm missing where the bug is here.
> 
> Yeah, it's not a bug, the "Fixes" tag was just supposed to point out the
> patch introducing the duplicate test.
> 
> Shall I create a v3 or is it ok as is and just goes to net-next instead
> of net?
> 
> 
> Thanks,
> Corinna
> 

I can make a note for later and either myself or Tony can forward it
net-next as part of an Intel Wired LAN update when the merge window
re-opens and any testing has completed. (Not that there is much needing
to be tested in this patches case)

Thanks,
Jake
