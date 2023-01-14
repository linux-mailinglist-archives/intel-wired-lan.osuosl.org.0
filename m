Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0B966A784
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jan 2023 01:33:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16F9C61016;
	Sat, 14 Jan 2023 00:33:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16F9C61016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673656393;
	bh=LH6mFsdyKNLEjgd7Rfk/NFpQIeJj7ivGH1mgPId5t1o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mlqPXE2inn2fgViRP2qwzpjtPtHEWu097mfV+QUEbm8rhY2/R/QPwrKXNmQyAaPTq
	 r2zidlhK086f/94zEP9j3gr2U/NXLwR+bDBLrCfRhtkS2QZ5FLZMAc1c1EounTMSZB
	 ugclxVz3jEBnXTpL60zvK8AsjutWoFkxUxeethdT1f1wy8i8y9nLm0bs3/7qfS4v2j
	 2gb3GXvywHlez9oySJiIF2Nb1L2jNPgHjs1qJ1j/oV/fG/fupZ2YJ7GBQ77mcnc69H
	 sRNCDumgmaOA0gytpIhpdzOlHxOcLGjkc6cQvkWJClN3eIkDmtMjzZ0cjGoX2v2sRT
	 PQvlVIIEx1Lug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PPnv9du7yGiP; Sat, 14 Jan 2023 00:33:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BDAB60AC9;
	Sat, 14 Jan 2023 00:33:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BDAB60AC9
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 295B61BF3C3
 for <intel-wired-lan@osuosl.org>; Sat, 14 Jan 2023 00:33:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0000841B5E
 for <intel-wired-lan@osuosl.org>; Sat, 14 Jan 2023 00:33:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0000841B5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x4lruuvuyUwA for <intel-wired-lan@osuosl.org>;
 Sat, 14 Jan 2023 00:33:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A2F841B5D
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8A2F841B5D
 for <intel-wired-lan@osuosl.org>; Sat, 14 Jan 2023 00:33:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="311987285"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="311987285"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 16:32:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="660375955"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="660375955"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 13 Jan 2023 16:32:53 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 16:32:53 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 16:32:52 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 13 Jan 2023 16:32:52 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 13 Jan 2023 16:32:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DcdEeEKwTgKwLHSJlYGnS3wRmHOhidQvaRgZgWqB3zn/52giKqDiXwtzQ1DvnktilrN5aUD4O+tXnpDI+nNyg3Hk9noAxgXMPqLe3fQ1z/yAh9nQQBfgrEKT6AriXO0qo95AJ2zqwIsHG0B1b7y8Z4jKMKXzTB61IrQpUAkPDyRwPXMmLSPERaSYttCeEqCHkh8Kl6qsltr/aqy0FQKW8M+LDt9s//gbzzzferKFB9NlvntoflUKaLulqR6eQttAU/ebw0O6Xv3nyNLb9fSIDbhuT8UUmDahtmVYD2htIkl0wkMEkZdK8TjkWyrEiyrxJO7fEOwAVp5f2TeuvtQ7uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j8UuoJ/qZWTIwGmtBY2Y9GouxaaG6LFhxIUGVI0R7BA=;
 b=NDR4j54UwmM3Fl2kk0FnDAhvmJqAwN3UqWU7Vr/dOS9lkkENzY90qf6piZ+fBOTwu+NSCkN8xiKx8BLwaWsLFIKyQuJPLhzoSnh/HNEJ0iImPldzHA1v+tH/ruiJDO0sLSKxC0gdt4mqKzJem7oC1KB/ZRq08II1bfg/n3ukFoAhj4lnjbCafoe1pWSCy+JfJY8P+m9qmoi7kSgAATu1ozNZClhYQWa7ypI7gT4RQIfyLMGJDBcG+rHmzLQtDdeIC9bPHsaRWqflrU+0uYRo6lLjKk7aAzCMk9Oikkld2FgxJ2cEZ2E6IpFhEBRwpwQXNqfnHUrdMur76f/sJTHYzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB7016.namprd11.prod.outlook.com (2603:10b6:806:2b6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Sat, 14 Jan
 2023 00:32:50 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf%5]) with mapi id 15.20.5986.019; Sat, 14 Jan 2023
 00:32:50 +0000
