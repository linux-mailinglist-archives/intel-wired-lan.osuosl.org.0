Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C03856697
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Feb 2024 15:53:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B368D41E49;
	Thu, 15 Feb 2024 14:53:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E77mbNq0YiUR; Thu, 15 Feb 2024 14:53:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 844EE41E2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708008825;
	bh=w5Da/G9cyVeg9Lp1ng/XEXwbz0Jp5SzF9v1tQR9Oq3o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vz7dL/6kDHc/TGf7kbXjfWFbi9QjUjUhyUZNva8g1ZZCORsKnsIJhpVmZksPpamst
	 fHntQnAHgRfag0aOhXv1AeSoQ1TDPxqMS82hlM3keQAg5CjiSNGQMAPZkvMKBGFBD4
	 o1MxXYODmHzR26OzDODl26P615PTEOTDDl+vZMvhNKAIseRZL5jXXIqVAuzJmUqrK4
	 GY/LGw9rU5JWQ0+MpWYnYi1UGtXAi1XuUzfF0WyF3p+jUyh0HWMp+lVsBknvUSUgD7
	 4y+fgefr/M7SVs9Z6br02Pr6IuN7SEo9o4hHIocifopBkqyxUi7PnEZg/g9x+7/vv+
	 w6QL5bE5OZPew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 844EE41E2D;
	Thu, 15 Feb 2024 14:53:45 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 00CFB1BF844
 for <intel-wired-lan@osuosl.org>; Thu, 15 Feb 2024 14:53:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DFBD441BED
 for <intel-wired-lan@osuosl.org>; Thu, 15 Feb 2024 14:53:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E-kM6Q5VfmsB for <intel-wired-lan@osuosl.org>;
 Thu, 15 Feb 2024 14:53:43 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 15 Feb 2024 14:53:42 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C5FE2418D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5FE2418D2
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C5FE2418D2
 for <intel-wired-lan@osuosl.org>; Thu, 15 Feb 2024 14:53:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="2235410"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="2235410"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 06:46:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="8181016"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Feb 2024 06:46:34 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 15 Feb 2024 06:46:33 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 15 Feb 2024 06:46:32 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 15 Feb 2024 06:46:32 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 15 Feb 2024 06:46:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LlFAXkfszqHuTsrpYAN85fFIqc5RzMIJY4DvqnisjWRpsaNzSv3Q59QAntEClWjW+aWvWThQ1dS4v2zVQcVG5dSAYNGO0fHWuyJjQZ5A1IdU2R0Q/2wWcQtKWHO9gqChtvawx2vTHcqNDb/tqI4QvAFUvr+BUaTk2L1ZYDy5qEdLPVEv/UU+KPTI5VsTy2I/suHtwJcdzErUMRo03t5JmabLs/Ih3neDylXq6vsDUgr03lXfVo+OtOY5FdPGwj9iASKlfN5Sx8HgUThKRk8TeU5ZnQvYtrVXZAntnT32EVPD6cLfp2pipk8Pps2oq9XqwGwuUbb+tRBvWldJSV68QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w5Da/G9cyVeg9Lp1ng/XEXwbz0Jp5SzF9v1tQR9Oq3o=;
 b=h8mfgUpniV+BZpz9wBNEw17vvI319EryTSZwebb5JEXdS1l5JWyVyIZFXkmUmN7+LeD8PsosVuKHT3011pjQyVxO9RfJ1O07Cj85MYlvyZieno+/yaDt/QpZ/+bw95IFI48eZVCJPPG8rcFSW1lI08CzrtSXKfjuHXfxzCukBVIeqMFXPylG/HoYtMpVr6xHAx9QUq2lwWeJNP7kgz03Co2dfMzAH3ToNY+gvYxEcFrkwS61bzt8mToOuJEqkHTqV4MIqHc33Q/yGIEzifpkz0Ys5xWnAGvCojs4QA0zMVoScwThY1omvB3B+dQ3CbLbaH2vw8vTGfFty6DlGOAjwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH8PR11MB6927.namprd11.prod.outlook.com (2603:10b6:510:225::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.27; Thu, 15 Feb
 2024 14:46:30 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::b1b8:dbaa:aa04:a6bf]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::b1b8:dbaa:aa04:a6bf%7]) with mapi id 15.20.7292.026; Thu, 15 Feb 2024
 14:46:30 +0000
