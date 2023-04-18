Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E7F6E700F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 01:51:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A03741DCC;
	Tue, 18 Apr 2023 23:51:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A03741DCC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681861894;
	bh=Y0fuomG42ZLbJKbfFLP3FSeI413humTN0UDKwlCdhsY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nSykI392/ukQG5YSasj2iA/UFibAGIEH7hGYTEgaE6cVC7Hyco2hEBEiym2unep+g
	 7C1RNwxLVyx87XC18TnrXzsdLa2WiTOjBuw+hyrJSdC1VMDdWiuYtu3023UYmeVn/e
	 NEcs0IIPtkpcsq4W/UNwtl5Y7twd0x/E01hJsgjSnFYTbxysFrSNeDzKh5/aeUwXku
	 nJKt9eY011jxLisQgbFuQas8b6RDVp65pOz/9a+d6HBgVX/BGpZ8f9Czro8qjF4pyV
	 75VEVfewqoFQKFnGO0LbkUTFUVV2wDxNuzsnhMMAT9zOUNWAG85xkCaNXFkrQj+TGK
	 jb1co+VAtsqGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N-zy6utfybjx; Tue, 18 Apr 2023 23:51:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 418D641DB0;
	Tue, 18 Apr 2023 23:51:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 418D641DB0
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2B9381C430D
 for <intel-wired-lan@osuosl.org>; Tue, 18 Apr 2023 23:51:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EEB1783D13
 for <intel-wired-lan@osuosl.org>; Tue, 18 Apr 2023 23:51:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EEB1783D13
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yEPn5JZ1MWR4 for <intel-wired-lan@osuosl.org>;
 Tue, 18 Apr 2023 23:51:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC72D83C53
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC72D83C53
 for <intel-wired-lan@osuosl.org>; Tue, 18 Apr 2023 23:51:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="342797277"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="342797277"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 16:51:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="691284748"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="691284748"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 18 Apr 2023 16:51:24 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 16:51:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 16:51:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 18 Apr 2023 16:51:23 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 18 Apr 2023 16:51:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ANXL0Ojp+rNJUZEynNQVXiOL17Fu+qLKSJ9xB+3fEaNmtz133gtC7/zbv7Xebhwx8hPH5DfawcuGs03mGe4oiF0WxEBm0eoLNZv3OLLgobD5AYsNft5RX/hyO1Vz0m1KKXoR4faeZMOG5Uer8/81nv1RXmdtFW9vu9zkR2jdajvE25JW16xSWKuDNfCTWwlSkk7P5EBbzRaW5NleqEDkF6JNzlE8kVYLmN5jpA545WgPrDBG7KOUkMRncsmkcY8ZKHc+5HiuCxBKd6Zrso6mI3twXpiWwiU7jrcY/WJvLVEVwvPpMpD+kKB19uxSFcjFulpMyJeONHMMjND5I/wmLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/MaMD27wv2Y1GOhnvqiDLy/yKAFvRsadtZB0n+XOLZQ=;
 b=L2eXP3TNCSVu7NlvFJXJ/gOfHDdS/P81FP97B2EWBNkwI5y4qnTUIkcbXqFCqDDnyKCU0KOkyD0SMkBpLpMf5DkcyWBfw2V6RXGGl24OIkv1iFsGe5QNT3cuZdo6eNCGgHnc5dC8OEyJqeyku6EuwoWEJCpLOnoogigVokENJtIs/yNpNpPFFXM0ZtCSLrgBSQOVjP6pcqpSiWM8sJboF/UemA9gmpnUKhN+neFtF+SFshgZkAvEBV67C3ZOxBYVHGeVzJOFo4DslZdAbXQ2QRqq2JbtLuWFOD7o06ObtlnxcXvGThza/ucO4X+Um4dEQgNrbJ+dFeJYY7UEGNgsnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MW3PR11MB4619.namprd11.prod.outlook.com (2603:10b6:303:5b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 23:51:21 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47%3]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 23:51:21 +0000
