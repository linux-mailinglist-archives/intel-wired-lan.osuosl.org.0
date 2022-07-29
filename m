Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B7F5854D4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jul 2022 19:58:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD2AC82628;
	Fri, 29 Jul 2022 17:58:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD2AC82628
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659117535;
	bh=XeN1vKhUa8VEUCqyFT7fyTjaQF5l1EMAn9uwmHG8Txg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hzTXDtOvy9s6p71wen/q8U9zpV1uMDBaefQtmR5H0x9s1XrnD2kikpalheTGUo5q3
	 BPgP4jeyhmd8sVEvPW8UbLp3psUnVY7vZXsHfktcKrcD97+wvBYLqr3Oj1dxMjXHZL
	 rveWhmgaFaLG4nouaUa3b7oM5lxVQ5B+R7rs1XphVTRDNzde0L1ZA2Eowz44OFawom
	 u4KFN2F32JOxLdIghtkn0nR2QYIOVddGw3jAK7S9lWVAME25MkHpO1ifOZqP0Eta7D
	 GcdtKhIgaklyjjE0ZlHBDCJ06vTv4KslThcUYST+UIVzhit+IxXONOI95VtI1wGS0p
	 FAOiNUEZ1GvxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FlrKSS6N0lyh; Fri, 29 Jul 2022 17:58:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B42F582422;
	Fri, 29 Jul 2022 17:58:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B42F582422
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 51C101BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 17:58:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 24E8C4052E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 17:58:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24E8C4052E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O2K7i-UVBm4M for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jul 2022 17:58:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1897340438
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1897340438
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 17:58:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10423"; a="275704017"
X-IronPort-AV: E=Sophos;i="5.93,201,1654585200"; d="scan'208";a="275704017"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2022 10:58:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,201,1654585200"; d="scan'208";a="660331443"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 29 Jul 2022 10:58:45 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 29 Jul 2022 10:58:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 29 Jul 2022 10:58:44 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 29 Jul 2022 10:58:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jNta+otFkYYT9Ab77F+IMcobGB7doXtwM+2ajFjiNiYzNVoabD0ca16anyyw7r1y1RRYK4VE/ROqqeBfYJdPvub54P7qwse8+da2ik78iPGAIggBoodwFGtbUFx052btuxwDRfVvJ0TeYiUu8z0sje0YgAT+erIlrtNIsuCSTeuontbQydliFTCDf6Z1BQlK9CVUgREMt3+c7UxzkBpD1WKna/9RvZInxNWLiciSbVwtaCcQe5ZzynThdTajWPYXPiOp9ek94911uBd3CPehn69dQvZtNODPJ4HiDn2tTl7x1tT+NpI/i9bK/COSmqRA2Op5aoTTAZxYCo5SjLID8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EmeqeKnuE9M2fjaDVYL737Pi0tjiRHX5ENNuittmR3A=;
 b=etspqvzHGjvbdVTtbfD2X4BI8LvFfu8uV5btau4uZeIiU8KMA9eDCkQXcDpty2UyfeQJiKD+uwkzoc1V+jq3k2K9oCJGDm2K8aia96K81XVwocaHcOtTpbt1IwQDynOjPnGamxYC4pv5LjhIvnOnfnUxcJQPvP6biLTsRxeKttsCkuAhK2G+2OdfUlaUWG2e4cBmAOIcplb7o1V9iw3kV4SU27WBkfJdSgTxP/V6Y2XjXyh3vAPnRONxbVOcQbfLlvqJi/dvcOuHM6hZsi2QULZ7ATe8U+BCRAwyE2AfPpHQgZWq0K5ajPHki/s55YIuzIOBdW7e8OGGJM8m3q+YNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4876.namprd11.prod.outlook.com (2603:10b6:806:119::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.6; Fri, 29 Jul
 2022 17:58:42 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5458.025; Fri, 29 Jul 2022
 17:58:42 +0000
Message-ID: <83bb303e-c23e-0df6-95c0-954515b2dffb@intel.com>
Date: Fri, 29 Jul 2022 10:58:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220728125310.989781-1-karol.kolacinski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220728125310.989781-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: SJ0PR03CA0174.namprd03.prod.outlook.com
 (2603:10b6:a03:338::29) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a89f6efc-11e5-4342-92a5-08da718bf971
X-MS-TrafficTypeDiagnostic: SA2PR11MB4876:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fdnPYnfjlm3UJRDKdjcMZBtZJ3UDvhjmzrmhAMlleViakFHwK9zAx596qlOGvORtza6tvVlQ0azkxEuwWR8/JzqDzqLVj2qLeSkevFAWw8uhw1MDtUyHHNM3MgiYqcuPOP6Ioy4wIV1BBDQO4PndkyZSSoMLW0RtwufcL6NN5z89Ol6VEzwRR5glYYz3/xf0d5v6za6vhJKz7x9kn9rRI8nNu2FalbJB8zPnRnb71OMk5DT8t0oaYzAl7U8sqJbPaSExG2XYUZIFjrJrxYTtt0k23/brQkZxaau9hDBEKMrWIsiJJ1rwA6AZWuuSYZF735T7Y/WyiGCZA1L+3DRwzZI7eU5KQs4Pc681SrQnGQk7hDZpdqL/ldpiC0aR9h5Sc2diG3mSUBlxjt+nR+yAmLjmF6Heox6apEj0AT08BS6kLk/1ndQvjglB2nvH//3DCiL7z3A1FxeRfQoKX2NeKB5AUoSfh3ePoMYbY9UMy7t79LV5YxPDWPxSZayuM8L5GqLg4/zSaCv6y/NC7q46fNiBH2vllkaaJEbKpRRo3pwT/W5i7lqkLzJunpP9QEmsm7gWmzNe+R6g+uG5NvFWIHeCDssVrx+X0ZJqtLUFizJuo4e1tL8gQvSZ+73p9BdvhBfoR/3iecHwaZTd8qp0UQT4TCcc6hcxNqtqaOE8aqGvRC3iVN58l7/QeU2LVGaxumb7H3SaU0XnaOOkW3CA5YQmbwIrr8pbul7kedmOmcCbzO4WDyo65GXckGILoHB997RxtP1TRDKUIvr19PAHKA2fetLNGwG0RYIbPlf/YNSsVDYT3RXz4bagagRTws04Z2FdCCvz7JsS95fpsR8fptiHjbbCi7fcCA74YIZJu51RoFkBO7hH5rQvGcB3wQtG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(346002)(376002)(136003)(366004)(36756003)(186003)(2616005)(38100700002)(8676002)(66946007)(31686004)(316002)(66476007)(66556008)(53546011)(6506007)(478600001)(6512007)(26005)(6486002)(86362001)(5660300002)(966005)(8936002)(31696002)(4744005)(6666004)(41300700001)(2906002)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFJ5VHVQZVFjS0sxcmZ1MWV0eFZzSEZ3cWErNkZpR1ZUOGhLUWJmK28zTTdF?=
 =?utf-8?B?L0wwMHNpL2tUbGsvR1cwT3dWK2xYTUI3ZCthdk9aUER6aklWN0RkUTNLNERR?=
 =?utf-8?B?TWNCbFpZcjZNQlNCQWNCUXd0TDlsQTJ4VnR1UHliQXZNc0tBNHdNUXZNU2JD?=
 =?utf-8?B?VzhWYUVvV05zSlVLc0gyNWlVZWNwSHdERjlLQ1FEcmNQMXo3dTRtcmFibklq?=
 =?utf-8?B?ZVU1UkJIVlZmdlZyKzB1VXlkMXJBdUNSb2w2OUI1QVAxQUc3eVdoZHNPNWNR?=
 =?utf-8?B?R2c1eGEzcUtrOHZHQWdSbE9tdzR2Z0JLSUJmQUZiZWUxSVJNNTBMaUtMT0sv?=
 =?utf-8?B?bHNwSjhZNVMvVTE0akhsNUFLc0RrcVlYbDdrcG9hTHlHZDJmazBSZXAzeUpN?=
 =?utf-8?B?MEhlVFZZNXByVVd0OGpSOW5zV3ZJMTlNalRKOVBRaW0vZ3F5OHpNcUkwNWNk?=
 =?utf-8?B?QTZBWFBuRTR2dnh2MnRaUko5NlJSQlpoVWEyRDZrbVhtd3R5dytuaXRDd0cr?=
 =?utf-8?B?WkpkakpHQnZYN3VlSWcwdWpYUlVmTVNSM2hjWjRUZFJ1VkNtWFVoUktQY0VI?=
 =?utf-8?B?K1RNRDU5N2EyMzNlWS9JRzhrZzJ3aWhUaE81VTAwSDBWbmcxdklVYVp5OUMy?=
 =?utf-8?B?NmpyRFhTWEVrUE9GL1NaTlFIVFp4K0JiVXBQQ1o4R2pYNzBnMnJCZnd4bWlH?=
 =?utf-8?B?dkd4SitteW5FRjlOUzNWNkdpdHd4MDB3STZpQnBFWmdXOHE0elVacG9RRFla?=
 =?utf-8?B?V0loRU1LMThIa21laTYrTmdodUJJTnBvN0RQNG1mOWZ4eXNNc1o4Q2VUS3Bo?=
 =?utf-8?B?cnZxSFRieEFzM0kxOU1VUTJ3MmEzRDZuZ1hHS1VIYzh0YW92WlhPRmQzYXRM?=
 =?utf-8?B?cHVzTlFvQmx0bXNuUUpkekVwZ3AyUXQwL0pPRm9vYVBjcVppeEhmZnhoclEw?=
 =?utf-8?B?RTJqRDJiT3gwellZcWEwT2RJaEpKdzdTem9yd2pIYTFHZ2hTVXhUMlFxUEg2?=
 =?utf-8?B?MnA3NlRaMjhTSUdoK05JOTYrbUFQYWtPVUtQZ2tOTkhsSHQ5NmxBdlpyVTJH?=
 =?utf-8?B?bFlDOGhPRVRZUmFaMTBiQml6RytETHQyTHVEdjU4Qk45RHpBa3prbGpGTmc4?=
 =?utf-8?B?dVNyNDdaejh3YTNFeXEzVkRyemIybk9BcFFjQUFtN0N4Z2FhVHovMTRTTWZz?=
 =?utf-8?B?aldVaVEyZkdlWGVDVko5TEs4ZUUvd1BPYVVUT21SajVVWUl1ZC9IczRuNUcx?=
 =?utf-8?B?WFI0Rm53QkZiSGNtV2Q5b05tdWd4VC9vWk9uSXRCdzlMbWVYQlJIQVcraWdS?=
 =?utf-8?B?YmlIWGFwWEcvOXNtb2Z6eGhJNG9DclJVK1lrc1BPbTJYcHpGQ2hDdTR3N3Zh?=
 =?utf-8?B?WDgvaGY3ajdTTFBjTVIrQ0lDdnljeEZDN1VyaXpsUWtNVEFCUGhJL0lzMWFh?=
 =?utf-8?B?a01ZSXBocTgvRVB6aS9aVHhQKzhBWERIdXZJdFZWVHF3bVIxUjNUZ2oxZm9n?=
 =?utf-8?B?dGZKYXBtejdGcmFNREx2YTZIQWFKeDVxRjRhb3grcEtMM2daOE9vNW1DdGR5?=
 =?utf-8?B?Q3Z0bENrZGdSQkZQY1FXV2tjMmxTc1d6MGNKSE5pRU5ubFRkcWw2VHBuZWZL?=
 =?utf-8?B?cEQvaDM4R0JDMUk4VVI4UThQNTc0Y0c3ZVZlSVFLbEtvMnZJTUtiRnJGcFB2?=
 =?utf-8?B?TUE3bEx1TkV0bDYxeEpKNHgzNElOVFNkWnhiRndBNGs3UTVZQWI0Nk1jT0xs?=
 =?utf-8?B?ZU85RHJtR25IR0k3Mjlwa2lNbTh6LzJYUkIwVUV5SU8xT0p3V0E4Rk13bVpV?=
 =?utf-8?B?dzBacjF3Vk5Dd3RueWcxSjhYYUk0ZU9NYXVScUtiVmlQUGYxVC8rOGhXVTEr?=
 =?utf-8?B?K0JTU0tUSHRiQUVMRnAvd0I4cHNLVHhVZEZCQkh4T2N1OE5mZVVEdk1haUJq?=
 =?utf-8?B?dnlIaUo3dTBiZUdkQTFEN1NqSEdmb2FyS2dmdEhkSHNtSmc2VGZTMUZqYVVV?=
 =?utf-8?B?OW5VRFhqa1Y2UmZQZzZxZVRMT09TV3VMVVc3U2s2OHdVZklyMUdKdWtRMk1z?=
 =?utf-8?B?N0VJWkM4c0N5K2NzUy96VHJCZUFvcDNDaHFFNFNZQXhjUnRUbGNpaE5JZFJl?=
 =?utf-8?B?WUNValJjRUpjaE5hSXhpTGNRZDhZS2hYK2lBWlRsdWRsZk5ydnBEOHQ0SkQr?=
 =?utf-8?B?aXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a89f6efc-11e5-4342-92a5-08da718bf971
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2022 17:58:42.8677 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /b8cz604yIysCpmHe2vTn1ATLPMIpSyVtzwot529YlzLvNNBV2FnXYc2z3C0HRzjqpTGIlvQz8oLwAebqPTKDzvqR77uksGNXkQWY60sXY4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4876
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659117526; x=1690653526;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7WOrLbvse3/12BRoI4bLm3whR29jhqAPwrualeSoSG8=;
 b=IE+mv+bLmXPABDWVnMyJvPbgjsZvbHX7nJ2Mw1FUTtIG6a9p7W3E1dc1
 EMTTq9BI6T0OyNXqOThpB+LuO408VjNmRheB0X7h9ORsC94A/D4nBMK05
 /VopfsNPU6HDuReGXsP31Uo79dNI7qGFV5aVIdM1olBCsO1WN2UmydM9W
 Wq/F65dzbktWL0LKvnihbk7BPF34iFE9A1iRw7dIF9H5O+VjXoPDQURfK
 WYslOMNxFWNSyyuhqxyweqFgIECA+j0tT7N8v8nodHf9o8m+8s4v2Zv/A
 xhGKTWz5OIFznQ2mUu1Hm/B7Zjc8UDdoAeNeZEebZ/n8WosGCO8XjrRy/
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IE+mv+bL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ice: Add low latency Tx
 timestamp read
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



On 7/28/2022 5:53 AM, Karol Kolacinski wrote:
> E810 products can support low latency Tx timestamp register read.
> This requires usage of threaded IRQ instead of kthread to reduce the
> kthread start latency (spikes up to 20 ms).
> Add a check for the device capability and use the new method if
> supported.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

This doesn't apply anymore after Jake's patches[1] have been applied. 
Can you rebase and resend?

[1] 
https://lore.kernel.org/intel-wired-lan/20220727231602.1625980-1-jacob.e.keller@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
