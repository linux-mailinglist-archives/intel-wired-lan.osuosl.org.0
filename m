Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42787588457
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Aug 2022 00:34:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB04F8124B;
	Tue,  2 Aug 2022 22:33:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB04F8124B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659479639;
	bh=JCMdJ3ux1P55kFpSjpBaKSJT79LwYDP7PpAbdRymA4o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nLxfn8bDCmJVmp9dK6ohqFitAfup8WsQXKCZKWjWPafF0uvb+igQ2fLEnOHpW0QUT
	 g2tmp1IGOOcrmkRhxpHn9SNcq35XHcMz0WGlghns6Q/Oob9JhnhyNwbwN1Ohba97w5
	 ESXA5RixpbPN5K/yfEZxmolnVrhXo+4HaAkHhPY94hsykoydmcoxOAxVy89tb+EdCR
	 LQWElMkk3f2dKQ3tXiwVin0eDIn+/LKs9Mx/1eskK9ekKWBUcXkV+YEJ5xVRl2K42p
	 M4VwUwno25gjuMBK91FtMdY3FisSf+leKL70fTQiH3o1FdJFI3RHllvs08EaFEe8Ev
	 QI0dshx7MPOuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pDp0KgWjM_dL; Tue,  2 Aug 2022 22:33:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70C5680D80;
	Tue,  2 Aug 2022 22:33:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70C5680D80
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E3371BF48B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 22:33:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E877840961
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 22:33:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E877840961
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6GyaisR4vjh1 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 22:33:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1DAE40931
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B1DAE40931
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 22:33:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="375832750"
X-IronPort-AV: E=Sophos;i="5.93,212,1654585200"; d="scan'208";a="375832750"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 15:33:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,212,1654585200"; d="scan'208";a="728993830"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga004.jf.intel.com with ESMTP; 02 Aug 2022 15:33:49 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 15:33:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 15:33:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 15:33:48 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 15:33:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GVoBfybN1DUMXXaYE/J0lPq5P2PNHVwjNSRaq/KxIRozYPXzEuhu0wk9iDHJnzqF0hW3aN0Bd9FyWEO4qsX9Z+dBvGVA9t06W3Y7EsuF5a7iIEOwuRYqiUnN2H/yy2yKYs4m/BNgjz1BGsM8nvkBvqLkhyIubM0xitYcDrXxBsv2xEt+hP3z85lDGz8FKLZMShnRfrxIof4PC0Mk28C8RqoKhETkiDcF1wJV2xRudAWjz4foU8v4RLOqvU9UuTzjY01eXiAe48SR11khK5X/i4loOtNHRCbBjw4RbSWQbp/A+4QzUJPkYYcQtDzB8PonXlhzASysPgfxxCdhJ5cEbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C3v3MhHlR7knZ2ZgoPwyJQJzqdmKPSIf/+XBCtb5Rqw=;
 b=d/VNgq8hHRyP+SncncjWRY48+i2I8WaLpGCXhV8gclCJsCT4mWmCPbz1qcmy7roMtsalN2YZpeTRU/QCQ4/6CoeL578iV3tBL7lHzqxFLOBB1/pNQI2f23YH06N+759B5t9SqN2gd9+idNRA3fKlhCNEufhEEaQ9Af+GUUhxGyhAqZE8gCf6lHexdMYTvWEK1PkJyvT9pUeIUlo1i+Mtnq2XhWOrKc7+pcQDQYoPuVvtW2lYYBSTWMc5CZhAFOHKJJGx3CaOUr6DQxSc6p48s7uMCb+LSa8CdfOoBmELUhUjF2jDLhyoEfVkAKTNVky0Q4aw1vfPFOW8DH1xeyW7ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4907.namprd11.prod.outlook.com (2603:10b6:806:111::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Tue, 2 Aug
 2022 22:33:46 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5482.014; Tue, 2 Aug 2022
 22:33:46 +0000
Message-ID: <b0934e11-7fd9-a9ff-86b1-2765781f3927@intel.com>
Date: Tue, 2 Aug 2022 15:33:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220801161228.874194-1-mateusz.palczewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220801161228.874194-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: SJ0PR03CA0294.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::29) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 58b685c3-2f01-4463-e081-08da74d7103b
X-MS-TrafficTypeDiagnostic: SA2PR11MB4907:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Yd6Jq8j2lLOnYVilUsSQOANeVgnZG6BzByOKFnZ2v+sKCdOcybFu8k2yYwg6fTRbI93r6ZZFiu+bYY9mFvhUKauzYFflLa4kCX1N65A1wCVMI6SHS4XbBN9bg2ACEqQbxeb3G6ARiaIlBUSBGUw1mvbjd7pep8BBdjDfSii53ZpBKM7NYH+9RtOvHcXI9JPqTXOvY4JvL9DD+ijEPOF4yR5TsnWw6J3xXoL6qvKwWYi/JPXEVv+aBbWuOzHY54mpoxutRooUqjcZ/f4EEp86V1DwE6DFayLdY5ugR54rHq7GbaDOyszwxNoZnNb631+T2O5ZHv1wEnWh0uOg6hPE+OZA2OSkqIOjvw855oBed0+t1VH8CEh9s7keSMwK/4vSvRlHA4I1ugK59mZy5lJB8uVMWJ+uAqCeTJC2MYyL5Zon0oTRFGS/8irV0gC8re4kSNT1ub3qbSPMNHN7UquKL23cctepP0wBesiHiCpGqmk1xsCvza8XeL5xvdkmH3N+zLo2kxPoX3MsC+4Yt/BFdI6jSksSRZjL+nW6Nfi0bn2i3LSwxs2PqUmkGo4zRQWRlkp9494RLtqsdelI3+vyIvxXjdR0EMMbt5Gek33JarneTuEOLpXFuxHxwaYOlmJ/COtvgTkvtnFya47jz79eZ5+CtP9/5W+w37Y8kF7eNOuIa874M+RjmQIjnmTr0R7svIYSQo/DhCoxQNajPq8YPnlYvfiLTKR64tl59nrozerG0nr5z/pFAY/wfB2O4SFfjibvqpkSPSX2gswKT1OZCuz4M7CDScWO+Dq3tORa9wUN2CQ6SVGqrjcLdwFIc7CPI1yEgW2oDQjwLkIoWn7lTg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(396003)(376002)(39860400002)(346002)(8936002)(107886003)(2616005)(66556008)(316002)(8676002)(4326008)(66476007)(31696002)(86362001)(66946007)(5660300002)(82960400001)(53546011)(6506007)(83380400001)(186003)(38100700002)(41300700001)(6666004)(26005)(6512007)(6486002)(478600001)(31686004)(36756003)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZnVGaEMyKy85L1R2UTFYbWhPbUt6L25iSFp3OGRLM2FGNm5zSkEvc1RtcW9G?=
 =?utf-8?B?bkloT01xOG5vNCtCWjhZUW8yeGtpSVhTZW9ROE9QVk4vRmYwb0w0Q0s2Ulpq?=
 =?utf-8?B?d1M1c0UzWW1IVURJUFlHMCtCNkkvWDVOaVFOMUtsR2pMbUZWcnFLUTdaa0p2?=
 =?utf-8?B?amJPcDl5ZVVHbG1mVkh3T1gwVVVIdlJvOTF2bjNRZVZ6NlZpMHhRTDZlUzBj?=
 =?utf-8?B?aHdQTVhBMEwvRU9VWVFjNEU4NWhIdDlMMzZscjlwbG1mUDJ5RnIvNjRYRUZZ?=
 =?utf-8?B?dHh0dk5WaCtGZ3VLWktWdzRMNXpSVGpqQkJ4c1hoRFFjTUVHZ0puNkRyK004?=
 =?utf-8?B?OGIxNWJzaXcxSE5mSkxQY1VsMGJvY0VLcGpEaE9tdXNFQkUza3pXNE15dWNh?=
 =?utf-8?B?WDRMdTZQKzRQYWtGVDJSY2IySk9MOW9DcDF4NlNtdC9QZGp5NmIycGNqVnNY?=
 =?utf-8?B?YlZqTHFMTVNzNXRHYlJBQTRLMkt0N1F3YmJoeEZzZDhhV2lWNkIxNWQrQ1Zt?=
 =?utf-8?B?Ti9US3hIZ1Bvek5PUWZOd2R0TGIveXRSZjVWT2xWWDZqTjgvZmRhcGlYb2g4?=
 =?utf-8?B?ejEwZU1EWmlQWGUzdmdZcDFud2VlWEwrb0VuRE8yalJyZ3oyTWs4dGVWQUVy?=
 =?utf-8?B?RFpVcWxGUUhXWTIxcUFXVmw3WVkyRFJwaGlCMGdLMFFRblRUdU9DL0ZmTnBJ?=
 =?utf-8?B?Z29TRkdUWWcySDB2ZnNDS04yc2d3OFZGTDN0U1UzM090QTdIcEJmd0dNNHFR?=
 =?utf-8?B?aEVGaHRKUXpHSmkrZlVURXdldWcvVWJCKzl2R2xkSE9sNWtQWlVKamt6UWpL?=
 =?utf-8?B?OFFNeUczd29GS0syZldHRVZEU1p5V1VhczArQUdUdUM5SzcvV0hOZTZOSGc2?=
 =?utf-8?B?eGsyL2xOU0txcDBUa28wTXVlZXNQL2lyVGk0ZzUwZGIxNUFZZGVyR2lEZTdx?=
 =?utf-8?B?YitoNHc1eWV6c213N1hvTVVGK0g3cTNHWGc2SzlXN2o3ZnN1KysrODI4azIr?=
 =?utf-8?B?bUxzWDQ3MktQYnpNeTNyWXBqNnh2QmRJc0s5bzc1d29jRzI1Y3ZpdnVhVEha?=
 =?utf-8?B?dWdVUWQ3Q3duYVIzZWFPL3NMQ1VWa1VxMDBCNmtmTGprQXZnUGNLQVc3aHZL?=
 =?utf-8?B?SmVRUlJnclpYYXd1Zy81YWo4MGNtbHB0Q0hxb2Vob2ZPWWtJM0VmWEhiVnBx?=
 =?utf-8?B?WjNJeHE0Nk9jTTJIUDlaSVNlMThSa1ZnM3dLN25WU2RlV0RxVENwbFpKT2pK?=
 =?utf-8?B?cGt3eEJwcUNYaTM4bG0wS0N5cUluZzE1U25uUlZKZk42QUNCREZYMndYWmVz?=
 =?utf-8?B?WEU1Ync4bUJKZUVUbGVNejdTdFNOZE12UE9iZHh6OUFibWhaN0ttRUdkL1E3?=
 =?utf-8?B?ZGZOaVMzbS9MclZ0RXhJNWZjN3Y2UFh4VTVZT1NpR3ptMHhZNzNja2k1RWc2?=
 =?utf-8?B?NWMveTd3a3BuUHBlN3FqRFRBQ1NiZnVsdnQ3OUpTT2pkbGJBV01nTDN5eStU?=
 =?utf-8?B?VnZwNVdkdVYxSFFBMHRWNDBPajBSRVg0bG1VQTBoZFZGVHFzNlhpdlhwdTJW?=
 =?utf-8?B?aS9zWG5mWWZsM1M0bjZLSHl2VGpOMDc3aWJvMXRpYU1VU0dxaS9udGpVbE9t?=
 =?utf-8?B?aTRRdVd5cllMN3psc0oraG01ZWs3ZGM5MDdPT3ZkSCtZQ3JqeVdvWGN4aW01?=
 =?utf-8?B?Q0dmakgwY2NIV2JzNnRuWkVWTVdJT2pLWUsrbU0ybFd5bGwvYk9GSi80Qmpn?=
 =?utf-8?B?REtlZGhQNWhiV0dvaWwwK1pPRUNRenlseEcxaEN0TkQ1UTMxcWs5TU0yVTdx?=
 =?utf-8?B?M21venRoWDBmN1NjanhaU0pHdjNkcEd2Y3k2R3d2LzJLZnZVRmZmSTFkVzgy?=
 =?utf-8?B?ZllxMFFYM1UyWThoQ3RPTS9yWWZmeTdKYWhEVjhYb3lvRXpITXVocEpTOWQ5?=
 =?utf-8?B?ZlNUbzZxMGNvSzRObzRsaWlPODZvdTNjakd2SlhmaHEvYWxOY3dqbXhwcFNu?=
 =?utf-8?B?R1Vxdis5ZDZhYzBxeHN0T3pteCtTT1BiMlhvbkQ2blc3SmZCUUdwQmJ0VU9M?=
 =?utf-8?B?MFN4V05hcENVUFhZdytSam1ZaHIrLzRZenpHaEdQNkNvbUxMMHJEZDZENTVa?=
 =?utf-8?B?RjE4aWJCbDQxd01ialVka3J6ZkNZMlBscHFzYWtENmdUM2Naa0N1R0lyTlFu?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 58b685c3-2f01-4463-e081-08da74d7103b
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 22:33:46.7215 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GEZhB17Y88DVbyAQ8AvIDbTmq08xawwhPJpg/1m2lwu2QwHIApNk48mgTsAiDbqaqA3gHNGv6uNpmavaDWpS3xh24DFlqI8PiOPb3f8kOpQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4907
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659479630; x=1691015630;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1w2vqlPDdHmVzmd42+rvpRfH5l7QyrAPXjZHYNmgOow=;
 b=RJsm5850F9Ih0j9ryIImJHzVIByZjplc7fKblvpQ4RjTla4nuzuzNdK4
 cLNOh6KH8j3bnyExKB/8HF55finBpUCJir0WwlS6l37dCevPERAVFt5uI
 2N2cLmkSwez1fQRJQmDsUVQHndT4Apc1GSeLqcA83rQ6jzAqyNLJB//+V
 dP6UVeX2KWHLX5BS879Mm0xW3Umx7xOc2sac6vDoMvHGxlepDgoZBCHb6
 28n2KqbDhW8wJklnrWB6JVRo3lB9+8IkGLPrhGn0o15yg4bPewkflysZW
 RRoSW/eumWY9b+iFw1BR3ehhhws1NyX5DxW3pQbi7CHPCLeehbuskslY3
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RJsm5850
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix VF not able to send
 tagged traffic with no VLAN filters
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/1/2022 9:12 AM, Mateusz Palczewski wrote:
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> VF was not able to send tagged traffic when it didn't
> have any VLAN interfaces and VLAN anti-spoofing was enabled.
> Fix this by allowing VFs with no VLAN filters to send tagged
> traffic. After VF adds a VLAN interface it will be able to
> send tagged traffic matching VLAN filters only.
> 
> Testing hints:
> 1. Spawn VF
> 2. Send tagged packet from a VF
> 3. The packet should be sent out and not dropped
> 4. Add a VLAN interface on VF
> 5. Send tagged packet on that VLAN interface
> 6. Packet should be sent out and not dropped
> 7. Send tagged packet with id different than VLAN interface
> 8. Packet should be dropped

