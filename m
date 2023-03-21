Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F16F66C3301
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 14:35:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 93AE640BCB;
	Tue, 21 Mar 2023 13:35:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93AE640BCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679405740;
	bh=krY/2WNZFQfLG6wUhJ6E7S5byhacsmh40jPgMB2X56U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jgq5mmnc22L2N1b9ksXgckLE+AnBeR1d/HnmD5O1rATewOt4+QMDBCxqkvTJcQz6W
	 OiUCmeOvYJLSaC+HQEJyHDUwxYa8m+bNUyVWf7y6xsswiXkmzjuy6FxeRxFpDhypjX
	 RaUwns5pTZ5w9/Ou8KMxmLDFLTLELg46TxNjAnC2SJDkV9qgSSUWa9SI4fsa3EoGTY
	 d2ZALnjsTsiwnevdmJoRylSTfWzLQ5srgVPDUnFCz2WVX6+Tt9fAqm1dS1DF0F2L20
	 toI9/cJjkQzBSvqa0U/KkEXpKFP0gqwM+p3pUfYdxxTfIqAXJ1Kyd5skiDlBHR2KX/
	 WKxVVsv0yJ58A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oEHX4hx3-mx3; Tue, 21 Mar 2023 13:35:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D27E40BC1;
	Tue, 21 Mar 2023 13:35:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D27E40BC1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD2E01BF327
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B441A40BC1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:35:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B441A40BC1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LltDM_j3plLZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 13:35:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6FD1400DC
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B6FD1400DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:35:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="336444735"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="336444735"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 06:35:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="683879438"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="683879438"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 21 Mar 2023 06:35:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 21 Mar 2023 06:35:17 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 21 Mar 2023 06:35:17 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 21 Mar 2023 06:35:17 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 21 Mar 2023 06:35:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jCddEphfo1JmOvRAQkHD45mButoKRa92ubO7rL0Dhtz9xv8dWpbgPVcr9h5sm5+Y6vPJFuUNeyU2q5mV84NZMVYhy028JyC1sTaj73XqyEMwiufUY5XRLyvnm4y3t6wOUy9bNuk+sPB08Qql1LphKfEmVf9WihffixsyeEWZFQAycm6Ko8Ojtu1fVuzimu6SKjz9f6Q3XBwgDDSC0f4Wtgx468vkmvRvdMP2YdMOG9eTRlt7rT9fwUA9zoPckV8P5zjTQ7HLHywL8WBWcsxi+GILm+uKUDTnHUb2wI6CRJDVXczd8OQmMsxcmAv8hxukuIaaYtqvM69zPE7sEmFYOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5ygB6XbFNL+bxuvSTXlhgvhJIOQPJ0lvRFlnp7U5LQM=;
 b=CgFNcuDDaHXFHNghs7/JcY5Jglem9zJHmEukLm2VyHLk+eAnOjaPnDcoTOB/yQsGMLfdBIvbamE3VnFHtXGCrsJ8ED9IszxReuetFn6OqDCDk+g4S531ZWIITb5Z6M1yWiqetxrVXbkeNVQNTwGu2sq5IPRwd7w5REr5lKSGaazVQo2Vq54YF9Pe3qOY1YwPdOB5Pts1ijoSeQo5/18ffeNVxyeHfOn66rN2JG9YT2Yn8ckdo8rkf+3AlfHQXW9uF/wiWCagCZ8E5NlVaH6RMnn+WZ0Jkdkatojn0We9gFdovcoyLlQdOsNyMlcSZbumKaT+2Vdva9ElEln/ClLmtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12)
 by SJ2PR11MB7520.namprd11.prod.outlook.com (2603:10b6:a03:4c2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 13:35:14 +0000
Received: from CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::d2f4:519a:e4fc:4ebb]) by CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::d2f4:519a:e4fc:4ebb%8]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 13:35:14 +0000
Message-ID: <43fcdc63-5b3c-16af-45bb-db335c6b9a8e@intel.com>
Date: Tue, 21 Mar 2023 14:35:08 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230314102514.46636-1-michal.wilczynski@intel.com>
 <20230314102514.46636-5-michal.wilczynski@intel.com>
 <668a66af-f77e-49d6-8c20-a19e4bccec34@intel.com>
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
In-Reply-To: <668a66af-f77e-49d6-8c20-a19e4bccec34@intel.com>
X-ClientProxiedBy: LNXP265CA0013.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5e::25) To CO6PR11MB5603.namprd11.prod.outlook.com
 (2603:10b6:5:35c::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5603:EE_|SJ2PR11MB7520:EE_
X-MS-Office365-Filtering-Correlation-Id: e8d13b8a-0493-46a6-6844-08db2a111a06
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AXmTHG4Fs+4AQeK1KxueUZ0F8YFt8jIm8k7z57+GuY7UDKMhrMDgx4EoLMJiblxH4eXFPbC8BjclyFo7biYLHYfa6hEwBEbq2LDqq1WRqcEDJS0Vc12dNNNegLMGyMMuJZPHSGMYcAkqynIbNzu/ihJP6u7IdjXm0PKKRJe/Lh8XsILOK/eWa3PS7IZFtfC1C6fh+MECV4MeSsS06eQdHtUcRHN17NRimkitkGC7NKjJXyFpMcqRT7t2iU40Yd6WgmPqn2rL0kecrpEvsQKUCb1bS63KsRbADCxyoZgkpSs0d1u39ETJyDYv7TQ1xeD18aIsUTv5fRuo55xkxtSxRAO9IUbPv4ECZtKseMdlGKUGIt4nKf4ceH/CusUFPSeJAIMm+vpz3LTL+kHDangd9RF4TsINYoDOkafBLGYk4mWg2rBLfX00P6I+J5dDTsld4WnLw/r8Bb7sC70HY0PVJVvwCrfGC96gdHHRu+1YpmJpYqHX5m2tOzqGdcqQD5cURRcIiz99XZBEwMpzhbcipWnRxZLEYxJWYV8uMDsAFuFDfNuLZEbrqwMI7ilhPLF0hkFCk+AR8Mxbhj4rcPnlXoOn4bjDVlnRJP5zOBTLAcr9ndHhPn0/TxmSXKTo1bV+blAQXK932Y39wBvkBgsWZ/+FTkWkPND3mLFra9PPWYUdjTHTxXA0v8p/hIIva3zMMn+B8Pt2iO8HrJ8K8YPnxuTN9IZo22su3AMZUrC1EBM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(39860400002)(396003)(376002)(136003)(346002)(451199018)(6666004)(2616005)(6506007)(186003)(6486002)(83380400001)(478600001)(316002)(6512007)(8676002)(66476007)(66946007)(66556008)(26005)(31686004)(53546011)(41300700001)(8936002)(5660300002)(82960400001)(38100700002)(2906002)(36756003)(31696002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YlQ2SHpJNEx3RWw5RzlWRVRodmhRWU1CV3NraG1XbXhsMm1RYUZvdGtLb1ph?=
 =?utf-8?B?Y0duQ2NGNkNHcTYxaE0zUkZuNkdzMm9lUExUZTVwZENDQTllRTJvRGp1LzI5?=
 =?utf-8?B?WVlmb3dlVmVYVWRIYXdiQldNT2RVMXlaY000dmdFSXU0WEVKMkhNbUZldlV6?=
 =?utf-8?B?ZXdmcDJ6KytSc0k2VEh6WHk3cExHMDJwZlkzR1BKeE9VaW9ITlk3RU5IdXBG?=
 =?utf-8?B?cGN5VVhJN2d3REpNM3Q4U3puRWV5L2ZSK2RaN2ZuNHJsN1lmN25CWC9CM1VQ?=
 =?utf-8?B?STRRdThrcjBuRTdkcThoT0N2a2FVdFI5V3dMK2dsb05XM2dDaWpzZHNtMndX?=
 =?utf-8?B?M1U5NkNsTCt6S0laZkJxbWlEeWtaZ29vUmN6UnQra0VFMWdISm96dzUxN0lm?=
 =?utf-8?B?Y21RTmpRNHYvdll4NHNwaGJKdC9tVXFEbk1KOWZWVkJobzZjT3lZR3Ywb3Zo?=
 =?utf-8?B?Qy9sbk1xYUtpWDN0ZmxsV2o4QzFMWWNlUC9kRUEyMW9GK1ZEWVhneUZiY09h?=
 =?utf-8?B?SHdxeVd5ajR5R0ttR3BzUDcxVXpUMXAxWmtUSUoxTlZwbnNRdTVOZ2lDaEN6?=
 =?utf-8?B?Zm9NazE3ZmhONmRndWJlYmFoQWFRczdiOVdUZWp3VGxITEhpdHMxdXRGWHBF?=
 =?utf-8?B?bEFXSi83RWlWRnJROTBLWnd6YlBVQ2tvc1l4cHhUTTNIN3JxUFBTbzd6emc0?=
 =?utf-8?B?eTJtQ1dEVXBwRmE1cjZFeU1wY0RqYjZZSkIxbGc5RjBGb2ZoSTZBN015VlZT?=
 =?utf-8?B?MDVIcy9tbXF6Qm41dkdxMVVUcWg0TW1acHpEYis0ZTBlQ3ptVjZBZ05JRXlh?=
 =?utf-8?B?SWxXTG1FdUpjZXU1TU9jTDNjT1l6QVFCZFRQZGlVNGZjQ0tyQk11NnhqbU5X?=
 =?utf-8?B?UVNxZEczTHZ1SVRzd25qVjN1ZjkxSjRCSHhXQmZoM1FQbTBKTGtwTTV0SWtj?=
 =?utf-8?B?cGl6c1p2QWVrOHROaVcraG5PL0lNTUFrUGdPeFByWWdQZHpuOU1qVVZ2TkxH?=
 =?utf-8?B?NHY3Z2UzRlp5Y1pMM3ZaWlY2MVkyTEZyWHBQbUVlQnZKdHRjZDRBUjVZR3pC?=
 =?utf-8?B?OENGK1cwaGg1ZHhZckQvMVJlWkNoWmI1K1A0NGFjekYveW1RN0MvWXcvRDdF?=
 =?utf-8?B?ZHlVb1NHbDk1UzdMLzkxczlwMXhMYU9qNnpHbisxbXNVNjRpNkJ3SDMxeHVB?=
 =?utf-8?B?SXdaV01neGhxaUpzd2dDdW9pMXJjM3M5d0ZvN1hobGIwUWtLZE00RXZNMDFU?=
 =?utf-8?B?a095eDhPOFNXOVJPUzE5SmVKSFV0dDJVQ2xTQ1hxeFNIcm9OZkpBS09PbXFM?=
 =?utf-8?B?Mi9RaEJNMmhqM1F1M05ybFg4SnpOTnhXTW1PYUpCRVpWbHZSV0w2T3JEUHdR?=
 =?utf-8?B?VHZqMk9kL1orNVdtbjlEYkQydXIzbTJsS2VmN1hjVlhwTlVDMnl5dEZVY3RT?=
 =?utf-8?B?OHArZVhBSVZMcU1QMWFEQVBqUlFPcWpzSG5qOHZ5N3EvUG5iL05LT2Frb1Ur?=
 =?utf-8?B?bTNvSDdxY0ZLd0l3YWplMkVoWThiam5wZjJHUnBrOW9VWEMyQXd4aWhxT01V?=
 =?utf-8?B?QTk1OWtLYTNJRCtWOENZSHNUcHRLaVVjSXJCamo5aFVtVnc1SDZUU3AzdTA3?=
 =?utf-8?B?MCtaTUI1MVhqNlgvcU1Ma0tTSGF4OTRvSHFuQ0tjT20vVXVNNm9UL0J2NHk1?=
 =?utf-8?B?Mzd6blZ1QXpsbWYzbzk3QTFkbVZsUW5PbWZENXFhM3dlRjRXa09VM0d6VUlD?=
 =?utf-8?B?SWJWV2tTVTJhb3RmSkFTa2haaVlHTGZHblZrMnVMMUQrWW5md09rMHFRbUN4?=
 =?utf-8?B?N1JsTVBZa213ZkJLclVnUXo0SWRvNU5mbVFzTzdmOUJ4TXpmSE0yNWYzRDFv?=
 =?utf-8?B?VWdocytnQ0xuQ2JTZVFCZGZVai90eDkycElJM0NnbzNoRGZ5eGxNU3h1bTBP?=
 =?utf-8?B?RGhZdDlWbkhhWThlQVpFK1FtWFRmVGVWNXhRaE90NHVWWnhzdDJYQUsrTWo2?=
 =?utf-8?B?NXcxQkVCY3JJNlB1RmFhRVh0TXN4SDZybkpSZVJieEdiRkZJV2FQY1VFWHNq?=
 =?utf-8?B?ckFxWUMydTI2VUE0eTJGK0ZzVTVrODBXUi9JRmZCK2MyWnJlcjYxK2p3K2Jh?=
 =?utf-8?B?aDZsMHVKNzVaeHQyYzg2WGltM1hsTURUcWYrRGVHTCt5V3RyS2tRM1JtTUp3?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e8d13b8a-0493-46a6-6844-08db2a111a06
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2023 13:35:14.5931 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hqu7dU9SgHQAH6VnUAy32W5mxo9bV9uSjs/sb6E76++J/tcXW2kN2+i6eucpiSOQaEu7Y0/x1/mYtJ5kfxJpefNjW7E2Hp/CXNbLhj5iQWU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7520
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679405732; x=1710941732;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5ygB6XbFNL+bxuvSTXlhgvhJIOQPJ0lvRFlnp7U5LQM=;
 b=e186BBKmHzbTEhtxgXgQwvutMZU/4g539EiojyShnRRs7Ji9Y6S3mr4O
 FDtiys5CcRIhA+ARBLmr49WvRasGd1gi0aU5NObulB4dZB6SkOatoHVeL
 30ltc/nznxWh67RhFVegCmAyliruCpo9cZ1pzqKADcpwvAQtRolCUoL4F
 0/vpymoYnjtLTIvAEtCPHpYfsKOMvSmGMMjA5OWEBOPyzshLwDpsbwSnO
 /+kvkEzy+xPtiFamPxJ12L52ky4fXkUULnR898RNPuHoeYkdKcarLIni1
 Wpl5g7w5UKbaBItAA+ghw9cXzJV63LgNgyoKRqQVV9umbJqD48d/M96Ba
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e186BBKm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v10 4/5] ice: Add txbalancing
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAzLzE3LzIwMjMgNjoxNyBQTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4gT24gMy8xNC8yMDIz
IDM6MjUgQU0sIE1pY2hhbCBXaWxjenluc2tpIHdyb3RlOgo+PiBGcm9tOiBMdWthc3ogQ3phcG5p
ayA8bHVrYXN6LmN6YXBuaWtAaW50ZWwuY29tPgo+Cj4gWy4uLl0KPgo+PiArLyoqCj4+ICsgKiBp
Y2VfZGV2bGlua190eGJhbGFuY2VfZ2V0IC0gR2V0IHR4YmFsYW5jZSBwYXJhbWV0ZXIKPj4gKyAq
IEBkZXZsaW5rOiBwb2ludGVyIHRvIHRoZSBkZXZsaW5rIGluc3RhbmNlCj4+ICsgKiBAaWQ6IHRo
ZSBwYXJhbWV0ZXIgSUQgdG8gc2V0Cj4+ICsgKiBAY3R4OiBjb250ZXh0IHRvIHN0b3JlIHRoZSBw
YXJhbWV0ZXIgdmFsdWUKPj4gKyAqCj4+ICsgKiBSZXR1cm5zIHplcm8gb24gc3VjY2VzcyBhbmQg
bmVnYXRpdmUgdmFsdWUgb24gZmFpbHVyZS4KPj4gKyAqLwo+PiArc3RhdGljIGludCBpY2VfZGV2
bGlua190eGJhbGFuY2VfZ2V0KHN0cnVjdCBkZXZsaW5rICpkZXZsaW5rLCB1MzIgaWQsCj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkZXZsaW5rX3Bh
cmFtX2dzZXRfY3R4ICpjdHgpCj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0IGljZV9wZiAqcGYgPSAo
c3RydWN0IGljZV9wZiAqKWRldmxpbmtfcHJpdihkZXZsaW5rKTsKPgo+IFRoZSBjYXN0aW5nIGlz
IHVubmVlZGVkLi4uIHNhbWUgZm9yIG90aGVycyBiZWxvdyB0aGlzLgoKT2ggeWVhaCwgaXQncyBw
cm9iYWJseSBmb3Igb3VyIHVuaXQgdGVzdHMgaW4gT09ULiBXaWxsIHJlbW92ZSB0aGlzLgoKPgo+
PiArwqDCoMKgIHN0cnVjdCBkZXZpY2UgKmRldiA9IGljZV9wZl90b19kZXYocGYpOwo+PiArwqDC
oMKgIGludCBzdGF0dXM7Cj4+ICsKPj4gK8KgwqDCoCBzdGF0dXMgPSBpY2VfZ2V0X3R4X3RvcG9f
dXNlcl9zZWwocGYsICZjdHgtPnZhbC52Ym9vbCk7Cj4+ICvCoMKgwqAgaWYgKHN0YXR1cykgewo+
PiArwqDCoMKgwqDCoMKgwqAgZGV2X3dhcm4oZGV2LCAiRmFpbGVkIHRvIHJlYWQgVHggU2NoZWR1
bGVyIFRyZWUgLSBVc2VyIFNlbGVjdGlvbiBkYXRhIGZyb20gZmxhc2hcbiIpOwo+PiArwqDCoMKg
wqDCoMKgwqAgcmV0dXJuIC1FSU87Cj4+ICvCoMKgwqAgfQo+PiArCj4+ICvCoMKgwqAgcmV0dXJu
IDA7Cj4+ICt9Cj4+ICsKPj4gKy8qKgo+PiArICogaWNlX2RldmxpbmtfdHhiYWxhbmNlX3NldCAt
IFNldCB0eGJhbGFuY2UgcGFyYW1ldGVyCj4+ICsgKiBAZGV2bGluazogcG9pbnRlciB0byB0aGUg
ZGV2bGluayBpbnN0YW5jZQo+PiArICogQGlkOiB0aGUgcGFyYW1ldGVyIElEIHRvIHNldAo+PiAr
ICogQGN0eDogY29udGV4dCB0byBnZXQgdGhlIHBhcmFtZXRlciB2YWx1ZQo+PiArICoKPj4gKyAq
IFJldHVybnMgemVybyBvbiBzdWNjZXNzIGFuZCBuZWdhdGl2ZSB2YWx1ZSBvbiBmYWlsdXJlLgo+
PiArICovCj4+ICtzdGF0aWMgaW50IGljZV9kZXZsaW5rX3R4YmFsYW5jZV9zZXQoc3RydWN0IGRl
dmxpbmsgKmRldmxpbmssIHUzMiBpZCwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgc3RydWN0IGRldmxpbmtfcGFyYW1fZ3NldF9jdHggKmN0eCkKPj4gK3sKPj4g
K8KgwqDCoCBzdHJ1Y3QgaWNlX3BmICpwZiA9IChzdHJ1Y3QgaWNlX3BmICopZGV2bGlua19wcml2
KGRldmxpbmspOwo+PiArwqDCoMKgIHN0cnVjdCBkZXZpY2UgKmRldiA9IGljZV9wZl90b19kZXYo
cGYpOwo+PiArwqDCoMKgIGludCBzdGF0dXM7Cj4+ICsKPj4gK8KgwqDCoCBzdGF0dXMgPSBpY2Vf
dXBkYXRlX3R4X3RvcG9fdXNlcl9zZWwocGYsIGN0eC0+dmFsLnZib29sKTsKPj4gK8KgwqDCoCBp
ZiAoc3RhdHVzKQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU87Cj4+ICsKPj4gK8KgwqDC
oCBkZXZfd2FybihkZXYsICJUcmFuc21pdCBiYWxhbmNpbmcgc2V0dGluZyBoYXMgYmVlbiBjaGFu
Z2VkIG9uIHRoaXMgZGV2aWNlLiBZb3UgbXVzdCByZWJvb3QgdGhlIHN5c3RlbSBmb3IgdGhlIGNo
YW5nZSB0byB0YWtlIGVmZmVjdCIpOwo+Cj4gRG9lcyB0aGlzIG5lZWQgYSBuZXdsaW5lPwoKSSB0
aGluayBzbywgdXN1YWxseSBJIHJ1biBjaGVja3BhdGNoIHdpdGhvdXQgYW55IGV4dHJhIGFyZ3Vt
ZW50cyBzbyBtYXliZSB0aGF0J3Mgd2h5IGl0IGRpZG4ndCBjYXRjaCBpdCwKYnV0IHN0aWxsIGl0
IHNlZW1zIGxpa2UgdGhlIGxpbmUgc2hvdWxkIGJlIG92ZXIgMTAwIGNoYXJhY3RlcnMKCj4KPj4g
Kwo+PiArwqDCoMKgIHJldHVybiAwOwo+PiArfQo+PiArCj4+ICsvKioKPj4gKyAqIGljZV9kZXZs
aW5rX3R4YmFsYW5jZV92YWxpZGF0ZSAtIFZhbGlkYXRlIHBhc3NlZCB0eGJhbGFuY2UgcGFyYW1l
dGVyIHZhbHVlCj4+ICsgKiBAZGV2bGluazogdW51c2VkIHBvaW50ZXIgdG8gZGV2bGluayBpbnN0
YW5jZQo+PiArICogQGlkOiB0aGUgcGFyYW1ldGVyIElEIHRvIHZhbGlkYXRlCj4+ICsgKiBAdmFs
OiB2YWx1ZSB0byB2YWxpZGF0ZQo+PiArICogQGV4dGFjazogbmV0bGluayBleHRlbmRlZCBBQ0sg
c3RydWN0dXJlCj4+ICsgKgo+PiArICogU3VwcG9ydGVkIHZhbHVlcyBhcmU6Cj4+ICsgKiB0cnVl
IC0gZml2ZSBsYXllciwgZmFsc2UgLSBuaW5lIGxheWVyIFR4IFNjaGVkdWxlciBUb3BvbG9neSBU
cmVlCj4+ICsgKgo+PiArICogUmV0dXJucyB6ZXJvIHdoZW4gcGFzc2VkIHBhcmFtZXRlciB2YWx1
ZSBpcyBzdXBwb3J0ZWQuIE5lZ2F0aXZlIHZhbHVlIG9uCj4+ICsgKiBlcnJvci4KPj4gKyAqLwo+
PiArc3RhdGljIGludCBpY2VfZGV2bGlua190eGJhbGFuY2VfdmFsaWRhdGUoc3RydWN0IGRldmxp
bmsgKmRldmxpbmssIHUzMiBpZCwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB1bmlvbiBkZXZsaW5rX3BhcmFtX3ZhbHVlIHZhbCwKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgbmV0bGlua19leHRfYWNrICpl
eHRhY2spCj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0IGljZV9wZiAqcGYgPSAoc3RydWN0IGljZV9w
ZiAqKWRldmxpbmtfcHJpdihkZXZsaW5rKTsKPj4gK8KgwqDCoCBzdHJ1Y3QgaWNlX2h3ICpodyA9
ICZwZi0+aHc7Cj4+ICsKPj4gK8KgwqDCoCBpZiAoIWh3LT5mdW5jX2NhcHMuY29tbW9uX2NhcC50
eF9zY2hlZF90b3BvX2NvbXBfbW9kZV9lbikgewo+PiArwqDCoMKgwqDCoMKgwqAgTkxfU0VUX0VS
Ul9NU0dfTU9EKGV4dGFjaywKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAiRXJyb3I6IFJlcXVlc3RlZCBmZWF0dXJlIGlzIG5vdCBzdXBwb3J0ZWQgYnkgdGhlIEZXIG9u
IHRoaXMgZGV2aWNlLiBVcGRhdGUgdGhlIEZXIGFuZCBydW4gdGhpcyBjb21tYW5kIGFnYWluLiIp
Owo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FT1BOT1RTVVBQOwo+PiArwqDCoMKgIH0KPj4g
Kwo+PiArwqDCoMKgIHJldHVybiAwOwo+PiArfQo+PiArCj4+IMKgIC8qKgo+PiDCoMKgICogaWNl
X3RlYXJfZG93bl9kZXZsaW5rX3JhdGVfdHJlZSAtIHJlbW92ZXMgZGV2bGluay1yYXRlIGV4cG9y
dGVkIHRyZWUKPj4gwqDCoCAqIEBwZjogcGYgc3RydWN0Cj4+IEBAIC0xMzkxLDcgKzE1NDUsMTMg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkZXZsaW5rX3BhcmFtIGljZV9kZXZsaW5rX3BhcmFtc1td
ID0gewo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpY2VfZGV2bGlu
a19lbmFibGVfaXdfZ2V0LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBpY2VfZGV2bGlua19lbmFibGVfaXdfc2V0LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpY2VfZGV2bGlua19lbmFibGVfaXdfdmFsaWRhdGUpLAo+PiAtCj4+ICvC
oMKgwqAgREVWTElOS19QQVJBTV9EUklWRVIoSUNFX0RFVkxJTktfUEFSQU1fSURfVFhfQkFMQU5D
RSwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJ0eGJhbGFuY2luZyIsCj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBERVZMSU5LX1BBUkFNX1RZUEVfQk9P
TCwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEJJVChERVZMSU5LX1BBUkFN
X0NNT0RFX1BFUk1BTkVOVCksCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBp
Y2VfZGV2bGlua190eGJhbGFuY2VfZ2V0LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaWNlX2RldmxpbmtfdHhiYWxhbmNlX3NldCwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGljZV9kZXZsaW5rX3R4YmFsYW5jZV92YWxpZGF0ZSksCj4+IMKgIH07Cj4+
IMKgIMKgIHN0YXRpYyB2b2lkIGljZV9kZXZsaW5rX2ZyZWUodm9pZCAqZGV2bGlua19wdHIpCj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Z3X3VwZGF0
ZS5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9md191cGRhdGUuYwo+PiBp
bmRleCAzZGM1NjYyZDYyYTYuLmRjNWI0OTEwNDY3NCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9md191cGRhdGUuYwo+PiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Z3X3VwZGF0ZS5jCj4+IEBAIC0yODYsNyArMjg2LDcg
QEAgaWNlX3NlbmRfY29tcG9uZW50X3RhYmxlKHN0cnVjdCBwbGRtZncgKmNvbnRleHQsIHN0cnVj
dCBwbGRtZndfY29tcG9uZW50ICpjb21wb24KPj4gwqDCoCAqCj4+IMKgwqAgKiBSZXR1cm5zOiB6
ZXJvIG9uIHN1Y2Nlc3MsIG9yIGEgbmVnYXRpdmUgZXJyb3IgY29kZSBvbiBmYWlsdXJlLgo+PiDC
oMKgICovCj4+IC1zdGF0aWMgaW50Cj4+ICtpbnQKPj4gwqAgaWNlX3dyaXRlX29uZV9udm1fYmxv
Y2soc3RydWN0IGljZV9wZiAqcGYsIHUxNiBtb2R1bGUsIHUzMiBvZmZzZXQsCj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHUxNiBibG9ja19zaXplLCB1OCAqYmxvY2ssIGJvb2wgbGFzdF9j
bWQsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHU4ICpyZXNldF9sZXZlbCwgc3RydWN0
IG5ldGxpbmtfZXh0X2FjayAqZXh0YWNrKQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9md191cGRhdGUuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfZndfdXBkYXRlLmgKPj4gaW5kZXggNzUwNTc0ODg1NzE2Li4wNGIyMDA0NjI3
NTcgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZndf
dXBkYXRlLmgKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9md191
cGRhdGUuaAo+PiBAQCAtOSw1ICs5LDggQEAgaW50IGljZV9kZXZsaW5rX2ZsYXNoX3VwZGF0ZShz
dHJ1Y3QgZGV2bGluayAqZGV2bGluaywKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHN0cnVjdCBuZXRsaW5rX2V4dF9hY2sgKmV4dGFjayk7Cj4+IMKgIGludCBpY2VfZ2V0
X3BlbmRpbmdfdXBkYXRlcyhzdHJ1Y3QgaWNlX3BmICpwZiwgdTggKnBlbmRpbmcsCj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IG5ldGxpbmtfZXh0X2FjayAqZXh0
YWNrKTsKPj4gK2ludCBpY2Vfd3JpdGVfb25lX252bV9ibG9jayhzdHJ1Y3QgaWNlX3BmICpwZiwg
dTE2IG1vZHVsZSwgdTMyIG9mZnNldCwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB1MTYgYmxvY2tfc2l6ZSwgdTggKmJsb2NrLCBib29sIGxhc3RfY21kLAo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHU4ICpyZXNldF9sZXZlbCwgc3RydWN0IG5ldGxpbmtfZXh0
X2FjayAqZXh0YWNrKTsKPj4gwqAgwqAgI2VuZGlmCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX252bS5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9udm0uYwo+PiBpbmRleCBmNmY1MmEyNDgwNjYuLjc0NWYyNDU5OTQzZiAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9udm0uYwo+PiAr
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX252bS5jCj4+IEBAIC0xOCw3
ICsxOCw3IEBACj4+IMKgwqAgKgo+PiDCoMKgICogUmVhZCB0aGUgTlZNIHVzaW5nIHRoZSBhZG1p
biBxdWV1ZSBjb21tYW5kcyAoMHgwNzAxKQo+PiDCoMKgICovCj4+IC1zdGF0aWMgaW50Cj4+ICtp
bnQKPj4gwqAgaWNlX2FxX3JlYWRfbnZtKHN0cnVjdCBpY2VfaHcgKmh3LCB1MTYgbW9kdWxlX3R5
cGVpZCwgdTMyIG9mZnNldCwgdTE2IGxlbmd0aCwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHZvaWQg
KmRhdGEsIGJvb2wgbGFzdF9jb21tYW5kLCBib29sIHJlYWRfc2hhZG93X3JhbSwKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIHN0cnVjdCBpY2Vfc3FfY2QgKmNkKQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9udm0uaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfbnZtLmgKPj4gaW5kZXggNzc0YzIzMTc5NjdkLi44ODk3OGI5YTk1YjEg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbnZtLmgK
Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9udm0uaAo+PiBAQCAt
MTQsNiArMTQsOSBAQCBzdHJ1Y3QgaWNlX29yb21fY2l2ZF9pbmZvIHsKPj4gwqAgwqAgaW50IGlj
ZV9hY3F1aXJlX252bShzdHJ1Y3QgaWNlX2h3ICpodywgZW51bSBpY2VfYXFfcmVzX2FjY2Vzc190
eXBlIGFjY2Vzcyk7Cj4+IMKgIHZvaWQgaWNlX3JlbGVhc2VfbnZtKHN0cnVjdCBpY2VfaHcgKmh3
KTsKPj4gK2ludCBpY2VfYXFfcmVhZF9udm0oc3RydWN0IGljZV9odyAqaHcsIHUxNiBtb2R1bGVf
dHlwZWlkLCB1MzIgb2Zmc2V0LCB1MTYgbGVuZ3RoLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB2b2lkICpkYXRhLCBib29sIGxhc3RfY29tbWFuZCwgYm9vbCByZWFkX3NoYWRvd19yYW0sCj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpY2Vfc3FfY2QgKmNkKTsKPj4gwqAgaW50
Cj4+IMKgIGljZV9yZWFkX2ZsYXRfbnZtKHN0cnVjdCBpY2VfaHcgKmh3LCB1MzIgb2Zmc2V0LCB1
MzIgKmxlbmd0aCwgdTggKmRhdGEsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm9vbCByZWFk
X3NoYWRvd19yYW0pOwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