Message-ID: <84acb1a0-f51b-cd2d-d42c-5133767a6698@intel.com>
Date: Tue, 18 Apr 2023 16:51:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>, <vinicius.gomes@intel.com>
References: <20230411055543.24177-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230411055543.24177-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: BY5PR13CA0024.namprd13.prod.outlook.com
 (2603:10b6:a03:180::37) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|MW3PR11MB4619:EE_
X-MS-Office365-Filtering-Correlation-Id: b6f00784-0d6d-47bf-4fcb-08db4067cf6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0mEmG8YibDuPNbRamyuMs2AZJ5W+L2fbvphXbpvWKzb8+n6Rd9a4MJMufowFWNPbw9qmNroG7Y91q15phNMR9eGxeCymvgT5gnHc9Vq64+mKP0mtMlWxpoQENiRC/JINIljXVibESxpS+nis4rafL74f6+Ucv81q70ktoTKCD0lpcW+W5TYbV9ra2f1KYzoNXwExys01rpAeakudtbMaAw52mp8p6oquNB4JqXiyuIH7lIpPaWG8jjXExyqxJSi4wIF2jv13KELaoIzU/Rv9qL0vUJ9pmAY8BywBjlZXUmiwJx2qA/+yS+fMtLp0hu5I7wKp5ldN8wGEDOg2fwM8RAFBLHjAwbkQG2fboskgGu2RRveJD5J6SZHMnPBuxysrqMzKEtPgWtOGDPosvbdMSPK4ccEDwEKQtc/P55G6kdb0TLsjP/oNF3sach33rc5iaDBRIjt7mnIMTg0sWe7xhZnSmTtAA1gXWvzopUMz//4vA8sM+OSHUwoK89fM1SPWc1A/LzGdfG6mNHtUQ8qKjvsdcYGG2CnUEJlsUZeDcfXyXluNGJ6g4pOW30s1+3hdFcymtSanHij5s685XxcUBrI6/9yNUfxW2A5fzlrVymFa/6YgM9epTmw1FY+eBPq2kWyHBqRZLnev1/DIs8J9dg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(136003)(396003)(376002)(366004)(451199021)(6666004)(6486002)(66476007)(316002)(6636002)(41300700001)(38100700002)(82960400001)(36756003)(8936002)(8676002)(4326008)(66556008)(66946007)(5660300002)(2906002)(478600001)(31696002)(6506007)(53546011)(6512007)(26005)(31686004)(2616005)(186003)(86362001)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1N1eGVxMHpHbFFhRzVmYm1pRTlLbnBjVGZHS0FOOVc4ZlRmbC94L2JGeVho?=
 =?utf-8?B?YWNEQ241QlpGM0FHYTJpZWZSYXV5bEVMZ2dNcklXQ2d6RnE0Z1IzRWUrTVVj?=
 =?utf-8?B?R2VGdFZZSFpYZkRaeTBCNjF3WWJiTE5FdkNsTkNsdE9Xb2NRaHQ4amV6QWV5?=
 =?utf-8?B?T296M3l6Qy9DSTZJM2FzdHE4RlVEdjZHSFJRak9HSVNFdytLNTY0aUg5SzJD?=
 =?utf-8?B?STQrNUFUOFRicWlFVEVxMjJ5TSs5MnVIeUc4czYzbzRIT2liSW9LRXdjdWFw?=
 =?utf-8?B?QUtoQTdQeWlrUGhWbkp3bjdjaE1qSlVBSFcyYVRCTWdTQzhtQzdwOURXaFlR?=
 =?utf-8?B?RUxLcit1K1FjcFExMDA4YnJIaVBiL1BIdnJwUER1OVBUSVNVNmc3RitTTldR?=
 =?utf-8?B?L3pmK2tUTnRWK2sxcjhWQWs1c2JjWmwvNDBGUWZqblF6REFBcVZEV3AyTkp1?=
 =?utf-8?B?dCtzajdNNzVoTVQzWHZsblBSMzQ4UUJ4cXZaRU1hOUl6UzhKNlFUalJ2SG5q?=
 =?utf-8?B?RytvQzhlU1BoMHlWUC94T0tnMTBWN1pISmFGbjVUNGdIMTM4LzZOOUJNOEM0?=
 =?utf-8?B?bVhMekh2WTFSK2FhTWFaT00ycUk5Ylp0WE04ZnQwSEt4aTBxM3k2WStqRWJh?=
 =?utf-8?B?cVllL3BSUkhHVXNSTStrRi9CcGxEeGEvTi9kQW50dHpFQTgvZ3AwWGY1bzdo?=
 =?utf-8?B?VzgwVXNBQjBySFBZRUxkYzBvYXpUcVo5K0VCaUpEcXlkRW5zTGFRSGdwVXV6?=
 =?utf-8?B?RTJsd0ZRZDFQTFlhU3ErdEUwNi9UV2Z1QXFRU0ZiSExtcEdOdFcvdHJ1Vncy?=
 =?utf-8?B?TFErZm9idjd5Y2JFZ3lLVmgvNTlzRU81UEZhMzB0Z3prK3pDdG8wOG9EbmNv?=
 =?utf-8?B?cUw5NGZGWWRDZytJaWoya0pJaEF2TDFvMkNYbkFRS0hsbTd5OExpRWZsUi8r?=
 =?utf-8?B?YndJRUtJTFdCUlQrcmdvRVQ2bWVxUkk5ZytjVTh6VUJlVWIzSWxrRjNJNmlX?=
 =?utf-8?B?YVJITms1K25xdkM1YU5IQzZwVWZYZVoxQnh6VmlhaGdRQ1I0V3ZRT2RnbHlo?=
 =?utf-8?B?b2M4djNBZStSNkdFQ2xLTEZTSDRYeStJR2c2VTZBeExVeWhDVkE3UXdLNlhl?=
 =?utf-8?B?Z2lZd3ltZUhnaE05MW5JWHhaMCtjUVdpK09EcERvSUtXdlFBQzZRK0dRaTJO?=
 =?utf-8?B?K1dyTHJxMGxtLzNlTTdQUXZvTm93eWMxZE56YzJHeWJtN1A4U3ZET0xEL2dr?=
 =?utf-8?B?WUdRSS85d0N0dHordlZuUndha2xpb2VadnZWamgvOFBWb2VaVG1TU0JZWlN0?=
 =?utf-8?B?Z21Zd3R4Y0k0YmJjN0pFcTgzRmNNYXhBQVArdFNJMU5FcmFRY0xYZ3ZyM3l2?=
 =?utf-8?B?MXZneGIxdkErczdVNjg0a09MTFVoNEdzNU9qSTVTdFJoNWYwdGgyZHJNYnBw?=
 =?utf-8?B?eVB3ckNHYm16SmU5RXlyOUc0R2NuRElwckVxNnhkUWRlWXdsVCtaTGQ5SzVv?=
 =?utf-8?B?TGtUTFFPLzVzbnErTmZPS1dsT0tFbU5FOU1mOTBPLy83Y0IxNXdoeFVOdEQx?=
 =?utf-8?B?c2lIZ2ZjN1lYNzNqdDVuZXFuY010ekw2MTNKSVJ2M3ZidzJPdUc1TGFFQzc3?=
 =?utf-8?B?NDNpVjNUMnZJV1VUcmlFejBGOExyTmw4Zmg3Y1V4cGpFcG1DS1ZMcTdoUEpw?=
 =?utf-8?B?SEQ2TlAxMUtZYWZTbnd6TERLaVQ5WjcvNFo2QmxBMTNVM1FuRWYvUEFFeHRM?=
 =?utf-8?B?TE9lY09oazA2K1FtTFExZmE3RmVjUXdBdTBkR21rQXZqWWs0Q0Z6TVVDdzBy?=
 =?utf-8?B?VWVZdzUzV3N0ZEk1c1NXUjNnQ2tlVGx3NFF0UTQrRXhKdzNnRW0ybFBZd2J0?=
 =?utf-8?B?dmlOcjdyZDU3cklNWHlEQWFPdjluVEtsbm4xNWIxUUlQVG4zZHJNUDVFYTFS?=
 =?utf-8?B?c3JYS3VmNUxicXRHUlNvTjRvVnBaMmQ4cU80djhVOVIwVzFmTDBtanVnWG1C?=
 =?utf-8?B?TnZjbWEwQi9KdzZKY3JMLys3QUNrV1R4Smt1OSt0UlF2Ti91MjU1cWd2ckN4?=
 =?utf-8?B?MkN1RFJOb2NlZFpkM0crRTNxM1lsM3VYWjg5dUpUYkYvcEhnYS9VZ2NCWU10?=
 =?utf-8?B?QmJnRWQ5aFUrSHNKK2RBMkhqZVROT3M2LzR2YWN3SDV0ZGNsa0dkK05mM3pr?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6f00784-0d6d-47bf-4fcb-08db4067cf6e
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2023 23:51:21.1370 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ad47yYE8hMLKnhhZAh7WU9Ci1YTdxEEr6MVZfY70H0P5SPkVm9bb4LtDFa5AIyQMIuuoCgAUEPCwS7BoTrZqLg46oLdD0RktIDWhngl3tLw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4619
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681861885; x=1713397885;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0/qcMtSq78GVjQE4AdrYcHWp6CiCEbxvjtZFp/mvkok=;
 b=IolGIEeErdAQ2rOEuDC/OM16xzZ0fZ/3EleUErCzM/qb5h3qOgVhboVf
 f2DiLlEWHzLHXfnFivLyu36y8W9m7LZnylHP6l1zmkb5KNTcnMrJz/soX
 ulu2KnO+zwu5HjbyEqM51VdrvzbPNOWg63DasFNHauzpsmY3/NrmUD4/G
 8BK6HQQLanKeMDuY53UOL7sA9Eg4L6qp12kKempXNoNeoKH+9wQerwR0g
 sUhDLcNx/+ZTCdi7WGLwGQK+CSuyPtJxOo00NdKqcE5NNsNpUnHzwWDmO
 Yn1kvuaWXEn0BwU7Ss/cW2WCF8W4gPxW4gS6hsU4pNJMvuwPyUMgy7rIc
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IolGIEeE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] igc: Add
 TransmissionOverrun counter
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
Cc: kuba@kernel.org, jesse.brandeburg@intel.com, tee.min.tan@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/10/2023 10:55 PM, Muhammad Husaini Zulkifli wrote:
> Add TransmissionOverrun as defined by IEEE Std 802.1Q.
> TransmissionOverrun counter shall be incremented if the implementation
> detects that a frame from a given queue is still being transmitted by
> the MAC when that gate-close event for that queue occurs.
> 
> This counter is utilised by the Certification conformance test to
> inform the user application whether any packets are currently being
> transmitted on a particular queue during a gate-close event.
> 
> Intel Discrete I225/I226 have a mechanism to not transmit a packets if
> the gate open time is insufficient for the packet transmission by setting
> the Strict_End bit. Thus, it is expected for this counter to be always
> zero at this moment.