Message-ID: <82fa1430-eae7-4635-b663-9fbf8336c891@intel.com>
Date: Thu, 15 Feb 2024 15:46:25 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ernesto Castellotti <ernesto@castellotti.net>,
 <anthony.l.nguyen@intel.com>, <intel-wired-lan@osuosl.org>,
 <piotr.kwapulinski@intel.com>
References: <20240207231524.51753-1-ernesto@castellotti.net>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240207231524.51753-1-ernesto@castellotti.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0255.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f5::18) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH8PR11MB6927:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ba1896f-3397-4241-4808-08dc2e34e539
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j6M9F5WUw/bHFPv0BvYAHWdZDPoIEC55zkfqmjyOCALp2R0qWnmF4yfPaFD/N5l3B0STDSiTQETkTna7c3wytQh3taWO9Hlgqw3Q099Lv6BMOfK/6GHPIApzVXjUUC7p30p1uK1MRzLI09nus3Ta843MTZFX8rMMXjG77VKhVA8wLQ21CDKRmwmPlK1yMGwsASwk5gtA1PAYVo7y17Pe6sCMGyROlyKX/3ilMhg6WvRtkfyxVHpUJmV5GVq7coUc8Qfr5gXFDLteeltaweRG/LQnIfGw6EzONmqLUzKlZ8cOwKuIYvaY6Z1dyPS5DBjLkzC3RL03rgO+D76BW7/gR0bFMZljwYRlMDqgHUwP7XoltmXSSm2+btF0HMAV/t1mGNH9B9UlUDYeL/hHhWszmAQRGJLI4y2mjS4HEHjK6IlYC0DJLqsx5IZNG8pONM4dfK4V8hl5zNOqOmi32YuKuccjuIjRoHerKpxapov0/iB0Pe6f8MrQsiUog/59zgTbiDQSPKWl0y695X6HpnkuO/uAwpSBc2z7qqOk3EgNKOg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(366004)(136003)(396003)(376002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(316002)(6512007)(6486002)(6666004)(6636002)(26005)(2616005)(53546011)(36756003)(478600001)(5660300002)(66946007)(66476007)(8676002)(8936002)(38100700002)(66556008)(2906002)(82960400001)(31696002)(6506007)(966005)(86362001)(83380400001)(41300700001)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGRvUFJwYWowajdmWlM3Sm5qV0tSbXM0d3V5dUNzU0h5NWFQLzFXK2tXKyt0?=
 =?utf-8?B?T1o5M044cGZJRnJXNVZGMkZocE5WUGZOQzNYdGx3OC9wMjFpMzFTK1BNaHlu?=
 =?utf-8?B?bXRqSlJqUVhsb2dQd3FzWW9ac2YwaHVncHVLUCtWZ3hqSzdGK1pMNVQ5U3Nk?=
 =?utf-8?B?OHNpRFp5UnVCNzF6cXp6YWxtWWpENEpmWURNR1dyKy91Q1RXZDBMR3NyYllR?=
 =?utf-8?B?T3NyZU9XVVgxemZiWUFrN3dXckZUcmJ0eTF0S3pvNTJPaDYrT0pGSmp4R2hC?=
 =?utf-8?B?dE5HTzNERkp0M2FYS0lzUCtIOE8vMzRGMlNpV2xjRExKZnZ2UzZlRGZubE8v?=
 =?utf-8?B?UzYzcUhwWjdxSHJzdWxRNUszWFNtTnY5MHRYM2t1K2xRRGVkVnNLT1FQSVhU?=
 =?utf-8?B?eVlqMy9YNlkwemp6ZGcvU2NYTWFpd3NvdHl4R0FjK1BNTlVDdWFRYSt5TDZ6?=
 =?utf-8?B?QlNGbDRWbGVxK3Jid1p1OWxWcloydmVqcE85MjFNVW4rTEtXK2kxSy9rL1Bk?=
 =?utf-8?B?ZHlHQzQySG92eTN5NmxIYy96TWdDTDNSS2E3bjIwQkllSjk5aDZ6cDhIMTd5?=
 =?utf-8?B?MXFKbkdIOW0rOVRIRmJYL1l5WFV5YVZRVTlrMTRWc1RDNitLRnJWalR5dDVK?=
 =?utf-8?B?cGNiUTVjRENXVFQ0UVRyR3hneEZsRU9QSFA2NjFGMmJ0WURnTjdNbm5DQkl6?=
 =?utf-8?B?WWhWa3o3ZjAvaUtjQm90V0thR2NSMEVKYXNqcVhGTGVabHdxZ0ZjOGc2R3lE?=
 =?utf-8?B?NHY2czRiUm50N2NHMVBmRWd3dVNXWkFUWG9FZWwvNTArRmVucWNoWFlWT0dt?=
 =?utf-8?B?cVZRaWZidlVpbCsvT28yU3ZQUk9BRERXVzVweXJ6ejRJbC8zbTNYdkRhNG9O?=
 =?utf-8?B?blF3elZuYTBmcXZ1R2hxdzNlc3RmZDRyVU01NXFBdGpPL3NRaHNZNVUwaFBJ?=
 =?utf-8?B?dmpmZkJnL1dXTVA1RHFmcGpBcTdrczBHWUtiVmxxdzVHdTRYbTFRZHpXL0ht?=
 =?utf-8?B?bHlZdUdSVDNSclU4L3pGOXJFaUNFYmJvZTVtSWs5ZHhCeVlaLzQyZXgxM0xY?=
 =?utf-8?B?NlVZN1dJb0oxSkRQeFhmREZ3d2M1TGpvcTM3bnV3YXBERDRIK3UvZG0rTDhH?=
 =?utf-8?B?RjdqYzdLZGNLc2dRVWE1VEJFQzUwZFl6WHppdGUySC9OaGpDNkRDUUZhdDdj?=
 =?utf-8?B?dUhMNjBzTmUzRHhDY3VISHlRbHoxZHE5c3AyK25FR3hUQ095bUZzNTdkblhX?=
 =?utf-8?B?NURNZDFzcnNkS3hnS3FiSVFZNk81L2hwODBiVnFZMG5EVnU5Z3NPaG1UU3hy?=
 =?utf-8?B?Wll0bno5ajFrTUxrZzhTRXpTZG9FRmVxZEk5R3VqbHBXakxwR2hCUEYzc1Bu?=
 =?utf-8?B?MGYvYnMxbEdGUlBtRmMwcVdvNDVYWHhuOVV1NmxRWFp0WFNYMkdrQ2lrbElH?=
 =?utf-8?B?cm9RclNIZGJJUDhXbHh2Mk5WV1dIU2ZhNWk1MGVJYU9yVGZCZSs1Vjk2cUZG?=
 =?utf-8?B?d2EvTVlJOEZLbDRCbDhCYVh2NXllL3JwWnZka0tpR2NaamFqQS93eXMyU3Ru?=
 =?utf-8?B?THVCczNjMEYrN01GRlc5TmFmOXNkWTlnQzh1WFNKSjg0eXpOQW1MVndmN2Vo?=
 =?utf-8?B?RlkwYmJFMlljaHJpUnpkOTR1QnF4cW9nZ3Y4WmpjVVQ2Wlk0V01JTUlNZno4?=
 =?utf-8?B?RElob1ZYMzR3dDB1eElyN3hYYUxnWjRVcE1RU2ZxSXJqMytPTkRYdkdZRUc0?=
 =?utf-8?B?SFd6dXZTNTVXU29Sd2tMMGYyYUxUcmlOVnFZbEN5dEQ1OXNPam9zYTk3cVg0?=
 =?utf-8?B?czB3TTI1eTJPWlZIK2JjcCtIOXM4ZmlTdk1SdjdsVlNiOEJ2MzB3ZFkydHR5?=
 =?utf-8?B?RkxTUjhwcVJ1d1ZGTjh5WndPalJxd3ZOVzZESTlOOHhGTTl1SU5EY2tsdnRs?=
 =?utf-8?B?V2ZtYTNaVlB6dVhYeUVQQlZSK29oVHcrRlV1dzdoSENGdnFueDNhQ0syajJH?=
 =?utf-8?B?SXdES2dVMnJORmZrQWdpdGs1MkhVRkZ6ZEsxQ1EzdjFDcS9qQ3A2V0lGWmlq?=
 =?utf-8?B?cldCUGUyNGl1c3VReEZQTDJqYXVKN1loUHVSaVJHSTNXeUtzdXBnQWwyRFpZ?=
 =?utf-8?B?V3M0ZmgxTUNTR3NIOWRtOGNtR2Q3SmpnUFJIa0VmbEZHejdjK1dhNWFpZGQv?=
 =?utf-8?B?M3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ba1896f-3397-4241-4808-08dc2e34e539
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2024 14:46:30.0788 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M4N6sXiF+Tu1FBS4vBoboNw/klwtZGXmIVOgi7Rf8nKq0Hsse218S+iFpMxToZmPTxp1o3YXQWVtaSjoMdopubUlmTTxwMC9QvQafzYlUAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6927
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708008823; x=1739544823;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Qr0rMsiPoUQYYOqwr4X5QHpKHUxWoAMCcbmWK7mX+P8=;
 b=l2wK7qPKd/njSshLt383ZqXZ6kihMzRz7TqaY0wWCLGib4PKIM43tLez
 MWMV8kU7mO37RgxoXaYMJY8ElgWTalH9QNa2OEBGE+YZofIK7eiLGLRzq
 4RyVYZuL/Wz87AZU068eldxsbGrQRhEazfycA42TMlc52H8iX2BTbcYzk
 XpR5zZ4psGZvQmp4jdKXGLjqFfDC18gESSarB/iJlRdGHFp8UIuo/TsvX
 AQWc+AU8uVIDmxJEbu6KhuN9rGw4bBUfbXDYqg0jixUG04be0MtkLffWO
 R3bCNjMP59E1UsEoQsPxuwumlBU9GtYjn+l8C+aPD17PJx/a3WSshtnAH
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=l2wK7qPK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: Add 1000BASE-BX
 support
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/8/24 00:15, Ernesto Castellotti wrote:
> Added support for 1000BASE-BX, i.e. Gigabit Ethernet over single strand
> of single-mode fiber.
> The initialization of a 1000BASE-BX SFP is the same as 1000BASE-SX/LX
> with the only difference that the Bit Rate Nominal Value must be
> checked to make sure it is a Gigabit Ethernet transceiver, as described
> by the SFF-8472 specification.
> 

Thank you for your patch!, and sorry for long break in review process.

[...]

> 
> Signed-off-by: Ernesto Castellotti <ernesto@castellotti.net>
> ---
> v2: Fixed indentation/style issues as per review by Tony Nguyen
> v1: https://lore.kernel.org/intel-wired-lan/20240127174803.20793-1-ernesto@castellotti.net/
> ---
>   .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |  4 ++-
>   .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  2 ++
>   drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 32 ++++++++++++++++---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h  |  2 ++
>   drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  3 ++
>   5 files changed, 38 insertions(+), 5 deletions(-)
> 

[...]

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
> index ef72729d7c93..b5bc60916402 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
> @@ -17,6 +17,7 @@
>   #define IXGBE_SFF_1GBE_COMP_CODES	0x6
>   #define IXGBE_SFF_10GBE_COMP_CODES	0x3
>   #define IXGBE_SFF_CABLE_TECHNOLOGY	0x8
> +#define IXGBE_SFF_BITRATE_NOMINAL	0xC
>   #define IXGBE_SFF_CABLE_SPEC_COMP	0x3C
>   #define IXGBE_SFF_SFF_8472_SWAP		0x5C
>   #define IXGBE_SFF_SFF_8472_COMP		0x5E
> @@ -39,6 +40,7 @@
>   #define IXGBE_SFF_1GBASESX_CAPABLE		0x1
>   #define IXGBE_SFF_1GBASELX_CAPABLE		0x2
>   #define IXGBE_SFF_1GBASET_CAPABLE		0x8
> +#define IXGBE_SFF_BASEBX10_CAPABLE		0x64

this define looks off - perhaps it should be named
IXGBE_SFF_1GBASEBX_CAPABLE?

>   #define IXGBE_SFF_10GBASESR_CAPABLE		0x10
>   #define IXGBE_SFF_10GBASELR_CAPABLE		0x20
>   #define IXGBE_SFF_SOFT_RS_SELECT_MASK		0x8

[...]

code looks fine (as much as our ixgbe will go ;))

just one nitpick, so:
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
