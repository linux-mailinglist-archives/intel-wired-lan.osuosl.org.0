Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B215E614F17
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Nov 2022 17:21:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12EE9405F9;
	Tue,  1 Nov 2022 16:21:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12EE9405F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667319696;
	bh=+s8lWEVaVKPf5LuifeHA5XVHEnJFiZ+l764dVFDzrwg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8CO3JpqDc9yYZODo3m8tDwL2jIw1T/hPcchZxpV+HDOp8tcksUR6F13qiiObnsy0z
	 wRDvYXqG9HLPaDUXA2R97+M9xwf1fU33MSWj7xLAky7AHhp1V5nEiWn1KfrQzzszzX
	 c3PqrgzrsjJc2vmJvSQBL1qYgK89q5iv4MuCBSYrEc8kscxK3YedyIw5w9mI4OkcWn
	 Po8Pn+tHnj2Z6itO4ckK4/LwXq5ValQLBoo+gHgHDuJ3TjdGpv2Bhoqxa2f6nApUDH
	 kMb40XMUIWlJzo9g5Jbbz2J7PR5VdIOqRFU9t2J/Q4/8+oVwygDpdFHN+hjzaOzwiw
	 Z7oxXvULrLhhQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 69rER0kJlbyp; Tue,  1 Nov 2022 16:21:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E7A5C400EA;
	Tue,  1 Nov 2022 16:21:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7A5C400EA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A56D71BF292
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 16:21:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8AC4C409A2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 16:21:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8AC4C409A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mzhMU8EFLg9Y for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Nov 2022 16:21:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB4EE409AC
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CB4EE409AC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 16:21:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="289567244"
X-IronPort-AV: E=Sophos;i="5.95,231,1661842800"; d="scan'208";a="289567244"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 09:21:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="633926932"
X-IronPort-AV: E=Sophos;i="5.95,231,1661842800"; d="scan'208";a="633926932"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 01 Nov 2022 09:21:05 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 09:21:04 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 1 Nov 2022 09:21:04 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 1 Nov 2022 09:21:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SGkWgHMwezYHdK2wXBgHU9JS8z9PXSGlWIQJZgvtVNZve0FsMbXM5St+3y3qGmItlB000iVj/gRm0oeY8JMQgmKJkd4RMHtAsXf0vwC7Pe6p5Svu8DW8cvsye48eLCZxlJCJyatzSFJ9t37WD1yhBcbJt4HdPPHyay5eqsGQPrPTN6XFKXxpS8xgmXm9ipzKygUqxtbZyenEnWIcd4PxUIbDJue4eQycGo5lr/CMB2gxlZ1v/OHXMrND67FmD+gwBMCd+XQbEQWr5/jil2LKvSwaWuGSZ2RHHiWYND2LBB/dhRq+VHRBuaQek2kDP44+axsP9i12WxG1H5bogkSfYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n+QY3OprctjNbQsTsqGm0c2kZNmahCSw4kh5wBo4YM8=;
 b=ev8d+pSsp7GZXkdauRV2VPWk+xh1KOScLXkctoBH1+HeCUvgwJHrTT/6L2/vQTpQU2C/Cp3pHA1mnOx/9b9hR+r/4rQn1RlUAb8InXzUFheZ+ifpvWshGKGMd2xU9jSoZeWVGoVUYyUBEsr9tNL8Kk3gPAdqkdlP6weo1wZLsSmI1NFvH7sN8RgBDqDTB/iSvkv+7FFFM4rWNFcM+DHA/yqxtKKXz1Pg1uStpqmFr0YJOjQH+wywuQX//f85ECcVI97wy6fzLrcawwjqnQIqqhu4I4nSzXchqD1eN8qCBo6f/Uf3WpYY5YxhCYhCgpHXTVPW0NprFMxUh0t/CNEHKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com (2603:10b6:4:52::15)
 by IA0PR11MB7355.namprd11.prod.outlook.com (2603:10b6:208:433::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Tue, 1 Nov
 2022 16:21:02 +0000
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::2914:9926:3b20:aead]) by DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::2914:9926:3b20:aead%7]) with mapi id 15.20.5769.021; Tue, 1 Nov 2022
 16:21:02 +0000
Message-ID: <03f7dc73-3e7c-1e6d-275f-85539493cd7f@intel.com>
Date: Tue, 1 Nov 2022 18:20:56 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, Ivan Smirnov <isgsmirnov@gmail.com>,
 "Avivi, Amir" <amir.avivi@intel.com>, naamax.meir
 <naamax.meir@linux.intel.com>, "Fuxbrumer, Devora"
 <devora.fuxbrumer@intel.com>
