Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DAD7083C4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 16:15:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 442E0840CC;
	Thu, 18 May 2023 14:15:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 442E0840CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684419327;
	bh=JSuyJ4zFhL2o7cq51pIAfYqd6gL3JHkSCkPqs+Y0O14=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xNP1bvcrhmIZ1/9PUUdxiMFuzgtZtcncKuqXg6g9codFQ64xo7OhbG1bLxu97BM6O
	 pILLX2CN69qbGm+zdSWVOUr4do4aKFAhjYdO7m+dnuZSTgwo34hlMsHaT9eZ4j5DlK
	 2aQ4aDf1HWhzMPOhjGF3g05SlzfBW/yf2jlXai2ozUmu+BTvPH+Cl0g9yUgkvrBB7w
	 AiRkKas/WJaTV4K+uBqcacCWBK+uZZArdG7sVA05y1JTxw3dMtrzOGMn/0G1E+1Z/S
	 S5kAKqORQWkqj6mje/ul0qhXtXp10JHjjyHUIZzniTr1pb7owYGlJAgX7Rf4k3NCdL
	 rhgr1pA66lDKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UAIdCDOSKrNd; Thu, 18 May 2023 14:15:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DB3B83BF2;
	Thu, 18 May 2023 14:15:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DB3B83BF2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B92CC1BF59C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 14:15:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8B72083C56
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 14:15:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B72083C56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zhjDZE-nXdDN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 14:15:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BF7C83BF2
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1BF7C83BF2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 14:15:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="354397490"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="354397490"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 06:35:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="702130517"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="702130517"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 18 May 2023 06:35:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 06:35:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 06:35:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 18 May 2023 06:35:47 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 18 May 2023 06:35:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HOl64o5Hdr/vGESOy7x7SzwDa8dKUEGxqykIKlOtHXpVDWOzjokKXl9tQgkV63lNHGb76vVH+Bb3AMfS5KMoGP7hooppqXUMEg/9/JgzreCgU2xoH6zMbH1sCksf/6q251zXVGGbaUSI/Lu2NyX37wk+OtXUHMUJIEUw/H3Q1+pjH4jBthQq92HsrK7+x9B7YBojYgvUa/sPtO0tuuudW3gkOo8KXt+/MNc9bUZEkKfDhmGvtE7ZueTURX5AQyn1VNU4UY8wI0iF84yHpIAly3VFkO4x2Rx5nhXTIkclDCnf5snfY8gSE3bkP2NtH0QWiPJN/qMlKbtN5voKACSvSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J3zB+2/cojHZ5ZFUk4vOf2MBHQ2q7IN/gbBpRWHUKlw=;
 b=XjOxkG/LRqlTd3Cikn+WafT++i+cm6i/VDJd3dlyMMQJUYIB/dVa2MV5aNlOjbRekieubfgXW9kS1mWg5x3oFRprTQ+xsNWOFef+qwe7z8LnnpjxMRRkFcTjea5kxFY6VQ5yuXNjffHywLXQtROlp/xWITdVfFlsGRPcAywQ+a3unykzb7lTI6pWfxT5gzzVVHofHuLjHEukBWYRnN65sX2+VlDdXGIMnh+OKgvN8aU4+BA4X+TC7GOtXmaN4Du+HMad1petuSeoPUBbdfHIsMd7M410m+Nz2WduVm3XC1oFUkJR5P0RfwWR1fwgjkkz9sQOk3WNMhfP+BPdNeSOFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by DM4PR11MB6261.namprd11.prod.outlook.com (2603:10b6:8:a8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.33; Thu, 18 May
 2023 13:35:45 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590%2]) with mapi id 15.20.6411.019; Thu, 18 May 2023
 13:35:45 +0000
Message-ID: <f7a082ae-5ec8-484b-b602-559f6104c9d7@intel.com>
Date: Thu, 18 May 2023 15:34:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20230516161841.37138-1-aleksander.lobakin@intel.com>
 <20230516161841.37138-7-aleksander.lobakin@intel.com>
 <20230517210804.7de610bd@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230517210804.7de610bd@kernel.org>
