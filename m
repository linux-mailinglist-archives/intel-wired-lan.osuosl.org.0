Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCf0JoWm5mlPzQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Apr 2026 00:19:49 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D129E43491B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Apr 2026 00:19:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1EB308316F;
	Mon, 20 Apr 2026 22:10:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zTMhnFsLpiZj; Mon, 20 Apr 2026 22:10:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 493A58317B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776723050;
	bh=1hUkCsS0cbs7OYBu47xTgjx/C3O5C6KGhIsTo/IsRl0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1M2Gc/kugfaBPKxFd2GCjzVXUwSqSAZtwZQQTSOjJiVuke1rlsWyfLKE0NAS5CwBL
	 Rmujl9oes/Jmone/fZ9mroNsCUKL7eMeGGobYFTHB8t/88L4Rgf0YAyR+QBGgmXpuZ
	 pJgg1JsaBsIJ9UuP4/2U7J+LLwJFFlMWdFtQlNBJ8OforztbzFZN3/F8C+34xaspBu
	 +TAszvdE4sV1OpXhFmzBRF21ojMY2huB0bO3ApzeqGF15ZBRorc7NEBjNynYTVw3a6
	 fdTNafliTICivmsKK3UHpuhTwPVnfbmZ74M7Lcn87QEgt/AlupcGMwHBhr1PqDoeRy
	 E1xniiq43l1Pg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 493A58317B;
	Mon, 20 Apr 2026 22:10:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 27AF524D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 22:10:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1976D4027C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 22:10:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mzrhFDDiFaj5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Apr 2026 22:10:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3AC3840084
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3AC3840084
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3AC3840084
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 22:10:47 +0000 (UTC)
X-CSE-ConnectionGUID: rQaJAExMRj+7+cZG4nO4dA==
X-CSE-MsgGUID: I0gUeV29SZWtTiFcc8V/GQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="87949938"
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="87949938"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 15:10:47 -0700
X-CSE-ConnectionGUID: dEK5G2eHT1q5NuXJ4gVs7A==
X-CSE-MsgGUID: h+V1PACcR2OWfPg8hOzGHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="231721524"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 15:10:47 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 15:10:46 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 15:10:46 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.40) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 15:10:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DACUquxNgQQaggg/RxZnxkpFXSIHm52K9sJo1y7dV7OVbRVS/v9hFUHnM84HEDG1defmEpa9NKnSUxrXMxwcVtHMw9Lb5/qnska/9olxtGmzF/rTbi6cqjgXG/55D9DkO/qPv0IjjMG3rDHlMJyBlqWxq+/eKaPfg/mqn5xRHqufQ0yzSKffXka9582/ttFqZUNjc6fdd3Tu2heFCwt2Q/1Kk+URGNbqjq4ucGYbuvKPCk9O3UEObqW7yZ93UfwTtd6ZWLFcx1QNl1OnjlNxCKcHjP/puiGJayhrQuRwYsVGyd6cI+S3VLL4PSetjwPxidfsPD/5RV7O2OR2+gGlOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1hUkCsS0cbs7OYBu47xTgjx/C3O5C6KGhIsTo/IsRl0=;
 b=K0IfW8aE9SbCV5e60dnr2zlmKNf/LpI9MtMvlVtkwbcR8//sIgErq8ZxgDEO4/8j+Yyb+dfg/gi1bF27+d3xoT2e3zUVu1Hyyoddp6CbUW4WTAe/LMkSR1CFJy/kgtBqIT0mzVIM/bjXzf9oZW5UeIHaRXypSqdvAyU7+juFyVWo34mJ50lVkmcumXPnZDagPfC23uFI9Y43vEDTbm7f3zMzCgAE3ytnKiAWYgwecFdJLYso1UQn5DqBOpZvbn6cihIIDxFeyUCVkTTM84K4+FxOc8A22LLiR6gvJN70sm6AqcqQfpufvtN+/oCbhzX1wMA7ZTjTfghtq1sDHybqFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 PH7PR11MB5916.namprd11.prod.outlook.com (2603:10b6:510:13d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.15; Mon, 20 Apr
 2026 22:10:43 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9846.014; Mon, 20 Apr 2026
 22:10:43 +0000
Message-ID: <01f7d0c7-f7b5-4402-9636-db96e7555f86@intel.com>
Date: Mon, 20 Apr 2026 15:10:41 -0700
User-Agent: Mozilla Thunderbird
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, "Aleksandr
 Loktionov" <aleksandr.loktionov@intel.com>
