Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE08F770B20
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 23:40:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4641741C3C;
	Fri,  4 Aug 2023 21:40:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4641741C3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691185239;
	bh=54HcaBCNcEafdiCgecoWgjDEUykrRnvGn0SBQZGLPlA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4F8Eu38bhmUNaCoJsfeGCqj0WT1FHL6S9CXJ6Jj4dAo3yk/MSbf6GsIJAxWRme4iz
	 heEFsdWWAvt8IYQsOuGx3WKhBXua29JE+lOIYkzocX28kyO/4NvcILVV03Fh79V/U7
	 4RRRAoXYAXhkXeykCT2v+vF5ZCIp/+Yf2a4k8tXHs3XXVUneTmMh/ojnh/ojThjrVt
	 BQ15By3Lg3DalM/GqvRJ11CoWZVToWV2E4dN9tYcNe3aXdFuMQwvZevxzGyhZlohoF
	 vfnIx0So/DawF1qHXCRnP9b6qer8RyT7BPLUhTY77AZU7cfN8S8XwqA+58mY5HTuy6
	 PwXiaRsYV1WBg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sn2sM88oTtX1; Fri,  4 Aug 2023 21:40:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22E7641EEC;
	Fri,  4 Aug 2023 21:40:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22E7641EEC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 70AAC1BF98E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:40:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1A0954053E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:39:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A0954053E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yBH1JEMjpvsq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 21:39:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6328C4020B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:39:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6328C4020B
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="367711060"
X-IronPort-AV: E=Sophos;i="6.01,256,1684825200"; d="scan'208";a="367711060"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 14:39:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="733424519"
X-IronPort-AV: E=Sophos;i="6.01,256,1684825200"; d="scan'208";a="733424519"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 04 Aug 2023 14:39:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 14:39:55 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 14:39:55 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 14:39:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xv/D0gapBXCZUzenKTVTqWMsUwD6scOYDdiNl1uUkOrxY1KWHQGBz8ZhuFCnseW3WSCr3+7JRuuA6RwQY1LJ/LZ/HE8l+WW0mZftP9iJjlXWG+2D0akyQg/wUWaQx+3TJarxEj6kxo/INZwMzCyGOx06gEFYWnDEPv6mjcWD3sgYL9sQ96UoazyczYZtZvrVgZ0qM/qSXZWsiv2MzO+b5NkNkn0pXJPCp/0HEh7wR5b1mmjImRgGN8s+9YOjbr0q/V0NHIVZHBP08HnPw0f1TcMXyh7qyUgsafrNV5BW6ZOBaEN/wGnZ4UFCJDZbqkyCDPC6XieVhPHfLfY7GPY1Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PKPq8D2W9pgK+/1QahJ/LH7leTR0iNGLM4U+DQkFXNE=;
 b=K4+EjEnfdKcF4Yy06WLZo6YmTqI+Ym9ImZ+Cfu5ItwiGt86X9jXaAaSIZTRuEOpk8XGGm9MEnKUZjuzkvT9KxAfmZGRHG3/ek4nxFr2CHz2hHGrhuPRj6YGhFiBDk7he2MYiO0cpcZjSz/3euqraTYF7jWEwtGkNtFd9piPay+76J4FtOVGCk5BA1HnNKjjsbSrW1UkogoyrNJ40B/okTrrrBXFn6xFdDYCa1b+OCHu8rK75rcOPM8+NIp5q4T1iZZsP4n17Z+J0PB5Xrs+B7T4mPgWnjj6scaClqJsYiaMrL4GhakdVvAY1pWQBdwbv9TgDLKuv24aGJDFW50ondA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH0PR11MB7446.namprd11.prod.outlook.com (2603:10b6:510:26d::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.21; Fri, 4 Aug
 2023 21:39:48 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6631.046; Fri, 4 Aug 2023
 21:39:48 +0000
Message-ID: <9c6e83fe-7bca-6332-ef71-19e0bb59447d@intel.com>
Date: Fri, 4 Aug 2023 14:39:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230803023758.3916368-1-sasha.neftin@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230803023758.3916368-1-sasha.neftin@intel.com>
X-ClientProxiedBy: MW3PR05CA0017.namprd05.prod.outlook.com
 (2603:10b6:303:2b::22) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH0PR11MB7446:EE_
X-MS-Office365-Filtering-Correlation-Id: 558c2e4c-ca03-4689-67ed-08db95335387
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5az6c/EumJyHjfu4NPlNrJCLlfCGkFslpgJfzo/GrC7xqv1hriEgcXz09my3j8ws2K4R8ZmMPfW56d4pYYo3SwBZegWfQgHWzK0Naj1x9BTXxPBAOjae00s8CQQXpQrErqgLM2Q2nauK4sdJ+Y80Muiy+HCa/qYsuTDBeC/4tTShVJcWU6cEsRDOXblb9l/PL5qBQnrsL+cFoaZCZ43wnIJBgo0GxQilYdRyuctcwwyfcjxHBRfG7z+k40eIkNl4XV0BqQloHb9RG+idT/C9+Z/PnbacrNFCBuMN8+K+vkTmjH0vyuZCqO93wukpLXPNxR1MjReqNT/rokCej8teYhZnN2/3xFdu1iFajds3mZE/K8nwjZbSmjaHY192ete/BxAOYcorAEZWib4QahO7l/d161ssVVfujFOcD2zFx8hoV8EERgpZy43lZWX+4Rl2hdLzECKiS6DVOT0v+p3G2F8B1j+0KTOZHFUL/Ba4QIqm/2iyCt73qcEqijjUz5UpMcCVSUJx49nx6p+KAaXzhijDQzNjLLwPmt+SZC+I+P2DIBhQb5Lz8TJEczAiQz+azgM3M7v8PI9+n13EsEbNlOmQGjzP4sBiD+QDD1EpmVQiJI0g3Zv5oPyrfjzvQ1WDPEpWO++BjxU1x839+a1ejg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(366004)(136003)(39860400002)(376002)(1800799003)(186006)(451199021)(8936002)(8676002)(26005)(478600001)(36756003)(31696002)(86362001)(6512007)(6486002)(6666004)(316002)(31686004)(41300700001)(5660300002)(66946007)(66476007)(66556008)(83380400001)(2906002)(2616005)(38100700002)(82960400001)(53546011)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dENXQUV2eHphZkRVZFBHQkJ5bHRWWXkyQWo3ekszTi9UbjF6SEN6WHllbE8r?=
 =?utf-8?B?TzlFamw2cGhvUVAwT1V6K2lsaC9YVWJNMktkeGZnTDlUb05vZk02cmRMWXRN?=
 =?utf-8?B?YzRNbGxmQTAvVlJKd3B4WWU3SDZmdEI5OWdUcndnaVBtT01JaHRvdm0wa1lp?=
 =?utf-8?B?Z2RDZkhnQ2VMRTJaTlo5Nys3Tjg0TzE4UlphSmlBY20xYllyV092dFRyS3Uw?=
 =?utf-8?B?QkJIRkFXNkF5OWh1OFhyUEJXOUF4WTZCNzRGaUczcUdZaGI0YnlOcHd0cklX?=
 =?utf-8?B?dGlISll3NFhOR0NJaWp6dVRub25YN0RtMVlzZGM2dXk4eGJWUlUraXR0NlJj?=
 =?utf-8?B?dEEvQm03eGVmZUcrZDdDRmlicUU3SGpxeXpmUmlBc1ova0Qwa3U0MWcxSjZs?=
 =?utf-8?B?VXRnZFdBTkdGbHJpNTZ6dEZxUnV6c3M0eHVYNXh6L09BVER1cUlPL3VWSExo?=
 =?utf-8?B?dkZ2YnZlMmcwQUkzU0RiZmJCdmVZU0RMTnI1K0FIbE44emJpSzk4VkNJWnZH?=
 =?utf-8?B?blJxMFhOcTZvdWtmUENDQnRSb2tBRVlTT3A0T2tRZVNLQ3ZqbWRkU3AyRndW?=
 =?utf-8?B?aWpFMjVoeWdXWFFEdDVOclRNY3lkOVBRd1FPOXBpV3BoTDQrMS9Zb0VFTHhV?=
 =?utf-8?B?TGQ0SXJxZ2I0ZDgvMnV3bURlcHBJb29OcFNVNENsWVBhY2pvdW05M3daYTNL?=
 =?utf-8?B?M3lIdThLZHlEbDRlL25wU2M5OUxwTmFuWVJySFRTOXRCMUpldGxqcXdKNWhD?=
 =?utf-8?B?b0RiNGRvSUs5K3dZRnY2OXJOWnFtR1RGSWdEcUtZY3NxQXZkZlJ3Mno0T09m?=
 =?utf-8?B?eTl4dS9mMFJLVEZ1dUpmSGx6SmZzZGk1RGhZSkY5bmo1RnN6UWVzUnNhemJQ?=
 =?utf-8?B?SWNLOHZHY2RrcFM2NTFiQmdhYXVEWFhaMy9mMnRPU3VRcnR1cGw2c29jM1J2?=
 =?utf-8?B?bFNEOWUxa2VsdU1langwb0xKb0lSRTFVL2QxWnkyZ0ZvaDc5R2FZdFFPbm4w?=
 =?utf-8?B?blM2UVJjbVlyZi8wak0rRVpMd0NkLzA4N2I5RmphaVhzOVZBUjAxaFdRbDVG?=
 =?utf-8?B?eHVESVZtZkVHYk50NTYxeGcxb0lCNWI1S296SXdDWVhaeXFhaGVWR0NjQlU1?=
 =?utf-8?B?QXZOaE9BeDVhY3FxTWJNMTE2N1EwQ1Y0eGxXQjdHT21mYnhqYXVGTFNTNGRI?=
 =?utf-8?B?WmJDOVMzbFNobW5QOHR6alJOKzNqeG1IS3Iwcjc5SU9Pc2xkbVEyejZWODlw?=
 =?utf-8?B?VDY4a0M4RUZ3UFNpTmxIOVVZY0Fqd1ZOek9vc3Y5aHFvSjJXTXJqK0hObGQv?=
 =?utf-8?B?VTNwYnJ5L0J1c2s5dUVpekh6em40RWEyZXNDUDYrNS9uTjBrYm5Vb0Nsbktu?=
 =?utf-8?B?RlNXZDJBVGszK3dkZGdKdDhmUXMyQ1dna3NKRFlWNDFLR3o4V2pKbnFaUEZM?=
 =?utf-8?B?ODVPWnE4c2RGQXZoSlZyT1Y5Zi9ZQ0poM2UzQWN4eGo2SEtjdTh3RkNQZ3BE?=
 =?utf-8?B?NlgxRVExTVVwMVlkRU56ZkIzNXpWcXlOamlqNTA4QTVyZDdCWGlKNExVdHJl?=
 =?utf-8?B?RlFlbUN6c3FBbDBRWmEwb0hOV0JJemlEQ3RVNEVhV1JUWjQyaUVTVmZWRHRs?=
 =?utf-8?B?Y0grTjFPQXJ2RlRoQ3VMbTk0bTdvbk5qMm9GaVA2cSsrN05ISU9ITS9JMnhl?=
 =?utf-8?B?R24rR1RZa1F4akpudjFpK0lZcWNiTW1xTUhSTHFRUytVL1BPQ01jN3R6bXRU?=
 =?utf-8?B?dG83YUNwRXVjcXBPeStiN3FvOHMvRkVBZEh2bU8wR0JmbzBFcC9ad0tzTlBO?=
 =?utf-8?B?MGYzRDNjZzR4TXpWQWJ5dzFzSnZIZHp1RHZvNG5oSzFuaXVjcFMzWWFBNFVs?=
 =?utf-8?B?ZWlFUXR6akV3SWlqT3Y2bE90Z1FhUG1kU2FDZ3ZUUjJPeXE4Z3dIVnZnVUNt?=
 =?utf-8?B?dDg1eGVmbC9jdUhmbXFoT093UEl5US9GYXpBSTBSYXRva1hPUkNLOWlNbDdh?=
 =?utf-8?B?Mzkrb1VncFcxdHpQNnp4MjYvT1RmYjMwMmtOeklSV3B5QlV4eDUyNHFVZHRq?=
 =?utf-8?B?R0VZVThnYzBUL2hkMkF6TWdJVHBiblJMa1RLZk5KekZVall2R0h2M0xwOE5i?=
 =?utf-8?B?MWtBazQ2aXNaZkJQbXpWQ25nZHp5T1dGcURMelN2MkpyVkw5aC9FNUdyV3JW?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 558c2e4c-ca03-4689-67ed-08db95335387
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2023 21:39:48.2176 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EGAfn6OU3nsq5VfCdxvqoEnY9MW34Hajb3pU+DoC2gal/xVpqEAWNZmKPepOVmWQZu23isXWOg6Zv5wzxp/brCF8rPueqx1PBXfkyLTjKkI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7446
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691185196; x=1722721196;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ijbL5QGMa08jf4CBlC50seltAYlrKoURPQbz0TdDRh4=;
 b=inssVKGcoD19uJo6Jli4q16ewjjzmBnvybM3rLGlaI50t0+3QR+0oW6P
 rxFfzA6YO55L+UjRI8peXFaJgh91CX53NdvHimaIyCSQiSgGrT24Q1w2T
 XiJfeDZzlyLR7V1nKNNRjtCccsusjTJvVnc2DyyXha3PDMRHfzV3bEwnH
 I1BmMyq+8aqq2eQKF5ulfb6uDKIzCRqGvCETqrT4b/GmGmG9nbxPELHqJ
 vZLfrxhalJOj1rg/BXH8efo1iPyhalpLpueTGsCo9lIihzk4b1srCZQgI
 uiOZWmu/YT1hRVDvoGVYMGBNybEdx8dLPGE/y0D36U+TAOePPukVITdA7
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=inssVKGc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] igc: Fix the typo in
 the PTM Control macro
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/2/2023 7:37 PM, Sasha Neftin wrote:
> The IGC_PTM_CTRL_SHRT_CYC defines the time between two consecutive PTM
> requests. The bit resolution of this field is six bits. That bit five was
> missing in the mask. This patch comes to correct the typo in the
> IGC_PTM_CTRL_SHRT_CYC macro.

This doesn't apply

> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
> v1->v2: Fixed commit message
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index c3722f524ea7..0bac6eeb42c0 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -546,7 +546,7 @@
>   #define IGC_PTM_CTRL_START_NOW	BIT(29) /* Start PTM Now */
>   #define IGC_PTM_CTRL_EN		BIT(30) /* Enable PTM */
>   #define IGC_PTM_CTRL_TRIG	BIT(31) /* PTM Cycle trigger */
> -#define IGC_PTM_CTRL_SHRT_CYC(usec)	(((usec) & 0x2f) << 2)
> +#define IGC_PTM_CTRL_SHRT_CYC(usec)	(((usec) & 0x3f) << 2)
>   #define IGC_PTM_CTRL_PTM_TO(usec)	(((usec) & 0xff) << 8)
>   
>   #define IGC_PTM_SHORT_CYC_DEFAULT	1   /* Default short cycle interval */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
