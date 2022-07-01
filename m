Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D505636D2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Jul 2022 17:19:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3250242463;
	Fri,  1 Jul 2022 15:19:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3250242463
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656688787;
	bh=d/H7nAk/Ut6tMUTZdqukihku7VwLV4sio/2KBlvXL7g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3LUyRfyVxcjOanPKc4i30oz3lxIJHCDtvU/5ypTNFP2KtZVtegNyk5h21filEJAzo
	 aES21+eZRjVNdl1lffrqOFPwfok0ZPtDU7lpP9XF58KDM8E9kFZ4UQq/g/SazigMqk
	 F+JsyaSh04Hp+DrTQL7Ey1HDvXuCXoklDEqYba5RvCAuGyRY3qj/1k0k5GcHi1JDCx
	 lq7BnPCvJvOlG0Vi2GXk8iZoFb1jPdmkOihyPCIwaPHfghzRpmBAjvdF/BdeqlWYNG
	 QMUDoTMkEvyxHY0Sg8BeVz6wVvX49B2/6JL/Q8CedsT+trUILvG0bNaZBucSj+6CKc
	 +LivzAe/9xtzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uJFrp1XjAvia; Fri,  1 Jul 2022 15:19:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 254F541A25;
	Fri,  1 Jul 2022 15:19:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 254F541A25
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 11AE61BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:19:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC380405B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:19:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC380405B5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ziYD6IUbIQa for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Jul 2022 15:19:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D69F440445
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D69F440445
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:19:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10395"; a="283406199"
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="283406199"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 08:19:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="659460892"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 01 Jul 2022 08:19:37 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Jul 2022 08:19:37 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Jul 2022 08:19:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 1 Jul 2022 08:19:37 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 1 Jul 2022 08:19:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bK9kYx1YeP8P7686qTedVacX7yxH/LcNDyuSkoSZUCmpu8/R6hLJJQ6YJvrDewhyv+iPm+KKw2vrkWczhReZO6FkjIkHacxRyGJYtAsxopxxuLpx6pTklekpiHTr2aFV8BEFUGAd2b564vXb0NuL0Vucy7Yswf0Qz3VVwe+cv8qyw3jxZxzcs0t+Fz3VFCx9/j7Esj42NSKUmn+9kvPsXlbW6kjvwwxsTtFLsucOoTSPNWLNOwH/hGpSokpWptt6/30K1klDIWDcmJD3X7c4ISd0W8YV0Dq7GdIHhj9Pm5TXxBYco0M75vrK388cAW4G1SH9rweJSARYP6aJUugdHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tSCjvCNT38rspWxUS3d791c0TnMB+F6akri4H2zJbq8=;
 b=QUwqeAnblQHqNoPJ74VzU+dnEvO75uaybBM3RJ/PA8dPOEY3mhPOmXuwBsZznlQ/XzlEmOGXpINnBKBxC9F9zI6zBcihfjyf6kE9AoM9bM+C+h06qgCzJVbQi4bwrWvoY3j7a1drdVOuN6cd7EF6OnRv8IbWOWSfoNw3oRUf92Csg3irtnGVmqf5woYO5cLD4wZqPSf5oArilC9YxHWHv+vawgZH9hgolMuX5bRijMmiY/zWOX61CzDgsSLO4QWY130TH4qz8vtydks31yXDQzQU6+z5RwsPO1pLYnUC910Twripk7FlHZs561JjoBPJ+QcqL0TfiUj6/JDtHYfvJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5611.namprd11.prod.outlook.com (2603:10b6:510:ed::9)
 by BN7PR11MB2867.namprd11.prod.outlook.com (2603:10b6:406:b9::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Fri, 1 Jul
 2022 15:19:34 +0000
Received: from PH0PR11MB5611.namprd11.prod.outlook.com
 ([fe80::5cff:5bdf:9dcc:e393]) by PH0PR11MB5611.namprd11.prod.outlook.com
 ([fe80::5cff:5bdf:9dcc:e393%7]) with mapi id 15.20.5395.014; Fri, 1 Jul 2022
 15:19:34 +0000
Message-ID: <826859dd-b9ea-5112-c7af-215a4d9c72d5@intel.com>
Date: Fri, 1 Jul 2022 17:19:28 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220624102110.1008410-1-michal.wilczynski@intel.com>
 <20220624102110.1008410-3-michal.wilczynski@intel.com>
 <c7139d4f-a103-0c80-a319-42b53a803a5f@intel.com>
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
In-Reply-To: <c7139d4f-a103-0c80-a319-42b53a803a5f@intel.com>
X-ClientProxiedBy: FR3P281CA0023.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::7) To PH0PR11MB5611.namprd11.prod.outlook.com
 (2603:10b6:510:ed::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aafb5376-c86b-460a-4fc2-08da5b751ac2
X-MS-TrafficTypeDiagnostic: BN7PR11MB2867:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u/Rdiybym+St3DVoMsxutRHL94zTpEkSqiD6ndtxj+aLLKpVwav8rrhZTt5M0nyaQWSZLFb2Y3Avu0z8K79Jg3sTkfi26HjmmWo2Vw9Jv8wdHaGlsEJ8HBY0+UqAST/l1Izq8lq/Gnt0E5IEKHPgNYPDKU5f9PCTwdHkpu/HkPoxToiAtGwMbeXYB4LjnWdgDoYkmigzUNlfd6EUsIHQWcX+yHGw19CYcD9mszI6TdMABFPOERuF6nIpskpyVyO+8an8UDynUJTdrOmBUDriTZ6BORwYzEClexA8+v+XC6qFave3PSSC4CLH8cQkigdU/+HcdlJoygZcB12Np6SzQrBtmOmf7nHLAXMK6yKxbaA+IznVO521h+di3/28T5BAwrWXJxCooIx/Gk4/vxMySweRb/tpgQ6uYj0zG8Gd1fF3eHqh235fGRJNYJzTKaDaXgJ1p31wQIBgjnVkkrcnq82jIbA4+sUhayehdkzWf1Y+b8q+dgIh2dQcTM7dlhOizwJeIK2vXZzAv1HH69ScyQUI8003e3DfeNZvEeyEC0BmBT/w+CleSWCJISyAFmsduw9IQgA7DWwODQSmsvVp6Tsfz+fXrtVwkQMqL8VPZixHoeykdADYp2/BKYkyAUSx6qjbVTpvEgrXh8Kvra4KnyL/IDQ0o/GBIpM/rhaqbpWdILG/dQyPlPuznqB19Izvsql+X7hY7V0VD2lntqDHqNXjcUmBwPEP9rdxKzj7tY+P9APfbxyp/gH7CvRE9BjU91CYffne2LSaG5HE6pc5R1HIroBncJrLjPafW2NEZHGBm/7J4oqjuYTEy6NqIvS6TEjhUtpm1Idv9okRmuKYZz4q9g+ktCwWUKfN+gan8CA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5611.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(346002)(396003)(39860400002)(376002)(136003)(31686004)(38100700002)(31696002)(82960400001)(66476007)(66556008)(8676002)(316002)(66946007)(2906002)(6506007)(478600001)(6512007)(186003)(53546011)(41300700001)(6486002)(86362001)(2616005)(6666004)(26005)(36756003)(8936002)(83380400001)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWlkTnY4UGtLZ1l5aVh3Q3ZCMzRKOUsxc2hEMHVzdndURkpTTnlSSEo1bHRJ?=
 =?utf-8?B?VFJEOGZqN0hKV3JFY0dXQWJHRTJNamlqM0NIT2dEYWRaQ3ovOVRJUkROSExq?=
 =?utf-8?B?Sy9PbDBWQVExdnY4Tyt6b01sSGRlbVIzVXEzcDNvamtuTTN5cjJrM3RYd0U5?=
 =?utf-8?B?NWhxNXZ0dXhsRkh3akdheXZOUUF0MUtKSCthZmtJSEhtUFFnVWx4YVcrWWNB?=
 =?utf-8?B?MnJScXpNRTc3Q0tkN25TYkF6MVdnNUZadEJBL1NLRndDbWk5eTVWaTByU2ZY?=
 =?utf-8?B?TUdJVmM1OU42bjNvRVZkRFpKNGRLNHdLMFpEL2pQa2JPbG81d01VUEhDclRy?=
 =?utf-8?B?U21jYWJ4SnkwaGlzcFpza05vSkZaSFg0dkNWN1ZiMU9qd1B5OHRMQUd3djNW?=
 =?utf-8?B?NWcwTTIzaHJDRjdKZ1graCt0SExvbjhlaFZtbU9sR1N6ZGNlK2hLcVlsbkNS?=
 =?utf-8?B?YllrM2xCOUFsZDB6TmRrdmZuTmJYUUNVb2ppU0tkRkErSTBnWmFuemdabHI2?=
 =?utf-8?B?R3AzRitYTE5Jc0M5OVVRMTR2YVNUc25iSVFXWDU1YWo4NjY3R1VUTHZqamFW?=
 =?utf-8?B?UW9ReUNkZmRYQWFwMUJUMUZFNllidU1URkNnWXJLTFEzVHc4ZXBNazdCVG9k?=
 =?utf-8?B?cTNVMHBjM3hOVS9NdGZGK1Jvc3BNK3VzR1VQSDFYandOeWhJNzNBS250T3po?=
 =?utf-8?B?dXdQVEFXbXp2NUNDbG5yQW5JUE5NcXV5VXJvdFY0bXdDWVZNYjNHTFhjcEEx?=
 =?utf-8?B?anY1RG9GRkZreDZVYW80c3grOEE1TjkwRHdaQUlNaXdOT25rWjZONHJzamhi?=
 =?utf-8?B?ZlU3VTVpcGdRS0lyWHBwLzVQSGY3TkdOWTIvRk1NM3FaQmJrR3dKUkpJRkhj?=
 =?utf-8?B?ajBIMS81V3E2Q3hMSlFudzZOb0xXa05vbk9LWlpjcEFMeVVqTFY5aXQ1eGVR?=
 =?utf-8?B?bGtjMCtwQXRZSXNhN2xNVU9tNkh5Wm1pTGNLajN4R0JhejhDU2d3TlVXejl4?=
 =?utf-8?B?SS9xeEozOXZoQk5UaThISldialQ1bXVMNlZMcnJIdEhwdlNtclFEY3pkbGp5?=
 =?utf-8?B?bU40Q09COGJlMTJjTjZwSXM0WHM5TU1PZFp0QUhXV1VHSEwyUmJmWEtZNjVp?=
 =?utf-8?B?UVFxME1OK3dWc2x3ZFdYb3pLZm1vRS9ROTJqQlRDSnE4MDBhck15K005T1VZ?=
 =?utf-8?B?Q0xtZ0pVNTlzMFM3V1YzWlhhMjJ4enRjaUVuYU5wODJINkduTHRTZ2dRU3U5?=
 =?utf-8?B?VlZmNXRmdzhnRERXaEhXV1hvK2lqWUZRZGR4YXdsbmhvM3RQNUJuYmhrSFhB?=
 =?utf-8?B?NjNlUEFtNnViNmZyaUViWWc1a0NsTllIbm1OZWNLVEFNYURPOC8rOTZDTnJY?=
 =?utf-8?B?TTlzU0MrSHF0cWFNK09mWTRKaWIvdFVheFhBanptMjJCN0o1U3c4WWF1UXd6?=
 =?utf-8?B?WmpvNU9YS3ppU1JQbG1rYzhBYkVPSk9jaW1yT2VGTlBDaTlsbzJaaHNKK1ZH?=
 =?utf-8?B?ZFZZVThycSs0YnBpbHg4VUhicTN0MVJCM092M29RVGphTlpONTJSNVZpVTJr?=
 =?utf-8?B?RGVqUFptTzl0NDkyZTBPa0xObDBJbHRUR29zcjZsMGhnY3NJMDhkRmltbUYv?=
 =?utf-8?B?M2psanlIdFFMcyt3dU41S2J5UnZRelloNGZGbFJjcVhCWGhQY1JsUit6VGF1?=
 =?utf-8?B?ZEhDL2swU0NyZDlJek5Odi9KdXlpVE91NkpqSDNQM2NzQkU3VWFvMHdub1pq?=
 =?utf-8?B?dmtVVlQ5NkhMamtvYzN6eTkwNGViYVNNVk9lQWJLb1p5Zk9pNmFDWXZOSnVC?=
 =?utf-8?B?WHIrLy9sM2N3bjhQbzRUR1dpbklsbmFDa0R3MFMvblhibVlMRFFvWmNOQTdS?=
 =?utf-8?B?b2JrVkMvUDlpQzBMTzNsS1hXUk9CdzFpR2Qvdy9Zd3I1Ujc1MTBmY2VZZkIv?=
 =?utf-8?B?SXJGM1VHS21UbXBJMGszRmtTWC9UOVQzTHN4YXdkNzlNalNsR1pRWDdHMXUz?=
 =?utf-8?B?SjdtRDd6MFRwWklYZVR3R1RkVEpzTEZWNXp3UHl2eVRqOVk4ZWxvQmdMWXNH?=
 =?utf-8?B?VFNCNTY4Y0IwazRxRFdmbFJMenRNNjJKUHpiMkhHYjZ5SE1HTFBuUjRLQmJq?=
 =?utf-8?B?Rkc0NkR5VnJQNnJvVGhxKzhHQ1ZnaHhVNWtpMGRzQU1mcWxWYnlkb2ZKM3hH?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aafb5376-c86b-460a-4fc2-08da5b751ac2
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5611.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2022 15:19:34.6776 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SxIOV0nMjWO/NH3zqnvCC3Rt0xwFUhpYL/9pwr9TDitoox7yowqy9RECH1+hMxTd6r0lnX5tmklHJLX4uY3BNahwQwaxnGtVwo4TwPSPUQQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2867
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656688778; x=1688224778;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cHmNcQeYVUMeZj1XihQd849IHWjVofC2BDf2M0lYic0=;
 b=hF6TQAMIojSDRkdpIKpwuGex84K5a6lXrBWV8bONAfaQeqWhzq7WO5sE
 wxPFGr+UFKzJYfWVlv/yERL5wN81vqQYEXVbzFacL344X9+aiTkIOHXZp
 7ggAZAVzIsxJif6ZSAAkgpdrh4ggd9AbGP5nZokzhNm1cNMWpiOWmCWGL
 IfiiWnRWULYy3ngPrOoIfjnEJr/Pr8shqO2/BQy/tAA3L6MAYYViunkYv
 Dy9JFI+FHky9viNRiEocUjFKOO+fjy0qkCj+38HC6C0VtuE8JBsff8a2Z
 t+mQYhKlyuGQygj17uWwS3KlgyT6KL1n0YslvnVPaEApXRtIFXuFaXWx5
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hF6TQAMI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/2] ice: Enable switching
 default tx scheduler topology
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhhbmtzIGZvciB5b3VyIHJldmlldywKCkJhc2VkIG9uIHlvdXIgY29tbWVudHMgcG9zdGVkIHYz
LgoKT24gNi8yOS8yMDIyIDEyOjI3IEFNLCBUb255IE5ndXllbiB3cm90ZToKPgo+Cj4gT24gNi8y
NC8yMDIyIDM6MjEgQU0sIE1pY2hhbCBXaWxjenluc2tpIHdyb3RlOgo+PiBJbnRyb2R1Y2Ugc3Vw
cG9ydCBmb3IgdHggc2NoZWR1bGVyIHRvcG9sb2d5IGNoYW5nZSwgYmFzZWQgb24KPj4gdXNlciBz
ZWxlY3Rpb24sIGZyb20gZGVmYXVsdCA5LWxheWVyIHRvIDUtbGF5ZXIuCj4+IEluIG9yZGVyIGZv
ciBzd2l0Y2ggdG8gYmUgc3VjY2Vzc2Z1bCB0aGVyZSBpcyBhIG5ldyBOVk0KPj4gYW5kIEREUCBw
YWNrYWdlIHJlcXVpcmVkLgo+PiBUaGlzIGNvbW1pdCBlbmFibGVzIDUtbGF5ZXIgdG9wb2xvZ3kg
aW4gaW5pdCBwYXRoIG9mCj4+IHRoZSBkcml2ZXIsIHNvIGJlZm9yZSBpY2UgZHJpdmVyIGxvYWQs
IHRoZSB1c2VyIHNlbGVjdGlvbgo+PiBzaG91bGQgYmUgY2hhbmdlZCBpbiBOVk0gdXNpbmcgc29t
ZSBleHRlcm5hbCB0b29scy4KPj4KPj4gVGl0bGU6IEVuYWJsZSBzd2l0Y2hpbmcgZGVmYXVsdCB0
eCBzY2hlZHVsZXIgdG9wb2xvZ3kKPj4gQ2hhbmdlLXR5cGU6IEltcGxlbWVudGF0aW9uQ2hhbmdl
Cj4+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXaWxjenluc2tpIDxtaWNoYWwud2lsY3p5bnNraUBp
bnRlbC5jb20+Cj4+IC0tLQo+Cj4gLi4uCj4KPj4gKy8qKgo+PiArICogaWNlX2luaXRfdHhfdG9w
b2xvZ3kgLSBwZXJmb3JtcyBUeCB0b3BvbG9neSBpbml0aWFsaXphdGlvbgo+PiArICogQGh3OiBw
b2ludGVyIHRvIHRoZSBoYXJkd2FyZSBzdHJ1Y3R1cmUKPj4gKyAqIEBmaXJtd2FyZTogcG9pbnRl
ciB0byBmaXJtd2FyZSBzdHJ1Y3R1cmUKPj4gKyAqLwo+PiArc3RhdGljIGludCBpY2VfaW5pdF90
eF90b3BvbG9neShzdHJ1Y3QgaWNlX2h3ICpodywKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjb25zdCBzdHJ1Y3QgZmlybXdhcmUgKmZpcm13YXJlKQo+PiArewo+PiArwqDCoMKg
IHU4IG51bV90eF9zY2hlZF9sYXllcnMgPSBody0+bnVtX3R4X3NjaGVkX2xheWVyczsKPj4gK8Kg
wqDCoCBzdHJ1Y3QgaWNlX3BmICpwZiA9IGh3LT5iYWNrOwo+PiArwqDCoMKgIHN0cnVjdCBkZXZp
Y2UgKmRldjsKPj4gK8KgwqDCoCB1OCAqYnVmX2NvcHk7Cj4+ICvCoMKgwqAgaW50IGVyciA9IDA7
Cj4KPiBUaGlzIGluaXRpYWxpemF0aW9uIGlzIHVubmVjZXNzYXJ5Lgo+Cj4+ICsKPj4gK8KgwqDC
oCBkZXYgPSBpY2VfcGZfdG9fZGV2KHBmKTsKPj4gK8KgwqDCoCAvKiBpY2VfY2ZnX3R4X3RvcG8g
YnVmIGFyZ3VtZW50IGlzIG5vdCBhIGNvbnN0YW50LAo+PiArwqDCoMKgwqAgKiBzbyB3ZSBoYXZl
IHRvIG1ha2UgYSBjb3B5Cj4+ICvCoMKgwqDCoCAqLwo+PiArwqDCoMKgIGJ1Zl9jb3B5ID0gZGV2
bV9rbWVtZHVwKGljZV9od190b19kZXYoaHcpLCBmaXJtd2FyZS0+ZGF0YSwKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmaXJtd2FyZS0+c2l6ZSwgR0ZQX0tFUk5FTCk7Cj4KPiBJ
dCBsb29rcyBsaWtlIHRoZSBkZXZtIHZhcmlhbnQgaXMgbm90IG5lZWRlZAo+Cj4+ICsKPj4gK8Kg
wqDCoCBlcnIgPSBpY2VfY2ZnX3R4X3RvcG8oaHcsIGJ1Zl9jb3B5LCBmaXJtd2FyZS0+c2l6ZSk7
Cj4+ICvCoMKgwqAgaWYgKCFlcnIpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmIChody0+bnVtX3R4
X3NjaGVkX2xheWVycyA+IG51bV90eF9zY2hlZF9sYXllcnMpCj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGRldl9pbmZvKGRldiwgIlRyYW5zbWl0IGJhbGFuY2luZyBmZWF0dXJlIGRpc2FibGVk
XG4iKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGVsc2UKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZGV2X2luZm8oZGV2LCAiVHJhbnNtaXQgYmFsYW5jaW5nIGZlYXR1cmUgZW5hYmxlZFxuIik7Cj4+
ICvCoMKgwqDCoMKgwqDCoCAvKiBpZiB0aGVyZSB3YXMgYSBjaGFuZ2UgaW4gdG9wb2xvZ3kgaWNl
X2NmZ190eF90b3BvIHRyaWdnZXJlZAo+PiArwqDCoMKgwqDCoMKgwqDCoCAqIGEgQ09SRVIgYW5k
IHdlIG5lZWQgdG8gcmUtaW5pdCBodwo+PiArwqDCoMKgwqDCoMKgwqDCoCAqLwo+PiArwqDCoMKg
wqDCoMKgwqAgaWNlX2RlaW5pdF9odyhodyk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBlcnIgPSBpY2Vf
aW5pdF9odyhodyk7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIC8qIGluIHRoaXMgY2FzZSB3ZSdy
ZSBub3QgYWxsb3dpbmcgc2FmZSBtb2RlICovCj4+ICvCoMKgwqDCoMKgwqDCoCBkZXZtX2tmcmVl
KGljZV9od190b19kZXYoaHcpLCBidWZfY29weSk7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIHJl
dHVybiBlcnI7Cj4+ICsKPj4gK8KgwqDCoCB9IGVsc2UgaWYgKGVyciA9PSAtRUlPKSB7Cj4+ICvC
oMKgwqDCoMKgwqDCoCBkZXZfaW5mbyhkZXYsICJERFAgcGFja2FnZSBkb2VzIG5vdCBzdXBwb3J0
IHRyYW5zbWl0IAo+PiBiYWxhbmNpbmcgZmVhdHVyZSAtIHBsZWFzZSB1cGRhdGUgdG8gdGhlIGxh
dGVzdCBERFAgcGFja2FnZSBhbmQgdHJ5IAo+PiBhZ2FpblxuIik7Cj4+IMKgwqDCoMKgwqAgfQo+
PiDCoCAtwqDCoMKgIC8qIHJlcXVlc3QgZm9yIGZpcm13YXJlIHdhcyBzdWNjZXNzZnVsLiBEb3du
bG9hZCB0byBkZXZpY2UgKi8KPj4gK8KgwqDCoCBkZXZtX2tmcmVlKGljZV9od190b19kZXYoaHcp
LCBidWZfY29weSk7Cj4+ICsKPj4gK8KgwqDCoCByZXR1cm4gMDsKPj4gK30KPj4gKwo+PiArLyoq
Cj4+ICsgKiBpY2VfaW5pdF9kZHBfY29uZmlnIC0gRERQIHJlbGF0ZWQgY29uZmlndXJhdGlvbgo+
PiArICogQGh3OiBwb2ludGVyIHRvIHRoZSBoYXJkd2FyZSBzdHJ1Y3R1cmUKPj4gKyAqIEBwZjog
cG9pbnRlciB0byBwZiBzdHJ1Y3R1cmUKPj4gKyAqCj4+ICsgKiBUaGlzIGZ1bmN0aW9uIGxvYWRz
IEREUCBmaWxlIGZyb20gdGhlIGRpc2ssIHRoZW4gaW5pdGlhbGl6ZXMgdHgKPj4gKyAqIHRvcG9s
b2d5LiBBdCB0aGUgZW5kIEREUCBwYWNrYWdlIGlzIGxvYWRlZCBvbiB0aGUgY2FyZC4KPj4gKyAq
Lwo+PiArc3RhdGljIGludCBpY2VfaW5pdF9kZHBfY29uZmlnKHN0cnVjdCBpY2VfaHcgKmh3LCBz
dHJ1Y3QgaWNlX3BmICpwZikKPj4gK3sKPj4gK8KgwqDCoCBzdHJ1Y3QgZGV2aWNlICpkZXYgPSBp
Y2VfcGZfdG9fZGV2KHBmKTsKPj4gK8KgwqDCoCBjb25zdCBzdHJ1Y3QgZmlybXdhcmUgKmZpcm13
YXJlID0gTlVMTDsKPj4gK8KgwqDCoCBpbnQgZXJyID0gMDsKPgo+IEluaXRpYWxpemF0aW9uIG5v
dCBuZWVkZWQuCj4KPj4gKwo+PiArwqDCoMKgIGVyciA9IGljZV9yZXF1ZXN0X2Z3KHBmLCAmZmly
bXdhcmUpOwo+PiArwqDCoMKgIGlmIChlcnIpCj4+ICvCoMKgwqAgLyogd2UgY2FuIHN0aWxsIG9w
ZXJhdGUgaW4gc2FmZSBtb2RlIGlmIEREUCBwYWNrYWdlIGxvYWQgZmFpbHMgKi8KPj4gK8KgwqDC
oMKgwqDCoMKgIHJldHVybiAwOwo+PiArCj4+ICvCoMKgwqAgZXJyID0gaWNlX2luaXRfdHhfdG9w
b2xvZ3koaHcsIGZpcm13YXJlKTsKPj4gK8KgwqDCoCBpZiAoZXJyKSB7Cj4+ICvCoMKgwqDCoMKg
wqDCoCBkZXZfZXJyKGRldiwgImljZV9pbml0X2h3IGR1cmluZyBjaGFuZ2Ugb2YgdHggdG9wb2xv
Z3kgCj4+IGZhaWxlZDogJWRcbiIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVycik7Cj4+
ICvCoMKgwqDCoMKgwqDCoCByZWxlYXNlX2Zpcm13YXJlKGZpcm13YXJlKTsKPj4gK8KgwqDCoMKg
wqDCoMKgIHJldHVybiBlcnI7Cj4+ICvCoMKgwqAgfQo+PiArCj4+ICvCoMKgwqAgLyogRG93bmxv
YWQgZmlybXdhcmUgdG8gZGV2aWNlICovCj4+IMKgwqDCoMKgwqAgaWNlX2xvYWRfcGtnKGZpcm13
YXJlLCBwZik7Cj4+IMKgwqDCoMKgwqAgcmVsZWFzZV9maXJtd2FyZShmaXJtd2FyZSk7Cj4+ICsK
Pj4gK8KgwqDCoCByZXR1cm4gMDsKPj4gwqAgfQo+PiDCoCDCoCAvKioKPj4gQEAgLTQ2NDEsOSAr
NDcxMCwxNSBAQCBpY2VfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIGNvbnN0IHN0cnVjdCAK
Pj4gcGNpX2RldmljZV9pZCBfX2Fsd2F5c191bnVzZWQgKmVudCkKPj4gwqAgwqDCoMKgwqDCoCBp
Y2VfaW5pdF9mZWF0dXJlX3N1cHBvcnQocGYpOwo+PiDCoCAtwqDCoMKgIGljZV9yZXF1ZXN0X2Z3
KHBmKTsKPj4gK8KgwqDCoCBlcnIgPSBpY2VfaW5pdF9kZHBfY29uZmlnKGh3LCBwZik7Cj4+ICsK
Pj4gK8KgwqDCoCAvKiBkdXJpbmcgdG9wb2xvZ3kgY2hhbmdlIGljZV9pbml0X2h3IG1heSBmYWls
ICovCj4+ICvCoMKgwqAgaWYgKGVycikgewo+PiArwqDCoMKgwqDCoMKgwqAgZXJyID0gLUVJTzsK
Pj4gK8KgwqDCoMKgwqDCoMKgIGdvdG8gZXJyX2V4aXRfdW5yb2xsOwo+PiArwqDCoMKgIH0KPj4g
wqAgLcKgwqDCoCAvKiBpZiBpY2VfcmVxdWVzdF9mdyBmYWlscywgSUNFX0ZMQUdfQURWX0ZFQVRV
UkVTIGJpdCB3b24ndCBiZQo+PiArwqDCoMKgIC8qIGlmIGljZV9pbml0X2RkcF9jb25maWcgZmFp
bHMsIElDRV9GTEFHX0FEVl9GRUFUVVJFUyBiaXQgd29uJ3QgYmUKPj4gwqDCoMKgwqDCoMKgICog
c2V0IGluIHBmLT5zdGF0ZSwgd2hpY2ggd2lsbCBjYXVzZSBpY2VfaXNfc2FmZV9tb2RlIHRvIHJl
dHVybgo+PiDCoMKgwqDCoMKgwqAgKiB0cnVlCj4+IMKgwqDCoMKgwqDCoCAqLwo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zY2hlZC5jIAo+PiBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc2NoZWQuYwo+PiBpbmRleCA3OTQ3MjIz
NTM2ZTMuLmYxOGE3MTIxY2E1NSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9zY2hlZC5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2Vfc2NoZWQuYwo+PiBAQCAtMTEwMiwxMiArMTEwMiwxMSBAQCBzdGF0aWMgdTggaWNl
X3NjaGVkX2dldF92c2lfbGF5ZXIoc3RydWN0IAo+PiBpY2VfaHcgKmh3KQo+PiDCoMKgwqDCoMKg
wqAgKsKgwqDCoMKgIDUgb3IgbGVzc8KgwqDCoMKgwqDCoCBzd19lbnRyeV9wb2ludF9sYXllcgo+
PiDCoMKgwqDCoMKgwqAgKi8KPj4gwqDCoMKgwqDCoCAvKiBjYWxjdWxhdGUgdGhlIFZTSSBsYXll
ciBiYXNlZCBvbiBudW1iZXIgb2YgbGF5ZXJzLiAqLwo+PiAtwqDCoMKgIGlmIChody0+bnVtX3R4
X3NjaGVkX2xheWVycyA+IElDRV9WU0lfTEFZRVJfT0ZGU0VUICsgMSkgewo+PiAtwqDCoMKgwqDC
oMKgwqAgdTggbGF5ZXIgPSBody0+bnVtX3R4X3NjaGVkX2xheWVycyAtIElDRV9WU0lfTEFZRVJf
T0ZGU0VUOwo+PiAtCj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAobGF5ZXIgPiBody0+c3dfZW50cnlf
cG9pbnRfbGF5ZXIpCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBsYXllcjsKPj4g
LcKgwqDCoCB9Cj4+ICvCoMKgwqAgaWYgKGh3LT5udW1fdHhfc2NoZWRfbGF5ZXJzID09IElDRV9T
Q0hFRF85X0xBWUVSUykKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBody0+bnVtX3R4X3NjaGVk
X2xheWVycyAtIElDRV9WU0lfTEFZRVJfT0ZGU0VUOwo+PiArwqDCoMKgIGVsc2UgaWYgKGh3LT5u
dW1fdHhfc2NoZWRfbGF5ZXJzID09IElDRV9TQ0hFRF81X0xBWUVSUykKPj4gK8KgwqDCoMKgwqDC
oMKgIC8qIHFncm91cCBhbmQgVlNJIGxheWVycyBhcmUgc2FtZSAqLwo+PiArwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIGh3LT5udW1fdHhfc2NoZWRfbGF5ZXJzIC0gSUNFX1FHUlBfTEFZRVJfT0ZGU0VU
Owo+PiDCoMKgwqDCoMKgIHJldHVybiBody0+c3dfZW50cnlfcG9pbnRfbGF5ZXI7Cj4KPiBUaGVz
ZSBjYW4gYWxsIGJlIGlmJ3Mgc2luY2UgdGhleSBhbGwgcmV0dXJuOgo+Cj4gwqDCoMKgwqBpZiAo
aHctPm51bV90eF9zY2hlZF9sYXllcnMgPT0gSUNFX1NDSEVEXzlfTEFZRVJTKQo+IMKgwqDCoMKg
wqDCoMKgIHJldHVybiBody0+bnVtX3R4X3NjaGVkX2xheWVycyAtIElDRV9WU0lfTEFZRVJfT0ZG
U0VUOwo+IMKgwqDCoMKgaWYgKGh3LT5udW1fdHhfc2NoZWRfbGF5ZXJzID09IElDRV9TQ0hFRF81
X0xBWUVSUykKPiDCoMKgwqDCoMKgwqDCoCAvKiBxZ3JvdXAgYW5kIFZTSSBsYXllcnMgYXJlIHNh
bWUgKi8KPiDCoMKgwqDCoMKgwqDCoCByZXR1cm4gaHctPm51bV90eF9zY2hlZF9sYXllcnMgLSBJ
Q0VfUUdSUF9MQVlFUl9PRkZTRVQ7Cj4gwqDCoMKgwqAgcmV0dXJuIGh3LT5zd19lbnRyeV9wb2lu
dF9sYXllcjsKPgo+PiDCoCB9Cj4+IMKgIEBAIC0xMTI0LDEyICsxMTIzLDggQEAgc3RhdGljIHU4
IGljZV9zY2hlZF9nZXRfYWdnX2xheWVyKHN0cnVjdCAKPj4gaWNlX2h3ICpodykKPj4gwqDCoMKg
wqDCoMKgICrCoMKgwqDCoCA3IG9yIGxlc3PCoMKgwqDCoMKgwqAgc3dfZW50cnlfcG9pbnRfbGF5
ZXIKPj4gwqDCoMKgwqDCoMKgICovCj4+IMKgwqDCoMKgwqAgLyogY2FsY3VsYXRlIHRoZSBhZ2dy
ZWdhdG9yIGxheWVyIGJhc2VkIG9uIG51bWJlciBvZiBsYXllcnMuICovCj4+IC3CoMKgwqAgaWYg
KGh3LT5udW1fdHhfc2NoZWRfbGF5ZXJzID4gSUNFX0FHR19MQVlFUl9PRkZTRVQgKyAxKSB7Cj4+
IC3CoMKgwqDCoMKgwqDCoCB1OCBsYXllciA9IGh3LT5udW1fdHhfc2NoZWRfbGF5ZXJzIC0gSUNF
X0FHR19MQVlFUl9PRkZTRVQ7Cj4+IC0KPj4gLcKgwqDCoMKgwqDCoMKgIGlmIChsYXllciA+IGh3
LT5zd19lbnRyeV9wb2ludF9sYXllcikKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IGxheWVyOwo+PiAtwqDCoMKgIH0KPj4gK8KgwqDCoCBpZiAoaHctPm51bV90eF9zY2hlZF9sYXll
cnMgPT0gSUNFX1NDSEVEXzlfTEFZRVJTKQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGh3LT5u
dW1fdHhfc2NoZWRfbGF5ZXJzIC0gSUNFX0FHR19MQVlFUl9PRkZTRVQ7Cj4+IMKgwqDCoMKgwqAg
cmV0dXJuIGh3LT5zd19lbnRyeV9wb2ludF9sYXllcjsKPj4gwqAgfQo+PiDCoCBAQCAtMTQ4NSwx
MCArMTQ4MCwxMSBAQCBpY2Vfc2NoZWRfZ2V0X2ZyZWVfcXBhcmVudChzdHJ1Y3QgCj4+IGljZV9w
b3J0X2luZm8gKnBpLCB1MTYgdnNpX2hhbmRsZSwgdTggdGMsCj4+IMKgIHsKPj4gwqDCoMKgwqDC
oCBzdHJ1Y3QgaWNlX3NjaGVkX25vZGUgKnZzaV9ub2RlLCAqcWdycF9ub2RlOwo+PiDCoMKgwqDC
oMKgIHN0cnVjdCBpY2VfdnNpX2N0eCAqdnNpX2N0eDsKPj4gK8KgwqDCoCB1OCBxZ3JwX2xheWVy
LCB2c2lfbGF5ZXI7Cj4+IMKgwqDCoMKgwqAgdTE2IG1heF9jaGlsZHJlbjsKPj4gLcKgwqDCoCB1
OCBxZ3JwX2xheWVyOwo+PiDCoCDCoMKgwqDCoMKgIHFncnBfbGF5ZXIgPSBpY2Vfc2NoZWRfZ2V0
X3FncnBfbGF5ZXIocGktPmh3KTsKPj4gK8KgwqDCoCB2c2lfbGF5ZXIgPSBpY2Vfc2NoZWRfZ2V0
X3ZzaV9sYXllcihwaS0+aHcpOwo+PiDCoMKgwqDCoMKgIG1heF9jaGlsZHJlbiA9IHBpLT5ody0+
bWF4X2NoaWxkcmVuW3FncnBfbGF5ZXJdOwo+PiDCoCDCoMKgwqDCoMKgIHZzaV9jdHggPSBpY2Vf
Z2V0X3ZzaV9jdHgocGktPmh3LCB2c2lfaGFuZGxlKTsKPj4gQEAgLTE0OTksNiArMTQ5NSwxMiBA
QCBpY2Vfc2NoZWRfZ2V0X2ZyZWVfcXBhcmVudChzdHJ1Y3QgCj4+IGljZV9wb3J0X2luZm8gKnBp
LCB1MTYgdnNpX2hhbmRsZSwgdTggdGMsCj4+IMKgwqDCoMKgwqAgaWYgKCF2c2lfbm9kZSkKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBOVUxMOwo+PiDCoCArwqDCoMKgIC8qIElmIHRoZSBx
dWV1ZSBncm91cCBhbmQgdnNpIGxheWVyIGFyZSBzYW1lIHRoZW4gcXVldWVzCj4+ICvCoMKgwqDC
oCAqIGFyZSBhbGwgYXR0YWNoZWQgZGlyZWN0bHkgdG8gVlNJCj4+ICvCoMKgwqDCoCAqLwo+PiAr
wqDCoMKgIGlmIChxZ3JwX2xheWVyID09IHZzaV9sYXllcikKPj4gK8KgwqDCoMKgwqDCoMKgIHJl
dHVybiB2c2lfbm9kZTsKPj4gKwo+PiDCoMKgwqDCoMKgIC8qIGdldCB0aGUgZmlyc3QgcXVldWUg
Z3JvdXAgbm9kZSBmcm9tIFZTSSBzdWItdHJlZSAqLwo+PiDCoMKgwqDCoMKgIHFncnBfbm9kZSA9
IGljZV9zY2hlZF9nZXRfZmlyc3Rfbm9kZShwaSwgdnNpX25vZGUsIHFncnBfbGF5ZXIpOwo+PiDC
oMKgwqDCoMKgIHdoaWxlIChxZ3JwX25vZGUpIHsKPj4gQEAgLTMxNzgsOCArMzE4MCw5IEBAIGlj
ZV9zY2hlZF9hZGRfcmxfcHJvZmlsZShzdHJ1Y3QgaWNlX3BvcnRfaW5mbyAqcGksCj4+IMKgwqDC
oMKgwqAgdTggcHJvZmlsZV90eXBlOwo+PiDCoMKgwqDCoMKgIGludCBzdGF0dXM7Cj4+IMKgIC3C
oMKgwqAgaWYgKGxheWVyX251bSA+PSBJQ0VfQVFDX1RPUE9fTUFYX0xFVkVMX05VTSkKPj4gK8Kg
wqDCoCBpZiAoIXBpIHx8IGxheWVyX251bSA+PSBwaS0+aHctPm51bV90eF9zY2hlZF9sYXllcnMp
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gTlVMTDsKPj4gKwo+PiDCoMKgwqDCoMKgIHN3
aXRjaCAocmxfdHlwZSkgewo+PiDCoMKgwqDCoMKgIGNhc2UgSUNFX01JTl9CVzoKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIHByb2ZpbGVfdHlwZSA9IElDRV9BUUNfUkxfUFJPRklMRV9UWVBFX0NJUjsK
Pj4gQEAgLTMxOTQsOCArMzE5Nyw2IEBAIGljZV9zY2hlZF9hZGRfcmxfcHJvZmlsZShzdHJ1Y3Qg
aWNlX3BvcnRfaW5mbyAqcGksCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gTlVMTDsKPj4g
wqDCoMKgwqDCoCB9Cj4+IMKgIC3CoMKgwqAgaWYgKCFwaSkKPj4gLcKgwqDCoMKgwqDCoMKgIHJl
dHVybiBOVUxMOwo+PiDCoMKgwqDCoMKgIGh3ID0gcGktPmh3Owo+PiDCoMKgwqDCoMKgIGxpc3Rf
Zm9yX2VhY2hfZW50cnkocmxfcHJvZl9lbGVtLCAmcGktPnJsX3Byb2ZfbGlzdFtsYXllcl9udW1d
LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxpc3RfZW50cnkpCj4+IEBA
IC0zNDI1LDcgKzM0MjYsNyBAQCBpY2Vfc2NoZWRfcm1fcmxfcHJvZmlsZShzdHJ1Y3QgaWNlX3Bv
cnRfaW5mbyAKPj4gKnBpLCB1OCBsYXllcl9udW0sIHU4IHByb2ZpbGVfdHlwZSwKPj4gwqDCoMKg
wqDCoCBzdHJ1Y3QgaWNlX2FxY19ybF9wcm9maWxlX2luZm8gKnJsX3Byb2ZfZWxlbTsKPj4gwqDC
oMKgwqDCoCBpbnQgc3RhdHVzID0gMDsKPj4gwqAgLcKgwqDCoCBpZiAobGF5ZXJfbnVtID49IElD
RV9BUUNfVE9QT19NQVhfTEVWRUxfTlVNKQo+PiArwqDCoMKgIGlmIChsYXllcl9udW0gPj0gcGkt
Pmh3LT5udW1fdHhfc2NoZWRfbGF5ZXJzKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1F
SU5WQUw7Cj4+IMKgwqDCoMKgwqAgLyogQ2hlY2sgdGhlIGV4aXN0aW5nIGxpc3QgZm9yIFJMIHBy
b2ZpbGUgKi8KPj4gwqDCoMKgwqDCoCBsaXN0X2Zvcl9lYWNoX2VudHJ5KHJsX3Byb2ZfZWxlbSwg
JnBpLT5ybF9wcm9mX2xpc3RbbGF5ZXJfbnVtXSwKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC13aXJlZC1sYW4K
