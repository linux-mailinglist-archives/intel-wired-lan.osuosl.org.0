Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B852D6FB83D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 May 2023 22:24:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47CB942892;
	Mon,  8 May 2023 20:24:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47CB942892
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683577483;
	bh=sMLxJoZir5PpRaImuvuauxFsiu+4hGjxkZls/0YQ4Kg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wUIIGh+U8P3gikZ8fZKvCXCnb5DJKzaHkiKwalgBVMIdPLhVOsOBZkN3mkefQUxIS
	 szqhIJyLfypcKc/EVb8d8RiLrgGd5XqWJRHBHhXrrk+qFpcTi/bkl2qLyk7oPkRHRg
	 3vTtX+Ii2EheCeMr9vr/iIVkIFQJXmAjDQkkErbxBTFK/64ssTwh55TK/nJNdFQNgz
	 d/heWN+JUWm75+dVssSMiSfxgWR9Jtr2JUSQNP4K2rTt3exLK2jsH1nCiDaaaPwxsu
	 AmWhPGxDZUXZgzQpuSvrNxVwF2SiZL0+lpEXHQWgBGR0UI9n9/iKwSerkHLjpyY2P+
	 fBNUw2/BFhDPw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZYba6ukABcDM; Mon,  8 May 2023 20:24:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8BFD408C8;
	Mon,  8 May 2023 20:24:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8BFD408C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8243D1BF34E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 20:24:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5574A41D31
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 20:24:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5574A41D31
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qDvFG_OkLVOA for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 May 2023 20:24:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED1E2404AB
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED1E2404AB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 20:24:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="347215840"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="347215840"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 13:24:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="698644020"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="698644020"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 08 May 2023 13:24:34 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 13:24:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 13:24:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 13:24:33 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 13:24:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mLoaerdTJ7QeDu6CizcI70GhdQfo8dGMIJiPZo/2N8vHV7i9LiFa9zwnWEWEkxpYTA5njb+HIKhGJgLsgdrTM7NaCrVoVNnJKH+lAqoDXRnRwW6lxvI6PQo46jfwQ+XC1UqWjaF7YqYxQMDbaA2sXJG30WQv1dgIIh/ttfBIZ4Xipideq9XMSibZoxXGoh8jfzfQj+78lDXoDND2wS+81E7BWcHjpgvwzH4EBHj+mASKudY4oADzVpQnZTKDzbjucFmLh+w0s2yI0owdWu2aVhKkDz8+SOsD0gCQv/2jrUXvS+1yp9PO9EVrI9mqw3J3fFbEb1KrfGuPmTYTMjB4BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wuO49ZkMa92wmdjZaX1NNGZWQGvaoueYMaPZg/4af0I=;
 b=SVSHAxwKOiLdsvLqdrmhuvY07hCCaT+LIjrqXZBrKGOqvT0BXknNRso3LNgaeNVSIa5WQ5YjA1oemYDv2a+togMoRikMvrsVTL1dvh8hq3BAEvKaqyiiniqESEv+6OSpRigfdzgweE8c221OkvUmInYSA9Dz5Wz8ywhJ5zDcDAXBqp/RHyg/zXtiRJaxVN8E5bQu/4RYTcNicc0P3iesQYQ6GBdKEAnvh+FVY/xwKk9g8MiyPdohnwpm/Ifbz556swyp6+SmyYazzmtEvg4mFy+vd1PeKPJCwJ19+rmkN5i/0lFf/poQgv5FHW9GyNtU+C8ybn3KwBohc7/Ru15OJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SJ0PR11MB4909.namprd11.prod.outlook.com (2603:10b6:a03:2af::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Mon, 8 May
 2023 20:24:26 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cb9c:7293:63e7:17d9]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cb9c:7293:63e7:17d9%6]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 20:24:26 +0000
Message-ID: <eae58337-6cf6-f477-6a5b-7f8d526ad78e@intel.com>
Date: Mon, 8 May 2023 13:24:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Yochai Hagvi <yochai.hagvi@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230504130814.6502-1-yochai.hagvi@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230504130814.6502-1-yochai.hagvi@intel.com>
X-ClientProxiedBy: SJ0PR05CA0102.namprd05.prod.outlook.com
 (2603:10b6:a03:334::17) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SJ0PR11MB4909:EE_