References: <20260408-jk-even-more-e825c-fixes-v1-0-b959da91a81f@intel.com>
 <20260408-jk-even-more-e825c-fixes-v1-3-b959da91a81f@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260408-jk-even-more-e825c-fixes-v1-3-b959da91a81f@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0035.namprd04.prod.outlook.com
 (2603:10b6:303:6a::10) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|PH7PR11MB5916:EE_
X-MS-Office365-Filtering-Correlation-Id: 4027d092-0045-4110-6dc1-08de9f29aa2f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: gdzq3FWyTY6Lw1uGCslkD3iuZtEdatoQnjbxAyLxd1xe1EmN2mqvSqOhOqay04f18XDbPeGOp+y+XsfvPyGkGumnaXqX5R9YAti8y/RJxobCO822BiQrfBm5ZIE3w5OyK0qvpcrNd9eOsIqe3IiY2+UtIlZizI/o+B8f0zHwfZD+jdyNOHP+DXhkwnR3cY6G0TWtx8ln+E+58K/lkDMPe9rQvCdmF29YNL/sUeLkJQPJFusTqW3j9Tb0WeZCh2fZwm07g55VvmNeLe5Pt8D8XesMkmM+C55U+LUHl08HQpEqvmkc+PFYwFNwfQpFmCKcJd6nr348iEHdjLT5wULlXK8gLRXnkEzPmoJ58ihmJWdhvp74Gw3J4tDqmFVtz27LUmf9UZ8dgruxD9u5YgTbfHlHZiOBHyEBRpHxz/4q8dv2kCTBw7w3eIwB7w5VLSzD9gzzmT6F1d0ZDKOKlQCfISfaSgcqzcjdnMaiQ1SOnoTbr9Pn9hKB8/TqeZPm5C99YEQqsN8yTBcdif6P+CrDjYoWJNopNRuIj4yRk54LKqHLzpAgYtrhjk9Gw7RyMUV5GfnNMDF7Ea9PaiRT1McyNS9Gdv1VuZ7N3pQsVLL9HMpLgQs6fN6XYdpYjUxj2kJkDEVo6V1f1tHaZAlaZOLaYaEag6Lf5BniZaI5NjFIN1Ed/HtRxVTfPWRkJeMXGDr+wQRTQh6Yt658ONmXHzLYWRQqZr3a+yt6Qt55b7cpuc4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWs2dll1d2R1d2g2NnhyVTI0U3daS1c4elZrUnhwS0xWZmlEcDNOUkNEc1hE?=
 =?utf-8?B?cjZjWHFoaEwvMmRzbFJ0MGRZM1MybVVDSENQS0N2ZjhZcExKdzYxRnpEUG4w?=
 =?utf-8?B?bGo2Vm5XditWL2s4Zk00Z3RGOENxWVEvTmRFMk10WHhIb1dIWm9TZEhwZXdB?=
 =?utf-8?B?UkNnR0ZrRzdlcWZjV0dzOFBLOHNwVVU0Q3gza3NXZFM4ak9kWDNHdGE2eU9q?=
 =?utf-8?B?OGZnaUFucjdTdmJrcjVCZTl5M2QwS0FzSEhtUHJWeG5uWFJiczhwN2p2a045?=
 =?utf-8?B?ME8wd004aEYyM0xYSnEzL20wS3FibGcyaGRnQWZlMXFnenQ5c0w0cVdBdTBJ?=
 =?utf-8?B?UTBodklzVWF0aElqMnZzSFovWVN6a3ExR3FxVTN5Tlc0YWUvL25JUFphcmVo?=
 =?utf-8?B?bDBqS3BMeXRpWHFpU1lYWDBaNnROMHp2WGhRYkE5ZzNvNmphZXF5d0Y1WFBw?=
 =?utf-8?B?QUdUc242VDROTmF4VW94alFOMlp0UHZnL2lYdmN6M1ZBTG5Wdm5qMjhHNFBX?=
 =?utf-8?B?T2w4Vjg1TnBCREZCYmRDdTdNeWVtRnhMOEdkRHlLeGxEVit1VkxZamxIR0lp?=
 =?utf-8?B?dWlWZUJQaElTeW9WZlM5MHExK3BwTWdlVEE4cUQraFJlaklXQTNmTVpyZ095?=
 =?utf-8?B?N0tpMDZldjFmaTBLTnB2SCt1aWtNQ2p6QkNwejk1MHlMb0ZLY1ZBU1VLNGs4?=
 =?utf-8?B?QjZOVVA0MXFOZ01WL1lzTStGRE1DeWw1U1VTSERLdlNsTnorVjBEa2hYRDRl?=
 =?utf-8?B?ZDVSTnhieVRWcG56M3pzcWdqVHhTQmQ0Z2J3U2RRbDkzMzMxbkF3UWV2Ynpy?=
 =?utf-8?B?Zmo4S2QweExOZ3VMaWhxUVkxdFFaOEE2TzBBMXExN0tNVlpkNUZZNEYzYmN1?=
 =?utf-8?B?YkE3dVJDZFZNbkFWcHZPSUFJTkYxMDQ0ODUvSEpzZXJDZ0NIQi85L3B3T0hh?=
 =?utf-8?B?ZCs0Q2pZR0tHdWRVQmF4Zi9WRHYzbHMyakpEK3ZqMWdHRHY5MlZ2QUtWbVg5?=
 =?utf-8?B?OVhoNSszV2owK1RldDRxb1JNeFFjdTlTUjdXQWNnMC9SZkR0Q3JIY1lXNUpQ?=
 =?utf-8?B?YzBwYTQrQnVJTDVWUzljeVE5cjMzWnJFZzFSZzVkTGErbVcyOUY0bHZOcHlH?=
 =?utf-8?B?VE9QTXdObmVjZmhPUjIwMXY3ME9lb3E0S3dSbGpncGtsbi9UYUJDbzFEeHRJ?=
 =?utf-8?B?UkdRYUJNeUFJaEtHVnJSb0Q0aHNXeTZRV1cvOXROMk1nTUMrYVBINE9jZjZC?=
 =?utf-8?B?UENmTlFpN1pQV0xyRm90ZTNEVFVSUEgzdW8xSWJDZVRnRExSUUhDSG9DcEcr?=
 =?utf-8?B?L1FFV0FBUm1TU0xpOUttS3hGTUg1eGhRalNxSDAyeklLckdMNGRXTWtzZ3p3?=
 =?utf-8?B?Q1ZwR0lHT0daSW80RDRrc3AwRUh2TGl4dVMvVk9MRjZHOG5vRno4QUNMRlNF?=
 =?utf-8?B?eWFkeWRGNVh1Mis3TlF2ZlZ2Um1Pb241eWF5QjNDTmZCUm5MU0QvNkJYUXVn?=
 =?utf-8?B?Q204TENraGN1a3licHV6QitPdER5dmVKWU1UdkVWT3k5MVU0MDlzUHkzT1VI?=
 =?utf-8?B?UGR6U3lHTlV1WXRQNWc1d1lZNlIvaXJkcXF5dk1TZ0x3SW1tMkpoMFFINzV3?=
 =?utf-8?B?Q2Q3bUQvcHlUZGFKR1h5MEdwdS90cHp3SXV2UjJJWlRVaXFhUitCUHBtbThN?=
 =?utf-8?B?QjFUZko4QnZHNEFzb0tzMDVMNFVYR0dNcUJncm1XcWhFdjlid01FOFpydWw5?=
 =?utf-8?B?dmVvMzRBUkVUWGhCR0oyQm1CaWx2N29hTWs2RHJDMUtJU0x3ZkxWL002LzRu?=
 =?utf-8?B?ZVhUekl0eDJlQlExcjNQRjhhaUlyZnRzMytHMXFGQVE0aU1PbVBiV1VJYnY3?=
 =?utf-8?B?citxVUhYVmlkZnQ5OU9tMXhhd2ltNUxBZFVJN1hPVkhVczNtc0dQZ2RPSkJW?=
 =?utf-8?B?ZUVNakdwUXVGSDlHRVpkZjFHaHh4b3FBUy9DV2FKY1dra0YyRUNmbmRXWlJ0?=
 =?utf-8?B?R2NmMDZoT1B1Q2QxSW9ubjV6b0NRZk5jRGtKbUVaZDhrUWptQ09nNHZEcWVv?=
 =?utf-8?B?NllUZzhKNnUrRm9ncFhwaDFQT3FsT05TM3pYS3YvcHM4QXZkSlZUQ1ZWclgv?=
 =?utf-8?B?U2luRCtjbGtNY3hnK2N2NU5zVGRqSWNBZXhZTlhyRFdkSzZlN1dyVGxWQXhz?=
 =?utf-8?B?OXBTVXNTR1FEcm5ESUdLOEIzMVNCSW1LSUlVOFpyc0VUVWpyYW1iSjJsRWZS?=
 =?utf-8?B?SWtmUkhRMStXMWY0UlBJMzc0RWwrTFBVL1JUbDAxWVFMSCt5SEhuL29hQklG?=
 =?utf-8?B?ZXBHOVZZV0lkTU1pMUlYSUJQbWREaWpFYXZJUEI4NWpWVlFWd3NLQT09?=