X-ClientProxiedBy: FR0P281CA0146.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::20) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|DM4PR11MB6261:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d2bb44a-b6bf-49a3-5170-08db57a4c7d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5UnVEX7YzsTVfvj2RrNRYaUk24qY6AgURRILwAg3804hGh8+ACqZ2Rjp5Zs4lTF6SWm+YxdjIV3CbOqOLNPGBZ9Wg3JtJGJ1WVJ3gqiBw9aat7axYdBtf0ILZWi+FnfXomC3IyQUeYxGls4deZSRBgxvUj4r85tCKr56n2OdLf8LYM1WtBrIm9/5FySCfTMK/1QEuFuaeCfRyQ5+F7IffpGSxDHJJTSt8gNmKsqSP7Kz7d2HALfhSAkj2mhkTFscdTDojbDHQ6EfeLed8UuV8eD/HESgZ1gHrm7Mr6FhXxRvgaYyWyAxeAqGg24ULuX2umTIl6Wr59NMmoAvpiuNXh4lK7uCJjczFqHouIXudHEcZiD97GjXwMO/GFkak1H1B1lvLI34+IxUZgIfTLWd0x1HfD+9pJY9ILB+J0t5vNMCSH1t0UqziiVY876xdyibXDSN1XXyf+E8vmEpBp38+Vmwbzgm0K7lzf6w8QgTlh/GPn0eKqW2IOxtH+aNL3mhJwxM+LXkyai/L/R3fHSTs3r2cCDnYxRrDqiujgmKzxggIqA+RwZzt5cHXFjAQJH969sflSR2TQzo4ZmVmXeijs5h3OtYeMZY49o4UBD4+IfDT8OJ/yL4XEQ/LCDklW1FPb/1SyQnDU8FOIxcKTlJ/Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(366004)(376002)(136003)(346002)(451199021)(31686004)(66556008)(66476007)(4326008)(478600001)(54906003)(316002)(86362001)(36756003)(6916009)(31696002)(6486002)(2616005)(6506007)(66946007)(6512007)(26005)(186003)(41300700001)(8676002)(7416002)(5660300002)(8936002)(82960400001)(2906002)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZVVOWmRlMVozTUJQYWhRYnNLK0lXSngvQ0JlWmJ0dGRSQ1E5a1JZdUZvT1pw?=
 =?utf-8?B?emk0NDFaQTMvMFJNZTZ4ajlSZ2FvMEhKc1VJL3pFOFB4ZkFmZ0RZbUk4S29a?=
 =?utf-8?B?aW81YzZsYmtxeEJTaVZnck1DdlBBbmVrR2VsWkNwNHB1QjliS1ZxZVZRRTBP?=
 =?utf-8?B?SlM2SEFzTkQxSzZiaW9nNFBtT055TDUvTE9BSFE5WHpIWVNEWGdReVhoQ2NC?=
 =?utf-8?B?bUplSHZsRWZQbTllRzhUTDFxRmhxNTFLTHJidjlQZzV2NlFqQnFFU3NFYzlM?=
 =?utf-8?B?Y1lHU1I3RUJrNXlnZk9PaGd2N3laR3JqUTZMRm50T3VXbzRBN2JlSmRRZXk5?=
 =?utf-8?B?NFp0b2JQRmlZdVhiWlRIQjQ1SWFBRThzd3RYb0E2Zmhoa2lQN1pXUXBxbjQ0?=
 =?utf-8?B?b1pUSWpReDlMM3UxTG4xNGhpWi85dFZmeit5K2JLemxpZHhEUHBBNUZaNENS?=
 =?utf-8?B?Y1cyaGVybnV1VXpoVS95MlhXVDFLbWkrQytibEdVbTdZWmpid0t3N3BUNmxz?=
 =?utf-8?B?b2toaWZ2OXJ2QkZsYnNkbkx0aVdXUFF1TnRtd0paOTJEdG1PeWxLTVZxWVY0?=
 =?utf-8?B?cVNpYzFDK2FQQWxibnh3VlVUUTFlSFBaN3R3U0pqcGREdjcyVTQyQmx4UUhm?=
 =?utf-8?B?QzYzZitJUDVNaERIamYyRUE2eE0xNUQ1K1JDamJYYThRVVNmcityc0Rja3lz?=
 =?utf-8?B?WkFjRnFvR1ZnZ2RPR1lmN2ZiSEdpTjJ3QkhhUWE2N3FJTkhVd1AzYmNGcXBC?=
 =?utf-8?B?dmZ5V3FQYUZzekVpc1FmMEhTblYrNysyL3JEcDAzOEczZjNydmhWOHVBRGla?=
 =?utf-8?B?YlZsc1BJQ3QvZ2hkZUdzRWZSMEpSbkFHYUE3bko4MnBnc2NsYVE5bnhsQUZq?=
 =?utf-8?B?emc2UHFyb1YzTndRKzFiMlk0OWlYdE1kNUUvelovMnU5WS9kMS9KVEE4MVJB?=
 =?utf-8?B?Sk5LOXl4MzF4UXlMc1FlejhKM3Y3ek8zNzE5THd5Tkc4M0c0T1pNMXZNSTE3?=
 =?utf-8?B?Z0IyQUQ1WnQyc1FTSzhrQ3k4dEFQN1FXcjAyRDNSY3M5eUJiMmtDTEFjSlo5?=
 =?utf-8?B?Nk9MSFo4RFZwMnB3RHErSk43M3BBTVhORFlZV2ZCQm1IdklXN1kvb0h1ck1w?=
 =?utf-8?B?Y3dyVHBhYm9RNjhNTVFzRFJLUWluNFZqNDdUUks2MytEVEQ4cEROKzNiS3lh?=
 =?utf-8?B?QjRhOEhlUzQ4ZHlva3oySzh0Y3MwbnYwVzdoblN1SWlzZFZrR0RncWl3K0xh?=
 =?utf-8?B?M0J2M2dtaE9sQ2RzSFRURGRuSmUzM3pRV2JNN3RCa0lPSkN3cjJlVFV3Tzhs?=
 =?utf-8?B?NG1ITy9ET2Era0ltUGJmMlhvWVo5TVNxdms4WlgxZExLU2hnMTlhZndNZGk2?=
 =?utf-8?B?Q1dYMU5McnBDRlBYYVlGZ3NqSTl0Q0xZL1RrVFlBQTZUMUNVWTJ3MmhjbVpH?=
 =?utf-8?B?cVNxY2NTSGpEU3VKdWJmMHY3NGsydEdsNVhnTlAwNU1HQXhrQThlNGE0RGI4?=
 =?utf-8?B?OXlmWFBsQnZOVDlpZFFGdVlKM1dwWDV3dGlnQkd3WklKZFNPbUhzM1MyOExW?=
 =?utf-8?B?WHZkOTNuR3Z4Um1mdWE5SUpjWTZhQTZjekdoeHFCQVhEUzBhRHZmY1o5WThW?=
 =?utf-8?B?eGpWYTk5bnk1Z3R3N1JKdTg3YmRRSjQ5aW44ZExGRkhWd1FKT2IwRlZVb2wr?=
 =?utf-8?B?MFdkaWFnQUpKRUxHUEx2UGVTSnFtdU1pSkdLSldmVFJ4anZ6ZXdqWXpha0dt?=
 =?utf-8?B?NlpUUUo2MjVhdVpLdzJSaFZsWmpwaHVFR3lsQytUcm5ZbXNBTUt5K0p6RmRW?=
 =?utf-8?B?d1YxdmVFVHh3LzNLN3kvUVo0OVk3cFBmYTdFR3dHZG5DR2hmZC8vU3Vqck9X?=
 =?utf-8?B?Z3NxNEpHL1dxK2NZVkd1eFZSTFVZSE5UWEtzLzdrMGoyZ2FJTGhUZ0hLYmVr?=
 =?utf-8?B?dTBRYjM1eG8wMWVScUJmUUJmRWw5NWRncmJ5QllDMzB4YjlFTDhXcjJLNmdr?=
 =?utf-8?B?UGxCQS9sc095ejhhbUpxYlhQcEZKYURYamRwWGlzRnBYSHlFQ3lEU1VLRGFP?=
 =?utf-8?B?SnNnY3hZL2ZTV2VPejk0Vk5nWEdOT3p2Nm5majl1dk5Xa3h2bVp6cGJ1aCtm?=
 =?utf-8?B?WEM4TDllT2hvd01QWWh2MHJNQ0QrRStnUkZGNTNWVVowVGZEeWtMdXNtZllS?=
 =?utf-8?B?UGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d2bb44a-b6bf-49a3-5170-08db57a4c7d5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2023 13:35:44.9578 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +P9BXDtx3nQ2Duv6S7yejD3YIJ0wfYwm7c7qXPU/tEdk2Y/jzLRS8pJY2+bTGTA9cYogEwNGSoc96W/qxu+g+HD7whUS75k+zAl25EH6TZs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6261
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684419320; x=1715955320;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vYkdZsIpPwPU/hoLLwjK73AoKA/4pu7EnNZUt2GsDOY=;
 b=OcgaGTRQelPjw00sS60fvvQjhrL2pDOT9l+4hDKp6QwtspH0t5ppLqDm
 bz4QtBQJRL0H05jTr8CzDsFTDlgDLNs3tGccgy5Df20wm7cWiNqmmF1OE
 48hs9XaLGUwkTd8d52Pk8NCw4R1WN5p2bLASGvng+aDNsdyrST8amJE4O
 NsPP3u2uN/6NWoVkjAYpKwT4FHELXQPR6UtvYMLYajcnlPlyqdHOVyMYZ
 E45wtwvLJh1OJexA77Tx+oUlW9+cFV3f0I3sa89HGnORmow4BUXJRAP5V
 O/IDwphL2M45xMF+BKl752uH42zPOwDptWbLmCEU1g7t3hevjqjV44+lI
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OcgaGTRQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 06/11] net: page_pool: avoid
 calling no-op externals when possible
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>
Date: Wed, 17 May 2023 21:08:04 -0700

