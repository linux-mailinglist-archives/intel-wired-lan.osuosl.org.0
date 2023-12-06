Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAF7807095
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 14:10:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 344018135C;
	Wed,  6 Dec 2023 13:10:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 344018135C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701868254;
	bh=8b3Df1sAiCXkrxc8PDfmhoxtGwsDi0dpMbjcy6jFJKg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mYiogOWl/6yELXAVfTh2VOL25hPz9Q98FmU8popp0DIsw+y9Mb0aQ0LCR8AoWbrw+
	 86z1KNycYXKPR9uY2RFz3eFUWpFKpfJ6e+3nsfqYhf18khcoWRjewU2vGy6hdAS4WI
	 tI85bQvsuqKHYHbEp1XzfRkhMzFRR5vJNnPh/nDai3V1UlwM/0jobraEbcHkU+vfMf
	 UyS297S38h2aGC4BCi01z+cU4g4ms1gD9ebTmqdqK4a2LKdTi4JjqV7RJuzgemtFNg
	 c0l2sYj9t7YyzV4fmzdbDoWidF1hJv2HY8C3ti0ILFw/YJVm8iJMYx1vzASK5DCPb4
	 Ljt4hebD9AUdw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sPY6cwmHifWA; Wed,  6 Dec 2023 13:10:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA06181779;
	Wed,  6 Dec 2023 13:10:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA06181779
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CE3181BF35B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 13:10:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9F2C64021C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 13:10:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F2C64021C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b7ZUUoW5gDnJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 13:10:42 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 06 Dec 2023 13:10:42 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 125A74011D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 125A74011D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 13:10:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="1124791"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; 
   d="scan'208";a="1124791"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 05:03:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="1018565784"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="1018565784"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2023 05:03:33 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 05:03:33 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 05:03:32 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Dec 2023 05:03:32 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Dec 2023 05:03:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SGPfy2GJ9K7v5WsylNTnQr7hSs/5u+3h3ZXkxc5JFTrXFhdnuQKdD5mASWgE4c/MZ3pPM5VI7F8OMlswxJkxTMnT+wXplnsjiEy8nqw8Wz2HPB4B3X+zYzMo3tatgEAPJaWsDPt6zDrBSXuspUxnLP1nXLDMvYNNwdexGoV8H3N06UI/xuoxRxKg8dkT4NVOFV/j62c5g+VkFM52WyREa0aTTq5h7TUAlxxUN5kWNqMvcG+Rf6h+loNlt8sEOgSoiiMOwiixOavmFzBNcsuvSHNuPdpekiliF4iDjdrwONucT6fKP4ULc+JdvrMJ8MRbFizcVCG/opO38HnB6xsQfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y3+YuBGbmrQxZH0jcbX03ogPAxGleNczX3PCP41bWnM=;
 b=gjY49hR7xRh0w/AewxjvemehgsjDwkHjC4rHT3vu8NXXiWxX0k08VRq8bCCimSo0kDxAeh2GFye4hyRsMwqnZ8+8TFyA7X3w1wcpCPUBfUmcOU1j03xeJdDoAECt6Osvim5Sw0dxwX3WL44F3qgakwBQbLY8ToDECKA4GMg2h0I/HCwVwWl2/YcTqi6ZgXSJeqyz1FL6fjaioSA7utDpt/3Y4R+U37g0m2iR9OQ0km4Gr3U25zYzyCkC/lRjoArOBcKX/MQfYg+08JmXNBAoerMW+EZql7rlXKa8bvWlGcYcpTifuwjxay6kDNWj8vqFORx+t6rW/IfyqBie9vxQng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SA0PR11MB4686.namprd11.prod.outlook.com (2603:10b6:806:97::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Wed, 6 Dec
 2023 13:03:30 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b73b:45a5:d8d8:65d8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b73b:45a5:d8d8:65d8%7]) with mapi id 15.20.7068.025; Wed, 6 Dec 2023
 13:03:30 +0000
Message-ID: <63d43712-2bcd-4b1b-a4bc-f97d898e4d00@intel.com>
Date: Wed, 6 Dec 2023 06:03:20 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20231205230049.18872-1-ahmed.zaki@intel.com>
 <20231205230049.18872-2-ahmed.zaki@intel.com>
 <b7b4dab1-27ab-4952-95eb-c8aeb676806a@intel.com>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <b7b4dab1-27ab-4952-95eb-c8aeb676806a@intel.com>