X-Exchange-RoutingPolicyChecked: LWi2wH++Tw8Qe1Oec9TorGxRQHfF06BZul4ZJYVyIiJiXAa+ubpl8y+42m6SeJDyBwLYCq3zbHUdWTMSSxaDthTXuA0/G7FnR33mZF+o4fLB5EF7wfD7pl5Kc/XPpVEraXeEtIhfdc+9BvnNtZ11FPyAiazOW1wVTOgsktd7mXzL+XO42zCB7yzhTrJfifMA6E7e8foNNjyNNmBIwNKzv3SAGxUoq4Cr6TbzreImbhIDnvCsFDPo7JAvWAWV2QSJk48tsKw7gQp3WJow+nSvGen4rCFhzdsWGuY2NOvDZUD2IaXPL5vXfrIBqvb6F+9js+VSMop+Myz84QtLKvo5gw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4027d092-0045-4110-6dc1-08de9f29aa2f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2026 22:10:43.3014 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jT1fStPPneib4wqpavPKACZZvSdmlMNHyPaMxlysFOa9H057/YMoxemmt8ot4XytIo/yHYuDi1AgAJdCf9BijrIENkSLBkR8DpffXcam6a8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5916
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776723048; x=1808259048;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mnPCOs5stKyeAQeH5Sw0NITCBTvB40DqjnCwmu0jbkw=;
 b=ef1MJpxLKM6ysY2WADCZz3pAGjdAFyR/mggBN2a1nhmXUG9Sn0Mu1eWF
 rzHxoLfOznz3xsrUirY67WxyDeWmBgi0MNDyCiZFB/Z5u8uOchiZCBMS/
 BP7VXAwma7OSJy/JLBT0ucf9aVUuhxU3p6oYtXqSkKLihD/y7j8on3nht
 n1S8OtG4WMIRwwt0NFbOWSd6fypRkJ5kSZWWIousprcL4rDR8CzdvC/Tn
 v+MskrLvheIlBkMVKLMnGfj6dr0vxN8H/OQGvduBP0UdSPdlWtD197o09
 RI692Z29LTyC6axdGg8O/8mhVdFISyAlBUhJABmXaYPopwI1zz+RG/+Yn
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ef1MJpxL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/4] ice: fix ready bitmap
 check for non-E822 devices
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Timothy Miskell <timothy.miskell@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [8.39 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:timothy.miskell@intel.com,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_ALLOW(0.00)[+mx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_SPAM(0.00)[0.762];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: D129E43491B
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

On 4/8/2026 11:46 AM, Jacob Keller wrote:
> The E800 hardware (apart from E810) has a ready bitmap for the PHY
> indicating which timestamp slots currently have an outstanding timestamp
> waiting to be read by software.
> 
> This bitmap is checked in multiple places using the
> ice_get_phy_tx_tstamp_ready():
> 
>  * ice_ptp_process_tx_tstamp() calls it to determine which timestamps to
>    attempt reading from the PHY
>  * ice_ptp_tx_tstamps_pending() calls it in a loop at the end of the
>    miscellaneous IRQ to check if new timestamps came in while the interrupt
>    handler was executing.
>  * ice_ptp_maybe_trigger_tx_interrupt() calls it in the auxiliary work task
>    to trigger a software interrupt in the event that the hardware logic
>    gets stuck.
> 
> For E82X devices, multiple PHYs share the same block, and the parameter
> passed to the ready bitmap is a block number associated with the given
> port. For E825-C devices, the PHYs have their own independent blocks and do
> not share, so the parameter passed needs to be the port number. For E810
> devices, the ice_get_phy_tx_tstamp_ready() always returns all 1s regardless
> of what port, since this hardware does not have a ready bitmap. Finally,
> for E830 devices, each PF has its own ready bitmap accessible via register,
> and the block parameter is unused.
> 
> The first call correctly uses the Tx timestamp tracker block parameter to
> check the appropriate timestamp block. This works because the tracker is
> setup correctly for each timestamp device type.
> 
> The second two callers behave incorrectly for all device types other than
> the older E822 devices. They both iterate in a loop using
> ICE_GET_QUAD_NUM() which is a macro only used by E822 devices. This logic
> is incorrect for devices other than the E822 devices.
> 
> For E810 the calls would always return true, causing E810 devices to always
> attempt to trigger a software interrupt even when they have no reason to.
> For E830, this results in duplicate work as the ready bitmap is checked
> once per number of quads. Finally, for E825-C, this results in the pending
> checks failing to detect timestamps on ports other than the first two.
> 
> Fix this by introducing a new hardware API function to ice_ptp_hw.c,
> ice_check_phy_tx_tstamp_ready(). This function will check if any timestamps
> are available and returns a positive value if any timestamps are pending.
> For E810, the function always returns false, so that the re-trigger checks
> never happen. For E830, check the ready bitmap just once. For E82x
> hardware, check each quad. Finally, for E825-C, check every port.
> 
> The interface function returns an integer to enable reporting of error code
> if the driver is unable read the ready bitmap. This enables callers to
> handle this case properly. The previous implementation assumed that
> timestamps are available if they failed to read the bitmap. This is
> problematic as it could lead to continuous software IRQ triggering if the
> PHY timestamp registers somehow become inaccessible.
> 
> This change is especially important for E825-C devices, as the missing
> checks could leave a window open where a new timestamp could arrive while
> the existing timestamps aren't completed. As a result, the hardware
> threshold logic would not trigger a new interrupt. Without the check, the
> timestamp is left unhandled, and new timestamps will not cause an interrupt
> again until the timestamp is handled. Since both the interrupt check and
> the backup check in the auxiliary task do not function properly, the device
> may have Tx timestamps permanently stuck failing on a given port.
> 
> The faulty checks originate from commit d938a8cca88a ("ice: Auxbus devices
> & driver for E822 TS") and commit 712e876371f8 ("ice: periodically kick Tx
> timestamp interrupt"), however at the time of the original coding, both
> functions only operated on E822 hardware. This is no longer the case, and
> hasn't been since the introduction of the ETH56G PHY model in commit
> 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
> 
> Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   1 +
>  drivers/net/ethernet/intel/ice/ice_ptp.c    |  40 ++++------
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 117 ++++++++++++++++++++++++++++
>  3 files changed, 132 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 9d7acc7eb2ce..1b58b054f4a5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -300,6 +300,7 @@ void ice_ptp_reset_ts_memory(struct ice_hw *hw);
>  int ice_ptp_init_phc(struct ice_hw *hw);
>  void ice_ptp_init_hw(struct ice_hw *hw);
>  int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready);
> +int ice_check_phy_tx_tstamp_ready(struct ice_hw *hw);
>  int ice_ptp_one_port_cmd(struct ice_hw *hw, u8 configured_port,
>  			 enum ice_ptp_tmr_cmd configured_cmd);
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index ada42bcc4d0b..34906f972d17 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2718,7 +2718,7 @@ static bool ice_any_port_has_timestamps(struct ice_pf *pf)
>  bool ice_ptp_tx_tstamps_pending(struct ice_pf *pf)
>  {
>  	struct ice_hw *hw = &pf->hw;
> -	unsigned int i;
> +	int ret;
>  
>  	/* Check software indicator */
>  	switch (pf->ptp.tx_interrupt_mode) {
> @@ -2739,16 +2739,15 @@ bool ice_ptp_tx_tstamps_pending(struct ice_pf *pf)
>  	}
>  
>  	/* Check hardware indicator */
> -	for (i = 0; i < ICE_GET_QUAD_NUM(hw->ptp.num_lports); i++) {
> -		u64 tstamp_ready = 0;
> -		int err;
> -
> -		err = ice_get_phy_tx_tstamp_ready(&pf->hw, i, &tstamp_ready);
> -		if (err || tstamp_ready)
> -			return true;
> +	ret = ice_check_phy_tx_tstamp_ready(hw);
> +	if (ret < 0) {
> +		dev_dbg(ice_pf_to_dev(pf), "Unable to read PHY Tx timestamp ready bitmap, err %d\n",
> +			ret);
> +		/* Stop triggering IRQs if we're unable to read PHY */
> +		return false;
>  	}
>  
> -	return false;
> +	return ret;

Aleks requested that I clarify this return with a comment, since he
feels the implicit conversion to bool may be confusing. We do already
check if its less than 0 above, which excludes converting negative
values to "true", but it may not be obvious. I am going to apply a minor
fixup when sending this to add a comment and make this return an
explicit boolean check with "ret > 0" which is equivalent.

Thanks,
Jake
