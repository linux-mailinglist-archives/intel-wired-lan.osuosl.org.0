Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 138107C5E37
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 22:19:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A9E760B6C;
	Wed, 11 Oct 2023 20:19:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A9E760B6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697055565;
	bh=zKoqQJkm5hg5WLOuclGgTc21t6cSVs5spkobHqMrvr4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l5Z1OhkcYKiyzO8V53JQMSIGYRRQpEdCjvFH8IbLHZrJRiv2wnt3SAwEQSiSBpEKx
	 kdcf2eabf2hfnpDDEYLk6gruh45PiXN1uTv/KhL0dARauo06h+h+vmoGR4ABrcvRRR
	 KjnsjJXsTbhhS9u0wWdzloTZL1BsI8rrRdCdy+N5pu9OFt2v6Jg0ZEmtPyWAzAAx+b
	 Uh6arUud0O4pLJhoVRgLRh68vJ+JfFnBRz2Ul4Mj4eInwD50yc8Og28YTe61k2EX20
	 X0fhKGDL8b0E++9EM0njdtEio8ZecZb5C1PXz4oPaZOPtkOwh90YeAtNHxa9gceEwY
	 SZmEB20TnmWxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VZbB4c1z7VUG; Wed, 11 Oct 2023 20:19:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E38960B57;
	Wed, 11 Oct 2023 20:19:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E38960B57
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 17FD61BF31D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 20:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1B83417CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 20:19:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1B83417CF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r2550wou61R6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 20:19:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B56A541798
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 20:19:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B56A541798
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="364124956"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="364124956"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 13:19:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="897784267"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="897784267"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 13:17:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 13:19:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 13:19:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 13:19:15 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 13:19:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Go5cpyiGugUc7Ok27n2qdpTrHTCcUZvwWSUJqln7EfivPYMVU31vK0hkCulFlVswMt8OSLcmmkiPx21xY8YUyoi8KEN1mO+pyEIJxD9XL5++VU2fbBM6vAKc36jHgbLhGjHeCeaHPFckggwZg8FhGwx5batcPdLy1CUGlhgxK04lOoNf84ToNHjlmrU4vJvtit5sFRAkA55U0HWQuwC7PwMHEWYj2d7L539CTFdQiFbc1ij+4sCGUa1YC3ue6vXOkY+OBWGN4bXTMoVmedSH21AEx0JJJ50cKP30DHous2IUQCRLxYm5NKunB7cH+oCXPZn9941hXZsZU2RwbRM+VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I03ZfNBepJlju5CQ7LG0rnPhDafZfH1ffRzhpU6Q9Mc=;
 b=gEjeMiyZTI4CRr8xWJP5FMLCw3XyepJE4N6isxd7k/6NU6D+efCzql/GEQ9ZwrdUHXcWJMfUlKGfraqsiCKEPNrl19L9fGZkJgrSnb8TbTZ95RbImyVAQbevCiO5bqd70v4lkvg2bJb135SG8JoLj/eZ+andKcluBT8JgtJ6lY/WineD8VS2Jz1ib1HwICiePvoTK8COHv+iY925lw4KVa6JYFOOaQgIpA0RWUYJ79VXdV1fWr8WNPgV1D8LmI0FkqSBP83wVz0ilfqtuYXGvbFCn34qFr8EpA15tKMACAQcjDfDUJEBvSKfk5zA9ph09FXulXFkdwISaG8sphlcXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA0PR11MB4702.namprd11.prod.outlook.com (2603:10b6:806:92::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.44; Wed, 11 Oct
 2023 20:19:12 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%5]) with mapi id 15.20.6863.043; Wed, 11 Oct 2023
 20:19:12 +0000
Message-ID: <43b5347d-f4bb-5db4-7b45-7da40908ff76@intel.com>
Date: Wed, 11 Oct 2023 13:19:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231011110258.203770-1-karol.kolacinski@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231011110258.203770-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: MW4PR03CA0033.namprd03.prod.outlook.com
 (2603:10b6:303:8e::8) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA0PR11MB4702:EE_
