Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F647748C33
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 20:49:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 495C4414BA;
	Wed,  5 Jul 2023 18:49:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 495C4414BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688582986;
	bh=B/wfA/N0N3HRoQ0hYuJ9HSEge8Rt2SlwlhkD89yBofA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PocfDCTCay7oJYCoVs6F+zEAsqEp6/XXkI/2RtFGkrwlEXMUW4Euaqz41n3K+3E7W
	 KPtZQwvarnvpgEfu1sVKeYSob3UBSqhP9qDFcCCfp27gOq4CzKTOOjEYYTCyAShaWh
	 FkM3wyj0npeLxaWUSdDsHYMMi5QzbuHqdxvjR84kQUQClsDkqfghPS4ziwr2fFiC3a
	 LWB3ggDbpeeoOpdnEMU+ey1oasYr1ajjh8GeHHZfCCg64iGTaOYPFA6Gvgift32eN1
	 YiN/h2KsBBlIoIJWIa5p5yShgt/1AaS8KQo/5BWbS4TefblbgES1+0ZEIdc8uexUzo
	 I8txs9DZn32Rg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zCmzTR2nzThm; Wed,  5 Jul 2023 18:49:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 092F74048E;
	Wed,  5 Jul 2023 18:49:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 092F74048E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 52A2B1BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 18:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 26A71416AC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 18:49:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26A71416AC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nTqnCAMFKzNc for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jul 2023 18:49:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A867141625
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A867141625
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 18:49:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="427101881"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="427101881"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 11:49:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="965916928"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="965916928"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 05 Jul 2023 11:49:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 11:49:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 11:49:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 5 Jul 2023 11:49:35 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 5 Jul 2023 11:49:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g9gt47yvHlFg5m7auERVXhAhDieNzoIyKIBTXWzFFZ9PEF6bm5+IzF6Z54Xopxs1p/yYyfbQgcG/Exqk8y/QzyiKfrvFfONmCGxVtE/929qjmodkG1HQN45AW0OnygGV2nCvZKhadKwRQcYeEVu1PX3JGaC65GnCJg7vP4VkRN/lYMIY5DugNtehZ9Qy35CQILGbCsjZt+6Ii8DbN14ymVnJejPQ0jqtnyCbk8jN8WyUf+GN+Col0U5Wa9zx4+TELR+eyGYfuz9c0Ql83hh91pRpR0AmBqqJlHnc7DSpWnWN47VmdLT3+KzyS6aDYQN8IUoOBLW2yRaQzw93XyfjXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9pP3NtjaFYAk9b5YHbDoSPb3OGvMpjeGTOCzhjFv1uE=;
 b=GiMdC5X2qQXhN5OL/FJAGIdfhwd6l31wnqt37yih7u9fiTLqJpGgYhbCIRwqtLguI3DceYKD6HcRu3jkwlSoV9MvE6qQmdQDc4NMieB5yoN3McIPDsbESKFgm4UkDAK2j9AlpfXXqwKthVnZ3augtFIkqNyXxQ8NGIHgSXhpm/7CCzM05Se7vlEdwHmoMmjUvN9L6hoXAunz7Yra+SL57UamaRF84L/CQbBvnQagYqsd1+wpkvDtvWZ0wTIrWWDo/iIytKseJ5Xfb9vlz5KW/8+Gz1KRXmCOl6sScJcNLpzMvg40SSRaiHmI6DGG9UhLax2Ccwi3IC8lwiyhZuvEdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SJ2PR11MB7455.namprd11.prod.outlook.com (2603:10b6:a03:4cd::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Wed, 5 Jul
 2023 18:49:32 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%7]) with mapi id 15.20.6544.024; Wed, 5 Jul 2023
 18:49:32 +0000
