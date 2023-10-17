Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 327817CCBFC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 21:15:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F01F60FF6;
	Tue, 17 Oct 2023 19:15:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F01F60FF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697570112;
	bh=gRkWMJqqGq+avJqB1+jDyMd+sVun++93DI0H3Mji4qU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lvbZvgy7Y9r3FwD4vVpOyndqKZL4M9fO/NJ25F4ZlwfwUmIFLtt23rfLajA5Z5g45
	 4yIcnHK7qQpdDA1Dm5A45izw03al3CyApTi3YprUDkjELfiN9SEKdRkwKvlOUBcQ4X
	 sHQ43FnpmZXdyAcGNkFvVTmxw8U+9WRdh+Flag0r8nWFTc9poUlBFckoYvk6k/000a
	 0G2wPdVx8jG8IpNmKGntI0H5LNTux1Ntz+MKomNHw65LBbX/bd5LYaMwpRwPuFHqWM
	 0ZQbQxxPD63yCyhluTpzOPoXjEeiDI5Z5+5BNj6iNwDsu8xaacgNpFnXJzzP6CQKUO
	 JvRJNqbRWUJ/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9l8zsXTZwRzK; Tue, 17 Oct 2023 19:15:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 677E060E82;
	Tue, 17 Oct 2023 19:15:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 677E060E82
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 32C1D1BF397
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 19:15:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 108BC41782
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 19:15:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 108BC41782
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ULf6uBbaw4_9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 19:15:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C46384071B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 19:15:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C46384071B
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="384741494"
X-IronPort-AV: E=Sophos;i="6.03,233,1694761200"; d="scan'208";a="384741494"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 12:15:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="1003462693"
X-IronPort-AV: E=Sophos;i="6.03,233,1694761200"; d="scan'208";a="1003462693"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2023 12:15:00 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 12:14:59 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 12:14:59 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 17 Oct 2023 12:14:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 17 Oct 2023 12:14:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gPPHXpFllqwBj55UymYh9ucQwrmFs9G9X/cRL8B4bP3yKULkqLTppG5AyeZTFUQUZA5kD8bH65rAtX6Zx58aCDvpaq2Wh/Fv56VVaqxjPH9TwETVa96/cZQRl2C9emeGO0wJNH4Au8R4TzkIAUa8/nz7WHTRq4eRh/GLwWKy315pveWVpN0EMYexP2WVS1BCr1GC05dyBiQBATdF9Ttd65IjY6a9knx+sL7bUHWquc3Laf4Unjq/ZwVV8Czx0saXZg2Dmmnl0gdyW90DJw+WXh1DFofHj/Wcg2wtfu02m67EGvq7lts7/dPUHYWiUVHIJ25mFVGkk3+WzINkhd7D7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ymuv79SUXOFYNGn8bj6e6TOoXsM92f2gwEzjP+9A56k=;
 b=NIcT3D79U2AE+F/tzR26VFsuLZkmyxfUbHa73HqqR6cazemBbaoACI2Y2kVleWg9KzJVZdWr0ylh4Qi5hXKoPyCrx7unC7//oQcRwlfRXhAtOXkBrOtIPhdHskop77jKxh+5Tg1qH3lx1NPHflOATZPjlZEAjzXKy+Vo1GhxwFRnxUiNeZr/dY9ethoyQKNCQL6+ub+AAJhDqXyP7dPDndR9vWMwdyispIV2Cg71+LKqxttIXkyMRYeXI/u58HNAjeyfMvec8sIbbipoq7qY1SzmScfZf6qf8g7mYGCRbFjrIGvrQLUjGMpJS6kuSjxMkZCiNE/DAjWm6J7cHk1aog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by CY8PR11MB7797.namprd11.prod.outlook.com (2603:10b6:930:76::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Tue, 17 Oct
 2023 19:14:57 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8%7]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 19:14:57 +0000