X-MS-Office365-Filtering-Correlation-Id: e1f79187-5012-4255-4d01-08dbca975592
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oM58pIDMAsvUbMI22TB2fvm0PBmhCz+oY/JLniT20QaezAYfnuT83qGYCXBhFH0hsgvjV3eeNrg1M42bgjAIQ920m1xJQlN7nb6Qab6zlMs8xDyuQmVShp7eoJqr3SNfNXzyUkpjI4no6tPBO0LyLymVklhmBkl3AopH9EYOOTi8ODFnJGzyQDk0PJXFpDDN5KB6ERrGMFbNd3lbDwN7k8SmkFmRpDhU8yeJqSyOpnnwQeMOYzZPX9zkq/fZrVf4fWY5yAhe4ne4wYVfADVejSVLDhigedoOX0X+kBB46uT3tBBp5cjtzvBsA9D+ZILr6a3v/vQO6JQ4eY1cBe/zU6BcE9lyt3T7vakA3iG7X6hiApjceizJeM/hHeKMeZf7Dn7pOZcKwVzYwlTZth+nd5pr0BrqnvoAdIaqKTLE+UccI6yFj4TkMScaxlmSHmSpGCeyzUhvm9DfFG6hgSaccGc8vzWgVdmnR1/6H6Pzd0NkoaRk/SH3Z8mohuZUOk2xh8CNtZH7JZfs2ZWIUEYjQNlF/E2tceeGmJJhQgj5YybIoT68NT+oooZSRODewZ9WvjfxXNpwbwzKwgvj2Nkyx7JDTumUoUZLUTDLxg82BKyqVnk4rlpJhvD0OrqC5xS2eWLtfzIzEpGk3po9Q4gQmA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(376002)(346002)(396003)(230922051799003)(64100799003)(1800799009)(451199024)(186009)(82960400001)(8676002)(8936002)(4744005)(2906002)(6486002)(31686004)(5660300002)(4326008)(31696002)(478600001)(86362001)(6506007)(53546011)(6512007)(36756003)(41300700001)(38100700002)(83380400001)(316002)(107886003)(66946007)(26005)(66476007)(66556008)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUoyVzQyNXhPREJNTGJNbW1COGI2V081NG5pNnJBdDJMV004SXlPTW9CR0Zi?=
 =?utf-8?B?aDJqWERZaWFodS9FL0VHdGhzMEIxWWkxdmVWMXRYZnBINTkvaTQ0aEZ3Y1Vj?=
 =?utf-8?B?Qy9lL25VTU94UTZzRGhlNGFlWUgxYUttYk1GRHBSVU5JT0xYWkV4WUdiTldv?=
 =?utf-8?B?MlJHMndTMWlBWTV1c0E3UDFkbUNmVUZMRG9od3NyU2RmM0NFSnhFV3ZlTnBU?=
 =?utf-8?B?Uk9waUVxaDB6eEM0d1Z0S1RWNzE3aGZ1MnV3UFdia1JIbzVyWFJUb0VvK0cw?=
 =?utf-8?B?R0czSXVZNmRLTG42Y09UTDVHdzU2MHBnOXNPTVN6akkwVFBpNjM4N0hJYkth?=
 =?utf-8?B?TDdVTTEwendjMTVZdDBLWHoxWmdXNS8wTFRya21BYW8rZVVpMmRRNzJDQmtX?=
 =?utf-8?B?KzNSb1FSWjBJeWtQa3JISEF3RG9qbitxM05BanFWNllRMTFlTGdTK2E3d1RV?=
 =?utf-8?B?YVU3MGd0R0o1STlubzlyMmpPWlZPb2JNRCtSc0tBdTZCWml4MnNrby82a2pM?=
 =?utf-8?B?cXc0cTdjQktDRXhBUzVPTm5TcmVBYk9rMmhnVW1RMVR2OHBJQzdlT2FzSU1s?=
 =?utf-8?B?VXN1V1p4U0gyKytLaHpNbGFBS3BvYmE5eTdZRmZXbUN0Z0MwWkcyWDlOZ0t0?=
 =?utf-8?B?OGhWZmY0RlBRcHAwRWwzQWwxdEg4K1pSZXF6WE8zTkNiVFhkUi94bWxleEhq?=
 =?utf-8?B?L0V6VHc5NWt5RDE3NGJTS1ZxTzhkRmN4QTAxVGNqK0NybEJjaDIzbTNTQm4w?=
 =?utf-8?B?eGM0M3J4UjZLUHRaWjBqWDR3bjhWUXlyOGV0di9Ra3lRdzZxNENJdklOSWM5?=
 =?utf-8?B?Qm9USzFScUcyNVVKUHphSE9MUFZkWGE5bWZBYkJrWG1DWEExSSt3ZHFqc2dQ?=
 =?utf-8?B?RDFXYkN6TzZ6MVduUkwrS0tuYmZFblRzZGZMNEEzaHNmd202MzVTbmFsWXZw?=
 =?utf-8?B?ZUwra2hrQmt2YzcxWi9Ka0gxZnIreHNnanhDYmFrUVI3U0FWZDBSZDhydVRj?=
 =?utf-8?B?SFRIdmlINmZpaDVqTkRML21hTnlEVCtZaHFBQkllK3lEaDhwVDhGaFBPN2Ft?=
 =?utf-8?B?VXJjK1FnTDdyR0J5NVBBcWNqQXJBbDFhYXdmOFJYMGNOWE5zS0k0QzRob0N1?=
 =?utf-8?B?VlRXVTR4UXVsVFR0S2lqMkNodnlJSzVzR2dreXRrZmF6VE1Da01ZVkxBQVNI?=
 =?utf-8?B?ZWJRYlpJSEkzSGxBckJzUFdPS0NPNTF0RW9IUTVxdysvVm1pa0ZudUsveEo3?=
 =?utf-8?B?a2liNHJZdnpURGxQalM2eTN1OU82ckFydERaN0NJWkFJQUVtQURxd2dJeFJD?=
 =?utf-8?B?NEFLZ3VDMDBGdVd2cS9kWTFrUWFGNTFPZjJheTVNbG84b0pxcDRsOWtubnlW?=
 =?utf-8?B?b2haVy9qbFd1cC94Q0psS0VVOWRsTHk5cS9VWFpRT2w4QlFzVDdobFFBNUFL?=
 =?utf-8?B?UzZYcW4rSmRlbXpHdzgvQ0JsUU5LQ2tiWXpVRHAxWlplNTZ1OGxXcm1uaWFw?=
 =?utf-8?B?Qlhma3BubitqN3RPa0EvZUFkcGVvdklVMjBPNXdsemFkVFJXYUhCd1RhVWlW?=
 =?utf-8?B?d3hXSDZ1THhBRnZGbS9nM05taDdlY2RmQW9xeTJMOTFWenp1MnRRYnZvZ2pR?=
 =?utf-8?B?eFJEeVB2aTMyUUpwWFg4OVZqUXdId1dhMHFFNG1hT1FnYkZ2YnFGV1lla0Ja?=
 =?utf-8?B?NEs1cnhHVk5tZXRXdkZCTWtDcFppRkV0bkZLRVVnYm9ISmp5TDVvNDRMVWJz?=
 =?utf-8?B?VllkVlFZNSt6Wkp5dXpmMXlYWmM0K1B1dU14TVFPa2ZCUEkzeFpuRWI3d3pY?=
 =?utf-8?B?S2tJOHV2ckdwVWRyVmZSVG9uMkpkKzh6ZDhZcjZlWmlGbFltWitRWW5ubzZm?=
 =?utf-8?B?TUphTVlFcXNEWDVUUlJnTG1jTzFKUVVqWnREM0puYmRJV2NhdGQ0M2hyK3VY?=
 =?utf-8?B?WjBFUEZuZXRIUVdWRnlmMEswZmdhbU02QTA4R3k5cjRWazdHaVZmNDh5WjEx?=
 =?utf-8?B?dVZuWDlUVUZCUDZZbVZNN2NOSUlUWUxJVEZ4QjZIendreTNpYkhqdFRLdDlP?=
 =?utf-8?B?eG52TFdxNEZPQm0wei9SV1lGYm0xTkFIbUZDTnVXcjlOWXdjUmZSVzBFT3Ev?=
 =?utf-8?B?TGRlLzg0UDkxM1NOaWU0SlVFdmo0MnRQNGFZSk1meTJrSjJxY1hBdnVONUQ4?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1f79187-5012-4255-4d01-08dbca975592
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 20:19:12.8858 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QvKQHoSMcIXvv3RvqYoN8e8/MujcXHbpEgsJ2C5/OtkhAjeo3sZG9HbRsZqDRo/oimununx/+RDPeSzH46evVqkRMW+VtsgYVCIb+IM7fOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4702
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697055556; x=1728591556;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f6oCb5nHAdlJVS+nXO5rGM2V4eKoD+9ACP4OcHdmGUg=;
 b=jcCxXc5hh5Q1ofw+uAJQLzx56Q8zWl+k9xxwhmS9uiLEyhZ/BMijgAW9
 Hn9FzH/gts5LDmAd+xvphHwp5ncKJ9WQ5yR1qOqe8mNgGZfdNjp6BzNpk
 H5/6Rl7m4QTwNhEMMm0uwnv5l6CsBgH7PB7hMImQodOKq7dmTH2EFsLvT
 0qtDGgyTWfeIqXmCA+qQ9nqif0GNwQHbrdelVoWY7WMbkBE6qMbsJ1c5v
 OGVUt/0ZdXAHeOPSLyAeBBq2UtcR3tye2j5eM+dZzyL7twdkKHzJWVPhT
 ijLbsGJeSriTsA1ds8jDKb5YXW0cAWXsJJNUxSa/krwkKN59GUqpBR8t9
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jcCxXc5h
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Don't disable PHY
 before settime
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
Cc: anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com,
 Larysa Zaremba <larysa.zaremba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/11/2023 4:02 AM, Karol Kolacinski wrote:
> When settime is called, the driver tries to disable the PHY to avoid
> PHY clock running and giving incorrect timestamps during time change.
> PHY stop procedure takes more HW writes than just marking timestamps as
> invalid. After settime, the PHYs is recalibrated and timestamping is
> reenabled.
> Change disabling the PHY to marking timestamps as invalid.
> 
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