> On Tue, 16 May 2023 18:18:36 +0200 Alexander Lobakin wrote:
>> +		/* Try to avoid calling no-op syncs */
>> +		pool->p.flags |= PP_FLAG_DMA_MAYBE_SYNC;
>> +		pool->p.flags &= ~PP_FLAG_DMA_SYNC_DEV;
>>  	}
>>  
>>  	if (PAGE_POOL_DMA_USE_PP_FRAG_COUNT &&
>> @@ -323,6 +327,12 @@ static bool page_pool_dma_map(struct page_pool *pool, struct page *page)
>>  
>>  	page_pool_set_dma_addr(page, dma);
>>  
>> +	if ((pool->p.flags & PP_FLAG_DMA_MAYBE_SYNC) &&
>> +	    dma_need_sync(pool->p.dev, dma)) {
>> +		pool->p.flags |= PP_FLAG_DMA_SYNC_DEV;
>> +		pool->p.flags &= ~PP_FLAG_DMA_MAYBE_SYNC;
>> +	}
> 
> is it just me or does it feel cleaner to allocate a page at init,
> and throw it into the cache, rather than adding a condition to a
> fast(ish) path?

When recycling is on, not that fast -- new allocations occur relatively
rarely and it's allocations anyway, one `if` doesn't change anything there.

And seems like I didn't get the sentence regarding "allocate and throw"
:s This condition just disables the shortcut if any new page suddenly
requires real DMA syncs (and if it does, then the sync a line below will
take way more time than 1 more `if`  anyway).

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
