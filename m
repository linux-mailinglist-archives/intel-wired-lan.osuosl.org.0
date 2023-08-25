Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11316788980
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Aug 2023 15:59:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A041141772;
	Fri, 25 Aug 2023 13:59:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A041141772
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692971964;
	bh=Riguefli0bOenqu5QKszkGohQ85/h7Ymkzz9Lc2A0h4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XqvGklgOUTk3izhaQ6c3xCIFDYi5RnRy/kyihlRlNlNHmyV37n/aO7EB5oAY2Wjhb
	 LB4abYxX4h7NtmkxAndlWhqwF4QDCdwyFZF02sE42BpcxwTwBRAZjAVJDmJ2QF5qoe
	 S4tFTIJ49G1bX/PsSjJQMxJuW3KgjPwCm552YpXGLEPHSBYN24g43orSAgf1Yo264W
	 nk7Zsmz389s5c1DN/bJJOR+cskPVw5PMC4a/m6eM9SkeFt9XFnwb/jrQ7nbP+viJKZ
	 7khdHM8sCnhyDfYUZjp+o53jwH3Yo6PaE/YGpM/KXq5vUAbPQnaLMZCVQthI/MEI2M
	 3KTyG2sxbkYPw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q2ZBdyo8wqW8; Fri, 25 Aug 2023 13:59:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E6EE40114;
	Fri, 25 Aug 2023 13:59:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E6EE40114
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBAF41BF309
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 13:59:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 92F5060B6C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 13:59:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92F5060B6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SDSu0lyecf-S for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Aug 2023 13:59:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 974E360B68
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 13:59:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 974E360B68
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="441066377"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="441066377"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 06:58:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="807546946"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="807546946"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 25 Aug 2023 06:58:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 06:58:54 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 06:58:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 06:58:53 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 06:58:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=egMD9U2qppBr8j1G8gqVqFYr8xT3M9jQRlCDLOKFEIB9l40u1kC50zhawID7MqJ0RC8jJx0A1jcxHT8amntIb/cX+tOB7MT/ySPb58XMCSS/TXY5CE8PCI1wu8SSm9mPMIrEpSy6Q9FDJDw18xTRKdi3o6e0+9Up7Tov1EdHhzIxAWHnH+8SqNP/iZWs/xBfIm9sYxWXypmCSx87Od3H2W/D663o978YFV1Ikq5JgHXxGgMq3VAgIwJPIYoh8H0K/AnPvVldTcWZ5Ngg3Igc9O4bXhaE2Totqi1Bx/R6HmD+SSCvYvcA7OhYtCq6hCAonb2tQckaIrB4hCLyLsx2uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NDZBKewDgeLOT8ZGUPYmrSb3o9fk811syfa7Tc1DfrQ=;
 b=ZjLcDbt5S3zkMvrjYcPaVs5M6IYr8wnCOn2AKZwQ1dLW/jZpv0EYIkaHRDFGLWtfcmRkGAn+7f6Tn1o6C86OJm5PCheQl0PFwGXhk8MJDA8XGCNVPOV7bvQe6q+bsLYj592IPUv05+3B4dAfGbsO51iap4H1p7iACSwYhpb7pPzBxwpuFHEzuDWct4dpwsZKGtkIyyhA2jBmuLlmcIGeQm3YB9MRiR41aklfNh62GtufAiCfqpkr5KXRemXYqj6xjHhNJHQSt8LnK+MUNCQh/y3ob/TxNiIgQeafYzKNcX9k4webH5WleK5nY64h/fh9PwaZwSiaUbqavdUIgz2A0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by DM6PR11MB4658.namprd11.prod.outlook.com (2603:10b6:5:28f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.29; Fri, 25 Aug
 2023 13:58:49 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6678.031; Fri, 25 Aug 2023
 13:58:49 +0000
Message-ID: <576c5261-6fef-5f94-b8d8-549cbe55fc79@intel.com>
Date: Fri, 25 Aug 2023 15:57:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Andrew Lunn <andrew@lunn.ch>
References: <20230819093941.15163-1-paul.greenwalt@intel.com>
 <e6e508a7-3cbc-4568-a1f5-c13b5377f77e@lunn.ch>
 <e676df0e-b736-069c-77c4-ae58ad1e24f8@intel.com> <ZOZISCYNWEKqBotb@baltimore>
 <a9fee3a7-8c31-e048-32eb-ed82b8233aee@intel.com>
 <51ee86d8-5baa-4419-9419-bcf737229868@lunn.ch>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <51ee86d8-5baa-4419-9419-bcf737229868@lunn.ch>
X-ClientProxiedBy: FR2P281CA0118.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9d::10) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|DM6PR11MB4658:EE_
X-MS-Office365-Filtering-Correlation-Id: 3497b9ec-f89e-45d3-32c3-08dba573686b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5HqoH07QfWuP+ggRQSNy/YvKRtcVF4D0Mkmr6dz+gZ4pIiBtjnyotjqh+h1fbvHK/9pFBZM3t9NhQT5OT7ZTzMXcwOJc48WGZ4VczfECgNqHoPqkA0K8DOwhhnIpmqBZvewKIltwg4Ajk8Z2N9vnw0HuY+aQ0IUOUmYn98j5ytSn6kG3JGHhsYlDsrE82HJBlmHoJi9DYHRMi9Pp2Fa+wGK5k/wlWWnnkFM3FWHf8Gi/JgvUHrzqzh1mQD/zQh+Ii1wN/NxIaKmwV6zdMeFdE734SyheUupGrlQvX/zeBNTGVG1xKPVguMDwiyx229L0pq0x0NjyfXIG90Zy16PJH/IncHxQsdfhkzvMqU5oLYKGjItIAz6TnwmDZMIVpdyt0IesNS+CyYHarAGxkkEN0Jm1hA1HiX2dekVHO4zsHeIwq/PfXhLCqgz4S9/jWw/oQ8hYp5Lt3AIu99/LER+cbbrAiXLd1Qb9R8tExj7jfrnsdNBScGkdnJYfMY+ZKgcv5Ym6dOgXec4f5YNfkgGquVO/s/rzIl/cUMWSXNyz6XbHjkHgHLbgwgJoRxo6KiEWjIPfwsrfpvbq6ww+CVb6PnH4t7gY8Sc0eJNwjZgKHROzEQIJqyyXJ2TmFyqv3ExICOSlKsWoV7z6yLn7PzXulg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(346002)(366004)(39860400002)(376002)(1800799009)(451199024)(186009)(83380400001)(6512007)(478600001)(26005)(2616005)(5660300002)(31686004)(2906002)(8676002)(8936002)(4326008)(82960400001)(38100700002)(66556008)(66946007)(66476007)(6916009)(86362001)(41300700001)(54906003)(31696002)(6486002)(36756003)(6666004)(316002)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0FlVFA1TEF2bnZBUDBHR3BocmNFVnlqbk1NeFN4R2dIa29jam81T2k4RnFR?=
 =?utf-8?B?aFJkRzlNTzI4OU1MbklZTFIyS1BiL0NhV3VMWWdzUG9wdGtGbDAwUGNSRHBQ?=
 =?utf-8?B?WkJQUC9aV0huOXJzYkgzRWtyVzB5MmlYd0FLelVqbVU4a2s3U25JR2ZqU1lz?=
 =?utf-8?B?d3pVU1RvTjBCRnYvL0xkVVBRTXUvSlpaenB3dldrNnlJZjJVOEtLcTFhRlN6?=
 =?utf-8?B?VkNUTFpJQWs5bHVBS0JkcDYxdGJjMStjOG9WSFd2ejRYZVB6WjRTT0NMT1d6?=
 =?utf-8?B?b0N0dVdyRGF3eVdaaVM0NEovTnpNSGlwZGNIS0ZzQlBDT1pGYnpLRjVpbE1W?=
 =?utf-8?B?ekpPUndLZ2lFMDk5NXg3TDJnOGxHbkRTUllJZmNTZVJCZkJxeHorWGpNL0hU?=
 =?utf-8?B?TXV5d0FyRHRNNzRkUU5XeWJjL1pHZ0pBWTYzYXEyODRaNWNlSkNlb2xsV3Zt?=
 =?utf-8?B?TkNzWE5ibmxCYVN2MVZmbkliRUxkSGhacXNBbUl1RmNscEd2Wmk3MWY0MlVT?=
 =?utf-8?B?SDFpaHJPWFJuZ1BTUjlnVEltZVI0aXpDVFJKRnVha2x3STlwZGVsaHlWZXFi?=
 =?utf-8?B?elpiRUlZQlIxanErbFBkTmVPc25DL3pkR3ZxY2dXcVFWMmpRbDI4T1dJdE0z?=
 =?utf-8?B?V2R3Y2xCQXRKZXRqT2xNZnJxN2dnWXVTTDk1NmZmMXRpQjJTdGxVMFVLWUQ5?=
 =?utf-8?B?bGlnSndHV01LZTE2VlpROWpPS20yOUZxZFY0K3l0NmxiT0FrKytMRXRGTTQ0?=
 =?utf-8?B?NjJtWDhDQlhFUjIxOThmeTlXODdPZ04zOGhiZXRlSUhOV21CWWptWTY3dTVq?=
 =?utf-8?B?S3lEVlF5R3JocWxobDVubFVnT1NZb2J0ZkZneXdWTG52cGdHeDlmNURGblI3?=
 =?utf-8?B?WUcyV05xaHdoM0lQRkdiOStteFFwSXJpcUlQWjZlaCt4b1hOL3ZMazdob1hM?=
 =?utf-8?B?TFlCTllWVzEwVEh1TG1zN0ptTTIzSWdIblNGWlJzWWZlZjZKcTVaOTQyeDNl?=
 =?utf-8?B?Y3JTR3pmTXA4K0sweFMwV211UWhsdDRtRjM5SzVwQWorWVF2K0xkWE1Zdnor?=
 =?utf-8?B?ZXZCbGlpem13dzF4aVluQWxGT016TW9kTXpsazExSDNQbHN0bnFPYTU0clV0?=
 =?utf-8?B?Z3MyL2k5Q1dTUjF0ZGs5cDdJU09Oa2p5VlpTaEYrQWEwcHVWVXZEa3ZzbnlI?=
 =?utf-8?B?bzVWWXo1QVpOaU1EQkd2VGl0a0IvcXJJUjdwNWNhSlRzQytsSitsbXY5L1Fl?=
 =?utf-8?B?UHhBV1dINkhTcjNoMGxxb3NZTzEyY3ZaaG83L213R09oVktPbStaUDlZT2dS?=
 =?utf-8?B?Q1BSQXZxZk9ycG5LVW93Z21tQXVVaUtKbUVUTitjR2xTSGtCSDFaY2ZUSGZO?=
 =?utf-8?B?QjQxNkczbFJiSGh0Q1FhN2hBUkNjUFVXQzlqTU5JWGR5SG0wL1ZRUmJmSEg5?=
 =?utf-8?B?dldrOVBEclJyUFJ1M1hUNDNCYUhPTHJGVEpUYmdGaGxrWVh0TFhDeTh5WkVl?=
 =?utf-8?B?Qk03Z1hwNnpXQmVBeXZDcWR3KzlFTXdkTm9wS2VDenBraWh3MXVaRTNxSklL?=
 =?utf-8?B?elRqWWhBV1dFbXk3empjeFJRUUVXMXFBL09kbllQRnFucXN5N0hwQnExVXpK?=
 =?utf-8?B?QkdTbzMvdEdhUGVaamZVUEd1M2xSYkpJck8zb1VJSHZLRjFLWWhqeWxOK244?=
 =?utf-8?B?bGJad1UrbHRHam1CbVFJemZNc09GMWJ6bjhmQldYZGRaUmZwK1FYMXA4NWFZ?=
 =?utf-8?B?YkwzK2t3Smo3V3VBNjliRmwzenNDZFByRWU1SmZVSzRJVFpsSWhDTHhHYTk1?=
 =?utf-8?B?NTNuTjhpWVIyWklETDN4cWt1ZVh0YytBdThPZ0MwRFZCTW43UnRIeXl4Yk5R?=
 =?utf-8?B?a2JGQUZqS05ZVU9RZndBQmJiTDFWYldkTTh5N3IxbU9YUjB5Zm1QNVo0aFps?=
 =?utf-8?B?QmdoMTNDVlFLeFhLSmdJOVVYcTVHVm5wS1ltWGRjbFNEYXhDQzFHK1RDZ0dy?=
 =?utf-8?B?Skk5N2x1dkNFUEVTMnVFOW43Nit0WDdIRUs5eE51YWEvalQwekVyTXc0ajFr?=
 =?utf-8?B?MTNKam5zelZPZmdHdnNESkxiUnZZNFBkSEN2Ti9WSW1jUitBSGUwZ094Mzd6?=
 =?utf-8?B?enArRi9zMjdzZGtPOExuNnp5QllDQ0gwMUJQcDkwUHl0OU5odnpRVHQ0L3Jn?=
 =?utf-8?Q?afxDv1YU3WgorcIV6GmetAI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3497b9ec-f89e-45d3-32c3-08dba573686b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 13:58:49.7255 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fmIlrC0buFsTn4+/FfnVByPLfa3dAU4Vb0SDedOOus5ld2goqrG87MtceuUpL19E7dmxBgKaP4+sXrc4131jmW/Cz1dnRNTDdBC+VI0zFXA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4658
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692971956; x=1724507956;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xsz9W8MGuLsMo1Bef/+r57pV1mlCDkjRpITLCL3LNyg=;
 b=ES5IFvbxyzzBiFKnvDWJwwiJOqvJOvDOKvBffWy/6H8aE6Bmti2l2yV+
 w7U03+ps5DQ4Uf2Oc1BNeYgmNK0GwX5ryO/aQ13K4ab8pervYB3YiTmk3
 /qY5Es7dU6vtRgckSRxOcZa3F+9gyBSeLENwItrdht/JlzrUsAvzE5rsi
 i9IRgsEJVwwOAcXg9zZz0a7NAXmcDRl/4Ye5NNxqfEiRib7s4xJnsK8v9
 UHAzX4zbaVStrVChrdyJiCPGQKDz4LaWUlBoh8aMSYBtOPRMR9J4R8Z59
 Z1u7S20XYJaHKJgUX62prldJvU2JN03Z1Qfjp2DcIDsf4YfzQ77a+Eh0I
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ES5IFvbx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/9] ethtool: Add forced
 speed to supported link modes maps
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
Cc: aelior@marvell.com, manishc@marvell.com, netdev@vger.kernel.org,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, "Greenwalt, Paul" <paul.greenwalt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andrew Lunn <andrew@lunn.ch>
Date: Fri, 25 Aug 2023 15:47:20 +0200

