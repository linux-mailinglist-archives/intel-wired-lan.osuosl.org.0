Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C10B598A2DB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 14:39:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B97460674;
	Mon, 30 Sep 2024 12:39:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zWHkDgKn2LJ9; Mon, 30 Sep 2024 12:39:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FE7660676
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727699953;
	bh=E/eKdtbcNkSOedc5LFK9dDRZet7G9VB8kYew0w+Tn70=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wzcdHRL2MoZUVQalyrrvFGlhlADaHdrpl5asghK3LByjYRuCzT5H1IcaqpOPTqet7
	 otouqopkXzZO5QECxhUxNuNavgDP+a66qPlOKpSZ8g5adQgYiU/vK9xFjY8xqT9pDB
	 RX2Yq94b9u+KUYmLymRRywxJvWwp2ogNDd2nbu3QFpeq6z+VRGQvA9OPqZdrpMcRJW
	 nJ+h/T2lPLUgpZDh7/kGm3EShbp1adDetWa0npA3O9XBJypLdIR/SYklrx0g/XsQou
	 QgVTU0wrSwdNCEkVvmPESXtRsEQufmv8yKSF6SIwsUL+Ngsq1cNbz/x6XIJmXgMYt1
	 1ikxt1egqqR6A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FE7660676;
	Mon, 30 Sep 2024 12:39:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7BA401BF296
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:39:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 691FA80EC1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:39:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yC3rwKel19DJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 12:39:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6A0C180EBF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A0C180EBF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A0C180EBF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:39:11 +0000 (UTC)
X-CSE-ConnectionGUID: mnMvn5U7Ttme4oCamthHeg==
X-CSE-MsgGUID: 3kU09PgtR+SspGhPNX/8MQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="37347263"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="37347263"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:39:07 -0700
X-CSE-ConnectionGUID: eVr+2uIqRluu/CfmT3gRag==
X-CSE-MsgGUID: sxvnb1ynQNqcGhPXZyuBPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="77673751"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Sep 2024 05:39:06 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 30 Sep 2024 05:39:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 30 Sep 2024 05:39:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 30 Sep 2024 05:39:05 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 30 Sep 2024 05:39:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UwoMFNMum/6XT6+eoGL0xD/WPvFS79NKHqWuNHVTpyVTdIRqUAPGlrHFZGsbokJ01C5rNORXTkx0ZIF8zqO+Pqf2AhDVvyk+/ZObSxOjEQ4YKXt92KEli47gZrcnl4zshsGw83uTXpxaeyMEJeVT6/semFMzDiXUIfeYSSxZWCoEuobLjqsVVwRkiXcgYbFTQf6SulsB1PyGMcNU1Ge4R9AXcTbnWca8ZDW+WqIaWavUA7sLIxJ9i5FDIUTiwc2GWU+KSSWSJ1YPrRJ5fHXRaBEBt2io3t2gIjNV9xqXFGw5B3owKGXn9X7YiSVEbkujYalTLWWuoCRT09yGpta6Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E/eKdtbcNkSOedc5LFK9dDRZet7G9VB8kYew0w+Tn70=;
 b=hRI/hbMUmjtq6y+8zcLhLBtoBCqQSsl5IWAOVFGg9uozzBEQdSCe70xpu2AZHj9RFP910wEzwXAiWjh7pZcowj/awow66CeG7nrCpa8ly6RNGEGIRef/dUVHsyMlI9ajiSXVX66aOZLaqO7HF/rH8bMoA3fNaufFobsRPfwgQf110S+ym2oeEpIHm9ERWBzfZMDcQ06sv4BgBIsE/XtwFD57U7w3Tv2qVajKF+3vIS0tE0tWuvreJ2CfpFq/tMaSNNQUfrIgfZbMApdwaKb0LLLKjPCkwwOJWrfMFEM98EUeiwrkqsG614AxWhmLqQqY+qokZ7tbOlGP+2ZPOqyXoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by LV3PR11MB8674.namprd11.prod.outlook.com (2603:10b6:408:217::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Mon, 30 Sep
 2024 12:39:02 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.8005.024; Mon, 30 Sep 2024
 12:39:01 +0000
Message-ID: <c32620a8-2497-432a-8958-b9b59b769498@intel.com>
Date: Mon, 30 Sep 2024 14:38:56 +0200
User-Agent: Mozilla Thunderbird
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Joe Damato <jdamato@fastly.com>
References: <20240925180017.82891-1-jdamato@fastly.com>
 <20240925180017.82891-2-jdamato@fastly.com>
 <6a440baa-fd9b-4d00-a15e-1cdbfce52168@intel.com>
Content-Language: en-US
In-Reply-To: <6a440baa-fd9b-4d00-a15e-1cdbfce52168@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0049.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1d::18) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|LV3PR11MB8674:EE_
X-MS-Office365-Filtering-Correlation-Id: 65d085d6-5e2b-467c-1d49-08dce14cdccc
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Wmx3RFA2dDJ5RytJeWs2amdKaTA2VVhSTkRKY09LSVpZcTZ6citVTThmRG1i?=
 =?utf-8?B?dDJiWmhySWc1RkRWcGN1eXJiR3RpemdJcEJIOXNvU2s0UnBhWFU4akg5Y3Jy?=
 =?utf-8?B?VDRHQ2x1YVIxRWdnbitJK0JmVlRBM3lIODJvRmUwODZHYlZpSDk0ZlEyaUMw?=
 =?utf-8?B?dWZvNzNNK0tQa2tWTFNzYmdIaG4wNnlNVVZPVFg2aWM2eURwbUJITWlSL29w?=
 =?utf-8?B?aHoxZGxOZFhkU1dXUFhxTEFhbmtyN3NJVTUyKzRrcHNESi9OdjhxTm9EU1h1?=
 =?utf-8?B?U0VJM1lseW10R1RiaDEyNWVmejJaTmNlVjc3WVZ4UnlPQXJFOVVzWjZtQ0px?=
 =?utf-8?B?VGM3eTJwRWZLdi9teEV1SzlxTlZhWDk1bmp3NnlubjFWUy9LdCt2QndqV2x1?=
 =?utf-8?B?ZnVNS0RDSnBqR2Vya1gwdEh3Tmh2UStRL3lVMUQ1Q3RZczQ0WmZvZ1VZdCtE?=
 =?utf-8?B?WkpvejdISUlaNU5DRVh1ZkJpWXBQSnVmeC9XUFFUL2kxWHpvUVdOczY5bENk?=
 =?utf-8?B?dm1LVEF0VUpSL2VZUDVKcmNReGQzbExBNlJ6WFBaUTFWYmZUaVByTHhXYktv?=
 =?utf-8?B?eVhSV1g5aWhZTXppQis4eWd5R05MdzBIZ0NBbnVkc0tpdzE5NWNuZ0JCbUNj?=
 =?utf-8?B?K1JidVZ3V0NpYVFTdHI0cTBrRURzREFENjRZamJTUC8wMzc0cFdJVlQ5QnBT?=
 =?utf-8?B?bmZXRGlhTmxFS21BRFVWUUxDSERVWGo4bEtvbFpncE04cDZmZHltb2NUTWpQ?=
 =?utf-8?B?djVCSE9IYStRcmRXV1pZRTNOU2VBZkl3UzUxYnJoME9SVjBad0dKZ3VOTzZD?=
 =?utf-8?B?bXNhcnBKV0RnU3JiSWV4bUtZRzQ2Q2V2SmU2L2FKdDhWa09Zb3ZaMmg4bUxq?=
 =?utf-8?B?c3B6UDk2TjI1cjR3UlFma3VkYTByNjJ3Mk1pVk1lTEp5em5GSEZVU25WK0NI?=
 =?utf-8?B?d0NvYXVoZDlxUDNtTS95dXl5VmdVYThqZTdIMXhnQXJ0RUhRZHZJYk1jRUFy?=
 =?utf-8?B?bnJRakk5RDJ1UnRTL0gwYmVjclgvY1NqdEo0am9ITkxXbnBvQ0hheC9hM0Uw?=
 =?utf-8?B?R2FWZVd2OXcxQkdXYXhyWXVkWUNnelBGeE5nc3hUc1RpUERCNXZqZk9wNHkv?=
 =?utf-8?B?aDdQOXhOazZQNEZwUEZjWkp0azlCSE53cXNxY2FydGJTeE4xVGVQdy9VMHk0?=
 =?utf-8?B?dmRCYWJPMlJ2MFlxb1REUTN6N3ZzVnpHMElramZ2ZVpVTTBWMlUzQm5tZ0VD?=
 =?utf-8?B?SDNOL002YjcvcWhvMndqUTZ1Ny9GZUpaY3RMNThGNXpVd3NNc0VGUTllSFBK?=
 =?utf-8?B?eVJST2swWjhndGJKbjkwbCsvNDlDWWlwa2R4bHhSRFdESnMrb3VDKzZiL3Vo?=
 =?utf-8?B?TFFVZ21UdXVVL2x6ZkFHKzc0dU5KRGZLUmJMRFM0b05MUjQ1ckNselM4em13?=
 =?utf-8?B?MjVLWmdOcVVLdVA5emlLWS9aeE5PQ0d3eHhPMGNwM0E0U3dwZVlPWUF3a2pM?=
 =?utf-8?B?MEM4L3F6bHV5U2o5Y0RhWnZEa1RjUnBFa0hPTEp5Sm5OdXNpT2tKdEQzNG0w?=
 =?utf-8?B?M2d3cGxESkNVamVGL1JvQW5EeE92NWNUWVlpdlR6Wm05L1VtbFN4NU1XMTg4?=
 =?utf-8?B?dkZPdktVOXBWTFY0MGpLU2k2TFpFTWJLY0gyT1VyL3grWk9tYlNURmJJQTJn?=
 =?utf-8?B?OWtWY0tyQTJvcmF3S3hBYmJncEl3UFQwN0puQUlBVHFlSU9tbVBhSGVBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NEV2MDdnMzF5b3dDVGl6dENGTndHd3BoalhLM3plTGFiNW9mN0lHZ3RNM3B3?=
 =?utf-8?B?a1J5azlLQ0ZmMHNsdmNlbEI0akVnOFFwUHNFSFYrTEU3Sm9DYlJLSHZuNjhW?=
 =?utf-8?B?ZmNSamZtUkZmaUhSWlZrZ01kWFZJcjYwU3V6ZGgyZ1E3K2dOejA3TkR2TklE?=
 =?utf-8?B?ZVdXeEg4enZoNlAxaFhJR3lXYk9iRlplOVAwaWtZTjY3TXA1eHdtZklBem1h?=
 =?utf-8?B?MGIyVWVlSGV0UmVLYXlycnNmYTQrQ1RqQ21WeVFPeFQyTytRY0tCMTdqS1VI?=
 =?utf-8?B?ZGtmNnU0S1JOdFBMc2VGMmpyTkgxelZjYk00Q3NyTzk2ZTdWN3ZDOG01OUdZ?=
 =?utf-8?B?ZlVjZWg3bm9Eek8xSU1vTVhDWnNRL3dVRGxpcXFZd212QW8yMWVuZzVoeDhQ?=
 =?utf-8?B?dms1T3U0RU4zQW83dHFnZXdUVGhDSzVPREdETEdEZDczSTlCcnBCdGNzdUFU?=
 =?utf-8?B?Y1MvU2pkUGlvUzhxYkhZNzBzdlhwd0V4OC85cEFESmtzM0ZhSGgrUmRIeG5j?=
 =?utf-8?B?MWlNU2xYS2M3WGV1RGlwOTgwZmRpSVo2NVNpdlF0MmQ3dmRnZWU1OFgxbS9y?=
 =?utf-8?B?REE4dnhPK05oQ2lTSWlrOXNRSjY3d2FuWU01b0s0UkRzeXdkRUoxMUFFSHJa?=
 =?utf-8?B?bDlvUUZ2QVRIZFp4NEpKQnV2SDRCdmlRdkZtQjNmWmJ5MTdCdzVCMXJqcXFl?=
 =?utf-8?B?c0FMODFUTEk4UGtMQ25BNzFGWllVRVdNWDRnV0RTU1daZGVOSGJQWVRxSDRz?=
 =?utf-8?B?UE5SNlBvNnByR2JRbnUvOFAzZk9wUkVycjBSTjRTcGNIZWNwVmQvWVNRbEUr?=
 =?utf-8?B?ajltdnpMMHQrMEF5N0ZtcDNndlhCNzBJTjI0QTVBd3RtbjRiYTNNMHBRWGh1?=
 =?utf-8?B?aUJkUGZrQ0xWdUsvcVNLWmJKZ0IvRk1DT21pYVNGYXE1K3lRbnlJZGV3cW84?=
 =?utf-8?B?S1ZRVjE1RGV1Z3JSSjFZVllFRVlFSHpxNWIxejNHb2JRamhPNTVYRjRvRXlP?=
 =?utf-8?B?bkZ2U0hMNUdFeFA2RUZGUDZkSEsxZDN2RDBGRjExSmV2U1JSS2ZEdzlPcWFF?=
 =?utf-8?B?TUhVSEZ0eXlDUklsM25iUkl1Yi9wWEtJVjA0aHhUbXF6akxvcDBOQTRTbVBD?=
 =?utf-8?B?Z2ZydkFWbUxkc1lFSjRIaGdFK1lURS9sa3J2Sy9sbXp1bndvb203ek95TUFZ?=
 =?utf-8?B?VDNNUWdtQlNxelZLdGhoRjg4UklFZmcvbUFMUTJNOUJGb1JRQjJCaXpNTDlm?=
 =?utf-8?B?SjNpMW85dEMyaVJ3ZXJXaG9SRDd3MEFBWUVqcHhxbjByTGtJTjRlZmswV25R?=
 =?utf-8?B?TDZrV2tzTGdIK3Y2QkQ5R0hUV25DRVFqSEgrTGp2WTNpR01pSEpGTHJoaU54?=
 =?utf-8?B?TUdlZklDc2RVMFJoZFpZZXJjQkExWlFUejBvUys1b3hsMjkzY0VYYjBaeXNP?=
 =?utf-8?B?OWx1VzVBYzMyWU9CMnhQQmpIb21JK0YrbGM4MWd0YzFWZEVJMUIxcGVOOEll?=
 =?utf-8?B?K3RyeTAzUzVDb0dnNGxDQkoxTkJaa0hYSnBweGFYT3llWkFVeGducFduK2J3?=
 =?utf-8?B?NTQ1M2pTMHRQZWhyM0Vyam1RbGt3b3F5WFpqaXptMHBSM3V3Y3lpZGZ2dzc1?=
 =?utf-8?B?MmV6MG9OY1dYT0I5TmpoeGcvSityb0tWK2RDYUp1cW92T2N4QzF6K3Q1MzJJ?=
 =?utf-8?B?QU5PZFVqZCs2eGZRM1JhUTExT2NxeWdSUDc1UE91RHlSN3orREJNc01rbnZR?=
 =?utf-8?B?Z1Y5SllJemlBN3ZCVnlXeDZlS3E3bGdTcndDcGl6VFFORTJZc1hKbHNZMzhV?=
 =?utf-8?B?MTIyT2tGeWMvanVRWDBnWlRCSVN3N1YrZUh2ZkR1WElqS2ZmT2NUMU1RTWN6?=
 =?utf-8?B?WGJaMjZWVW9KeXhhOXBId2xzaHh1MWEzVXFOZ2hROEc2YVJBdE1RVkNWdUV5?=
 =?utf-8?B?VU1CSHBKdXY0WEowenQzNUh1WXZSeThjdFFaUk5KYVVWQ0E5ZjhyVi85cUFG?=
 =?utf-8?B?T2lhdE1kRkM4Q3o4VzVoeUwvR2FGb3N1eGMwY2UyTnNmSU4yLzc0dlZyNURn?=
 =?utf-8?B?VHBMdzlRbk1LekE2TXRJWGRkNE1nUDFaQ2lIaG1FR0hEVmFQd0Rwcms3cjZN?=
 =?utf-8?B?NFRWb1BndkF3ZkpzUWVuZUl4L0JDaFZlMUhoNTRMSXY5dWU2VkdWNFFRVS9R?=
 =?utf-8?B?TkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 65d085d6-5e2b-467c-1d49-08dce14cdccc
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2024 12:39:01.9231 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aUEDk9ZBFwdjUnmGxgUEGD0MypjSt/ZfOoF36cQvQ4aiMxUrnJ/BZe6umesIiuFanTmff7inSw8ozVpyDy6AjU28391X/NK8OjI8Za6eVh8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8674
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727699952; x=1759235952;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gjwbnnFuYe7GOtD7YbiQA8ugzX0Qp69Y9XHyKdPoXT4=;
 b=dXBH1ioGzVI3B3d36QOhXXzlSWg++8+/Vsnrc3YexNzOhVH6/WrZE4OZ
 PUmBVlvLeIp2UjaWd5nuDFcgyJpNBlVGj21VpRPW9IQzU3T9N5EYJHDz0
 AITQBJhnc97+v1bLvOZwmacJ7LtQTeGeGx+hj985A/vMhqD1fI0bjMYIL
 cIeKSMMWtej+lcdnLKXBvex5uyFAeZmZNqfoMFm7KFqBoJA2tmsJcnagq
 EYSK4z/SoJRffpNgBl6Ihc1Mk045GhV4V8LAXMVQurm0YQ8j/eU2tpOY6
 WmnQKiKurIx+Q9iZDQ9fnM17vo/NfJZiy2nq7qyYKWuQ1lHS4KIMJ0WmI
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dXBH1ioG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next 1/1] idpf: Don't hard code
 napi_struct size
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, "moderated list:INTEL
 ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Mon, 30 Sep 2024 14:33:45 +0200

