Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A2A5FF666
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Oct 2022 00:33:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D82CF416D4;
	Fri, 14 Oct 2022 22:33:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D82CF416D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665786803;
	bh=9LJh65Jrp2LIVDxApxOcnkuj1TlGW27SjlR+3dM/JIo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pBkySbE0j4mPy356STxt3JrAiDvlepPlPUanrx0A0Fwu2QWeDTAnVS/VietUFYvSi
	 UhxZvKYAu5B3CsjWMwe4xCNMNXS3a0EFYzc/zkM6/kvtFaG2donI2Ofps7gLmIJYzh
	 XKO9ZPxxUn1H1541ZJx6OHwnI1tlasuID2q0nXM3T7GQ/jh2+0/QXXnfBeSb23uTak
	 2aEO4HfsFYtboR/fnAEcgP/O8+4T3hI2AzKWUPy9/S4Q5gpE4aKxOBhhVb6sbBNr87
	 67Y7R5m1Ol8Jzh4pX8oRshMwICVOfw5EFLe2F/wL2K+s5hIXJLUQhIN07ormcNFa0G
	 bzGZxJ+PlywaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OpsSoZJ6lU5W; Fri, 14 Oct 2022 22:33:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5090A415DB;
	Fri, 14 Oct 2022 22:33:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5090A415DB
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 550CE1BF844
 for <intel-wired-lan@osuosl.org>; Fri, 14 Oct 2022 22:33:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2ABA4415DB
 for <intel-wired-lan@osuosl.org>; Fri, 14 Oct 2022 22:33:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2ABA4415DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PyYuYBslCIMK for <intel-wired-lan@osuosl.org>;
 Fri, 14 Oct 2022 22:33:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF5F5415D8
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EF5F5415D8
 for <intel-wired-lan@osuosl.org>; Fri, 14 Oct 2022 22:33:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="307142306"
X-IronPort-AV: E=Sophos;i="5.95,185,1661842800"; d="scan'208";a="307142306"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 15:33:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="690707861"
X-IronPort-AV: E=Sophos;i="5.95,185,1661842800"; d="scan'208";a="690707861"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 14 Oct 2022 15:33:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 15:33:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 14 Oct 2022 15:33:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 14 Oct 2022 15:33:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=conjIDrZM65buJyp6fAKI0UJYrxgoUr2LHXl7r6P+LVANt5LtZbiyfhWA3jjRGT2LhS2S8Xuoq1ZFZuFBWh8xG88AyMUo68aenoZcr0zZEQ2fRk3KEcfVTZeCNRxCJW/44IX0SwAuK2xGCdRqp5ib+kitFbaKHETFJDDDZTLBmd261E9R2fcTo73STa+rIoMKbOJ9Lupysx5mtTs92E/sG5ShKllE6wJRyCmjDvBqCwscdvsfMu3hEBiZQ224uh4ojn85QJeHkKG5h6vfeTebiTVAFQQrEg+hbKYNE75oer7B5LuF8ZW8DqMQrAxIVUsYHS7CO2tsZmeCJNjnfnEMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XqvbC9L/tQECVBm3u8Mz9AMaTOUe/PEhxQlkO9Zgu4s=;
 b=EF0RZc2wn3cwON7Miy/Y9TkDSXKXotYtwoG8+zSg2NiKcVZaILUBI6E5LUZOrAoj8PWkE4082kFZRmfAxagwDpUC3+S85/Eand2/Kx+q249yDbfR/SMgvZIBnSxqnJedZ5RivdbgEtKlebqCtI+e9FGgd8I0q2MZBshdJ2we2XweabFOMNgm0HNfV1q32yNdifk2BavwH61zZxDp2CcntW1z35N2luV0bkJ2bN4SbGLCp7aTxVoNl5lX7AuEbdhWmexcbQYymParFU26CLpW5qng7tW6WFN6B2ZoaulDJ5bbYt8w1THUpftfg0Y2Gekyk+Ovi6YKuiP+w9w15pH1ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ1PR11MB6252.namprd11.prod.outlook.com (2603:10b6:a03:457::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Fri, 14 Oct
 2022 22:33:11 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::47f1:9875:725a:9150]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::47f1:9875:725a:9150%6]) with mapi id 15.20.5709.022; Fri, 14 Oct 2022
 22:33:11 +0000