X-ClientProxiedBy: DU2PR04CA0060.eurprd04.prod.outlook.com
 (2603:10a6:10:234::35) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SA0PR11MB4686:EE_
X-MS-Office365-Filtering-Correlation-Id: 4bdd7371-eccb-4744-41b6-08dbf65bbe39
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mwDiMGH4Rdkct0zViJJqQLHU824NVXIVVMq0ekozBkpH0GdZnlLQyk3/meoxLYVVnARgxNIX7oxkMY/sZiLgzoAHgrO70tWIwYgu49FdMacya1gjH3KjGBF1LagZ1HlQpxIFNQ0Vcui5j7JYgWoAYt1bIh+2Jen0puDICupJIUgPcRBNsJgzyxGuoMWmVXmjpr18IAuSh9hE5ZCGYcJ8TK7wmP05lWXbN2p/2cE5Li8CLiMPupEGNUS1ZLKhKTd4cIdNkO7llnnuyGvnXRnXkSX/e8IyKbJ7qTmEjrE8sPuHd/pPmDY+AtAH39J1//d3WmP1975wXrGBK+oTL/mt6gvLq1iygcpP6hh442bBgENXcgBpMlek+Cb5tFxrSVRwkxLSZw4fHw50pbStULDQOS0eJmPPFluGqU8jyQh5JLmdJw8qQLc1DZk59hmjX4WqpR+CPVNfiKgKP5BKTsUZO61VYRz/4GGEnBHRd/TmA40aQO3/ywi13m+KlhCnyri2HciYGhSztG519N21jIFsvmGVi0/QINGqkrLCoaar/G9ppU4pug3B0MTW5D3821CXeR1XW94hQh6nzjlfaZb65scIhLvgdF/xywop1pQFZZqXEARRwddsaU+fx4qFH+dUISX/Kyz8JygbhaiVrd5zoA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(346002)(136003)(376002)(366004)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(38100700002)(53546011)(6512007)(6506007)(6486002)(6666004)(478600001)(37006003)(6636002)(66946007)(66556008)(66476007)(316002)(26005)(2616005)(6862004)(4326008)(8676002)(8936002)(31686004)(82960400001)(44832011)(5660300002)(7416002)(2906002)(31696002)(41300700001)(86362001)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1U2RkVKSTVVSStuVVlXYWNKdXlIR2lrN3hQMlBsSTJaV3Bwc2taNWFoU3E4?=
 =?utf-8?B?cFpOQ3V3SVJHK2VvUTZpcGxMTnV4WWZkTDZoQW0zK2pBSlUxU1NPSzFIR3J5?=
 =?utf-8?B?MHhVVU9wOXl0V0k1ZlFpZVJJUmM2TFVacDJqbDRSTVJyajdXaG5oVkRsdjM3?=
 =?utf-8?B?UTkyeFUvRXhLNlBZNGpEODlBT2xMbUNJbi85V1BtY2tNeUNBekRBYUNGQlAx?=
 =?utf-8?B?ZE00azl4RmUzYVJ1dElIanFqNVY3a2pVM2JUUmI2Q0V6V09rc0d1Z0Z6aGJi?=
 =?utf-8?B?TDBLcHAvclRjZzJmZ1BnVitKSWdSTEwweHJrdXdRYVEzcXJ3VTBZNXp1b1JZ?=
 =?utf-8?B?QXlpSHZoZ25VVkVjMktvVnkvZDVwNEVYVmN0L3pGaHY2SkRVTldPU1BsMUJy?=
 =?utf-8?B?czRRcFdJa2hXQnRVbUxqRllRc1JIWFk2WFNIUE1KdnhqVC9mZUt1UDFUazF5?=
 =?utf-8?B?MEZqUHZ3aG5qN2hvc3Bla3hOWDlLSUdyd0ZXOS9ycVY0UE9GUnVySU1jNVlQ?=
 =?utf-8?B?MVMwZGJHUjJtY3QwYXd3TzVEOHgvRnJkYWVieUNldm5iUkszZFVPNEcyZitS?=
 =?utf-8?B?RXgxelZWWE5LOFlGRVdOT1lYMGF3YndFVkJHc080WE5Hc0NHUEVmYXNUN2Zv?=
 =?utf-8?B?YlNsbHBmNkt0aFduSk8wNytJRVVHbU9JdGpPQTdjSVI0VzBnQXB2Q2tmRkNV?=
 =?utf-8?B?S1lQOWhOY3BXRTd1SCtJQ2M0bmQxV2ZhTG5DcFRMNXBJL1VyK01Nd09OT2Fx?=
 =?utf-8?B?NEtiMEZYUTJZNDNDSVhWdTBNbnZuRytnSCtBKzJBTE5kZnVkWXNxRlF5RWwx?=
 =?utf-8?B?TG81eHlOdE9yYmxIcjBvd00vTVUwRE84N1ZQdHNZMVRnbE04bG42U3VKaVow?=
 =?utf-8?B?cit4OXNWb1Z4RVhVZFFab3hrOC92SzhqVDNLSjZJSXd4MHZ3RkliR01aem9H?=
 =?utf-8?B?Q3F6QmkySEpaRHlxeUVkei9VbmVGYU1ubHd1VWhDU3cydyt3UHJ3eWd4OWpr?=
 =?utf-8?B?cm95Wlczbkw5bk5DTFlFU29qUFI0WTBQdDg3VWFZUFZLbmJRVWp3YlpudEth?=
 =?utf-8?B?cHlabzBrMHlJcjk2RmU3RXJ3dmRyYXZlYXk1YkY1N09WOHpmTnJSbWMyVTVI?=
 =?utf-8?B?QjlBbk5GV3RrOUNPYmFOVlFrKzhYVExYMDR4d2hVbDZKMDRySVM1TzJtUno0?=
 =?utf-8?B?VndTTkxoTm93aW10NlVqMkpJbFYzNXIxeXdKVmpVMXc5TU42SEs2Nkh1L2Ux?=
 =?utf-8?B?VHFZOE01eC9yNnlQYlEvb1F2ZTlJMHhMTXFEMWxqOEhZNklCeTNtQ2FCcW1p?=
 =?utf-8?B?a0c3WldDWHJWNHkyZHJzMHVMZXFFcjdxRWRVTUdaNjZiMWNLbU5KUVJTeGhl?=
 =?utf-8?B?T3R1cXREMmsyVUxMcUd4aTlQb21TUC9hRk5iWEE2QlFBUURkTFFsclZHSjJJ?=
 =?utf-8?B?N3c3QUt1ZVB2SGttbWE5R08vS0Z5RTdGdWtINzl3V2lZV1F1c0dQWWQ0ZDQy?=
 =?utf-8?B?akFtaDhVM21HdzRJdVYySTVkaWl1T0wzU2dPRjZPaTRHMGNLMWJDbnJWcUo2?=
 =?utf-8?B?bjRyRGlpUUxiZGpuTGk3SUlpMlIxckw2KzFPVVQvRXlOU1kvdW0wd3V2ZlJF?=
 =?utf-8?B?amVaUmRUZm5EK2cxWHlqVkVvZkpLSi9kdlpzaUh0YXIyRTlMU3dVcXBlVEla?=
 =?utf-8?B?WTQzVi9yVytKOGk0TGlUR1VvWnBNKzRzakx5dkZMZXRMalpNbkZBbVdvazh5?=
 =?utf-8?B?OUZlVURvQlBVdTBlYktValRoUDlqd0pCWkpadXBURFJPSm5OQ3VUTWorTXdw?=
 =?utf-8?B?YXNMTVJXUVZyZXFiaVZJU250NmZqWnJRZEk4MlE3VC9HRzdRZ2pEVmxUMnYv?=
 =?utf-8?B?bDl6M3Bmbm5KNSt6UUxEWXgwZG5mb3p5NERWam4yKzdMYlFUUkNVeno1TDBD?=
 =?utf-8?B?aXBFZE5IWEZtM1RqeXhSc2VjcnpIekxaelc3SkhiVHNqR2ZNa2JLNXlVaWVx?=
 =?utf-8?B?K3g0QVZlczlaUXc4d1JucDc1UFVoNWU3MlRxTU9rMkFNdWZkTEYycEhRR1Z4?=
 =?utf-8?B?VzVDc1JKbzRMVHJnbEMzY2hWTUFFdWZESGVtRHRsWm84TVEyUkkxRGtuVWd1?=
 =?utf-8?Q?uLPTKV8QAuos77x9qghINw6Ar?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bdd7371-eccb-4744-41b6-08dbf65bbe39
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2023 13:03:29.9504 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MtjoHoZRPfp0hrLFwb2hmRLy/bf2xADmBMEZ3kLoYj3rCVzTPK9uGB18fwjb1VsibvKiJTnBnIuZCOQthnOgwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4686
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701868242; x=1733404242;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/TXltlByIifrG6CrJjD0nuENVa5uISpzwWzqkkMhL+M=;
 b=awGY4v3Nix8RKiacFvSUY4PT0oTQO1E3jljcpqwu+6KPGqXNDydtS8dO
 Tnj2rdpXXl4SiTU66AmXh0VzhTtRlPNiJPNNr4j2gMWqwroQzuqoZv2xe
 dhgVwq8z9mJwDEHBd/xWESgyyXSpywFNY6QD0nlGATEcqkhd5ZSDOuyPj
 IYcusRHbfJ132/U5jse4gP6ynCEdV7oice8TXzBmmS2b4HMSoU8nSNG+Y
 oYFUGZkp7toj9GYRmeia4w8FlQXIFn0TMz43Fucb+0xcI9r1PkuRqIvzl
 XSBUL+bb1WD69tRXBAXwxz+G5AqvLF4LCQOgPLWaqSlnNM6rTdvcGRSPL
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=awGY4v3N
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 1/8] net: ethtool: pass a
 pointer to parameters to get/set_rxfh ethtool ops
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 pabeni@redhat.com, corbet@lwn.net, netdev@vger.kernel.org, gal@nvidia.com,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com, ecree.xilinx@gmail.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2023-12-06 05:57, Alexander Lobakin wrote:
> From: Ahmed Zaki <ahmed.zaki@intel.com>
> Date: Tue,  5 Dec 2023 16:00:42 -0700
> 
> Duplicating my comment from the internal review:
> 
>> The get/set_rxfh ethtool ops currently takes the rxfh (RSS) parameters
>> as direct function arguments. This will force us to change the API (and
>> all drivers' functions) every time some new parameters are added.
> 
> [...]
> 
>> diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
>> index f7fba0dc87e5..f6e229e465b1 100644
>> --- a/include/uapi/linux/ethtool.h
>> +++ b/include/uapi/linux/ethtool.h
>> @@ -1229,6 +1229,27 @@ struct ethtool_rxnfc {
>>   	__u32				rule_locs[];
>>   };
>>   
>> +/**
>> + * struct ethtool_rxfh_param - RXFH (RSS) parameters
>> + * @hfunc: Defines the current RSS hash function used by HW (or to be set to).
>> + *	Valid values are one of the %ETH_RSS_HASH_*.
>> + * @indir_size: On SET, the array size of the user buffer for the
>> + *	indirection table, which may be zero, or
>> + *	%ETH_RXFH_INDIR_NO_CHANGE.  On GET (read from the driver),
>> + *	the array size of the hardware indirection table.
>> + * @indir: The indirection table of size @indir_size entries.
>> + * @key_size: On SET, the array size of the user buffer for the hash key,
>> + *	which may be zero.  On GET (read from the driver), the size of the
>> + *	hardware hash key.
>> + * @key: The hash key of size @key_size bytes.
>> + */
>> +struct ethtool_rxfh_param {
>> +	__u8	hfunc;
>> +	__u32   indir_size;
>> +	__u32	*indir;
>> +	__u32   key_size;
>> +	__u8	*key;
>> +};
> 1. Why is this structure needed in UAPI? Do you plan to use it somewhere
>     in userspace?
> 2. Kernel and userspace can't share pointers (as well as unsigned longs,
>     size_ts, and so on) as you may run a 32-bit application on a 64-bit
>     kernel.
> 3. Please never pass UAPI structures directly to the drivers, it's a bad
>     idea and you may end up converting all those drivers once again when
>     you'd need to to e.g. change the type of a field there. You won't be
>     able to change the type in a UAPI structure.
> 
> Thanks,
> Olek

You are right, it is not needed or planned to be used in uAPI, I will 
move this to include/linux/ethtool.h

Thanks.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