Message-ID: <2577d3da-d1c7-02c2-b9f9-5d4f62add0ef@intel.com>
Date: Wed, 5 Jul 2023 11:49:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: "Zaborska, Olga" <olga.zaborska@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230703103230.89884-1-olga.zaborska@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230703103230.89884-1-olga.zaborska@intel.com>
X-ClientProxiedBy: MW2PR2101CA0013.namprd21.prod.outlook.com
 (2603:10b6:302:1::26) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SJ2PR11MB7455:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b563678-89b9-42da-645a-08db7d88921f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: a/QpLSaRLTk/2kkUmyisNkVOCyg4fSgMQpeKu/WVssWWTfPQd9TmJy7mSeFDsXgnr9zWNF61eB1DxSh7E52Q9iaG8hOXdzQEajMGMKhqvAWPeOoTOrMtr1TNkW4afV2NS+1yoXuEtuo25dM8vkl4PdNf4OU1r5UbsW12GkH9wGcgYCbjff4ArU1lYALyJciBD2ug4NsMGVHHIAjbX5972pMgqfkgFSmN7rt340RYjgizYgkUChtaB/UOhllqPeGeJkeKwiyGsaVzv6SUl3Sh/dwm+TeGUaP8Oj9kqcRyYEc20uXZWVwFm6l2hF3zVXb9l36Hnx/DRXAFXo1gffb94OhIocnMRmnYDSyww50IcCYiJilmbpxW6dkaRhobnKSybzlBD8R/A5ts8uCn5zVPDAPc0myDhv7i9P0/dwqaMYBg91XUFggSdyZqe10XwJoB8/d7aHBlixqkGAiC1JNrau2nQaXDAdjH9ApaDZKfFiO4exnjgAOPKE0ia86M6TxJtfjBhVxnWjDIW8tz0vHlID0PSS76P7X/IWnlRIqKuLxSJhkTZWlcfAgI7jv/hMGn24iK7f2/M27nkuH/rIFhWqCjxiFJyIWKUkZ7I171R2BMiB/vv8h5tzi5PzJRU/LTMDKER6MdHuJRToNmn9jMLqrgRcyzRYmYQL1RxOY7S4U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(396003)(39860400002)(346002)(136003)(451199021)(82960400001)(26005)(6512007)(186003)(966005)(6506007)(53546011)(31686004)(6666004)(31696002)(86362001)(478600001)(2616005)(38100700002)(6486002)(66556008)(316002)(66946007)(66476007)(83380400001)(5660300002)(41300700001)(8676002)(2906002)(36756003)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1c2dlYvVGNMT0o0bW10dW5rWVB6cHJib2hxOUk0YkpBeEc0T1N5bWNpMWp6?=
 =?utf-8?B?Y1d4a3ljTThZRXY1NzVBSUFTVUEzL0Mxc3RPVUVRb3FVUDNQZ29Nd1cybjAz?=
 =?utf-8?B?Sld0SStpclBsb2pncklRdE4rcDM5MER0SUxteFkxRTBla1dONkNUU0tYcTQw?=
 =?utf-8?B?RlZVN0lRTmZ2SDJKbTlFUGRPazVmRVh5NkJGNlNZditXdlNVeEdTdDNOazNn?=
 =?utf-8?B?RGx3SXk3WkpsSW9PcEE5emNYNjNEdlYycXlJWTBqRXp5TXQzRnlJTHduSks4?=
 =?utf-8?B?aGsxN0I0aHhlK0ZYQ01FcUxiU0Y0R3R2U0xUbCtsY2NUb0VnMUs5U28zcXNp?=
 =?utf-8?B?TnRxczFLSzJVN2NoWksxenBpVytDVW5ocFY1cFVtK0U1d1NvQ1dMVGhvMHlx?=
 =?utf-8?B?bWtvQ2c4K3VEZHdFMGpEVGo2Z2JiVzMzZ0t3anp0MVdEWFd5YWpJa01BT3p2?=
 =?utf-8?B?aDFvSGJaVVZGNHJqS2NxdVR6My9qUlZDZjJkTGt0blRvalRCZ1VQeU1JbVRE?=
 =?utf-8?B?TGNyMEVCbTBLdXd5L1NxTnB4a2ZQT240SjJTMmtzYkliRXo0R0d6Ymp5c2pl?=
 =?utf-8?B?WGUrWFB6SDZ2MFIzWENnTE9mKy8yM0VEVlRQdWFOekR0MzltRGJ0NWp6ZWsx?=
 =?utf-8?B?ZjQwNUI2K0lYNG1zUHB0ZkZ4TzFMdFJZYXNIMHhRTEVQcnNXdlJZNkFSQmxX?=
 =?utf-8?B?UXpsSVlxSzRLV2tGTnZCOVpBNVV4QXNqZEZIdldTVjJnSUVmQ0RyMHV5eC96?=
 =?utf-8?B?WnNERkVTdTV4U1BkSlZaa1A3SHRrNmJwSUNFMUNRTEd3UnFldGgvU01qTllZ?=
 =?utf-8?B?Si9hVm1qRGtxUnVIRlRSSGpOclhhZnFaWm9jWlFYTWZyRnZRbjA1cUxpc1Jn?=
 =?utf-8?B?cUxNVU14K2VNZzdoNjFKWW1BQTlBTlc2WFRJRTNVUE8waEtINDhXRDBobDQr?=
 =?utf-8?B?RVpvaEpTZmpKeEQ4aE43b1pFOG94TUdHU1JvbFJ6TkdiTm45MEhZM3RPWmZa?=
 =?utf-8?B?ajFBS3J2VWlreUhrQUZBOWNHdUpycFYwZXBUa1FudUdNMFRnak1OU05pb2N3?=
 =?utf-8?B?ZG53ekFBZ054VWs3dTFPNzd6RHVLdzRXbXB1aWdqZWNEQk1JazhiSmF0Tnhh?=
 =?utf-8?B?dmh2ME5RNld2ZXVQMG0raVlzaDFCK1lwdDUvMHMwVGwwVmoxMzJXQUhWSUY5?=
 =?utf-8?B?Zm5BZWFMU1BKWFhTTzN4MUozd3lYQURQUGNHM3o4U25vUU1pdVd0TjI1WWZ0?=
 =?utf-8?B?V0hDM3ZzYXBpS0pVcEQrcE9sK0RLS0xWSFI2amhsRk9VemZmMUtyb2MrbDhP?=
 =?utf-8?B?UlBnUmFSZzJPYTF4bENmRDB0Um5kbkYvMEo4SitPSkRUaE5NZWhySnZMdHpL?=
 =?utf-8?B?alBnREJRdjk5QW5UeVBaZXJhLzJqUjBKY0lzTTVCbDE5ZHpQRjI3QnN4TDIx?=
 =?utf-8?B?M09yNUNSWXVXMllzVmdOOE1ZTzFjakdRRG1FT1MwckQ1eTNrMUYrRmNubFcy?=
 =?utf-8?B?ZzQ0dDVFeXRxZzdYYlVQUHRPYWc2NHhUbjUxemllSzA2cHBjdmVzWklla3B3?=
 =?utf-8?B?TDJJT3FuYlNvazdKVU5vWkdHZnM1aFMyNjBBUnB0M2hYQW5yVUtod3RkektX?=
 =?utf-8?B?aG5wTUtVMnEza1htNTZ1Q3EzRk5WQjNFQk1QNUVyK0x5OXFBZTdPKzJqblJQ?=
 =?utf-8?B?dnNQQS9DQm1JY3hoLyswVzNuOEJITllFTEwzdmVDekFUNmJ5Z04wZm9yQlRm?=
 =?utf-8?B?NUZvRHRlbnA5N1RMOUdrVmxoTFJ4b1NzaG1rT0dyN0tUQkpEMUpwcDV6SzVo?=
 =?utf-8?B?UUhiUlNLbFppMnYwZEZvR1BKbE5Ublo2VmYrSnh6ZG01S3QrMXRoWmNaWGZX?=
 =?utf-8?B?N2xaSFY0NTBqOE0zT25RZW1RS1JzUU5uUUhWQVc2TGFSQ2ZJdkUxdzBxZ09G?=
 =?utf-8?B?KzV4Y05OTTJEOWhDMEl6OTZOZ3p3Mld1VnRpbTV0dUppN0c0bnY2aWFhc0dW?=
 =?utf-8?B?dnpZcWRXK0Z3UnY2TEt4NFNwc2NrblEwOFRuUXZwSVorK28xNkgyUGhhbDFT?=
 =?utf-8?B?NXg0ZnVkeGprbGVrQmltb1NYcU5YZVJ1WDVjWVFaR1M4SjljOUlrRTJadjlw?=
 =?utf-8?B?WGVzWGtsNWcxWGZ2bkwvOVA4VysyOWtHZkxITU5uUHJvYjRiNmpsWjRkNmd4?=
 =?utf-8?B?Zmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b563678-89b9-42da-645a-08db7d88921f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2023 18:49:32.5402 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i8/EdOzypqwqjHFEURA874zWKe/5Sjub4WFyXdnJMmmgsdM2knq65MXQ21y2cCOTl+f5YiRRoe5puvToQb0IeDl6LWBMgSleqKXTlESGkhg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7455
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688582977; x=1720118977;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=T7KPBrZNte/Hat4tCFJFHprrzX9+kaXNnSwwkFiJoog=;
 b=G70eqP4TFQVqZvYGGDgFRODwoZLanf045aiemYpE2B60/IoPbZWITds/
 rwStsQAgPOMgYluWeHmU3ru277uqIBNnOtyQooVk/tlOZPd7Mg/g429PW
 C4cT4NzQNim1Y2ZE1Ef/R+Us4+9FTiVfXhMBwmIi4GwQ9YtVRXM2Neok1
 X71i8TFCGrPivE3oPMJnHMx+M+31DKlkBfXAp7ZqKk8BkvPrw997d70Zy
 +oseyaPKZ9GMafKya5wbaz6xfF0R04TnN8wCrOdCBDH7Y74lOh4nnvwER
 TDJfXjR7tD1ohbJHHpn5TP/q8+g43lSk0zUk7ERTB7BeOFidYRzbk8tRZ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G70eqP4T
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igbvf: Change
 IGBVF_MIN_TXD and IGBVF_MIN_RXD to allow change of rx/tx value between 64
 and 80
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

