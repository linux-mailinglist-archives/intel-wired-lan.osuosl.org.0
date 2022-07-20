Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE3F57C0C1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 01:18:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 355484099E;
	Wed, 20 Jul 2022 23:18:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 355484099E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658359084;
	bh=BvBDioNECCTtKZ5B0lQb5yfIFGf9HTbA4YdsELeK0uA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l0+fdzjq0/WjAqkMdipC0EB1VmWD3H5P6Tv2IsA1xYEIbEKeuuUpgrkXPwCEkr2Kr
	 R5YJ2GzE5mD7yHA8NxUJEuYSWUF7ynGSNnvHLCrox4cn8EQFv/x/iupGoKavO7jghz
	 48IWkC3BRhYuQHF0rKNBHandTnwdSRiBtStryOl+Q/kuUcnuV7QYWkYcuMmRbhecyL
	 Wc/XrWm90xMNres47+LsYv74eQet5x7pyUaP5hulSrKf62foXBh7Ayi8V+K1bldz+D
	 gZOFIN6tswWksYuO5k0PMEQBZyg0gvLdwjmvFI0LQtk3ySu12ooU9pdaqcAGfCSpu+
	 D1uuOZHDspPSw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ma77GjZoQqbA; Wed, 20 Jul 2022 23:18:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE8DA40913;
	Wed, 20 Jul 2022 23:18:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE8DA40913
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D73E91BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 23:17:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B05A160D5F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 23:17:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B05A160D5F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 97xhzgFnfQnE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jul 2022 23:17:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E04A60A74
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E04A60A74
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 23:17:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="284461153"
X-IronPort-AV: E=Sophos;i="5.92,287,1650956400"; d="scan'208";a="284461153"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 16:17:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,287,1650956400"; d="scan'208";a="598254561"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga002.jf.intel.com with ESMTP; 20 Jul 2022 16:17:44 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 20 Jul 2022 16:17:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 20 Jul 2022 16:17:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 20 Jul 2022 16:17:43 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Jul 2022 16:17:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K3iw64PQb50E6ajwwU78nvsu1VCGbVIQVPamVamv0oTM0FFIrxpIIotZo+A9CPt9jVKJ5ym7pEV4WJF/DPN9RFu+uRNJvzSl/HZ0JxyfPISs9OWmk04Hp6mPZbd/X/kIW59iUlox5YA+a+KEodnr1biQnz+oKselg9uBgtyEwAWMsvjH5IE2wXv1S5BEO0npGGnBfgbULE/tKqBC52xxfTF36jClFQqf7YsN/ddpBu2FocXETMf9vjjSHPQOtB3aj9p2YhqwptPS3FcprRCWvhHyzNvZemW8G5925V3Sl7qr6FDQ5mWS/ekfOFoWP+Tzlw9hoykYDFH/AWbDa0BUAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mrrwOw7P/4pi45djoXLL2w3wbp+G3xvOBouVJsmJbLU=;
 b=J+vG/QlKMpZDSnwDjbEo67CYM9WGSit51FhBUI3xA3hF00tBcFg1hy5H860mPhG6XQ2TlOJ32854DeisNCZ6WjGG4uf6Avh6meaLMCoxliCK4MW2FpRA2tRlvvCDtPNE01uzktBi5ErNPOJ7pqCo1m8aQxA8EOP31GirVjKejFzAJDnDSdhUN+yf8Q2KDBcUKcm5tw8gqiA8xXCUV/77lPveoEk2r4QlngCz34b1SScAzsGQqX0f6J2Bv80gdK1FfL6j7bLDZ9JBuE4uQyvf0hOoWlE0Oq5T6/4biFDC5zmYW67JRkll77H6czi4b66VQz3OSFMHCso08Rq2hdtJBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN8PR11MB3794.namprd11.prod.outlook.com (2603:10b6:408:8f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.18; Wed, 20 Jul
 2022 23:17:36 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5438.023; Wed, 20 Jul 2022
 23:17:36 +0000
Message-ID: <92cab6fd-c6b4-6834-74f0-8df5a10ccbcb@intel.com>
Date: Wed, 20 Jul 2022 16:17:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Michal Wilczynski <michal.wilczynski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220720144004.14250-1-michal.wilczynski@intel.com>
 <20220720144004.14250-5-michal.wilczynski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220720144004.14250-5-michal.wilczynski@intel.com>
X-ClientProxiedBy: SJ0PR03CA0335.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::10) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d6dca166-f3b2-4e27-288f-08da6aa60832
X-MS-TrafficTypeDiagnostic: BN8PR11MB3794:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9zL6KqIFRmWXHmEq3oV2HCLJa32SYpKYKXwETjmGCU/D91wvGTXJLTaURzh1mR8kvvwUMjH5jnELY+1n2KVl4YAD5oEk3K+wFAv01eZ+CkZjcIFd1Zp5wyqx7CwZMldfFTw42f7I1vkYGmO/ZRx8lIG4NS53gFP8kmw4oIkeTMu0GrrUlcKL8WrAqrwFq2MfsuxcUDkkhssBxeBj+86zYnj2kvrvsUa6CPAmfi+j/yNazQUJVxTU4vdmtsuue49+uOf59KCgn5fbQNTbHCPvo1+DfgKaRIHrmfN4tNTQb9P1ED+sKp8X9GwQM/AYAL60lh5kZFtF3pNYBLaYMBQbwa/AD2I85ZhgyAfEYluaFJVAnuYD8d8EUgOw6B4p1CiapM+CPUGywZPhVBxVs6kJ1suZN6xpqBCz0zsjIbsJxTtoA1icpSXxc0SUVGopgWvZTTaK4OvZJKlsg4gno84hF6o8tainM0/zEIYoC4y2kUQMHR9agNFIwiJ1mwczoXa8Gf+IXPIfz+8WXq/1RBffp4U7NejDLVY1n0TFkY1pDItE71jOe84dsvYv3jzRqe0FXLnk24xt2U9faMFF4zSoIbl8bowFGGa/ANrlWu8oFAYYZTCkBVtwZlTVr2RiuXRqHDyow6H2Sp816G4QfEKxgq0PWFYy6iuuv9nuQWlOV6uMCu0p34Y7qj7B8WHBGdYhuezENJGw28JqM/RRvoILhqUuveMJkXfrCG54ymVUvnZCCxJuyHHwryvod6fj6YxWrl3X4xZ/1Hg8owOCZjC1Mtl6FkVrYAn+L9EzYw+qKBf9V3gM/PzKaUCnaHJ/KgkapI6Xm9GfHBFI4uZh/CHFR2fIDZhodcvXYskbI7Fz54ZnmkLolX0C9gCi/fJekHRl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(396003)(346002)(376002)(136003)(38100700002)(6506007)(5660300002)(53546011)(8936002)(966005)(6486002)(41300700001)(82960400001)(478600001)(2616005)(8676002)(66476007)(83380400001)(66946007)(6512007)(66556008)(31686004)(316002)(26005)(31696002)(2906002)(36756003)(186003)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aXdWOGVXenM4Z1NleFNDOTdMMXBOUTFGeFR6MjdSdU5PdCtzVHdia01hV3F0?=
 =?utf-8?B?RTQ0ZStxZ3pYS0FMb3NGc3lYaTZhbE9YN2FjY1BwK0RDbnNCVzEvcnEwaFVk?=
 =?utf-8?B?SmM4VjJzSHU3SlM5alBjd1Y1RjhiaG9LNzRJOGFVS0R5QXR4aWJoN2hieDFD?=
 =?utf-8?B?d294ZFlBWGNLS20wNHhpM1RRVFo2YW9JNlJqcmdORjhpV0hQdm5HS1ZDbXlx?=
 =?utf-8?B?dkllNTh5N2J2d1R2Mlppb2FHTmpGa2ZoMkpuSmN4ZGc5RWJnaGxBNjJ0anR4?=
 =?utf-8?B?N0E5Rk01T2FVRHlkMFlnTDJ4bFNPcUd1NkM3RjBScWRETWV6YXFweDBTY2dH?=
 =?utf-8?B?eENZVWdMNkIrVTF2a0NVVDJXdWxCdk1oT2Y3Uk5jcU5IRW9ra0tOUk4zUFgy?=
 =?utf-8?B?SGxGWGZMS1drcml2T1g1R3ZaaXk0TFYrTHpJSEx3VHFrRUdkNytmdG1OWXBt?=
 =?utf-8?B?ZC80R0QrZTFJU1E3MFpxN3pHN0hqNUEyRTRYVWF3dk1IV05HSWR4QXRKYWJW?=
 =?utf-8?B?Y01nV1FIWCtXQlhObXlZdDc5YWVOMFNiSWVhNzBNc05OUGxSMDVsZlQ5b0Jq?=
 =?utf-8?B?UzBXdmNtK0NZai9CMERJWlltektoc0tTeXJtaG9oVmFDbDhvUEwvSmRlZFd6?=
 =?utf-8?B?YnZQWEdtSTdMMU9XYUpNdE0xUm1pb2FoblRyNzBmWktjdEJCTzN4OGhYNzZl?=
 =?utf-8?B?eUJ0cEw2NTczQWRjb1h1UUhkSUxHYWFoN05WZzZTaFBRcWdvSDlWTTdxSk1u?=
 =?utf-8?B?V0pvZGE2a2gzSENYV0huRXoxOEZiMm5Rc2UySXpuMFc3SDFrU3JzVFY1U05N?=
 =?utf-8?B?NnVKTEI5WVhoRk5NbmU0YTdrUTlmaUxoenpZclVLYXlFblV0VWFuL1VrL1l6?=
 =?utf-8?B?d2QrKzVtSXN0S2p2ZUx6UitjeWdGUi82OFR6WnkreW1rdU80NkN5VW42NkFH?=
 =?utf-8?B?WWFkSlNwK2ZESk1LTzhvNnJnMHU3cDRvRXhteHZ1VXhCaDZvYU1TQTF6T3hH?=
 =?utf-8?B?bkYwZkx3WVdwWkh5UDJCQWFMQzE0RjJna3M2NElyTmFkUFdUakVjVjU4TGFT?=
 =?utf-8?B?Umx0eXVVT2QrczhHT2tMMWtYV3kzeGFnR0RNbWlDeE0yTVh3cFcvTnBJNEdq?=
 =?utf-8?B?eWZPTmhiVUIzL2xNdW1tWktMWGkwZER4NDVmancyMlVGS1J0WUhJLzRJNzRE?=
 =?utf-8?B?eUIySERSZDZUS1ROUEVSbUp6TW9IaWxRZXU1aFFwYjl2eEhKSG9IbDVqdSsr?=
 =?utf-8?B?ZnhZV01CRzgwT3ByblZIT2c0ajRyc2l5ODJLU0lNWG54ZEsvMHBSTFBSdkxa?=
 =?utf-8?B?WTJFL2QyWWwxRzRJa2phODh3OVRzY1RjVlNQZlhUZ1RTV0tUNEFHbHh2djk1?=
 =?utf-8?B?UnpNOVZVaXBROG1ENVBBVDRJblVwcS9yRGRaNVFGL3ZFOWRlZ0VLNFdnVlJu?=
 =?utf-8?B?SDhPSVRGNmZqeVhyOVpyTEJEVFhVRDNZN2d3QVZEOTd1dCtvTUFEM1gzbnpj?=
 =?utf-8?B?VFZKRS9TSmpjdlkxNnJXbnBqVHVLdTNQSDNwV0hkNkg4b3lVbzM5Z2NxQWha?=
 =?utf-8?B?c21lRmR1d3pydjlIaXJ0WEg1WE1rM210VnJJNmxIcXJsTkVCTFp5MWJBMzU2?=
 =?utf-8?B?Y1ZURFlzM2JFNmRVWHptTXZNdHdNNDBPNnRjaWtZMU0zQTdVQVV5cEl3aGxk?=
 =?utf-8?B?b2FYekJMMDBZZlFhK0FFTC8wN25mMUZxa2hablh6eTEyNEZaK3c4TnlMLzNx?=
 =?utf-8?B?cEo1aWFnTjJWTnZWN2pmdG1qQXNzMXdZSzJCcHBTUXBzcjMwbXNGdmFYaTB1?=
 =?utf-8?B?ZjMvQnRxb0I3cENzenpNOUJvbHlaSS9YdkxlVFlGYlc4dTJHckpTTy9NcE5o?=
 =?utf-8?B?bUdEUmxEbmU4V2o2anlwLzFTU2Q4dXczQ0Z3RG1FQWhtTjRkOHdpK1RCaWJR?=
 =?utf-8?B?d2NqM2RQdTlCMjBkc3NaWkNHNXFSQnlrOXZiYnJveXdFVEJsVUtkTVFtQWVK?=
 =?utf-8?B?Q0VMRkt4cnMwR1J0cmlxRytwaW13N3RHWDJaUUVGbGRidThXZTVVbzJLcGQr?=
 =?utf-8?B?R2h1WXZLaUh0QWgwYUMrbnpaZHFySEN2N2ROTitlQlJzL01zZ01zbjVSZytK?=
 =?utf-8?B?bkJVRG11SG9KUklYRFFGUEc2NzBrbFR2S2g3bCt3dzBwWWJNRDQvYjRlSTYy?=
 =?utf-8?B?M2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d6dca166-f3b2-4e27-288f-08da6aa60832
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2022 23:17:36.1904 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t59z39/ytn1Acya1V3mwignwJbQGVrkEA7rqxDs6E2xnb+KS9Pnj5+g5U1VSs020jL+ncxbBoXIPIoMOUVjgWf1YWOVQZHOtv5MmYF6rdbE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3794
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658359075; x=1689895075;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=E+DN980aP5bRgJYoE+gT6bvsO8JNvwk6jjrC4EN0YVE=;
 b=FdXILPJMpt8FUFuDGQ0m89bANhDXa3kOoJsUpg4Qy3yIrEnaIXu9/YNC
 sTiQ5bFW5cRhRJ0ulqr3rViekKHCICP4CS6W8aI1M0LnUzMOXdqrqbVMa
 nyMXfwAUhT078LDARZlOskKnS4OaRcJ18ElVXjPDGnOvnv+HMjfnxuCoX
 D1mz8LtfTP6dNRqYzniE1sdExbNTW+dfCC6ikKUXNM6tkF7kkDFOmcGKX
 ZY4+CdksQbInorkbYq/aKKlM0IvA0GrAF/JRqDoWSbx0Z64J1K3y1/laH
 MTOlP73G3ZoqfLz6o9eyA7p3Lo2kz4iutTLoJRKAY0TsZTrRY60AVcUM+
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FdXILPJM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 4/4] ice: Add txbalancing
 devlink param
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