> From: Joe Damato <jdamato@fastly.com>
> Date: Wed, 25 Sep 2024 18:00:17 +0000
> 
>> The sizeof(struct napi_struct) can change. Don't hardcode the size to
>> 400 bytes and instead use "sizeof(struct napi_struct)".
> 
> Just change this hardcode here when you submit your series.
> I use sizeof() here only for structures which size can change depending
> on .config, like ones containing spinlocks etc.
> If you just add one field, it's easy to adjust the size here.
> 
> Otherwise, these assertions lose their sense. They're used to make sure
> the structures are of *certain* *known* size, hardcoded inside them.
> sizeof()s mean nothing, they don't give you the idea of how the
> cachelines are organized after some code change.

struct dim depends on spinlock debug settings, lockdep etc., plenty of
different .config options which can change its size unpredictably.
cpumask_var_t directly depends on CONFIG_NR_CPUS, but it can also be a
pointer if CONFIG_CPUMASK_OFFSTACK. IOW its size can vary from 4 bytes
to several Kbs.

struct napi_struct doesn't have any such fields and doesn't depend on
the kernel configuration, that's why it's hardcoded.
Please don't change that, just adjust the hardcoded values when needed.
Otherwise, if anyone have objections with strong arguments, I'd just
remove these assertions completely.
It's a common thing that if we change some generic structure in the
kernel, we need to adjust some driver code.