X-MS-Office365-Filtering-Correlation-Id: c8478bdf-c282-4fc9-55a4-08db500237d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mhcTkP+Z8nqzFyWCCJRcM0wPqaIRORPXcEBdCRPCuuwD85hIMUdaiNeUUtV7EBKdzGXX5V8Evp1WqRxONJIkimmgwNZWTSQx8nI/8pgOjpLd3oYCskkrp+yr0zu8CFoT+yJ4u+D6rSzCWuhkbK1xDvdEYDbkUhN/518xMUSi0ZjKjZtHxsxZL5JQQaSQptVDx5JvRHrDlLCNBWkVgxEpyQkpdxn9N/v6r/6NqZWn9R/8w6r8L7zS76hitkJImmmr/hqFKWvhiL2yW+I5XFulFkHo2N8lMO9AabFdRlt6f+QBfP0kG9nw5WxFpViidj4neW4JVMz6geMFGK2JzIR97kS+8qLT6ADNzXYyTZR7O6jjFItVSPTMjUPIBnuGizT/ZIHZ2CNHXtkbzokZMQfSQMQLJMmHdvVsAdGN5PtgXCnlZrtSsrPmjdw7dmxBXSbJ7u7bryBT1615DHiy6IeAa3mszAN6tgzdlb3S2Ngs9/d+AHtm4UmkJyr1yIuaJU9B38fJr8DrMDvI55IZsRBwrMp3uy/XhgidxOP9CHqAHxf5+nrRPd1Xry0RhrJ5O1HnIOMS/VkY35NvEYokWW8UMsF7g1+KDVBWKyNBKNOLwGneLu3uCBAFUA8jtMGuDfYAnZy60JGwJCK+RPLqZceVLg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(366004)(376002)(346002)(136003)(451199021)(6506007)(107886003)(26005)(6512007)(53546011)(6486002)(186003)(2616005)(36756003)(38100700002)(31696002)(86362001)(82960400001)(4744005)(2906002)(8936002)(8676002)(316002)(41300700001)(478600001)(66476007)(4326008)(66946007)(66556008)(5660300002)(31686004)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3Ard2lCSVBEUE9VRVNHcXdxMnVGemdyZzZlelYxMkVubWppckFnK2hqd0Jk?=
 =?utf-8?B?Z1pnRU5UbFFKYkpDQ1NiWk5xM053M0xyNmdnYUgzUEg2L3NUM1RrRkNUcUxX?=
 =?utf-8?B?UlpQZFE1S0ZsTWpRMmpxNWxIUE5kUTNsSUhydFViTWZTRG9YZUx4SW0rSmYz?=
 =?utf-8?B?OXB1Sm9ZYnpxY3hyeS9XdC9iN2kzaWlydVJmbkkwWjFCTFB3OXk5ZVBJNmg1?=
 =?utf-8?B?ck1XeE9Bckw4aXdIcjJsaVY5cDB0eGl2OUZVYnlnVjJyNENlNG1pNHNlempy?=
 =?utf-8?B?TE4vMUNiV01Oak5mUWJuSUdoN0E3MDdXQ0tRY3dlZHBURTFicnRaSFlMbFJv?=
 =?utf-8?B?cmJXSVkrdFdBQVNKOUFlMVJ4MXJkYU9YdDMrTk5MK0xQZ2YxRHBJNDZYTE9V?=
 =?utf-8?B?RSs3QUoza2lxeHI4WGlud1JVZjMxdFRMdVpsT1dUWnlHU1g2dWw4WHBZYUlS?=
 =?utf-8?B?SGpvOWFTL1RwdUlNaFd6YytFclhPY0Vsb2t0K3prbHlENm5IWkczZjJRcFQ0?=
 =?utf-8?B?aU5ESUExT2JWRG1TaEFISEE4andKbGpuQXpJRWFxOGZKUnJ6bkE4L3BCV1ZV?=
 =?utf-8?B?d1pES00zSm8rT2xIZzFrdlovWXRzaU12SnpLTkZDMTF0RWR2RWJVU20wek0x?=
 =?utf-8?B?M1dtSENqZStLa3Rxb284WVp6OHN1ZmJTdm9hUjkvaWtZeWQvQTN0Qm5TY1Va?=
 =?utf-8?B?Q25JU04rRlU0V3hNYzAxQjByc2pSR1dnYitSZDhoc0grSjR0a0NBSExtYWZv?=
 =?utf-8?B?Q29vdytic2pUNkZtL0FXcC9GZzNGbVJOQ1dweVU0d0VWVE04d2pQQU9hWnBJ?=
 =?utf-8?B?V0tVNGh3dUZjRERJUVlKQ0dmYWtGVlh3bU9tUlJhL1BvRXNsdlFNc2RhM05S?=
 =?utf-8?B?WWNDakxBcWFiZUtoSWtPUzZXME5RRUpLNXpibXRwQUZ4RUk5WXJlUmZmQjVv?=
 =?utf-8?B?NXppMitZL1ExT3R1Q21aRGkrMnZpdEFJWG9jcXEwQ2ZBZEttSTBJZnljWWox?=
 =?utf-8?B?WnJDZUkyMEdwMUZyckxaVW5Pc0tzRzRpbmRGWkJIeUhIRy9MTHVFTk1sV2JP?=
 =?utf-8?B?bElZRDNpb0kwTE56Y2tYYm9VK3ZlTTdqa2YrTStjUXQwWUc1U2RYVlBwTnZl?=
 =?utf-8?B?VFN5T0UwV0pXWEZjNjk2OHZLQk1HU0FTcXRHcExBLzlXb3UyTk1ZNkdFVU1Y?=
 =?utf-8?B?ZGRSL1B2RXp1YzNKMmR0TEhZMEFjYmtyZUNxbXN1a1ErZnEyT25meHhQN3VP?=
 =?utf-8?B?MVlIQ2kwWi90T0d4TkpaTUFyRUQ2RHZ1VStPcUFiaEI1ZGhad0h2VTlJRm1I?=
 =?utf-8?B?QnBZRDdPZTJWakxaUjA0MFVqSXk1ZWlvdnUrb0NDNXdzSVVmU2h5WHpwVmkr?=
 =?utf-8?B?QmJMT3lqVlBFVHhXNG8vYzlub0VxVGdTYm0xN1VSemtzNFpoM1RTeHhPL0h5?=
 =?utf-8?B?bG1teTgrMDZTemFpM1R2dkkxZ1BiL1V5R2lTME4vMmNKa0UwM2JnbjA1eTR4?=
 =?utf-8?B?MHgwSE5GaU0vZ1p5VWJ4VkwzOTREWnNmSUgzaXdsQS9UVk5xUEZ1WitLZ0ll?=
 =?utf-8?B?dWNWYVBtU29Za3JrV0RvM3hqcEU1TnNwYlpMd3NLQlZYbDNtbzRNQW1GUzI0?=
 =?utf-8?B?SlhiQmNsMlViRVY5Z0dObW5xS01nUmxkRGcxUDBsMWlSMUlMTXVUc2xOQVdN?=
 =?utf-8?B?alVTVW5zZ1RnbFVBUXdDN3Z6VjdFb3hMdlVoSWlWTjVKNS8zbktROGQ2VjlO?=
 =?utf-8?B?K09vSloyQmN0dEJNY2FWbFc4WFdSQXhVckxPL1lXckdpRk01dUlySEluMVhp?=
 =?utf-8?B?dGxiTUVkZHRTWjdlcU84Y1BwcFJwZDFiZVZYMkFhMjVGdFBUL3NHSko3U3JG?=
 =?utf-8?B?UmlnazEwbWpBSTFkY3F4bnY2U2RoMnlQWU12Zzl2WHZwUzFoVWFMRGw4TklM?=
 =?utf-8?B?TmZmOUZ1RE9kWFRheUlaRHJJUDQ3cWxFSm1rWXludlE5Z2VHUGw2SEtGR1p3?=
 =?utf-8?B?L1JqanZaUlNwUE1kWWZCdnBZNVhuQUdxRUhtNzg1ampBZXNNemlpNW91YjZ5?=
 =?utf-8?B?NXlKT3lEVmF4WFkvOXFPdHphUVdvTGVUS2tOeWtWeVRqN0FCZHdVZTduWnc5?=
 =?utf-8?B?bi9aRVdvSUlVczMwb3pHSHhkc1l3OWU1VXhTaDRmblU0Mks2U3l5dU0yNEhO?=
 =?utf-8?B?dEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8478bdf-c282-4fc9-55a4-08db500237d8
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2023 20:24:26.2835 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uozVXAEx+lGgAC67b8JdMURZk4guEzKqQOBn9p8efiIOBk+hL5/hCJhax4DiWU0oPLX03PLx22Hi4eoOBQhGg3s8bw0M3TRvGgNS7UOu8M4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4909
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683577475; x=1715113475;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gIXt15FkKD3n4G/N+qUBLIc+ny5ecdDYNLdNEceX9+o=;
 b=kawWbIGgOqOk+XkScY7646Wpqumv8z2W9XIH8KQsbTskpVkvCxfo/ZST
 d5dFJ0a0/9INeOD6LKcDMl5iUHX4NzphP9Q/yTtF4YouTaJvAsT5MIIh/
 LCqas/q9p5it+w7TPeey/Lj05D2DCzSZjgk2J0otUJpC33Qt3nSHHptGk
 +WF+TzL+OBnu0UrOso9y12bP5nel93XQchHniB60R3OkG0843f2PJo4KP
 oW1+WdBoVypIHjUcQnJa/ZI/Xgvqro6OFZforaPJ5dpDASmom5/3IvHzs
 NmOyDilmg3TYVeMj3m6V5zgY8c6z5gkQ8f6mCIKrEFUDQd44lPlEvAZud
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kawWbIGg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Schedule service task in
 IRQ thread_fn
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/4/2023 6:08 AM, Yochai Hagvi wrote:
> On some RT kernels, scheduling service task in interrupt context may
> result in a kernel panic.
Would be nice if you could provide an example

> This is happenning due to queue_work call.

s/happenning/happening

> Move ice_service_task_schedule to IRQ bottom half.
> 

Please provide Fixes: for net patches

> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Yochai Hagvi <yochai.hagvi@intel.com>
> ---

...

> @@ -3172,16 +3168,12 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
>   		if (oicr & (PFINT_OICR_PCI_EXCEPTION_M |
>   			    PFINT_OICR_ECC_ERR_M)) {
>   			set_bit(ICE_PFR_REQ, pf->state);
> -			ice_service_task_schedule(pf);
>   		}

Single line now, not braces needed.

>   	}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