>> Let me think how we could do that.
>> Andrew's idea is good. But most high-speed NICs, which have a standalone
>> management firmware for PHY, don't use phylib/phylink.
>> So in order to be able to unify all that, they should have ->supported
>> bitmap somewhere else. Not sure struct net_device is the best place...
> 
> I would probably keep it in the driver priv structure, and just pass
> it as needed. So long as you only need one or two values, i don't see
> the need for a shared structure.
> 
>> If I recall Phylink logics correctly (it's been a while since I last
>> time was working with my embedded project),
>>
>> 1) in the NIC (MAC) driver, you initialize ->supported with *speeds* and
>>    stuff like duplex, no link modes;
>> 2) Phylink core sets the corresponding link mode bits;
>> 3) phylib core then clears the bits unsupported by the PHY IIRC
> 
> No, not really.
> 
> All i think you need is a low level helper. So don't worry too much
> about how phylink works, just implement that low level helper passing
> in values as needed, not phylib or phylink structure.
> 
> What i don't want is a second infrastructure to be built for those MAC
> drivers which don't use Linux to control the PHY. Either share a few
> helpers, or swap to phylink.

I'd love those drivers to be swapped to phylink, but I doubt that will
happen :D

> 
>> The third step in case with those NICs with FW-managed PHYs should be
>> done manually in the MAC driver somewhere. Like "I am qede and I don't
>> support mode XX at 50Gbps, but support the rest, so I clear that one bit".
> 
> I don't think that will work. New bits keep getting added, more speeds
> added. So 'support the rest' is not well defined. You need an explicit

Ah, correct.

> list of link modes the driver needs. We already have code to convert
> an array of link mode bits into an actual mask, e.g:
> 
>         linkmode_set_bit_array(phy_basic_t1_features_array,
>                                ARRAY_SIZE(phy_basic_t1_features_array),
>                                phy_basic_t1_features);

Now I got lost a bit in what we do really want to share now, as less
sharing was indirectly rejected by "you can share more, let PHY/whatever
take care of this" and now wider sharing was indirectly rejected by
"that won't work" :D
From what I understood, all we want now is the stuff introduced by the
original patch from that thread, but without "generic" speed arrays
definitions?

> 
> 	Andrew			       

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