> 
>>
>> While fixing this, also move other calculations into compile time
>> defines.
>>
>> Signed-off-by: Joe Damato <jdamato@fastly.com>
>> ---
>>  drivers/net/ethernet/intel/idpf/idpf_txrx.h | 10 +++++++---
>>  1 file changed, 7 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
>> index f0537826f840..d5e904ddcb6e 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
>> @@ -437,9 +437,13 @@ struct idpf_q_vector {
>>  	cpumask_var_t affinity_mask;
>>  	__cacheline_group_end_aligned(cold);
>>  };
>> -libeth_cacheline_set_assert(struct idpf_q_vector, 112,
>> -			    424 + 2 * sizeof(struct dim),
>> -			    8 + sizeof(cpumask_var_t));
>> +
>> +#define IDPF_Q_VECTOR_RO_SZ (112)
>> +#define IDPF_Q_VECTOR_RW_SZ (sizeof(struct napi_struct) + 24 + \
>> +			     2 * sizeof(struct dim))
>> +#define IDPF_Q_VECTOR_COLD_SZ (8 + sizeof(cpumask_var_t))
>> +libeth_cacheline_set_assert(struct idpf_q_vector, IDPF_Q_VECTOR_RO_SZ,
>> +			    IDPF_Q_VECTOR_RW_SZ, IDPF_Q_VECTOR_COLD_SZ);
>>  
>>  struct idpf_rx_queue_stats {
>>  	u64_stats_t packets;

Thanks,
Olek
