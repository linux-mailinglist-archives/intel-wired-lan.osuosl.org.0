Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A3E7AE7E7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Sep 2023 10:20:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 953358228B;
	Tue, 26 Sep 2023 08:20:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 953358228B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695716435;
	bh=o1Muui8LiryxMEmXmAH4Iliiuaz7W/hHOons4n6bLzs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nBZxuxhqZmAF6TtOab3XKbdDAtIL2MO620B1akj3rNP2QUFH1rSfmb8bVtShh3RN+
	 4xxeULGJtFI0Xm63KvclM1A+dq4fPTiv9Tk2M2o9y/P+IjAGDd9VVui6dSFzzAtEnb
	 KoCHswptWHDtgO3Cr2nlLJlnHBXtHcdUNCu/YAebceiRsj3eL7bQv0UZJdttgRR+Ng
	 K6Q1uN2EJzt13yQfU5u41xRIXHnR3AE7aojeIA/Cm33aDLgbUrrk2lpdxwqKUie68v
	 iZl1oVT+wzm7mP0CKkSEa/zddNicgGDk/MQAUvxEb9quMWPxD6nqagjDZ/X06m92tl
	 diXnAdlVmxTcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KU22R9wJSB3o; Tue, 26 Sep 2023 08:20:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 516A082193;
	Tue, 26 Sep 2023 08:20:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 516A082193
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0859D1BF296
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 08:20:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E065F821FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 08:20:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E065F821FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D4aSpd5PYO1J for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Sep 2023 08:20:26 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 26 Sep 2023 08:20:26 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD4C782193
Received: from mgamail.intel.com (unknown [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD4C782193
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 08:20:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="158426"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; 
   d="scan'208";a="158426"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:11:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="995742306"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="995742306"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2023 01:11:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 01:11:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 26 Sep 2023 01:11:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 26 Sep 2023 01:11:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OShKfY558zdkZUBr+hSanTzOjiNhDTIPOCMPEaL/2oCcgzBGJT1knE4d4xXYre0AK1GNOb5YLlvlQZhw5iBTfxfRXs/czhRfhpgZ1WGv7yidTe0Ri+3xN3w4y04x6GbWSan97rzHB/n34Ri54dlsK9MRzNGYHS3DRr7UMRMmZ7ksnUfY4qT6EVTNKFPnJQEQDOR7fVoKG/RJOjQld6WVKQU5kzbO8Wl/b9rOP0VeGefvVcdwvDcugpQBSfJ4w6a89+FvAvokZAMUU1VHvbYohhWsd+4iQ1jDsMZEsC9ctMEY68WzpHtzZJa7DIB0X8/6V1tNxTWR7BWcSo46iS94rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f+vs+NSNaAHtqgGtLkoC7G0SUl/ygfaWcDk7mgzDJLM=;
 b=a2fjgJITaPwYM8Njq6QbjB2WCI4iySgCv6a7Dcw3QJQW4IIsqZhKXOEtnW/PzI81PwrbedsayE0djMxXMlKbiqT0ZJr3+XjWmJT1kE7uguAS/XRsPxjsyF6TGoRepFAjlbhliqHO15YMxmjQMkyZ45Htiz3Z/OZRhwP/NpfcuGPAqmYxp0bML5fPzhQLDE09JJ8M26YGZdV9D92vJ1w67SivEq7C3YT2YiI9mnncHb30L/cmqD/nGIf00+f1W2O7c3VwbedsD2+i+4uyItmVP/sLp3xeAkcDAFn9y33EQcRBurzI6IuptLhaVFL2D/PZppT7YzC7Fx3G/jexGcAw6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SA1PR11MB5898.namprd11.prod.outlook.com (2603:10b6:806:229::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.28; Tue, 26 Sep
 2023 08:11:38 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48%4]) with mapi id 15.20.6813.027; Tue, 26 Sep 2023
 08:11:38 +0000
Message-ID: <f1696dbc-2b97-1362-80b2-d3e29485405c@intel.com>
Date: Tue, 26 Sep 2023 10:11:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Steven Zou <steven.zou@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230926031206.12300-1-steven.zou@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230926031206.12300-1-steven.zou@intel.com>
X-ClientProxiedBy: FR2P281CA0157.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::18) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SA1PR11MB5898:EE_
X-MS-Office365-Filtering-Correlation-Id: 266672e7-7a98-4884-0987-08dbbe683548
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7C+vgM1FcljQJvf959qFUN0NgAc9dABPsgD6ASx+Y0ND9LR1mdZPxB2KMINmUuFJM/jfShgtptpxrAhT63M9VoCqjanDxoLJehA4zL2jjLuL64K2swvCzJMzRoWnhWJHe+XNRiIBuZ6oNyBMwA2BbsbMNchj2e8NauovqEk+SbtQIOOFWffRkfjdSQdq9Kn8otPe8aVVneatGUYL33JBF7GriY34qAFpjWJKXdQ2dZUvjP+762qg0WLJfTfbiQh1Fj1nadmDnXKfYAKnDNo5BveKs0d0igCjBGjejAcjAJMwWC/pdE49yLcTpdg7GgX3t27SvRKLpiYMQB2QuVzBghBx3nBFQSqGfaBPJnDciNfazAhTST+SybUxrXL7y+osJKPNC1aBgY59Wg8H6I5DFUvNjXetOyGVttTQeTcvD8G7Vgww7A8yE+pYsZ+wGzVsbIHENgc5ox1I/WhlvBQ0uojh0C93wRD7mhtNkwO35kvLQ5PrwI4eGXg1k/mFJPNZgqPT9zyPxa0iDqiHap9C5V/v9DeVaN/huvemtzwMCJuYjcSF8xamN3ycc5FrdjRLBPI0AL7Q+8Zrj0qZm5pWSP0kIBNYf01ejPOfyBeY64k1BI3w4Q2U1V5xGAaEM9VC66cB1/rO72MZtkK4JL9onQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(396003)(366004)(136003)(230922051799003)(1800799009)(186009)(451199024)(41300700001)(83380400001)(4326008)(6486002)(36756003)(5660300002)(6666004)(53546011)(8676002)(6506007)(82960400001)(66476007)(66556008)(8936002)(31696002)(316002)(478600001)(2906002)(86362001)(6512007)(38100700002)(66946007)(2616005)(26005)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YmxjWVdRNXJRMjFEaDNubVFJbVU5ZmFGdWw5QSt5aC8vNlBOZ3F5aUd4Zjly?=
 =?utf-8?B?N01SaTBiNVdnNDRnY2FabEs3NzVYbGxaKzM3bVd6cXdkSlJFblpJUnNPUHU0?=
 =?utf-8?B?cGtRMG1YTmVGWnNhdGR4QkNaNFNqcFdHakdPK3BJVWVKRGs4WmJQK0VzdGhD?=
 =?utf-8?B?bzF4RGFha09qMWw1azNJUWxReGVsb1hkWXI1ZitHQUEvc1c0cDFFbzhoVVNs?=
 =?utf-8?B?dlRETjRoYkx5Q005YXVONGlBTHdOR2hQWTNxK0piakVzODFEZTJyT3pLWEFq?=
 =?utf-8?B?dWRjdnJFYSs5RG9OMkJhakxHcW1yQThXQ3c4UXFyd3l5cWxOaW05WnZ5eXVu?=
 =?utf-8?B?NkZuRTBQSkVxclFWcTFBME4rUU1TMGNkaHJZY3B0R3Vta202U2dIT3EwdDhB?=
 =?utf-8?B?a3pWdHR2ZnJoU00xTjJIcW04a2JxL0FiUHhBVTVrL3BnQWwwNDZMRWZLZXhl?=
 =?utf-8?B?U1dWSnIwUWd1alJhNmlPbDlZUk9ZVnhsUnpZUzlIS2F4dFNucDNFQWRBRTY1?=
 =?utf-8?B?eVJJUmVnMTk0Rm5INzFiaUoyOWJiRjJtbE1nVzVtVVJLdVQ1OEdlZlhzaDQy?=
 =?utf-8?B?UjFUbnNMY3JyR3lhSE5MeERkYTI2Z2lCNDJmOTA4aFBoR3ZzcFQzYVlIK3J2?=
 =?utf-8?B?Si9peXJYMlZ0RU9McEJtRU9ybmdDRXBvT1NPR2Rtei9SSlZUa0dtRE1HNHJk?=
 =?utf-8?B?Mjl4QlZYbkxuNHRXTzNSOStUTnB4QWNVaGg4c005aTZ0NWcxblkzdHltby9I?=
 =?utf-8?B?OVhUWFdGaVFNUEQvd0tKK3VGY0JvcEhENlNYKzNwSVJkZzA3Zzh2SEMzQnBI?=
 =?utf-8?B?MjFEOEI2MDB4aWUvZjI5RkFhNHA4S1hVd3NWQWVaSW9aeEFzZWIrQlUwdU5X?=
 =?utf-8?B?bHBjdWdNZURIMjlEbkZ3a0xYTWJycUxzVmF3dkk2YmdtM1luZEthOWR5dDRV?=
 =?utf-8?B?QjR2UERCMElNcDBwOUNzUUVLSEtEN3lQaGU5S04wbnd6S2RVbzhjWFVMNTY0?=
 =?utf-8?B?V2JMNEhHTCs0MnFHcnhHVXlhZDh3YXkzVkxUYzJHZkxSVnJ1ckhBMUxKVWJo?=
 =?utf-8?B?ZXJEbmJkaUsvT3NrNHU3SDdia1JaRURvOGx4QUJ2YWVDSUtBZXpWejVHcGVB?=
 =?utf-8?B?dWxUQjFnamFqNnVpNUdVRjI4M1NWdVB1WHBQSzR2R3d1cWFSVzRPVWNpOVQv?=
 =?utf-8?B?YmlkMDExZG9DQjhyUVo5QnlTT1JCeUM2TUlCQUNlaEFpcVJpdEhVZnVoRVdn?=
 =?utf-8?B?N2RzZm9ERjk2aitLelduUjMvYmQrZmtHc0ZFa3llZlByVnRha1AxNzE3a0pq?=
 =?utf-8?B?SXl0Ky96Y3p0dFpYT0UyT0xJYTJCQUNiK2NmM25aZDMwWVVCS0RHM2NNSTU2?=
 =?utf-8?B?SEI3M2VPb0pGYUNjMkZsWFQ2V2MxYzR6VmU4dlhIa2M1MEZZNXU0T0ErQ1pE?=
 =?utf-8?B?OHNNNCsxWlVxRjVPYm5HME5TNWJKTDN2SW5YaWwvbk5YSTJwczg2cmpmWWcw?=
 =?utf-8?B?ajU3R0cySTJQZVhsRmF0L3Nxd2lZQVpxSUd0bElaR0R1bDBFZFVZd1A2UHpz?=
 =?utf-8?B?Wk1wUGtuMkY4eWd2VDRwR0pxNmtOK21aVFNqMkUzWWZXU21yWjFOek4yWFpp?=
 =?utf-8?B?SDRvdllqOXNHRmpLYW9vNGs1WTJWY2U4Tm53QXVpV0JDcnJpTW9PSmsvaU82?=
 =?utf-8?B?bHdJTFl6dGRkQWU2aHFwNHFmVUpkS0lQLzhXK0srY05PRXpFcjk5ZUhGbGZG?=
 =?utf-8?B?NDZqNjBlVVNFVEswUktuaVNEa1ZzNUd1eTRvOTE4QmtDUnlzNGN3aXlIcGlT?=
 =?utf-8?B?L1NSTUdTQklNVHhRVkNWV1FhL1NIRlFxWWppTXZ1Y256a0hqZTc0UGMxMGk4?=
 =?utf-8?B?ZmF0cHpXeUt2cDh2MTY1TC92VmJucnVwL0VCTXdobmdEWkE5WFF3OXQvM1hp?=
 =?utf-8?B?c2dKU21xOWVYd29nWHNna2JFZWsyUHJTY2Z3WFd4ZHVQTk9uZHBhdEFhTmgw?=
 =?utf-8?B?eGEwVklMYi96dWwvNnhvektUemV0S1llQmJhYmJzd2pLd2k4TUtWemFKVHZC?=
 =?utf-8?B?VUZVV2FaMnpRZWJ1ckVrdXJpUkcrWHRVUW9TOHF4RVduQkNjSy9aUkVGUzY1?=
 =?utf-8?B?UEZzczA0bGlqNEQrc2pTd0lqdnJXa3lRbnNNYzBnU0VnRTBZWEhMSXFWWUhZ?=
 =?utf-8?B?dFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 266672e7-7a98-4884-0987-08dbbe683548
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 08:11:38.5462 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7K5my6wiSr3Wtc8CZ59XlLx8KjKQ7at1F4xi6Sy9/NWMXNIlplYgrGj1vxbdQNlgtAxhJhsgKubyf7byBjPXaNXJAzr3m0PhZ9xxHHPwzjE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5898
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695716426; x=1727252426;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PPeVqaZxNvdN+zKkm3xKCXGif0BhdFSq4YpD2I9V5E8=;
 b=UAX8RTd+RXOGg2A0c2pw3o2Jfg/DCjVuJQYGX6BAdE7IQ7lb96EfFd9/
 76YQbMK17LsBqbQnAVP0A+76Ccpua5HaStZA5YcI/RDtj14pJezmtXXuE
 MTrpXvBpYdadXkFayffS/cByxHgT56qegeSaqLGaRysvSa7LMriRY83dE
 p6++MpGwwq6RX37qBWlGGa1qoUOU/gKDuIH55XR7CmkdCi6LuDV50ZNyX
 Stcl3PvfE6XPGevzhel0EhxD3WjnT8I0Lbx075ujHlWUxOgBiG7FZGSqq
 hZy0CEgtb58VYWdE5Ghz6iXO+kiKQq2dxTsUToT4tfmac7bF/QWSfZCXV
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UAX8RTd+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6] ice: Add support for
 switch recipe reusing feature
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
Cc: aleksander.lobakin@intel.com, andriy.shevchenko@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/26/23 05:12, Steven Zou wrote:
> If E810 firmware supports the corresponding functionality, the driver
> allows PFs to subscribe the same switch recipes. Then when the PF is done
> with a switch recipes, the PF can ask firmware to free that switch recipe.
> 
> When users configure a rule to PFn into E810 switch component, if there is
> no existing recipe matching this rule's pattern, the driver will request
> firmware to allocate and return a new recipe resource for the rule by
> calling ice_add_sw_recipe() and ice_alloc_recipe(). If there is an existing
> recipe matching this rule's pattern with different key value, or this is a
> same second rule to PFm into switch component, the driver checks out this
> recipe by calling ice_find_recp(), the driver will tell firmware to share
> using this same recipe resource by calling ice_subscribable_recp_shared()
> and ice_subscribe_recipe().
> 
> When firmware detects that all subscribing PFs have freed the switch
> recipe, firmware will free the switch recipe so that it can be reused.
> 
> This feature also fixes a problem where all switch recipes would eventually
> be exhausted because switch recipes could not be freed, as freeing a shared
> recipe could potentially break other PFs that were using it.
> 
> Signed-off-by: Steven Zou <steven.zou@intel.com>
> ---
> v2:
> - fix nvm version detection for the feature (Thanks to Przemek)
> - fix more small commit message Reviewed-by Przemek
> 
> v3: refactor ice_alloc_recipe to support both legacy and new methods
> 
> v4:
> - a small change in ice_subscribe_recipe, sw_resp instead of flu_resp
> - move ice_subscribe_recipe() and ice_subscribable_recp_shared() definitions
> down to before ice_add_adv_recipe()
> - add commit message for new function of ice_subscribe_recipe()
> 
> v5:
> - refactor ice_init_chk_subscribable_recipe_support() and replace it to
> ice_init_chk_recipe_reuse_support()
> - add a newline before 'return' in ice_init_hw()
> - remove redundant cast of u8
> - make u8 and u16 to u32 in the subfunctions
> 
> v6:
> - fix AdminQ data type from/to FW and casting for bitmap type issue
> - fix hole padding with adding new member in ice_hw structure
> - fix setting the flag of recp_created issue
> - fix redundant lable
> - change bit traversal method
> ---
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   4 +-
>   drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
>   drivers/net/ethernet/intel/ice/ice_lag.c      |   4 +-
>   drivers/net/ethernet/intel/ice/ice_switch.c   | 247 +++++++++++++++---
>   drivers/net/ethernet/intel/ice/ice_switch.h   |   5 +-
>   drivers/net/ethernet/intel/ice/ice_type.h     |   2 +
>   6 files changed, 229 insertions(+), 35 deletions(-)

Hi, we are not yet done with our pre-IWL (e1000) review.

General rule is to have Reviewed-by: tag prior to posting here.
And public submission versioning should start with v1, without the 
changelog from e1000.

Normally one should also CC netdev, which you have not.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