References: <CAPAtJa_o5q-sU+AD=G3y43H_5pBKnOZTQGXM99uszPXNkn8Z9A@mail.gmail.com>
 <20221031170535.77be0eb5@kernel.org>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20221031170535.77be0eb5@kernel.org>
X-ClientProxiedBy: LO4P123CA0104.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:191::19) To DM5PR1101MB2235.namprd11.prod.outlook.com
 (2603:10b6:4:52::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2235:EE_|IA0PR11MB7355:EE_
X-MS-Office365-Filtering-Correlation-Id: 08b94ba8-c804-41df-08c2-08dabc2511b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BlP+5wMik2nXTExDY9iNo7D+5zDKmEgeohxxbvcQhPkCrVQynPpYPpw4NJr///cmsWPzsf8yFUCCvmPV6ImMzBiiJSSepLb8u38k46oJREpWTfNH1459/a1F328YasQP0Joc6pb6F8i/tczRsiNhrMfiwWf8eZ/T9S6a2kjau9wvtXc0S1upKmhjr3DGIYolP3zy1eFmRiMlxFytHGqkAm2zscBrYdVGDY6kN9+wEyrYUH+izWyrFgB2kbqxYCL0HKzL7Vh7OnUsTbTrnV/LhffeWJhvC1Q/XAKI6OCfnidJhbzGbNL2jmmpLas+zQF8NLJv1JlD6xSx31oHrjCLYuHkNFOxGpfWdcV4Li8NF/u1p77P/nEKjjdh20p/zkCdNC4qTwsTQBuXfdUg5KhSHniulqF4mmC2UFSYJ212n79GUf7I1xdeTYYGCElXhAskZJ/BJ9W8Ht/M0UUy79HmaXFvbcPJG2TI54S3cenTDlYrBrDGduTT5+hDT4BuW1za3ro1MCu0Oh7V7WT7aUz4oPo/gDMEDp7z4heN6pSUK409jdZowcYbME/gsWWrknysEfw/HqP8ZKct5BlueXfKmN8aTl/K6GNkwgbSKp1uE9f66Jm4UZyIeAvhLc+L9hrp5ymHwU9xmUztoYRuFFhr1+8ps6xEtcrZtHtBaWo6EwdVz/HqivDlAfXZf5YeQx+BwON513VPblZv+pYkpn6bzyzTt/0MKYsG89JANBfGCWz17LSPPFHxpBfPoE1d+POmTJ/8mtBjXtn9o1skH2GJbE+u1u2yXiBeVAXnLWLNon65dcAym43ZdbiJIH7cHJ/rJB1OCQMFmEfkTXzPZCA8DsjzWFWkfwDndwesJ43v0Is=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1101MB2235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(396003)(346002)(366004)(376002)(451199015)(6486002)(966005)(478600001)(38100700002)(82960400001)(110136005)(6636002)(86362001)(45080400002)(31696002)(54906003)(6512007)(26005)(2906002)(36756003)(6666004)(316002)(53546011)(2616005)(41300700001)(66476007)(6506007)(4326008)(8676002)(66946007)(83380400001)(66556008)(31686004)(186003)(5660300002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VTMvaHVtelo3Ym5SeW16dkxQcUI3RGE0NmFKNjVVZHNzaUNzeHNxcXVVWWVJ?=
 =?utf-8?B?TmZZS0FSK09wOUQ5NVV5RENiQ2RIWERNZlFEc3lBMFZMYUFycnFmUlg3SVFl?=
 =?utf-8?B?K3pQNTAzQUNjdEtPaHZWNGUrL3lGS0RKMGdpTHROVlpCcVJnZWZ6bVdHVUJX?=
 =?utf-8?B?QU5hekxxN3RBeTRLanU0VWptQXZXbHExdUQwZ1NJOFpxaktYTDRuWGtQcFZ3?=
 =?utf-8?B?UGpHUUYvUHExcXJTMEZ3ZE9HSVAwSnNHRXcrRGJyMnMyZHlKdnBzNzJLZk9n?=
 =?utf-8?B?d1owdEdINlh1bXkzNUxmWktsVXlVWTFxMTh1Q29NSWJINVhuWVZ3Q1prenk0?=
 =?utf-8?B?ekNuU2V6bG1lRHNnbXBBTXl6UlJpQytrY0N4ZE1qYTJmcW8yeTRXSmxnUHk0?=
 =?utf-8?B?R2NCNXA5WmU5NmY1SHNYbm93VTl6eitEZThuVUxqLzRFUUx5WWJPTGhPTW1i?=
 =?utf-8?B?OU5RdjNqck1LUENZZkNRK0NGZEI3RWk0bUduVEtuT3l1TUh6MlhFL2EyTTZY?=
 =?utf-8?B?SWJIV0RxTUdtOXJ5MkNlSUdjWCtvQmpVL1dRMjJCbUFIczF6NkdCcURMcFBH?=
 =?utf-8?B?UlJZampBZkdCdXlLNUFtekQ0MSs0LzNKQWhsVStGUng5c2Y4T3luWEJPVkRQ?=
 =?utf-8?B?OXZBLzNlTDUrY3ZpcEhWVkMrV1JjbytKWUMreHRaNHppd0Ywd0NHQUlQZEZN?=
 =?utf-8?B?dU41ekloRjZ5anpJUEIzWm9PRmRuRWovbHNBY1JYQUErZGZGdnBXeGpsQkw2?=
 =?utf-8?B?cGVOa3VDT0ZNTkVzRW9wMzZ0Tlh6Z25OM3JrRFllK3JYOUw1bE5QTVpsV3Nv?=
 =?utf-8?B?cW40VUlxc3JqNnVOWCt6Q2xLTmRsanB5TzFqK0R5ai9MVXBWdlUwZWZ3T29Q?=
 =?utf-8?B?V3VoMmI1Y2JER0ZQZEpQNjJlWVJvay9BbjdrM2c0ZHh6eFFraXhQQlZCL0R5?=
 =?utf-8?B?RytPMjNvem1WK294ZzRSSy9QZHMyTk1UaGJCMkxnSTFqTSt2QTNxRno4S0JX?=
 =?utf-8?B?QlJDVkN4VHROWkV0L2pOL0pVbTB2QXZQZ2U3Ui9rQzMwdTg5OGFJNWJpQmJr?=
 =?utf-8?B?Y3BQc3ROamhZK0ZNMHlrRTRhWUF2anBkLzAwNDdLd0JFSk5HTDk5ZG41TjVy?=
 =?utf-8?B?T0NGaWNOZmE1ZzdkUnJwZjh6dGZidFVtMEJRZXRFeS9NemNwQmpsQ3BNZXJa?=
 =?utf-8?B?dWxBUHR6OWFzc0lHbmtaM3lobW5hbVVqa2UwaU1pcGNMMG5wZmNvM2E2cVpV?=
 =?utf-8?B?di9JSzhqQUxYWXpwclBmTVhoMS94cnd4ZFc0dk1sV3hXM1FqMmthMDNBQnpJ?=
 =?utf-8?B?Y3ZnUHR6SjhMV2lwRFU1dGxmQTJ4bUhoQlNJd3hNbnRYR1ZOSjhMd0ZjRlJR?=
 =?utf-8?B?Z3VNek5XREl6U2wyWEhpUy9xeDdZTm9QNEkyK0o3aWlYdUp0VGVMUWNlamFu?=
 =?utf-8?B?dTc1NVpja2dIVXhSMStjWjg1SHBTenFBTCszVDEwOG1GSERFVGhpdkNlYzd3?=
 =?utf-8?B?NkZqckRJR3NHZkRrSy9US1M4MXA3a1NiSUJFQ05uemg0Uy9VNHFocFRsMTJt?=
 =?utf-8?B?OFNRQzFIdWdVNTFSME9uTXZDb0JnK213VGNMdi9UWTEwejlGMlMrOTlSS0VH?=
 =?utf-8?B?cHN2d1lFbnlaaWl2UXkvY1U1ZjVqY0NXZHMvbm9wbGdmdlNubEdHK1hBbXda?=
 =?utf-8?B?bHpjYVJFRVA3aG82djBlcDczR2liL0VqUCttNVBlRms2Y0kvNjNHYVlLdEFl?=
 =?utf-8?B?NE5saWFzYXJsWG9qcUZVS3AwZCt4cWtJQ2xOei9aOHZqelp4bUhuMjBaeC9V?=
 =?utf-8?B?WUpXcm5PYmFxR25Yd2hsclBYVTZRdmVKUmI2YXFtU3YvQzh3VVpiU3laUy9x?=
 =?utf-8?B?VjZESDM5cEo1WGdWMXkxZWdMcElkRGgzaHZyWmVlM1RzRFFuNW4yNnpLQjBq?=
 =?utf-8?B?RjVlYzVrdk11eGRWR3ZZKzVIVVV6YVJxU0pSUHNTRElUaFZLS1V2RFo0bmtZ?=
 =?utf-8?B?aUxjNEZVZ2l6UDdZMGZHaWVST2NzZjZnbnFOVHkwMWR4NlFESzkyaHd1Nytt?=
 =?utf-8?B?YnY4MjArSkxMZG44NDFkRDlhQVkvYi9DYmhVUklVN3hkYVF1QWsrSDAycnRk?=
 =?utf-8?B?amdhaCsyVFNvWVArckUxbXJORUhFN2VUUk8ramxaQVAvT0lKNDV3ZzNPOHdZ?=
 =?utf-8?B?TGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 08b94ba8-c804-41df-08c2-08dabc2511b4
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2022 16:21:02.5513 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b0YSKC5fa5rle0ikzQAIXM/GFoxrPWBFRHmRbuyK6BCVzVh53/f4tsaRLuVd++QJ+DvqZX9LF+r9QmlEOpnjoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7355
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667319688; x=1698855688;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dQxuszSTA7FYxrlQpy23cs3ngMeP7LCE9LUrB3WLXW4=;
 b=Z9cMm8RLyGoPMHBKsAxxcTpcum/dwOewfUvAbGLU+ePS9Ef7asUDsZzM
 J9eVxl6HDNQhrsdBC3pXoI9WyFzX5lmr7k91EXbaZwKUSyev1Uzq/oRvr
 Md+5MZCTPVSxe8ICLJ52Mv8cm8eR8YDJog+iV7LsJGQkYDLmgd9EePe+p
 av+33W0hw4p0+ez79Ko+TuekKOZGKT+sDRRZ7y4+7Rw4EJQ1vLPf9tDLF
 zbV1JQ1KayDPHxXrqqZZgA51L1yJgiW6jgbhj/W8PXMViQOh/8yqQ5uXl
 wcBivq5bqTk/Yrgzu44/YAbyrvoyBlop/yqUSZ7+fr5Ie5KZs1ciwUmS9
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z9cMm8RL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] igc kernel module crashes on new hardware
 (Intel Ethernet I225-V)
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
Cc: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/1/2022 02:05, Jakub Kicinski wrote:
> CC: intel-wired
> 
> On Sun, 30 Oct 2022 14:44:57 -0600 Ivan Smirnov wrote:
>> Hi folks,
>>
>> I found your commits on the linux kernel igc
>> <https://github.com/torvalds/linux/commits/master/drivers/net/ethernet/intel/igc>
>> folder. There appears to be a bug with the igc kernel module on Intel
>> I225-V chips.
>>
>> Specifically, the probe fails at startup with error: "igc: probe of
>> 0000:06:00.0 failed with error -13". When it does load, it crashes after a
>> few hours with error "igc failed to read reg 0xc030".
>>
Could you provide dmesg -w -T | grep -i igc on the boot stage? ethtool -i?
I've cc'd our PAE expert Amir who also could try to look at this problem.

>> There are several affected users posting on
>> https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_controller_i225v_igc/
>> with more details.
>>
>> Could I help you debug this? This problem has been reproduced on the
>> following setups:
>>
>> 1. Asus TUF-GAMING-Z690-PLUS-WIFI-D4
>> <https://www.asus.com/motherboards-components/motherboards/tuf-gaming/tuf-gaming-z690-plus-wifi-d4/>
>> on
>> Arch Linux, kernel 6.0.2-arch1-1
>> 2. rog strix x670e-e gaming wifi
>> <https://rog.asus.com/us/motherboards/rog-strix/rog-strix-x670e-e-gaming-wifi-model/>
>> on
>> Proxmox 7, as well as Ubuntu Linux (kernel 5.19, I believe)
>>
>> I'm happy to load any debug modules or provide additional logs as per
>> your request.
>>
>> Thank you
>>
>>
>>
>>
>> --
>> Ivan Smirnov
>> https://ivans.io/ | https://blog.ivansmirnov.name/
>> https://www.linkedin.com/in/ismirnov |
>> *https://ivansmirnov.name/ <https://ivansmirnov.name/>*
>> *https://github.com/issmirnov <https://ivansmirnov.name/>*
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
