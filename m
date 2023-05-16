Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 263907043A5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 May 2023 04:53:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A42781E93;
	Tue, 16 May 2023 02:53:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A42781E93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684205635;
	bh=siyY3QKP9cU2hcg33EUShwO935MsF9gptuB0nCbPTfE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6wCBBuZryR8pW2CuCIzEZC7eNV2A2jAFwNqdzVHUIa4dKsmpp1Urs9+QX7EemeNzo
	 PGF5PVUmAys2ePU6GkMXBpTNbHtSq7WxmYWo7bvna3WHz6X/nOHnR/HE08HVj2CWHn
	 jMRVmlWMtvbptfTiHtCB9JiEXxAvSEY56X6n76oHglkHp/5B9KmVHzO1qAb9fiaLNT
	 /R7hyf2xtYr0zyhRAD0q9yvymWq+p1iMMv+gNPmjmdQ5yNl90jArzqtgo88/mA0w7V
	 t5BHgrY3M5UCuY3u+pYAJVztXFsMIWAkOJSvdTa2yWJbpRBr1Zo9ycrpZygTP3V64D
	 QgvuKDgXyJMVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qG3feliuZhmX; Tue, 16 May 2023 02:53:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F89981E6F;
	Tue, 16 May 2023 02:53:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F89981E6F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6DA0C1BF291
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 02:53:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4FE5240546
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 02:53:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FE5240546
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PD0l5tt5Gy8Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 May 2023 02:53:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7111D400EC
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7111D400EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 02:53:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="351396991"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="351396991"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 19:53:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="704220593"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="704220593"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 15 May 2023 19:53:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 19:53:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 19:53:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 19:53:46 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 19:53:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EArH1IsIfV9152mF6u6TjAJ2S9raSs1RsmIL0wjsKFSsHkHBZjsNrjL5Aw9Kfx4WsmD0vAXnzCBKe/c469ljHnAbJRcSCPqb7C/zNm2/pE4RkJYAOO8hEYOi3RJr1OyPW8lAFyXvSdbTYSwUmqLltZ/PflSZAcjQnfxwm/LMusIg4NbbfOqQfBkbhg/jnDphpJ4qOLN9rKkd7TmX7CsVnKE9VTzYXAJOHdhb58L8JEWVBLl/+4/uESCDaG0h879rsMPpQLT8P/CZoRaSFxP39cppthksT6uZ+1I+tFjTkzrPNmu21JqmabgGxjpaAsaQLcrmYaKZ8yyj+IwZ1mPXcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gGjZfmwlsZqRNxVQjnYvmMmgYqTI2Ht0mwb7OYXd3i0=;
 b=dYRkWmeW17NL/BfCcqpHzy6zcEKBuNb22Sw7wWi28p17mEMMqthWQ13dYHxPlSO6Jbp6Z+GzL4w4VTywStjUHXCxXyOwyHAYmW+OU396AOr3fKGgcdDMfUD4CGwW4atJ5RrNxhhy5RN1FbqQg6ayovg5pcUUTd+5p32mGdnL1KH9lRjL6cRBv72xTRXp96zDO4rtJ2C1Jg0hnt3u+bBwkubWdJbMW4OMQu52LYkk11ftswLOR8sE4CttH2ABA84GnGrs3OGIZnDdlGN2BwM31V4SW/SafZd6nDWyOGe+ic1fnNcchGNqXe+F1Yqx+eUBAdwzsBYKbR3nLqosCmnB1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by MW3PR11MB4572.namprd11.prod.outlook.com (2603:10b6:303:5e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Tue, 16 May
 2023 02:53:44 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::903f:e910:5bb8:a346]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::903f:e910:5bb8:a346%6]) with mapi id 15.20.6387.030; Tue, 16 May 2023
 02:53:44 +0000