Message-ID: <228a8e08-5aec-43b9-6f4b-c8636420e228@intel.com>
Date: Fri, 14 Oct 2022 15:33:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20221010192223.916578-1-benjamin.mikailenko@intel.com>
 <20221010192223.916578-3-benjamin.mikailenko@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20221010192223.916578-3-benjamin.mikailenko@intel.com>
X-ClientProxiedBy: BY3PR05CA0001.namprd05.prod.outlook.com
 (2603:10b6:a03:254::6) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ1PR11MB6252:EE_
X-MS-Office365-Filtering-Correlation-Id: 39230011-e5ae-4c4f-42fb-08daae34134d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jazcJwrxRGKsLHL1wzoyqaWjYfM+5qHDF0DPMYjgcX0vtNMe9E0rb0BL7mwwQQvx4ZxC94WTqpZPLOYIGSlUG7gFeIQhUawQHTzMtoQJpAnBc0zJF06NqD8akRnw9xvyxRxg99mUiOxKaz7KZXmz+dE4ajcM6HBK188pJt1/cYDRrsR2DD219QWPJZgRRQm80hX+EuFwEC19H+CrOYt+118R4jQL8QTxfGhT1P1yTDfXxFs34v8X01G4rbTi+tvz/q/w5BVFwBxM/BwkysH0obc4SD8sYVegZ8m4P+IJ0ITIXqpzjp0ee9wWoGBljfPiFfNwzh8RHLwjrwJ4DV6zAw39xzyQkm2LyiHoOcrxjH1En+vM0U5kC33dvWV5Q8WoCZIBsOUNATTxKYN+EfVM9mG5k+o4FUKkaHf+oOKZ6cPnBKQLFQ81TpETnLVL/ESv2i3bAPld2muCWm0Oz8qFCpe6e4pLTNt+hekFTH+047+8BR+x5m4tjbV9YxlvI5qzO7YZuht2MiPWaSQSOTxQvZL1PsDd0rQXQeylp65Kap3twE6EyTzs9TCe2DKkm0ULR9sIIvH9ynlNbOoMeVIAP6uLsQBabAbzY5QNbH0bQ173TOvcS4mX/KRIJiU4fqFyZ8X/RbtWoZ+oIExPm+P8Pmp+AbT/EHKZZRrlHby8hMy65bRtSMA+1Mh7DC2Kr0/td5VPMQBTKWb3UZA7DC/wz2zN3fMmuPOVa9Ygj4wGWs0K+fCvB7/OgNrtosZGHW3zvF/dl8Kgj13pooxbYdUsueEpyRUk9SAumMQbrPGDyG0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(376002)(346002)(39860400002)(366004)(451199015)(86362001)(478600001)(6486002)(53546011)(6916009)(5660300002)(6506007)(6666004)(8676002)(8936002)(66946007)(83380400001)(66476007)(31696002)(38100700002)(66556008)(36756003)(2906002)(31686004)(2616005)(82960400001)(186003)(26005)(41300700001)(6512007)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NEpmT2Jwa21rMk16V251WlZiemZVV1NmZUJ2SnpJeGRNaGgwZFBERUpTUkdt?=
 =?utf-8?B?SnZPbUg0UTNyVnAvbFhHZXBFR0hTMkt5YUpGdG9TNTl3RnNML0dNK2VKazg0?=
 =?utf-8?B?WklDeEVtZFdJRmdtS29ZZDd1dHZXR2d3L0tHUzVwLzlyS0JISS9Ob0ZnMGZD?=
 =?utf-8?B?RDZoanNaN25aRE1sSk5LZzZaRzlYQ24waG15aEUveTRSVkRQazZ3dWxSTEYr?=
 =?utf-8?B?a2x1QnlsYlZmaEI1N2I5L1o2b0c5K3FTM3RGcUxhVDlFTlpUV3FBNGhOY1Mr?=
 =?utf-8?B?TnoyVm5QV0JtQXVEb1JKNDg1bmZkZ3RkdUlDSFhFUWNKZ2J5Vi9wSUZ1SUlE?=
 =?utf-8?B?U05pVnR3SDhiN2dKVEpJd1hLakxJSmhWRVdNMGY1UXdSY3d5ZG9DWEphbnNv?=
 =?utf-8?B?aHA4bHk4SldwTFB5YWVHWDN0TEY3UFNjaGxvdWlQNWdDdFNpYmJKeWVQK1I2?=
 =?utf-8?B?K0c3aUFJa3NyYkxGSU5HY1JpdE51N1p1cVd3dXF3cHA4MnNYbGh6V0d3WUha?=
 =?utf-8?B?UEE1YkwxdEF1YnVNNjFKRU5PZS9POWZnb1d0WWt3M1B2YUZycmV1b3VmZWxR?=
 =?utf-8?B?V1pOOUlKbHhxVWxuOHBZTjBtVVpsTVd4U2NNUzlJLzRacTk4RGlTd0JXY2lq?=
 =?utf-8?B?UndrR0ZYeFZVUFl2Zkg3cmxRRUtFeFB2WjI4S045QXMyTDRoRUJSZWJMekQw?=
 =?utf-8?B?aVl0anRvWlplVk5MZFN4WDMwYnArN1M0SmFFZEJNazEyVHFHZ3B0Ympic3Zt?=
 =?utf-8?B?T1ZzUnRDdldzeGFIMTRXU1dRMFlXWTA4M3F6VFM3aDZTNmRIaXFid21BalBz?=
 =?utf-8?B?ZWN4OXVNT3JncFJvSG9RRHYyeXBZL2toaUlrSVdXT1ZnbmhpMlJzMVRkTTd0?=
 =?utf-8?B?dVc2WXVCelhtVnJheEJCWEtSVllKUFlmdElOdGhSeEo1d20wZEsyT2JMQ0pK?=
 =?utf-8?B?VHFXUkJIbUMxMXlNcDgwMjRvN1hxZ3Y1RnIzQm9mL0NaTXZxdWlQc0VuelQ2?=
 =?utf-8?B?UmNBTDZTbVhBT3MxdEthbFpYeXRQdHVjOWJINnNGQXV5Lzc0QUtpSTdKaGpU?=
 =?utf-8?B?aGlVYjRuSGhkSDYxeWZNb0ZxOTJkTitSZElRaEpweXdjVTZRRzRzZk5nNzdW?=
 =?utf-8?B?bndZMEZEd2Z2aGg0bVY0MnVPbWtiTU5XaVdocTRHSUpPNFc1bUdkVFppWDht?=
 =?utf-8?B?VU12MHg4MnlVRkpnNHJzWUNXZmhhNVBrWVBHcmdFcVRuK3FnOElaREhjM2JY?=
 =?utf-8?B?Z0RYaFVWL2VUcXVkYzhQUGlVYzVHZHFJa1BjWTJCV2RPOUZUTmgyWjdTbk9K?=
 =?utf-8?B?Y3VHTEJMMENjcm9lWktuVUVDM05SbVE2dTg5ZSs1SC9qWmZxZHhidndwbmFa?=
 =?utf-8?B?M1lxVUxEdnI3V1cxV3VhUEhzUmZ4RTdEQ1BtdGt3RkRFS24ybUt4MVNVclRQ?=
 =?utf-8?B?U2czeGFNSG5EN1Jtb0xwRDl2cnd5MTA1Y05mQmtucy8yL1AwOTNWQTdCYmdF?=
 =?utf-8?B?MktCOG5uWUFIdkRWeVNvdldxWWJjTUhnbmM4SkhLVlk2aHRyb1VVQWZvY1JB?=
 =?utf-8?B?VU5ZZTRuV0ZuUGV0ZUNUSm42emVXQ1pjVTRqZlliOHVnR1NIcVFJbWpVYS9X?=
 =?utf-8?B?dllGcDkzVHIrazJqVlBaRExUUFAraktDa1hTZk4vQ3NDak1wYk80RnlvUC9T?=
 =?utf-8?B?eXlNQ3lxYTNTaFc2eFNqV3pkL0VQZFd4ZkU3Q2ZNNVhENjF0eE9ITzdpbjZw?=
 =?utf-8?B?L2lIVTNFVTZKZE9pekEyTE9Gc3Y2YnowTEpXZTZNNUZhckprOEZDM0lvVzFP?=
 =?utf-8?B?VzJwR2R5K3oyU0ZJdlJUWE1JdGk0LzNYMzhwQlZtbDBJTG83aFVIbGpTckdO?=
 =?utf-8?B?TlhBaDJiS2d2Q09sUHE1eUFoWDNLL243UHdLQTJNRzJDQ0xhWlFYNFBVbWlY?=
 =?utf-8?B?Ukc5OXYzRDVwNTIxOWVucG9qSm01UmxUcGFGbFpMMWJzL3ZocUdOU1Y5eC9l?=
 =?utf-8?B?RWZXRDZ2WnF1aUpZZnRWQzAxU3d1VWFlajkvN1lyM3hKVXp1RWs0b0xrdTVN?=
 =?utf-8?B?YkFtR0x6VEc4VFpReGdxUFBtVXViMGtBeHJ0RndjZEV2ellwYStmSERIaS80?=
 =?utf-8?B?MnlwYTFhQWM1bjFleWgzV29xS3kyV0h0cnMxTHZ6blR0QU5zeWwyTmFaMVov?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39230011-e5ae-4c4f-42fb-08daae34134d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2022 22:33:11.2802 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p2aLl1jIFu6f6p+GsjNAoXAPNiF1k4clO8MndM8A3bWmGKOTzAfbEaV/SEttz8aIU2ksW/NlFQ+BRn18Dkq5fbZABcikrlMS6/Ge4oUKwEI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6252
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665786795; x=1697322795;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hnW3cJlOO24aD8i7zAr5cXmzVyMA7DJl7xd5Hb85OAs=;
 b=NVY01wlBKlX85FUnYbCTfN+Rxjy4KiuApj142Y6p3ubZoI+7pBdFY8pI
 cs7bk2RgdRS3++n37Y2XYfUy1ukbgj9kVt0gs2WlOINmR8w7zJmfAIQF9
 DRQoQsWYVT7YjILejHmf+C659Xnumua8mkUi+c62J99bhkIBG6AJ2i3hK
 nFoV4Zfu+68S7XoU4mY48FPnCfRPnoMGFdGUbcdJ3aGcFxdqVsdrc4sj2
 MKqjG/7SdzF1BpuhmXJd0PyRy/No1IRsfmz1TascZIvrd2IAaUmb8bhqO
 eUgbFg7Kb/CBO221bom6xcp0eYRtD2uVdiMItCWGsnoCH/gYkhZZxE9j9
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NVY01wlB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next,
 v2 2/2] ice: Accumulate ring statistics over reset
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/10/2022 12:22 PM, Benjamin Mikailenko wrote:
> Resets may occur with or without user interaction. For example, a TX hang
> or reconfiguration of parameters will result in a reset. During reset, the
> VSI is freed, freeing any statistics structures inside as well. This would
> create an issue for the user where a reset happens in the background,
> statistics set to zero, and the user checks ring statistics expecting them
> to be populated.
> 
> To ensure this doesn't happen, accumulate ring statistics over reset.
> 
> Define a new ring statistics structure, ice_ring_stats. The new structure
> lives in the VSI's parent, preserving ring statistics when VSI is freed.
> 
> 1. Define a new structure vsi_ring_stats in the PF scope
> 2. Allocate/free stats only during probe, unload, or change in ring size
> 3. Replace previous ring statistics functionality with new structure
> 
> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> ---

I found a potential use-after-free bug in ice_vsi_alloc with these changes:

>  /**
>   * ice_vsi_alloc - Allocates the next available struct VSI in the PF
>   * @pf: board private structure
> @@ -560,6 +606,11 @@ ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type,
>  
>  	if (vsi->type == ICE_VSI_CTRL && vf)
>  		vf->ctrl_vsi_idx = vsi->idx;
> +
> +	/* allocate memory for Tx/Rx ring stat pointers */
> +	if (ice_vsi_alloc_stat_arrays(vsi))
> +		goto err_rings;
> +
>  	goto unlock_pf;
>  

This is placed in ice_vsi_alloc after we insert the VSI into the PF
array and update pointers such as the next_vsi and ctrl_vsi_idx. Doing
so means that if this function fails we will leave stale data behind in
the PF resulting in a use-after-free when tearing down all the VSIs.

This can be avoided by moving this logic up higher to just before we
update the PF VSI array.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