On 7/3/2023 3:32 AM, Zaborska, Olga wrote:

This title is a bit long, it could probably be reworded to be shorter 
and still convey the same message. Unofficially, you should be shooting 
for 50 chars or less.

> From: Olga Zaborska <olga.zaborska@intel.com>
> 
> There is currently a bug where when setting the rx/tx value between 64 and 80 it automatically
> sets to 80, this will be fixed by changing IGBVF_MIN_TXD and IGBVF_MIN_RXD.
> Based on commit:
> Link: https://sourceforge.net/p/e1000/mailman/message/19194160/

A kernel commit reference would be preferred over a link.

> All e1000 devices can use as low as 64 descriptors. 

How does this apply to igbvf though? I'm assuming carry forward of 
previous driver code?

> This change will unify igbvf with other drivers.

Is it unified if not all drivers are 64 [1][2]?

> Fixes: d4e0fe01a38a ("igbvf: add new driver to support 82576 virtual functions")

What is the bug or are you allowing more values (which IMO is not a bug)?

> Signed-off-by: Olga Zaborska <olga.zaborska@intel.com>
> v1->v2 fixed commit title and message

This belongs under the '---'

> ---
>   drivers/net/ethernet/intel/igbvf/igbvf.h | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)

[1] 
https://elixir.bootlin.com/linux/v6.4/source/drivers/net/ethernet/intel/igb/igb.h#L37
[2] 
https://elixir.bootlin.com/linux/v6.4/source/drivers/net/ethernet/intel/igc/igc.h#L329
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