Message-ID: <def61d08-c340-fcf2-d82c-a0d036bade4f@intel.com>
Date: Mon, 15 May 2023 19:53:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: Stephen Hemminger <stephen@networkplumber.org>
References: <20230513225710.3898-1-emil.s.tantilov@intel.com>
 <20230513225710.3898-9-emil.s.tantilov@intel.com>
 <20230513184714.4e0b9315@hermes.local>
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <20230513184714.4e0b9315@hermes.local>
X-ClientProxiedBy: SJ0PR05CA0081.namprd05.prod.outlook.com
 (2603:10b6:a03:332::26) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|MW3PR11MB4572:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a04c0dd-47d6-43d6-6281-08db55b8c311
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3BVH3O7prqmw3plWldUSGRM/LBdqokwqrUkteYBk1Lzbc5/IMgngdtg1PDe9NsL7CIogVTlnx9MyxgfJAVR7WNKCPCjcyAkwNEtJSuCNNA+qhjkYjbydxxlXuye5sErMoXG3IdoN8Nuy6Or9I5wGn741ZeMGUX1RgrVJtrEaWMf1VutDOzQZiBlvJ7aIu+wqGyYrAkm3zM0t2TfwP4ESuWlZOgs/5NEE+8i5AuvRI5MHzMTVLJqeI3fO5c/ZUeDzZEI+2w7dxaPfUXvyD/xUqyAFLD72sMrJuECgs5Kw0Fjh7y/jQjKeuNvBAJtLoDezeGXe/SdC5bWxykMRpM078QYn8itsRjVziBUUScPgJgqFkCZWiYDi+mbRpUgTTlpBdRiDUMWtdA3TzSC1yJfTwv8ErZLlOl7bGCgYM+0fM60aYk/uWIVET1sUaEdbY0XTyxrftt1hl6yEW604kUPtOUV637Pc7EELfNv8s2knU7ZXB1PjARAP7MK4bp1A4Y38Tov4MKQ/xqMHW2wNZiF5OG0QJC6sce0Y3QXK8uKNJsf0AOrzr3pG1CmUQ9x9T3ot9xqzy5nqCqPqC0W/iYz88nu79b7qwFVPaLUGXiX7jqjBemO+6SJVu2SeSif8sAzcv4viIZqo9PZ05KMiS6jOyA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(136003)(376002)(396003)(39860400002)(451199021)(31686004)(4326008)(66946007)(66556008)(66476007)(478600001)(6916009)(6486002)(86362001)(316002)(54906003)(36756003)(26005)(53546011)(186003)(107886003)(6512007)(6506007)(5660300002)(8936002)(7416002)(8676002)(6666004)(2906002)(2616005)(4744005)(82960400001)(31696002)(38100700002)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SkJXVkdsWE1yaUdlSDdVQ2ZHQ1gvdUJnWlhCdmlDUkc1UUZtVUtnYlF5VnBC?=
 =?utf-8?B?RFV5S3R6OWdFNUdUYkcvbEJ4ZS8wQnQxa1ROYmQxMmJ6b0lZTE1zcFlFU1R1?=
 =?utf-8?B?MDR1WUU5Skg1VEdUUkx1Nk9KMDR1UVhHbUFmN1BuRHlVSmk5eStJaTNub1VP?=
 =?utf-8?B?NG5HLzVTRzZyTk9wUStJbVo2b0hNU1ZwdnV0cU9HZms1RUJaUGdLeld0YUgz?=
 =?utf-8?B?ZDdDOG9WK041TU9obXNYODlJb0JiL0RLNTIwakhjUFVzaTJEMHQ5VmV6TXov?=
 =?utf-8?B?bGh2UHV3TWFUVFFDVEZuYXdwK0FTSGFBcEV4REp0cUdmcUlXdC9pZk5KOCtj?=
 =?utf-8?B?REx2YXRXeHdSaFdvdEtsVUYrMXNrdlZXMlcvQ3IzNGZSMHhXOGF1ZmtlZFZ1?=
 =?utf-8?B?TGQ0YlJuL3F2alRqRCtSbHh3b1Vvb2N0SnF1RnFzSmg0NFkxRVFUc1pDMzV3?=
 =?utf-8?B?ZHdqOEdyeGUyaTh1R3F4ZDdNWGZUOStTVE1UMmp2L1I1elMvMW1WUmtZdDFi?=
 =?utf-8?B?RkRuNzF3QXMrZkdWeUpGY0p1aVhtM2pLTWJsMjJsb01jL0xlTmw3L1FEU0M0?=
 =?utf-8?B?THUvY0w5NzVtKzd0ZjJSSVkwSk1odm4xeXdHZWo2QVFUSHEySlFqR1k1V0ZP?=
 =?utf-8?B?RDhFd3FPb0gwWFJadHphamtqSHI2L1p3SFhDbkYxaEJEWjJhQnk2b0o3RTF2?=
 =?utf-8?B?b0FGeTJweXBPbjdKNjFadGdWR3g0ek11aGN3c05WRVBDN0ZKUkltUEkvcFJC?=
 =?utf-8?B?ZkVNZ0VIK29adG1vem9oRnowWTcxWE5SbUtYSTkrL2NCMGRuYitQZitmS2pM?=
 =?utf-8?B?MURXeVIzODZRazcyaExiK2xKRmZINDduUHR3eEdSaGpWZXJGb20zYTJ0dmQ1?=
 =?utf-8?B?L3Z3L053Q1RCYjJCby9iZlhQNUZReDJEUktJVm42aWZmdDZQTXFMNEtHcmZU?=
 =?utf-8?B?TXVXZmZxeFZWMkJxRVljV3ZvOUdHVXZqTktLM0tVWjdYTlU3ZTFVTE82VnlZ?=
 =?utf-8?B?aWJTWVY4T0krYkZuQXVJd1lURnJYZHJKV0hvREd2TkJ1Sk5iQ0F5SjZhUDlQ?=
 =?utf-8?B?YWo0NXJyQmp0RU1CSmswMnpIOE10Q0Nicnc5MWlRZ09aSjlaTmprMFIvSGZp?=
 =?utf-8?B?WlhiUW5OVUlVdVBKaVlUbXdOL3ZtZHBOcGxhRFQ4YWt3QUFQYTM3RTA1VUJG?=
 =?utf-8?B?VGx5RjNTbDlwUDZEdENHaStEWGJNSUlTUU1MTENxQjFkUXFCWmJOUmQrOEJG?=
 =?utf-8?B?RHk2QWJQZVZpMmdPY21PcWU4MHVrWVlNTW1PNXJ6T0hMTGZGdVRNZW1qN3pJ?=
 =?utf-8?B?L1B0Zk9FMWttTEN3NTlVYmNPeG9DQkhuZ1lNOHBCU1RaZHQ2S2RXRUlEQ1dJ?=
 =?utf-8?B?TVcwZWpIVnNpRXB3eWhpMmtHZWIwOEFhSE82WjV1SlZZNVNSbC9XRnVMMWVm?=
 =?utf-8?B?SXBPM2FhbEJ3a2VBTk1nWnhvZlVkaTNzMW1wZnFCeXJYT2g3a29abWtCbHcr?=
 =?utf-8?B?bGJFQnltLzQ5Ny95cTdqeUVXaEdBTVExM1BYL05HaURpVzN3bkVuQ1E4YWRR?=
 =?utf-8?B?NmFQUzE1U0VkTWdEMy9aZ3d3dUd2SDI5c1JBSjhDR3JOWDIrcmNiN0RtUk1U?=
 =?utf-8?B?Q2JWWFB2dmthZHY0dkdxOE9tdlFyZ3BZL1V4alNwQzlud255UEU5YWZvUld3?=
 =?utf-8?B?N3QxR1J4dDd4L1VzRThhZVZTWGttWHFOSW4wbFF4cERBV0xiR2tuNFNsZ0wy?=
 =?utf-8?B?UzdFS0VlKzd0SWUweXhESFFrRGtxUXB2TEdpcmExRmJLMW9wZEdtRjZyK2pL?=
 =?utf-8?B?RnVMMWVjNC9vMXpzVnRQa0Rra1pvZE5GZVVzbktYS201cmZSZ2dFV0EzTWJF?=
 =?utf-8?B?eld4UkpsZ05HWmlJWXZhYUtTbGpvYWdqZDNvNzdRLzdQK0ZYZzNwTkRBb1kx?=
 =?utf-8?B?RFJMVjYzOHlMeEhmblVyNmQ0Qzh1clZ1VXdYdW9SZ2c3YU5KRVdwS0JQZHcz?=
 =?utf-8?B?RWFCdnd0Wmhkd1FDaDNwNzJIUTFvVnZLMURWem92QzNMWWVBQkQ4dWxGSWtZ?=
 =?utf-8?B?ekJ2ckIvVklSYlQ2TDh5ZU5HQ0ptT0psK0MxS3JodkFHSjVtNEFiWmxjOHpx?=
 =?utf-8?B?a01uY1lIUG9PV1JmRnNyVEVzVXhqaU5qWDFMTVlQNEx6V0tRWlRNUk9HeWpn?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a04c0dd-47d6-43d6-6281-08db55b8c311
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2023 02:53:43.9672 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Niz6LDSsTGPdQWu/7NBEHmuDWdkXvqAEPayL6wTB1tgvZzqRebU3X10L4C7QJi4g/X5Tkd8Y5iHr4rZh910YwTFJa+NMn+Q0tvgUT9aGmAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4572
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684205628; x=1715741628;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5/GzP3M9B3xX4owFN9ZFEY5mPo+NYpusOOGBxIKdvTU=;
 b=WMwA2iUUXmtwBPzSMvK5aGkCyEmj3UWUClQyzh9ypfIK2zwCVr9C69MA
 CpJDfRf0VDAwulksNto45lE1cITuODMbJqu+TruMGDgtmxpSqE0SmOYp8
 HbtIS8q0PcoMfYb0Uh2PeH1AH+t8nISREAh+EqB549r6y/ajtCfczl+A2
 CtraR63tbqGPPj6+JcvmnfU7OnhBVT/oMmekWsMl9Sxpd2Bd18N68RUkp
 0f3TqR5LgdPydIRe0LVOZx9AvpzJyJ424ADn/v9sf2POE+aFKsFJBLBUm
 a4anZMGqGq7DyK87inlFUk7qMjQJsIti/UBApmOqcH1qyVgZn4LzHdhnf
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WMwA2iUU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 08/15] idpf: configure
 resources for RX queues
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
Cc: willemb@google.com, pabeni@redhat.com, leon@kernel.org,
 simon.horman@corigine.com, jesse.brandeburg@intel.com, edumazet@google.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 anthony.l.nguyen@intel.com, Phani Burra <phani.r.burra@intel.com>,
 decot@google.com, davem@davemloft.net, shannon.nelson@amd.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/13/2023 6:47 PM, Stephen Hemminger wrote:
> On Sat, 13 May 2023 15:57:03 -0700
> Emil Tantilov <emil.s.tantilov@intel.com> wrote:
> 
>> +/**
>> + * idpf_is_feature_ena - Determine if a particular feature is enabled
>> + * @vport: vport to check
>> + * @feature: netdev flag to check
>> + *
>> + * Returns true or false if a particular feature is enabled.
>> + */
>> +static inline bool idpf_is_feature_ena(struct idpf_vport *vport,
>> +				       netdev_features_t feature)
>> +{
>> +	return vport->netdev->features & feature;
>> +}
> 
> Minor nit. You could make vport const here?

Will do.

Thanks,
Emil
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