This has checkpatch issues:

CHECK: Unnecessary parentheses around 'vsi->type != ICE_VSI_VF'
ERROR: trailing whitespace

Also, if possible, would be nice to resolve these if it doesn't affect 
readability:

WARNING: line length of 82 exceeds 80 columns
WARNING: line length of 85 exceeds 80 columns
WARNING: line length of 88 exceeds 80 columns
WARNING: line length of 89 exceeds 80 columns
WARNING: line length of 91 exceeds 80 columns
WARNING: line length of 97 exceeds 80 columns

> Fixes: daf4dd16438b ("ice: Refactor spoofcheck configuration functions")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  7 ++-
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 57 ++++++++++++++++---
>   2 files changed, 55 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 2d6130af1d40..2e1bcd44f32b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -707,11 +707,14 @@ static int ice_cfg_mac_antispoof(struct ice_vsi *vsi, bool enable)
>   static int ice_vsi_ena_spoofchk(struct ice_vsi *vsi)
>   {
>   	struct ice_vsi_vlan_ops *vlan_ops;
> -	int err;
> +	int err = 0;
>   
>   	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
>   
> -	err = vlan_ops->ena_tx_filtering(vsi);
> +	/* Allow VF with VLAN 0 only to send all tagged traffic */
> +	if ((vsi->type != ICE_VSI_VF) || ice_vsi_has_non_zero_vlans(vsi))
> +		err = vlan_ops->ena_tx_filtering(vsi);
> +	
>   	if (err)
>   		return err;

Should this be part of the above if as well?

>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index 24188ec594d5..a241c0bdc150 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -2264,6 +2264,15 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
>   
>   			/* Enable VLAN filtering on first non-zero VLAN */
>   			if (!vlan_promisc && vid && !ice_is_dvm_ena(&pf->hw)) {
> +				if (vf->spoofchk) {
> +					status = vsi->inner_vlan_ops.ena_tx_filtering(vsi);
> +					if (status) {
> +						v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +						dev_err(dev, "Enable VLAN anti-spoofing on VLAN ID: %d failed error-%d\n",
> +							vid, status);
> +						goto error_param;
> +					}
> +				}
>   				if (vsi->inner_vlan_ops.ena_rx_filtering(vsi)) {
>   					v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>   					dev_err(dev, "Enable VLAN pruning on VLAN ID: %d failed error-%d\n",
> @@ -2309,8 +2318,10 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
>   			}
>   
>   			/* Disable VLAN filtering when only VLAN 0 is left */
> -			if (!ice_vsi_has_non_zero_vlans(vsi))
> +			if (!ice_vsi_has_non_zero_vlans(vsi)) {
> +				vsi->inner_vlan_ops.dis_tx_filtering(vsi);
>   				vsi->inner_vlan_ops.dis_rx_filtering(vsi);
> +			}
>   
>   			if (vlan_promisc)
>   				ice_vf_dis_vlan_promisc(vsi, &vlan);
> @@ -2814,6 +2825,13 @@ ice_vc_del_vlans(struct ice_vf *vf, struct ice_vsi *vsi,
>   
>   			if (vlan_promisc)
>   				ice_vf_dis_vlan_promisc(vsi, &vlan);
> +
> +			/* Disable VLAN filtering when only VLAN 0 is left */
> +			if (!ice_vsi_has_non_zero_vlans(vsi) && ice_is_dvm_ena(&vsi->back->hw)) {
> +				err = vsi->outer_vlan_ops.dis_tx_filtering(vsi);
> +				if (err)
> +					return err;
> +			}
>   		}
>   
>   		vc_vlan = &vlan_fltr->inner;
> @@ -2829,8 +2847,17 @@ ice_vc_del_vlans(struct ice_vf *vf, struct ice_vsi *vsi,
>   			/* no support for VLAN promiscuous on inner VLAN unless
>   			 * we are in Single VLAN Mode (SVM)
>   			 */
> -			if (!ice_is_dvm_ena(&vsi->back->hw) && vlan_promisc)
> -				ice_vf_dis_vlan_promisc(vsi, &vlan);
> +			if (!ice_is_dvm_ena(&vsi->back->hw)) {
> +				if (vlan_promisc)
> +					ice_vf_dis_vlan_promisc(vsi, &vlan);
> +
> +				/* Disable VLAN filtering when only VLAN 0 is left */
> +				if (!ice_vsi_has_non_zero_vlans(vsi)) {
> +					err = vsi->inner_vlan_ops.dis_tx_filtering(vsi);
> +					if (err)
> +						return err;
> +				}
> +			}
>   		}
>   	}
>   
> @@ -2907,6 +2934,13 @@ ice_vc_add_vlans(struct ice_vf *vf, struct ice_vsi *vsi,
>   				if (err)
>   					return err;
>   			}
> +
> +			/* Enable VLAN filtering on first non-zero VLAN */
> +			if (vf->spoofchk && vlan.vid && ice_is_dvm_ena(&vsi->back->hw)) {
> +				err = vsi->outer_vlan_ops.ena_tx_filtering(vsi);
> +				if (err)
> +					return err;
> +			}
>   		}
>   
>   		vc_vlan = &vlan_fltr->inner;
> @@ -2922,10 +2956,19 @@ ice_vc_add_vlans(struct ice_vf *vf, struct ice_vsi *vsi,
>   			/* no support for VLAN promiscuous on inner VLAN unless
>   			 * we are in Single VLAN Mode (SVM)
>   			 */
> -			if (!ice_is_dvm_ena(&vsi->back->hw) && vlan_promisc) {
> -				err = ice_vf_ena_vlan_promisc(vsi, &vlan);
> -				if (err)
> -					return err;
> +			if (!ice_is_dvm_ena(&vsi->back->hw)) {
> +				if (vlan_promisc) {
> +					err = ice_vf_ena_vlan_promisc(vsi, &vlan);
> +					if (err)
> +						return err;
> +				}
> +
> +				/* Enable VLAN filtering on first non-zero VLAN */
> +				if (vf->spoofchk && vlan.vid) {
> +					err = vsi->inner_vlan_ops.ena_tx_filtering(vsi);
> +					if (err)
> +						return err;
> +				}
>   			}
>   		}
>   	}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