Message-ID: <31bccf64-d770-d15f-233e-d065b98e3f9d@intel.com>
Date: Fri, 13 Jan 2023 16:32:48 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230113222319.111-1-paul.m.stillwell.jr@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230113222319.111-1-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: BY5PR20CA0018.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB7016:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d4d8e69-6a83-4ee6-af72-08daf5c6de0a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: frWwDOXLz9KVCzT7A9rIBKi5kNS1xRAQNh38ooQ0Krb0XvZBMc+jXUiymHKnhNvEmzACaWAVcOcU+NeOU0mcPqGHFFgLGjvtOwgaa3sdHIxkla+sDg4bICbNE131g1Tf5snVEgQYhcK1scURckF6uW7S91yK4vk4F+rTmQNUgMKvqPQyl+KCo281xjL5n5MS0I049rAsxo9WZMr+Z5pTq+4a9EbgkFHmtY1JX4a2Bp4CWbDBmncxniv3LylCxhnWdG7BOr69sxAS06N9EwPFwRN698CEWwD+3TfvdozXIzRtkXJgrkNinQnwSAN4u9zDTMAgdQj84Df7YPDVHBKRRh7KcHnVBKVP1eif2mxh3Zjm5GA1fhfNx6/c4hyoSWrAZwFAUa4NJ6a7fzPD0nb7R3oxb8ZYjy4JUR0zHXYc/dwuu3QJRT2u937xGnNPBPnL9ObU216Q6Xed0wx9F4SwM5knL1S6NNz6Umkh015+DGXbSclJCNtBDAlp+wrsiowoIdwhUysJon8K7cm9BY95pLrPIIXDqMmhcuUvBxCRApK7jEYKAHI9zzU4qjex/K/USlOZKBi2Nj6dgFay+QXTTCJHV/8bR/nFy5l6Iugsg4qEsXLVMm0RivVDEoeJlYc7va84qNzG48Ix4tzaNg8X4E46IQkFVhgJIp/rooQfWUK01iBPNZVU7NSrc7640MY0kCL1lXgis0jiq+RYS2NL/sYpy+DYNleUHayDwBbylMA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(366004)(136003)(346002)(39860400002)(451199015)(36756003)(31686004)(66899015)(86362001)(8936002)(6916009)(66476007)(66556008)(2906002)(66946007)(8676002)(5660300002)(31696002)(38100700002)(83380400001)(26005)(478600001)(316002)(82960400001)(6486002)(53546011)(2616005)(41300700001)(6506007)(6512007)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1NZOUszckZHVmxZcjdkNnpVdk1wM2crbVVqcDdsNUpnSGlsaTJra21lUDNq?=
 =?utf-8?B?WTd1ek5GVHpCYlBhMXhla24vRzhYMUhodEJNWFl1NmVTRTY1c0tabk1Ra0x5?=
 =?utf-8?B?SEI3QmdqNkpDcE9aQTFzRU5jbHNpTkZsZXczQjBxeE00a2V4bDcxbXlodzB1?=
 =?utf-8?B?bFdsK3h3TldvYTZES3plODFZWVlKeGhjQlRFcDFxRUR3MVJmeC83emU5MmUz?=
 =?utf-8?B?b0l6Y0l0L3VYajNJN1JHVzFJUHcrTXQzYVc3OTE5ZFB6cUh2SFdlVnpCYUZn?=
 =?utf-8?B?QkY0Q0ZLQTVPRUJrcFlDbld5bWJESU12VjlhV3pXbzlTbmhYUDEwd2ZQbW85?=
 =?utf-8?B?ckFpdXlUaml5c1Y2YTF0a2NPbTBqL2FlWEREMG9QUHplbmMwSjBQLzJKTEsx?=
 =?utf-8?B?WEUyUWp4NXVYSlc0djlvZ2pZZ09vN0VLU0gzL2Q1QmpoeDZxY3RXZ2xFamR6?=
 =?utf-8?B?L2x1S1o5eTRZVExONXZqdEpONlJ2VzR1b3MxNXZPYWhJaTBCWk42YjkveUI3?=
 =?utf-8?B?eFZWeDd4U2NienBEaXVpUEFFWFMyYmZJaWZSRHk1L0paMGNVLytnZ0F1UGdQ?=
 =?utf-8?B?ZVJGR1Q4QUR5T0k2cU5ITFJDL3hhbVpkNUlNUHJySy9XeFdaeWU0Z1BGYjRx?=
 =?utf-8?B?K0JTSnZOSWwrK0tmVnkwYlJ1S3c1MnhDWWVKZG5kM0g3SE9QVkdHWXNLSEgv?=
 =?utf-8?B?dStTMkhuRENJT2orS2FVY1JQbzBjdm41eEw5SE9MbDZiMTB5TU5ScWdSUXVB?=
 =?utf-8?B?TDFHNDNCWVBKRlY4QlkySHpZTm5UQmNQV3B2dml1VGhmVFdJaExucURVbkNS?=
 =?utf-8?B?Rnc0SGI5eHNaa3dPd3FEZzlhMmJQL0pib05SUHA4NGJUVUQvbHBhRlVmSmNj?=
 =?utf-8?B?bFIwamhmcGdVcEQ4ck9yclpISzRMVVBDaWRXeEVWQU9PdzNqeE1rWkZxczhi?=
 =?utf-8?B?VW5lS1ZROEw5cEQwMGhua3RJYkJZMFR0M3RoV09RZ0xHUHRCMWhYQ0VYeWI5?=
 =?utf-8?B?Q0kxYldqN01vV1hULy9LUVBnUEFYRVVUWE9QZlM4M2QxQ09rYTV0cEprL3FJ?=
 =?utf-8?B?dEczcVo4WUJiYlNXNHZMc2dZT21PMmhtMEU4aXF1WjBvQ1dBTjNDY3k0NENX?=
 =?utf-8?B?Ym9OT0x0NDBWTHhQUHpDaWVkMDJQOGRpTERPRE5MOFZjQ2hUUnF5NWlvaFQ0?=
 =?utf-8?B?UnNQcjZZOUp5MGUybTA0QjB1QW5pdWt3QVlXV3pjNWxSbG9lcGZuZ1FIVHp0?=
 =?utf-8?B?UWw1aDc4YTVjSlIvNjFLU2pyUHp5ejVTdXFoYWFKaHQyajNmMWM3aEdYMDNF?=
 =?utf-8?B?L3pxZXZLbThNMDBTK0JhYWVmT3ZyeU5jLzNxUXZ3RDM4bjVBWTlkSitQNEZj?=
 =?utf-8?B?M2JDYkczb05Md1dWeXhDSHN4cnF4Y0hVdVhCU0hUMk9BUk9SVUpNRFAwdlpS?=
 =?utf-8?B?cXp5U1AvM0tCcmpTdFpFNkkwMDNPcVA0aVphNWdiekpCOUhPR2NrNWJDWVVN?=
 =?utf-8?B?OU9jajc2Vkd4b2ZBQzk3V1ZxNHVCTVppYWhyL2dPRzh2VjlUY1JycVFRaFJP?=
 =?utf-8?B?K2s5K01RaDFyRkFCa0w5SmcwNHNFM2R0Z3h3R1N4NVduZnJnNUIrbHFpZm1O?=
 =?utf-8?B?WW8yUSs3TnRWcWx5Wi9QbjdQWXFtWCtTRXB5dDY0aTNLRkRpS2RrYkU4N0xG?=
 =?utf-8?B?Q2Zwa2NLR252cjh0YkUwUFRzc3dNWkFYZmVRZzV3OUJXSllJSkxyZWVOd3Ew?=
 =?utf-8?B?NG9mYXFJL1haSkNzYy9XRUlNS1hoanBjZTErMXpyaXlnSWNvODVQU2VQRVV6?=
 =?utf-8?B?MHFDWlg4TUEwaVZOVjFrYnNRMGZKM000WkVHN2xwNzhwSHNSUi9oNGJ6dFp4?=
 =?utf-8?B?Y1R3KzBsdzlJaDBadmhBcDVwVGJydU9lWTdVZTgrcDVleFhJRDE2a3ArenQ0?=
 =?utf-8?B?YTU2MzB4OHNXb0wxQ0E2MGJvMkFaQ3kzbzFQc1E4bVI0akY1cFpJM1FKRCtI?=
 =?utf-8?B?bk1BNmdTa2lPbEFZdU0zQ0dkTEpVV1FlNmt4WTBEQnpna1NqZEVjY3NzaFpS?=
 =?utf-8?B?ZXdBc1RiWDc0TEZxdFNBdDlob2svRmVRSnE0Kzl3MGxQbzErNUdleUJmVzhS?=
 =?utf-8?B?c04rMWtoWFJkRm1wVVFJYnV3L3E4S2p4eVFBSmdYay84cHdGK3NoTEcweVFB?=
 =?utf-8?B?Mmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d4d8e69-6a83-4ee6-af72-08daf5c6de0a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2023 00:32:50.6261 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pY0S529zoj9Xi4lZXy7hnmRxSfOvB2LySL25YC1R7C7Z++IzY77qpNul69mlNiGlzCxlZkpcdRR/cXKu6Tfi1RTHOvIqgfYyZpdRQE3YKJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7016
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673656384; x=1705192384;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=n4w6L3GC8Ee363wkpwiasE56H3dx19/MYe0UOfVv+8w=;
 b=akTDJ47l5N/vSlkTkK5lpewbAHOCYTPelni5p0ArE7eW+RfpqCei6Jni
 1vptve0GPqrJi15IunNnR7speEVtBMDsjB6270opHq73U5iLmyMJQoC2Q
 E7WvgfAHZD3cOBwenJohxzvr7ZqReVB+1zNKqqbsltO86MVt5Ir7hgDCD
 Yek0ExI/cfCHOrJ7tMEAVTp8LhWqQJGDJKGTZRMLkcN9qODbPqEniWZUf
 2KoaeLxR+vlRNZMF/TcirIE5jnPARc6YO51vwEinAMkdj9XDefbojnPky
 /7CiLCcYigTg/20gh533DY8YntL5xL5qEoCqTXdSL86TvimrfsCQXabsC
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=akTDJ47l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 0/5] add v2 FW logging for
 ice driver
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/13/2023 2:23 PM, Paul M Stillwell Jr wrote:
> FW log support was added to the ice driver, but that version is no
> longer supported. There is a newer version of FW logging (v2) that
> adds more control knobs to get the exact data out of the FW
> for debugging.
> 
> Additionally, instead of dumping the FW log output to syslog,
> dump it to debugfs. The FW log data is really just binary
> data that the FW log team decodes to determine what happens so the
> translation from binary to some text output just slows things down
> and results in potential dropped data. The structure for the debugfs
> entry is: /sys/kernel/debug/ice/<pci device>/fwlog
> 
> Once enabled the FW log data is received as ARQ events that the driver
> processes.
> 
> The FW logging is across all the PFs on the device, so restrict the
> commands to only PF0.
> 
> The following new device parameters are added:
> - fwlog_supported (read-only): does the FW support FW logging
> - fwlog_enabled (read/write): is FW logging currently running
> - fwlog_level (read/write): the log level enabled, valid values are
>     Each level includes the messages from the previous/lower level
> 	0 - no logging
> 	1 - error logging
> 	2 - warning logging
> 	3 - normal logging
> 	4 - verbose logging
> - fwlog_resolution (read/write): the number of log messages to included
>   in a single ARQ event. The range is 1-128 (1 means push every log
>   message, 128 means push only when the max AQ command buffer is full).
>   The suggested value is 10.
> 
> This patch series adds the following set of devlink commands:
> 
> devlink dev param set <pci dev> name fwlog_enabled value <true/false> cmode runtime
> devlink dev param set <pci dev> name fwlog_level value <0-4> cmode runtime
> devlink dev param set <pci dev> name fwlog_resolution value <1-128> cmode runtime
> ---