This still nets to adding driver statistics that always reports 0. My 
initial reaction is since it's an IEEE stat and part of a certification 
test, it should go higher than driver level since other drivers running 
the test would need the same statistic? However, I'm not sure how that 
fits in since you're adding per-queue tracking.

Also, not a fan of the camel case naming.

Jakub - are you ok with this 0 driver stat or did you have a thought of 
where you'd like to see it?

Thanks,
Tony

> Drivers are now adding the statistics independently because different
> hardware controllers may support different hardware queues.
> 
> User can get this counter by using below command:
> "ethtool -S <interface> | grep TransmissionOverrun"
> 
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> 
> ---
> V1 -> V2: Change per-queue stats. Driver still remains adding the
> 	  statistic independently.
> ---
> ---
>   drivers/net/ethernet/intel/igc/igc.h         |  1 +
>   drivers/net/ethernet/intel/igc/igc_ethtool.c |  4 +++-
>   drivers/net/ethernet/intel/igc/igc_main.c    |  1 +
>   drivers/net/ethernet/intel/igc/igc_tsn.c     | 10 ++++++++++
>   4 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 34aebf00a5123..a3edae4ef9de8 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -45,6 +45,7 @@ struct igc_tx_queue_stats {
>   	u64 bytes;
>   	u64 restart_queue;
>   	u64 restart_queue2;
> +	u64 transmission_overrun;
>   };
>   
>   struct igc_rx_queue_stats {
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 0e2cb00622d1a..3ab2555d674e1 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -112,7 +112,7 @@ static const char igc_gstrings_test[][ETH_GSTRING_LEN] = {
>   	(sizeof(igc_gstrings_net_stats) / sizeof(struct igc_stats))
>   #define IGC_RX_QUEUE_STATS_LEN \
>   	(sizeof(struct igc_rx_queue_stats) / sizeof(u64))
> -#define IGC_TX_QUEUE_STATS_LEN 3 /* packets, bytes, restart_queue */
> +#define IGC_TX_QUEUE_STATS_LEN 4 /* packets, bytes, restart_queue, transmission_overrun */
>   #define IGC_QUEUE_STATS_LEN \
>   	((((struct igc_adapter *)netdev_priv(netdev))->num_rx_queues * \
>   	  IGC_RX_QUEUE_STATS_LEN) + \
> @@ -781,6 +781,7 @@ static void igc_ethtool_get_strings(struct net_device *netdev, u32 stringset,
>   			ethtool_sprintf(&p, "tx_queue_%u_packets", i);
>   			ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
>   			ethtool_sprintf(&p, "tx_queue_%u_restart", i);
> +			ethtool_sprintf(&p, "tx_queue_%u_TransmissionOverrun", i);
>   		}
>   		for (i = 0; i < adapter->num_rx_queues; i++) {
>   			ethtool_sprintf(&p, "rx_queue_%u_packets", i);
> @@ -850,6 +851,7 @@ static void igc_ethtool_get_stats(struct net_device *netdev,
>   			restart2  = ring->tx_stats.restart_queue2;
>   		} while (u64_stats_fetch_retry(&ring->tx_syncp2, start));
>   		data[i + 2] += restart2;
> +		data[i + 3] = ring->tx_stats.transmission_overrun;
>   
>   		i += IGC_TX_QUEUE_STATS_LEN;
>   	}
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index ba49728be919a..d252f2ad8e700 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6051,6 +6051,7 @@ static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
>   		ring->start_time = 0;
>   		ring->end_time = NSEC_PER_SEC;
>   		ring->max_sdu = 0;
> +		ring->tx_stats.transmission_overrun = 0;
>   	}
>   
>   	return 0;
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index 94a2b0dfb54d4..b9c07fb7e6aa5 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -136,6 +136,16 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
>   		txqctl |= IGC_TXQCTL_STRICT_CYCLE |
>   			IGC_TXQCTL_STRICT_END;
>   
> +		/* If it notices that a frame from a particular queue is still
> +		 * being transmitted by MAC, TransmissionOverrun shall be
> +		 * increased. But currently driver setting Strict_End bit
> +		 * which indicate that packet from the queue can be transmitted
> +		 * only if they are expected to be completed before the windows
> +		 * of the queue is ended. Thus, this counter will always be zero
> +		 * when Strict_End is set.
> +		 */
> +		ring->tx_stats.transmission_overrun = 0;
> +
>   		if (ring->launchtime_enable)
>   			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