On 7/20/2022 7:40 AM, Michal Wilczynski wrote:
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> It was observed that Tx performance was inconsistent across all queues
> and/or VSIs and that it was directly connected to existing 9-layer
> topology of the Tx scheduler.
> 
> Introduce new private devlink param - txbalance. This paramerer gives user

s/paramerer/parameter

> flexibility to choose the 5-layer transmit scheduler topology which helps
> to smooth out the transmit performance.
> 
> Allowed parameter values are true for enabled and false for disabled.

Please document these in Documentation/networking/devlink/ice.rst

> Example usage:
> 
> Show:
> devlink dev param show pci/0000:4b:00.0 name txbalancing
> pci/0000:4b:00.0:
>    name txbalancing type driver-specific
>      values:
>        cmode permanent value true
> 
> Set:
> devlink dev param set pci/0000:4b:00.0 name txbalancing value true cmode
> permanent
> 
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>

<snip>

> +/**
> + * ice_devlink_txbalance_get - Get txbalance parameter
> + * @devlink: pointer to the devlink instance
> + * @id: the parameter ID to set
> + * @ctx: context to store the parameter value
> + *
> + * Returns zero on success and negative value on failure.
> + */
> +static int ice_devlink_txbalance_get(struct devlink *devlink, u32 id,
> +				     struct devlink_param_gset_ctx *ctx)

nit: Can you use GNU style on these

static int
ice_devlink_txbalance_get(...)


> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +	struct device *dev = ice_pf_to_dev(pf);
> +	int status;
> +
> +	status = ice_get_tx_topo_user_sel(pf, &ctx->val.vbool);
> +	if (status) {
> +		dev_warn(dev, "Failed to read Tx Scheduler Tree - User Selection data from flash\n");
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +

As well as the lkp reported issues[1]

[1] 
https://lore.kernel.org/intel-wired-lan/202207210108.7ZpVcgDQ-lkp@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