Overall this looks good. I had a few questions and suggestions you're
welcome to take.

I'm sure we'll get feedback about using debugfs and the nature of the
logs being binary. I think its better to send this and get feedback than
it is to do nothing though.

Thanks,
Jake

> v6:
> - removed cache_cfg() based on feedback
> - a couple of other minor changes based on feedback
> v5:
> - handle devlink reload path correctly so debugfs directories don't get
>   added twice
> - fix issue where code wrapped with CONFIG_DEBUG_FS was causing sparc
>   compile issues with multiple defines
> v4:
> - actually changed the modes in ice.rst for new params
> v3:
> - fixed ice.rst to have proper mode for new params and fixed formatting 
> v2:
> - removed some unused admin queue commands
> - updated copyright in ice_fwlog.[ch] to 2022
> - moved defines in structures under the variables and added blank line
> - removed a couple of unused defines
> - changed fwlog_support_ena to fwlog_supported to be clearer
> - consolidated ice_devlink_param_id enum together
> - changed ice_fwlog_set_support_ena() to ice_fwlog_set_supported()
> - consolidated return status logic in ice_devlink_fwlog_enabled_set()
> - pull up functions in ice_fwlog.c where appropriate
> - add newline for FW Logging Commands comment
> - changed any new u[8/16] loop variables to int
> - moved ice_pf_fwlog_deinit() from patch 5 to patch 4
> - changed error message to be clearer
> - updated Documentation/networking/devlink/ice.rst
> - updated commit messages with examples of devlink commands and using
>   debugfs to get log files
> 
> Paul M Stillwell Jr (5):
>   ice: remove FW logging code
>   ice: enable devlink to check FW logging status
>   ice: add ability to query/set FW log level and resolution
>   ice: disable FW logging on driver unload
>   ice: use debugfs to output FW log data
> 
>  Documentation/networking/devlink/ice.rst      |  39 ++
>  drivers/net/ethernet/intel/ice/Makefile       |   5 +-
>  drivers/net/ethernet/intel/ice/ice.h          |  22 ++
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 160 ++++----
>  drivers/net/ethernet/intel/ice/ice_common.c   | 218 +----------
>  drivers/net/ethernet/intel/ice/ice_common.h   |   1 -
>  drivers/net/ethernet/intel/ice/ice_debugfs.c  | 109 ++++++
>  drivers/net/ethernet/intel/ice/ice_devlink.c  | 200 +++++++++-
>  drivers/net/ethernet/intel/ice/ice_fwlog.c    | 367 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.h    |  57 +++
>  drivers/net/ethernet/intel/ice/ice_main.c     | 100 ++++-
>  drivers/net/ethernet/intel/ice/ice_type.h     |  23 +-
>  12 files changed, 984 insertions(+), 317 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