Message-ID: <31cde50b-2603-443c-8f55-a0809ecdd987@intel.com>
Date: Tue, 17 Oct 2023 13:14:46 -0600
User-Agent: Mozilla Thunderbird
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <afb4a06f-cfba-47ba-adb3-09bea7cb5f00@intel.com>
 <CAKgT0UdPe_Lb=E+P+zuwyyWVfqBQWLaomwGLwkqnsr0mf40E+g@mail.gmail.com>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <CAKgT0UdPe_Lb=E+P+zuwyyWVfqBQWLaomwGLwkqnsr0mf40E+g@mail.gmail.com>
X-ClientProxiedBy: FR2P281CA0072.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::11) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|CY8PR11MB7797:EE_
X-MS-Office365-Filtering-Correlation-Id: e9b60dec-b07a-49a8-8836-08dbcf4559e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 05KL1iLgaxOwYISgRT2PPT7ErxbxsozPB6tUQME6PZ9HCJX7q14U2Cg09nVsTxSXKLO1EqNIPg9pqsQRxpQ/z/StreyCCa2nOknsO4aK2R09F4j6Re74Jbj/1vFOMoSU9nf8gwRYQAbqn/RcJmCILoochy6swt8B7IWf47LJYevNsgyp+qjGnp3ul+WDUaAmKI60CbQ7+lync8oh8mOZLFcdBLmBilWyeqPOP0E94CJFF5eOSpxAfN/jhxCYRX6wYNTSthA/Q7LjBQoMW/TuDlBwVqff/iGsxUzo6VhPObQQWbKQkZ7LqULjCgzU+2KPAMDxqfYkbf0Vn+7JITSZCF49KKGCcurbCSDj22FWrTkF7YiH0uOISkMWw5Z0SqqWfBN3Ekz6XOJp/rFPaW4iZ1SxxqCWhrNLefyBMNzlajx3DeGTd6Zo66l2NFHXhPTK5E0d1TdsKMkrPOlPGlBqUQClSQELpja9y/QaxdN8fp7Lar8kzGlGWTqxlWe842h9XDmZjjzzUe7UguaYDfZxoLI/hncUJ2piinsGI19W2CVZnJas6/jE0yZoriTqVA1ED4xtt8EhiGKrv6LEt8XgZHK2qTuA+3DznzwWMoqB5wvtoBY8jBU1TtKtybqzImEmAxf4Z72Cc3HRu3JYXevFbQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(396003)(136003)(366004)(376002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(31696002)(86362001)(83380400001)(8936002)(4326008)(8676002)(66946007)(6506007)(478600001)(6666004)(966005)(66556008)(6486002)(6512007)(53546011)(7416002)(107886003)(54906003)(66476007)(26005)(2616005)(316002)(6916009)(4001150100001)(5660300002)(38100700002)(36756003)(82960400001)(44832011)(41300700001)(2906002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bExoeWtCbElkTlJ2a1MvSTdIYmt5RTVaT1FBSHJWbFI4ay92cjk2amRtSU9n?=
 =?utf-8?B?RWJvQmdLZDlxY1BSUGs3cUg2MGx5bzNZQ2YrejZhdElycGplcHlrdzVCWENl?=
 =?utf-8?B?dUdIUTlJSGI4ZmZkWDl6YVM2OG9QaUlLZHN3eEVCMmc4Y0VNZTdqTTB6T2pN?=
 =?utf-8?B?aXRlT1VEc2hrNzZFN09mUzFyY3FpbldLcnBocTRxNGpVVEw2L250MFNCcHBw?=
 =?utf-8?B?MUs3Y2w0VkgrZlIxMDIrSFlTc2swc09kRlBXOVU3aVI5WE1VWEszZG0zeFhx?=
 =?utf-8?B?eVArUTB0MVEvT1kyUFJ4RkVSa1Ivd0taa0V5enVGVU4zQjh0R2tMQVFUS2Yz?=
 =?utf-8?B?WWpNRWxMZEx6Qm5CNzlKOEJtSlRqR0xoQ2tzZ1BHWW9ZaWl3MXo1UjBMeDlj?=
 =?utf-8?B?Mzl6SDAyL3R2cU9XdEEyVmt3T3Rpd05FbzlBbnVEVWREcUVFS2tQOHJlNllC?=
 =?utf-8?B?MWpZcCtBSEpyQmNxWlNwdldKdHc1Vlg1U2lSMzc5a0J6SWduN2U1ZFRRSHlD?=
 =?utf-8?B?M214aGlURXIvWVlPUG94Z2ZhV0Rldk1DbWdoL1NvYVhHQmRMQU54R2dDcWM3?=
 =?utf-8?B?aDJwR1A1aWkvdWdyNUZtSEZncVYxVkJaUG1wK1dXdG1RaTB2aU5MRW83MVgy?=
 =?utf-8?B?bXlFRkhKalY4c0NHM2F1dkVvY2ZiUUgxRm5pbDRQZTlXVk5XUmFZMlJLU1lD?=
 =?utf-8?B?Zm5YUnB0dW85MWVlcHJBc0hDa2kwVXpockgvcUN6eXhsU05DcEp6enRuMjc4?=
 =?utf-8?B?NmR1UTdYTHVWUWR4UmtRK2h1MjVIWVptNkJaRXI3b1hWaEVvY3J6UmhFb1ls?=
 =?utf-8?B?OHJvOThucUJSM0tVZUNYdGxLbm4zbHpEbTJaVGJNTHpKZ3FFZ3ViR0htWHFM?=
 =?utf-8?B?T2lBRTM2TnJER0JEcWNkUUoyU241ODgvMGt1MVZOTUF4U2U0L0lOMmF0RVU1?=
 =?utf-8?B?b2VFc213YW9QWUFJTjRtU1ZVaFQ2ajJjUXIwMHZEOU0xQjhpeVZpeVhueEZH?=
 =?utf-8?B?ZjJURTNrSzRPY0NYelJNSnBPdWFOKzZJWG5sYk1tTzVPVWtTanEvdGxQcmFN?=
 =?utf-8?B?Ym9jQk45VVJzMWdvUnB2K2VFOVg1Q29uV3ZkMzNCNkpPV0dNOTlXaUFMRE1E?=
 =?utf-8?B?V3VSbHlUZy9BdmxYU0UvbEwwNjFKdDJVYXllTnYxaktrbUpCSHBNRGVvWkRo?=
 =?utf-8?B?VjNXUTA5cXIycFpYNVUzcXVtUmJrRW9vTEhaMm55R2VUK2F2VjBXMDBYRUNk?=
 =?utf-8?B?QTN4R2dQUkN4MnY2dU5wOXBWOWdPSDRkL3dLemRBOGtEcUw3aWk5NUdDNVBW?=
 =?utf-8?B?RjJ3ajZXbXFoU0IwNmNwR1dCZStWWUYzNEpQM3o5MU45aHVkQXVhVXFMQTVo?=
 =?utf-8?B?N012cUZDaVQyWXZiK1d1ZlZvVFJSWXV4ZTFPYXZNWjZxZmJBTEFNQlc2ZmRz?=
 =?utf-8?B?Y3F6TUpaNXZZampVZzdXTUE5TVVqb0pyVGw2ejJhY0RXVDFFMktMSlo1eUQx?=
 =?utf-8?B?Sk1uV1owTDBLUjRSVHBMSS9qVzk5Q3U3OEJjcGJrYVdyb241YjdLV3ZSc0Za?=
 =?utf-8?B?b1J2eFE4ZmllaXpsbStoczgzTjBWOEYwbDNNNEJzTXlKTktPM2xyeEVWV0lR?=
 =?utf-8?B?R3NQenE1UlBKYVJVc3J3L3RMUitwR0xEVis1K21vRmRnakRBRjRDaVF5YTJ4?=
 =?utf-8?B?anNERGZYZHIyZUhRSzZId1ZYbk9pWjdEdDFFeWZuRzVkUTIvQTk0bEt3YTJh?=
 =?utf-8?B?eWo2Y1h6UXRmZnRjR3dKUDUwYUVTSVJWaytYcVMvd1hyd3QzMVJKRFROK29t?=
 =?utf-8?B?RXpQUWxEWlJ0ZnNzTEtrTTJmMml2dW5QWVNGc0wrM3dqNlNKMDRMaHNrazZy?=
 =?utf-8?B?TXlFdjU0QVhRSExZODZFa2x2cVl3blJreXlKeVcvRVA3ODNQSnhIMENHRTJV?=
 =?utf-8?B?c3FwdDljMXNPaDJKVzRHNHFlcHFMZFQ5N2lzZWtjL2RFU2pIY0IvODltSGNx?=
 =?utf-8?B?eEIyNkh1c1dSdUMxaEJWblQzNExhU3pJMTlDd082TWYvMG1xNUJuR05RVXA0?=
 =?utf-8?B?d1l2U2lMT0h6QWJpcFFYcnRFcnVZQnozS290S1lWeklLbzFCWXpZbkdpZ2pK?=
 =?utf-8?Q?cfErC6kPUt6cWexaPflHFS1bV?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9b60dec-b07a-49a8-8836-08dbcf4559e7
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2023 19:14:57.3464 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iToHfTbiCZZu3wLZJGIS/ROYa6egni01LfsE/GtY4MGt82ss5kAT4GKjXDPTuYPVOOuQ80f/xg5gI+v9BYJ+pA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7797
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697570102; x=1729106102;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GwQZwZUkeAQbbLjiPEYgszjdaN+qfPlk7yFGrJc0X+8=;
 b=fpUP+NK46oSYa2ab2iQmnPMZyJfWab3CiZodiWEP49NUwGVW8HUsP/3P
 hw9k+5xMSqxErNBfJGVKpzEk2mBftU5eK2BwkzvIpKPyYAiNJxK1jHA4z
 fZhuxcwHZcIjS9Sd/xnk3wmH8stvZW5UM1dnSgXkpaZTkvwHEKPsfsEaN
 u3FSN5h4PGJEHK0D9jLayAUqnXfdI5eA3F+d3Ti8Dw4ubkAUEpKX1bAJA
 VVAiUAnMsXvBlzBPuJWZSavMF4vWdHQXfEIkaJNF1tRukFTMTgZmZvnsU
 GivvFbsp7JgcP7WZe0rrFqh94+Ya+APJOT5dI0f4krNjNKyVCl2DdhQZl
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fpUP+NK4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
 pabeni@redhat.com, Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyMDIzLTEwLTE3IDEyOjQyLCBBbGV4YW5kZXIgRHV5Y2sgd3JvdGU6Cj4gT24gTW9uLCBP
Y3QgMTYsIDIwMjMgYXQgNTowOOKAr1BNIEFobWVkIFpha2kgPGFobWVkLnpha2lAaW50ZWwuY29t
PiB3cm90ZToKPj4KPj4KPj4KPj4gT24gMjAyMy0xMC0xNiAxNzozMCwgSmFrdWIgS2ljaW5za2kg
d3JvdGU6Cj4+PiBPbiBNb24sIDE2IE9jdCAyMDIzIDE1OjU1OjIxIC0wNzAwIEFsZXhhbmRlciBE
dXljayB3cm90ZToKPj4+PiBJdCB3b3VsZCBtYWtlIG1vcmUgc2Vuc2UgdG8ganVzdCBhZGQgaXQg
YXMgYSB2YXJpYW50IGhhc2ggZnVuY3Rpb24gb2YKPj4+PiB0b2VwbGl0ei4gSWYgeW91IGRpZCBp
dCByaWdodCB5b3UgY291bGQgcHJvYmFibHkgbWFrZSB0aGUgZm9ybWF0dGluZwo+Pj4+IHByZXR0
eSwgc29tZXRoaW5nIGxpa2U6Cj4+Pj4gUlNTIGhhc2ggZnVuY3Rpb246Cj4+Pj4gICAgICAgdG9l
cGxpdHo6IG9uCj4+Pj4gICAgICAgICAgIHN5bW1ldHJpYyB4b3I6IG9uCj4+Pj4gICAgICAgeG9y
OiBvZmYKPj4+PiAgICAgICBjcmMzMjogb2ZmCj4+Pj4KPj4+PiBJdCBkb2Vzbid0IG1ha2Ugc2Vu
c2UgdG8gcGxhY2UgaXQgaW4gdGhlIGlucHV0IGZsYWdzIGFuZCB3aWxsIGp1c3QKPj4+PiBjYXVz
ZSBxdWljayBjb25nZXN0aW9uIGFzIHRoaW5ncyBnZXQgYWRkZWQgdGhlcmUuIFRoaXMgaXMgYW4g
YWxnb3JpdGhtCj4+Pj4gY2hhbmdlIHNvIGl0IG1ha2VzIG1vcmUgc2Vuc2UgdG8gcGxhY2UgaXQg
dGhlcmUuCj4+Pgo+Pj4gQWxnbyBpcyBhbHNvIGEgYml0IGNvbmZ1c2luZywgaXQncyBtb3JlIGxp
a2Uga2V5IHByZS1wcm9jZXNzaW5nPwo+Pj4gVGhlcmUncyBub3RoaW5nIHRvZXBsaXR6IGFib3V0
IHhvcmluZyBpbnB1dCBmaWVsZHMuIFdvcmtzIGFzIHdlbGwKPj4+IGZvciBDUkMzMi4uIG9yIFhP
Ui4KPj4+Cj4+PiBXZSBjYW4gdXNlIG9uZSBvZiB0aGUgcmVzZXJ2ZWQgZmllbGRzIG9mIHN0cnVj
dCBldGh0b29sX3J4ZmggdG8gY2FycnkKPj4+IHRoaXMgZXh0ZW5zaW9uLiBJIHRoaW5rIEkgYXNr
ZWQgZm9yIHRoaXMgYXQgc29tZSBwb2ludCwgYnV0IHRoZXJlJ3MKPj4+IG9ubHkgc28gbXVjaCBy
ZXBlYXRlZCBmZWVkYmFjayBvbmUgY2FuIHNlbmQgaW4gYSBkYXkgOigKPj4KPj4gU29ycnkgeW91
IGZlbHQgdGhhdC4gSSB0b29rIHlvdSBjb21tZW50IFsxXToKPj4KPj4gIlVzaW5nIGhhc2hpbmcg
YWxnbyBmb3IgY29uZmlndXJpbmcgZmllbGRzIGZlZWxzIGxpa2UgYSBkaXJ0eSBoYWNrIi4KPj4K
Pj4gVG8gbWVhbiB0aGF0IHRoZSB3ZSBzaG91bGQgbm90IHVzZSB0aGUgaGZ1bmMgQVBJICgiZXRo
dG9vbF9yeGZoIikuIFRoaXMKPj4gaXMgd2h5IGluIHRoZSBuZXcgc2VyaWVzIEkgY2hvc2UgdG8g
Y29uZmlndXJlIHRoZSBSU1MgZmllbGRzLiBUaGlzIGFsc28KPj4gcHJvdmlkZXMgdGhlIHVzZXIg
d2l0aCBtb3JlIGNvbnRyb2wgYW5kIGJldHRlciBncmFudWxhcml0eSBvbiB3aGljaAo+PiBmbG93
LXR5cGVzIHRvIGJlIHN5bW1ldHJpYywgYW5kIHdoaWNoIHByb3RvY29scyAoTDMgYW5kL29yIEw0
KSB0byB1c2UuIEkKPj4gaGF2ZSBubyBpZGVhIGhvdyB0byBkbyBhbnkgb2YgdGhlc2UgdmlhIGhm
dW5jL2V0aHRvb2xfcnhmaCBBUEkgc28gaXQKPj4gc2VlbWVkIGEgYmV0dGVyIGFwcHJvYWNoLgo+
Pgo+PiBJIHNlZSB5b3UgbWFya2VkIHRoZSBzZXJpZXMgYXMgIkNoYW5nZXMgUmVxdWVzdGVkIi4g
SSB3aWxsIHNlbmQgYSBuZXcKPj4gdmVyc2lvbiB0b21vcnJvdyBhbmQgbW92ZSB0aGUgc2FuaXR5
IGNoZWNrcyBpbnNpZGUgaWNlX2V0aHRvb2wuCj4+Cj4+Cj4+IFsxXTogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbmV0ZGV2LzIwMjMwODI0MTc0MzM2LjZmYjgwMWQ1QGtlcm5lbC5vcmcvCj4gCj4g
U28gb25lIHF1ZXN0aW9uIEkgd291bGQgaGF2ZSBpcyB3aGF0IGhhcHBlbnMgaWYgeW91IHdlcmUg
dG8gaWdub3JlIHRoZQo+IGV4dHJhIGNvbmZpZ3VyYXRpb24gdGhhdCBwcmV2ZW50cyBwZW9wbGUg
ZnJvbSBkaXNhYmxpbmcgZWl0aGVyIHNvdXJjZQo+IG9yIGRlc3RpbmF0aW9uIGZyb20gdGhlIGlu
cHV0PyBEb2VzIGl0IGFjdHVhbGx5IGhhdmUgdG8gYmUgaGFyZAo+IHJlc3RyaWN0ZWQgb3IgZG8g
eW91IGVuZCB1cCB3aXRoIHRoZSBoYXJkd2FyZSBnZW5lcmF0aW5nIG5vbi1zeW1tZXRyaWMKPiBo
YXNoZXMgYmVjYXVzZSBpdCBpc24ndCBkb2luZyB0aGUgWE9SIHdpdGggYm90aCBzb3VyY2UgYW5k
IGRlc3RpbmF0aW9uCj4gZmllbGRzPwoKRG8geW91IG1lYW4gYWxsb3cgdGhlIHVzZXIgdG8gdXNl
IGFueSBSU1MgZmllbGRzIGFzIGlucHV0PyBXaGF0IGRvIHdlIApnYWluIGJ5IHRoYXQ/CgpUaGUg
aGFyZHdhcmUncyBUT0VQTElUWiBhbmQgU1lNX1RPRVBMSVRaIGZ1bmN0aW9ucyBhcmUgdGhlIHNh
bWUgZXhjZXB0IApmb3IgdGhlIFhPUmluZyBzdGVwLiBXaGF0IGdldHMgWE9SJ2QgbmVlZHMgdG8g
YmUgcHJvZ3JhbW1lZCAoUGF0Y2ggNTogCmljZV9yc3NfY29uZmlnX3hvcigpKSBhbmQgd2UgYXJl
IHByb2dyYW1taW5nIHRoZSBoYXJkd2FyZSB0byBYT1IgdGhlIHNyYyAKYW5kIGRzdCBmaWVsZHMg
dG8gZ2V0IHRoaXMgaGFzaCBzeW1tZXRyeS4gSWYgYW55IGZpZWxkcyB0aGF0IGFyZSBub3QgCnN3
YXBwZWQgaW4gdGhlIG90aGVyIGZsb3cgZGlyZWN0aW9uIG9yIGlmIChmb3IgZXhhbXBsZSkgb25s
eSBzcmMgaXMgCnVzZWQsIHRoZSBoYXJkd2FyZSB3aWxsIGdlbmVyYXRlIG5vbi1zeW1tZXRyaWMg
aGFzaC4KCgo+IAo+IE15IHRob3VnaHQgd291bGQgYmUgdG8gcG9zc2libHkganVzdCBsb29rIGF0
IHJlZHVjaW5nIHlvdXIgbWVzc2FnaW5nCj4gdG8gYSB3YXJuaW5nIGZyb20gdGhlIGRyaXZlciBp
ZiB0aGUgaW5wdXRzIGFyZSBub3Qgc3ltbWV0cmljLCBidXQgeW91Cj4gaGF2ZSB5b3VyIHN5bW1l
dHJpYyB4b3IgaGFzaCBmdW5jdGlvbiBlbmFibGVkLgoKV2l0aCB0aGUgcmVzdHJpY3Rpb25zICh0
byBiZSBtb3ZlZCBpbnRvIGljZV9ldGh0b29sKSwgdGhlIHVzZXIgaXMgdW5hYmxlIAp0byB1c2Ug
bm9uLXN5bW1ldHJpYyBpbnB1dHMuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
