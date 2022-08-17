Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6B05969E7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Aug 2022 08:58:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AA0741981;
	Wed, 17 Aug 2022 06:58:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AA0741981
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660719511;
	bh=W5l1eDSqQ6OoaK3RcPEQxvXxlAJjiAraAO0cyfRNnuE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IMi93K3qKCscmUwnBO1Ko67SkRhW2A0+4JGOUlD2YhLnoMbidm5u56UJn1u0KiE6p
	 fMeqcX8DmRAfa9mlkB7knYddfcapSdy3s8zKcqKjwGicVkbcwJObkKCnL7imuKYXxJ
	 65GJwzsoYwByDCEkRfsPjHc8BpIe7/MHVfB/T9xNkb5WP+1WrZK+0gH7wNdORDQWeb
	 yk6XmoaxL6chnlpbDl9huHW15DKlmFrpTKuTX+J6W571CNKfyOQitGrmUNZSzbm9zo
	 9tuPs5zAilANBaAD9JiJI4BKulLDeXcXbi+/14ardh2Z5WENrtHx27Sq0yCVBOzSAF
	 OnNL/vBB36Rxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5pKsYKSQoTGN; Wed, 17 Aug 2022 06:58:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82016418CD;
	Wed, 17 Aug 2022 06:58:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82016418CD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D41BF1BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 06:58:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BB0D783089
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 06:58:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB0D783089
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c6pDEwsmnGUV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Aug 2022 06:58:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FD2883004
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2FD2883004
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 06:58:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="279383936"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="279383936"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 23:58:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="640339889"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 16 Aug 2022 23:58:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 23:58:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 23:58:01 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 23:58:01 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 23:58:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OQi+yQ7vMrZcz8IQYtsh06ipbz22xgwBXz5uxXuaAQxOZ3Unr91HgeIkdl9WIdtMNvH745GkhEXo2lT2r/qOTugjWgC3Kg4GieS8X0o6oWN8W6P/HSVyRj6Vi868pmnemJWMJojd6e9EOLPC0gWdtHn0t09uqYAPhCNAdcz5Q9Z8HIDSBhO40glKYVfWD330Uk1cg3oUVx9wLRfM/rVFo1plLJTL95LJsMWe35F3P6GAOHHyTgujEHozJcQAddhxPC2A0e5TP5FHy55T7TJnNXao286t1UeVq6wshf6JZ3W0zQkVtmq7mx3WD9vwcm0lBRM33tPG0UWjsiplKgKhag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tr6sL5nhCT891/KbeU50nAsBMWFHohjlsLTe0GVNMP8=;
 b=LT5XmNmzbjq0613HYXvAoDgbbdaVOY/zOd4MBVMgwBpxq/3A3SXWTS1ynvrQ4sPE9mSK9Ru0ygaKiJ3LXmu0S0w6km0H0J19VAjnJT1BshpsYlkWnF/4ONVDLFhIg28ocvjB7ATRtUXSGXiF7U4ZI3MI/MlVTF4JQHTP6PmoFeUqReladqC5lHX0IPlYeHtMa5NC4Pt3Kh1WoWAWUYYSYkf5Ihj3zw8Yfn1acxsveyx4Lvc1fXjcZ+FAmwInf91+0FebV0LPZqYi9hUpnVT33lj/Kiw4AiKJ16ZzY5bEUD8AlYJ1mEg3xqVuHqd0JEZRRR0g5kGhDRYs75CeNUsS/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3413.namprd11.prod.outlook.com (2603:10b6:a03:8c::29)
 by CH0PR11MB5521.namprd11.prod.outlook.com (2603:10b6:610:d4::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Wed, 17 Aug
 2022 06:57:54 +0000
Received: from BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::6423:dab9:c2a3:41d9]) by BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::6423:dab9:c2a3:41d9%3]) with mapi id 15.20.5525.019; Wed, 17 Aug 2022
 06:57:53 +0000
Message-ID: <359a66f9-c8cb-0319-5e01-8a9a54f70d36@intel.com>
Date: Wed, 17 Aug 2022 08:57:44 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-US
To: Ding Hui <dinghui@sangfor.com.cn>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <keescook@chromium.org>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220815011844.22193-1-dinghui@sangfor.com.cn>
 <dd4f9e5d-d8d7-3069-21ee-7897b3d10d3d@intel.com>
 <74f0969a-7b15-0ceb-4ae8-08c242cd1f83@sangfor.com.cn>
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
In-Reply-To: <74f0969a-7b15-0ceb-4ae8-08c242cd1f83@sangfor.com.cn>
X-ClientProxiedBy: BEXP281CA0011.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10::21)
 To BYAPR11MB3413.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ab6cfcc5-9ba9-48ba-c5ec-08da801dce65
X-MS-TrafficTypeDiagnostic: CH0PR11MB5521:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ROYkJiI9rjiQUP10I55+NjqPnzkxssfDoBoj/CXQ4ofVGa2ltlIZ9ijYJyr5ziMtavXohoyAKahiXBxvvO6DM0JyZWeRNGI441SFh9uLUfhoprnRfE/qOVCI28aPyA0DrBgmAYdurfi1JLULertbjTLNzDHgWyUbmEoYHEEq0qtybC0nBjsIlfAaqZ8hT5ZuPqhPTMrKgVR0ihTG6E6p84M5Fyi5ZrndmkII+BrfhNLXppINOmsJoFiGoHvm/MQE1o7dsiC4aWnceWiVQS+4x30YRNEaFblxrRXqI47Vlg4JJIhT/FBbp+3AEdCgP/Dh38VSFOABq3BVFjEdi7jqbz4127a63ub+22vlVGBGN/FaYOxtcWqCb02bbzkalMh7HYR5wPTORlTsKH6UQA0xKtKNv5geEDwHwArJ5/MXfGllxaFdUnpVa755br9/fHmlc/20F3kpYYyVGKMPZHPNS712woXPh3T0HXBVKeI761grtETIE29s9VG6eJnIFTUziXmAfqwL0RW2bBLqAAZZIJMVCs9mDxaFLc/cO+SjWJedcYS6mSozMYyVZ8z8Zaknq4q1qSmb/wc9XvLFGdEoRO4/XBEEoApWjPFpYH4nvhd6a0EjM+AjXpk9019LcsgfTFuL9i8jinXf4ax6YOPeX4QzNLil6IIiiWiA6sCMRaHzyM8mbRvdiYJAi/m+UOTZhS4lIcJVIB+i426gLeR7XPol6unort1A1BXU+bFNos7JFQqO256/rcCE4gttHaxF9a1aJTPTa45fuiIk9TUo8NtATaCUbns+e7quGPnT5FbYHnSsEvWyETUYUp/4ZUq910+jByt2SKJXqXLmE4/5vg8Mihve9sPbXt25zg9N3jvw9cfWdCak/nnmdzX9Frf9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3413.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(396003)(366004)(39860400002)(376002)(136003)(7416002)(15650500001)(2906002)(8936002)(5660300002)(31696002)(44832011)(86362001)(66476007)(41300700001)(186003)(6666004)(2616005)(82960400001)(6512007)(6506007)(478600001)(83380400001)(53546011)(966005)(38100700002)(316002)(8676002)(66556008)(4326008)(6486002)(36756003)(66946007)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0lGVTVmV2c3ZkxSNzdnSmI3L0dWajFXYXdHSUYwODAxRkFTb1BHT05WRXNQ?=
 =?utf-8?B?MXFaaDg5WHlYOThzOU5wUmdwaVRRejd4SEl1VTh6ZmZ1WXRpVlhHOUtPc1pD?=
 =?utf-8?B?V2VTVHB4cEZmZE1CUXpOK3ZpMUdYaHNINUpZNkt5YU9HVTUxV3l4Q0oxd2JU?=
 =?utf-8?B?QVMyQVhFdTR5VXZQQU1TTUY3OTNKR29CU05jMDdmaFkvMkk4czhDaUpBUzlw?=
 =?utf-8?B?Mm5aVDc0bVN2aEltYk1lZlF3amVBelRjcGdZZXZnb2R0cDY0UlVDT3hrU01M?=
 =?utf-8?B?Yi9uT0VLTXVVY0NVTWdsTUJoZEo0eUhlNnQxdS80dlExdGxobU9wOHVUTzJ5?=
 =?utf-8?B?dmhWY0NJU2VxajlqVUc1YnJRaDdMeGhHaG1VNDI5ZmM4UFBjMHg5WFUzWkc4?=
 =?utf-8?B?UnZXdWtpTTFHbHpzT2xnZTNVK2ZGNVFnUWdQUkRock1vSVFFYUl3N3lUaFdt?=
 =?utf-8?B?VndHWlluR2xJbGVKNnBoem5TaDNzbHozQUFpbUY2VmhaL3E4YUVKMVJrbnZG?=
 =?utf-8?B?S1JydkV0WGlXQ2g0NmNaUzl3NUhacCtTZEpPb0RrZ25UeWU0Ujh0Y3p0MTh1?=
 =?utf-8?B?ZWg0WVZ3dDB2MDdaT0lid1dYdy92SFVPVlA3a2JOUkFtZ0Fyb1RJQ2Rib0hY?=
 =?utf-8?B?YVhiOU43dUljUW1PVmlMVXM5WUxtUWxaNURmd3hJa1RuNXNZRzYxeDhEK0I5?=
 =?utf-8?B?WlcvTC9SekNZZlROM3FPUkxUOXZyRm5GTFk1bTgxcU41TWVReFUvbzFwTXlU?=
 =?utf-8?B?dWl5TDhnRjBLVWNiZU0xdnlKNFRiaGsrME1acFY4eFRwYlRyanI4YWMwQ0RL?=
 =?utf-8?B?QlZqSFhHbU14eURwQzJVRVlzZ05BcGVYMkwyMi9FbnBrMk9lYjRXYUI1RkhN?=
 =?utf-8?B?bkRIQzdNSExYZTVXZ05FeEpFOFFpUWhia01sTGVaRXdlNStETXZxMzQ2SWhv?=
 =?utf-8?B?L2R6UzhPaVU4U2lkM2dLNVZoeUNKU0NzSnJjYkYrcTVGek9BOXluZWpuNDRT?=
 =?utf-8?B?UXBVQnBLWGJDR3N4Rk9rbHVhS3p1SXY4K2EyQ3RMQmJBdzNZajFNMVFTSVFS?=
 =?utf-8?B?RUM5OWVxWDBLeDdWU3g5WHRXQ0liQkh3Si9JR2huOS9ieFhhbzhSd0dTQnNC?=
 =?utf-8?B?S00xV1NJeUdpY0ZzcEFLQ1cwcUFGQmE3dVMvZlBJWnBaQW1DdHZrZ3NXV0JK?=
 =?utf-8?B?YUFtdFhIYTc2ems4MHd1Mm5rcjczQTZsT3l3L1NqRFMzWHJIbXp0WEZHVERL?=
 =?utf-8?B?SU51Tk1EZG9kZ01PcERrWHp0UG1nNXd6SkR6TzRWMFl1NXlxZGdlSStmWXdX?=
 =?utf-8?B?WU9NaUx2WEwyQ2ZjME1KMTgwR1VyczhjM2tNS0Nua1hSUDdTY1E0M1N6YzEx?=
 =?utf-8?B?THBEelkvQ1NkeC9kOWMxZ0krTWh3enRQWmdBcnBBODY3UEtIT0FZa3AzS3d1?=
 =?utf-8?B?akpVT3laRHBYcWMyT0N6U05jU1lXbnRvRGNNcTZEV1ZPeW1JdGhqVUVheW0z?=
 =?utf-8?B?R0NGczFoZzArMWEzMHNoVjBEcXhsZ2JkdXFtZHkxQ3R6VERTbUZJSk1IaUlN?=
 =?utf-8?B?R3g4YldTdFNaaUVtcXc2dm9aKzRqVTdSYmlmOHVoWEVkL3BBdlhtejMzNVlu?=
 =?utf-8?B?R3Fsa2hTeVUrNjZYTWphN0RWbmtlbkEwWXcyY2o5YWhwdGpXZDdIcU8zeXJF?=
 =?utf-8?B?dk9URmdDUWRGd2R5ZkZ3UTRQWktMVE1NdTNvYjVkYkJ0Vjl5Umd0dXM1L0xP?=
 =?utf-8?B?eFlENVlXS1diR2tMVFRqNHE0a09vM1I1VDZjbkZOMFROZjBmbkozSEowcU9h?=
 =?utf-8?B?dldpL2F4WExabU1yVXl4a1ZhYWFUTnNyOUgwZkkvU3VUSE03Y3VqdGJwdWxC?=
 =?utf-8?B?cHVobWM2S2ZuOWFYYjJ6V0RRYjA0eXdDa2lPN1IzUkx0ZW1FMmJ0S3dBdWhZ?=
 =?utf-8?B?dHM2aXE2ZzZFVXFGeU5jQndkZGZrVjdtZjlRRmlLOEFNMnNjQUVVMWZ6ejds?=
 =?utf-8?B?NmtMNGErWUs3a2FjSnM2d3JSOUtoL0RLVFR4OXFhTmJlRnYxSmF6RkFPWW1H?=
 =?utf-8?B?ZW54NTRpT0JHMUNNSzIyS1phdk1ldmNYT2xwbXltbGh6UmZUNURTU1pDVFNK?=
 =?utf-8?B?c1dQNjYybWJYNW9LaWpsenF5bXNwb1RIL005dkpROWRRRnJBUkNaSndLTGJX?=
 =?utf-8?B?YmorYlY5dEFnK2ZKTHA1Y2x4UDFmeDlha1NUeG5ZV0Npcm93WUQrQ0cvWm1T?=
 =?utf-8?Q?Ogx+k1HhoX6XK3QpUgAAlcYfBW2Xz/oD/1bVisWW3I=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ab6cfcc5-9ba9-48ba-c5ec-08da801dce65
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3413.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 06:57:53.4341 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7qn7xm2R9vZ87+d5+v5CZcQMpzZUAf+oYWIsOZem+H6YTnjdATN4L+mpzlaemTWsxPpZVm4NNCK+g4GPM/SJKhN9S6h3lp4hXZf2HimJctw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5521
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660719483; x=1692255483;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=55olwJm1+hmKpFG+QTh6M92eyTs6iikSb1Fc93/mYJo=;
 b=NoX6ZOzbneMBBpTLPUBu8LriWaQsoDhe/M4rvFy3/aqgPVeS2iAVUVfs
 Axp1a4DXZ+GFHNtXADxFU0PwKA4fysDPXVbQ7okxmGOR6ZHBK5JOQuOz5
 6OvkpsrNW3tsR9QbwvAYBPg3cpyfGea8Bq97HEFUyEUMkPqfL0VGXyRgw
 pAB4PnDBX9XUOQsSnEofDxIIALiz+/lPsC8KtMaKSyYOvSR4ushQBp9M5
 PajsX9Tj4VA87zCqfMD14WfVoQSXm1HkMVIA92aIcSNR/M4e3yOXeIo/d
 Bl4skuymbY88CilC/jRmvw2zRgs48ODKt+2cUOU2BswyoTMGUnI2T8RJ7
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NoX6ZOzb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net v2 1/1] ice: Fix crash by keep old cfg
 when update TCs more than queues
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTYuMDguMjAyMiAxNDo0NCwgRGluZyBIdWkgd3JvdGU6Cj4gT24gMjAyMi84LzE2IDE3OjEz
LCBBbmF0b2xpaSBHZXJhc3ltZW5rbyB3cm90ZToKPj4gT24gMTUuMDguMjAyMiAwMzoxOCwgRGlu
ZyBIdWkgd3JvdGU6Cj4+PiBUaGVyZSBhcmUgcHJvYmxlbXMgaWYgYWxsb2NhdGVkIHF1ZXVlcyBs
ZXNzIHRoYW4gVHJhZmZpYyBDbGFzc2VzLgo+Pj4KPj4+IENvbW1pdCBhNjMyYjJhNGM5MjAgKCJp
Y2U6IGV0aHRvb2w6IFByb2hpYml0IGltcHJvcGVyIGNoYW5uZWwgY29uZmlnCj4+PiBmb3IgRENC
IikgYWxyZWFkeSBkaXNhbGxvdyBzZXR0aW5nIGxlc3MgcXVldWVzIHRoYW4gVENzLgo+Pj4KPj4+
IEFub3RoZXIgY2FzZSBpcyBpZiB3ZSBmaXJzdCBzZXQgbGVzcyBxdWV1ZXMsIGFuZCBsYXRlciB1
cGRhdGUgbW9yZSBUQ3MKPj4+IGNvbmZpZyBkdWUgdG8gTExEUCwgaWNlX3ZzaV9jZmdfdGMoKSB3
aWxsIGZhaWxlZCBidXQgbGVmdCBkaXJ0eQo+Pj4gbnVtX3R4cS9yeHEgYW5kIHRjX2NmZyBpbiB2
c2ksIHRoYXQgd2lsbCBjYXVzZSBpbnZhbGlkIHBvcmludGVyIGFjY2Vzcy4KPj4KPj4gTmljZSBj
YXRjaC4gTG9va3MgZ29vZCB0byBtZS4KPiAKPiBUaGFua3MsIEknbGwgc2VuZCB2MyBsYXRlciwg
Y291bGQgSSBhZGQgQWNrZWQtYnk6IHRhZyB0b28/CgpQbGVhc2UgYWRkIFJldmlld2VkLWJ5OiBB
bmF0b2xpaSBHZXJhc3ltZW5rbyA8YW5hdG9saWkuZ2VyYXN5bWVua29AaW50ZWwuY29tPgpUaGFu
a3MuCgo+PiDCoAo+Pj4gW8KgwqAgOTUuOTY4MDg5XSBpY2UgMDAwMDozYjowMC4xOiBNb3JlIFRD
cyBkZWZpbmVkIHRoYW4gcXVldWVzL3JpbmdzIGFsbG9jYXRlZC4KPj4+IFvCoMKgIDk1Ljk2ODA5
Ml0gaWNlIDAwMDA6M2I6MDAuMTogVHJ5aW5nIHRvIHVzZSBtb3JlIFJ4IHF1ZXVlcyAoOCksIHRo
YW4gd2VyZSBhbGxvY2F0ZWQgKDEpIQo+Pj4gW8KgwqAgOTUuOTY4MDkzXSBpY2UgMDAwMDozYjow
MC4xOiBGYWlsZWQgdG8gY29uZmlnIFRDIGZvciBWU0kgaW5kZXg6IDAKPj4+IFvCoMKgIDk1Ljk2
OTYyMV0gZ2VuZXJhbCBwcm90ZWN0aW9uIGZhdWx0OiAwMDAwIFsjMV0gU01QIE5PUFRJCj4+PiBb
wqDCoCA5NS45Njk3MDVdIENQVTogMSBQSUQ6IDU4NDA1IENvbW06IGxsZHBhZCBLZHVtcDogbG9h
ZGVkIFRhaW50ZWQ6IEfCoMKgwqDCoCBVwqAgV8KgIE/CoMKgwqDCoCAtLS0tLS0tLS0gLXQgLSA0
LjE4LjAgIzEKPj4+IFvCoMKgIDk1Ljk2OTg2N10gSGFyZHdhcmUgbmFtZTogTy5FLk0vQkMxMVNQ
U0NCMTAsIEJJT1MgOC4yMyAxMi8zMC8yMDIxCj4+PiBbwqDCoCA5NS45Njk5OTJdIFJJUDogMDAx
MDpkZXZtX2ttYWxsb2MrMHhhLzB4NjAKPj4+IFvCoMKgIDk1Ljk3MDA1Ml0gQ29kZTogNWMgZmYg
ZmYgZmYgMzEgYzAgNWIgNWQgNDEgNWMgYzMgYjggZjQgZmYgZmYgZmYgZWIgZjQgMGYgMWYgNDAg
MDAgNjYgMmUgMGYgMWYgODQgMDAgMDAgMDAgMDAgMDAgMGYgMWYgNDQgMDAgMDAgNDggODkgZjgg
ODkgZDEgPDhiPiA5NyA2MCAwMiAwMCAwMCA0OCA4ZCA3ZSAxOCA0OCAzOSBmNyA3MiAzZiA1NSA4
OSBjZSA1MyA0OCA4YiA0Ywo+Pj4gW8KgwqAgOTUuOTcwMzQ0XSBSU1A6IDAwMTg6ZmZmZmM5MDAz
ZjU1Mzg4OCBFRkxBR1M6IDAwMDEwMjA2Cj4+PiBbwqDCoCA5NS45NzA0MjVdIFJBWDogZGVhZDAw
MDAwMDAwMDIwMCBSQlg6IGZmZmZlYTAwM2M0MjViMDAgUkNYOiAwMDAwMDAwMDAwNjA4MGMwCj4+
PiBbwqDCoCA5NS45NzA1MzZdIFJEWDogMDAwMDAwMDAwMDYwODBjMCBSU0k6IDAwMDAwMDAwMDAw
MDAyMDAgUkRJOiBkZWFkMDAwMDAwMDAwMjAwCj4+PiBbwqDCoCA5NS45NzA2NDhdIFJCUDogZGVh
ZDAwMDAwMDAwMDIwMCBSMDg6IDAwMDAwMDAwMDAwNDYzYzAgUjA5OiBmZmZmODg4ZmZhOTAwMDAw
Cj4+PiBbwqDCoCA5NS45NzA3NjBdIFIxMDogMDAwMDAwMDAwMDAwMDAwMCBSMTE6IDAwMDAwMDAw
MDAwMDAwMDIgUjEyOiBmZmZmODg4ZmY2YjQwMTAwCj4+PiBbwqDCoCA5NS45NzA4NzBdIFIxMzog
ZmZmZjg4OGZmNmE1NTAxOCBSMTQ6IDAwMDAwMDAwMDAwMDAwMDAgUjE1OiBmZmZmODg4ZmY2YTU1
NDYwCj4+PiBbwqDCoCA5NS45NzA5ODFdIEZTOsKgIDAwMDA3ZjUxYjdkMjQ3MDAoMDAwMCkgR1M6
ZmZmZjg4OTAzZWU4MDAwMCgwMDAwKSBrbmxHUzowMDAwMDAwMDAwMDAwMDAwCj4+PiBbwqDCoCA5
NS45NzExMDhdIENTOsKgIDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUw
MDMzCj4+PiBbwqDCoCA5NS45NzExOTddIENSMjogMDAwMDdmYWM1NDEwZDcxMCBDUjM6IDAwMDAw
MDBmMmMxZGUwMDIgQ1I0OiAwMDAwMDAwMDAwNzYwNmUwCj4+PiBbwqDCoCA5NS45NzEzMDldIERS
MDogMDAwMDAwMDAwMDAwMDAwMCBEUjE6IDAwMDAwMDAwMDAwMDAwMDAgRFIyOiAwMDAwMDAwMDAw
MDAwMDAwCj4+PiBbwqDCoCA5NS45NzE0MTldIERSMzogMDAwMDAwMDAwMDAwMDAwMCBEUjY6IDAw
MDAwMDAwZmZmZTBmZjAgRFI3OiAwMDAwMDAwMDAwMDAwNDAwCj4+PiBbwqDCoCA5NS45NzE1MzBd
IFBLUlU6IDU1NTU1NTU0Cj4+PiBbwqDCoCA5NS45NzE1NzNdIENhbGwgVHJhY2U6Cj4+PiBbwqDC
oCA5NS45NzE2MjJdwqAgaWNlX3NldHVwX3J4X3JpbmcrMHgzOS8weDExMCBbaWNlXQo+Pj4gW8Kg
wqAgOTUuOTcxNjk1XcKgIGljZV92c2lfc2V0dXBfcnhfcmluZ3MrMHg1NC8weDkwIFtpY2VdCj4+
PiBbwqDCoCA5NS45NzE3NzRdwqAgaWNlX3ZzaV9vcGVuKzB4MjUvMHgxMjAgW2ljZV0KPj4+IFvC
oMKgIDk1Ljk3MTg0M13CoCBpY2Vfb3Blbl9pbnRlcm5hbCsweGI4LzB4MWYwIFtpY2VdCj4+PiBb
wqDCoCA5NS45NzE5MTldwqAgaWNlX2VuYV92c2krMHg0Zi8weGQwIFtpY2VdCj4+PiBbwqDCoCA5
NS45NzE5ODddwqAgaWNlX2RjYl9lbmFfZGlzX3ZzaS5jb25zdHByb3AuNSsweDI5LzB4OTAgW2lj
ZV0KPj4+IFvCoMKgIDk1Ljk3MjA4Ml3CoCBpY2VfcGZfZGNiX2NmZysweDI5YS8weDM4MCBbaWNl
XQo+Pj4gW8KgwqAgOTUuOTcyMTU0XcKgIGljZV9kY2JubF9zZXRldHMrMHgxNzQvMHgxYjAgW2lj
ZV0KPj4+IFvCoMKgIDk1Ljk3MjIyMF3CoCBkY2JubF9pZWVlX3NldCsweDg5LzB4MjMwCj4+PiBb
wqDCoCA5NS45NzIyNzldwqAgPyBkY2JubF9pZWVlX2RlbCsweDE1MC8weDE1MAo+Pj4gW8KgwqAg
OTUuOTcyMzQxXcKgIGRjYl9kb2l0KzB4MTI0LzB4MWIwCj4+PiBbwqDCoCA5NS45NzIzOTJdwqAg
cnRuZXRsaW5rX3Jjdl9tc2crMHgyNDMvMHgyZjAKPj4+IFvCoMKgIDk1Ljk3MjQ1N13CoCA/IGRj
Yl9kb2l0KzB4MTRkLzB4MWIwCj4+PiBbwqDCoCA5NS45NzI1MTBdwqAgPyBfX2ttYWxsb2Nfbm9k
ZV90cmFja19jYWxsZXIrMHgxZDMvMHgyODAKPj4+IFvCoMKgIDk1Ljk3MjU5MV3CoCA/IHJ0bmxf
Y2FsY2l0LmlzcmEuMzErMHgxMDAvMHgxMDAKPj4+IFvCoMKgIDk1Ljk3MjY2MV3CoCBuZXRsaW5r
X3Jjdl9za2IrMHhjZi8weGYwCj4+PiBbwqDCoCA5NS45NzI3MjBdwqAgbmV0bGlua191bmljYXN0
KzB4MTZkLzB4MjIwCj4+PiBbwqDCoCA5NS45NzI3ODFdwqAgbmV0bGlua19zZW5kbXNnKzB4MmJh
LzB4M2EwCj4+PiBbwqDCoCA5NS45NzU4OTFdwqAgc29ja19zZW5kbXNnKzB4NGMvMHg1MAo+Pj4g
W8KgwqAgOTUuOTc5MDMyXcKgIF9fX3N5c19zZW5kbXNnKzB4MmU0LzB4MzAwCj4+PiBbwqDCoCA5
NS45ODIxNDddwqAgPyBrbWVtX2NhY2hlX2FsbG9jKzB4MTNlLzB4MTkwCj4+PiBbwqDCoCA5NS45
ODUyNDJdwqAgPyBfX3dha2VfdXBfY29tbW9uX2xvY2srMHg3OS8weDkwCj4+PiBbwqDCoCA5NS45
ODgzMzhdwqAgPyBfX2NoZWNrX29iamVjdF9zaXplKzB4YWMvMHgxYjAKPj4+IFvCoMKgIDk1Ljk5
MTQ0MF3CoCA/IF9jb3B5X3RvX3VzZXIrMHgyMi8weDMwCj4+PiBbwqDCoCA5NS45OTQ1MzldwqAg
PyBtb3ZlX2FkZHJfdG9fdXNlcisweGJiLzB4ZDAKPj4+IFvCoMKgIDk1Ljk5NzYxOV3CoCA/IF9f
c3lzX3NlbmRtc2crMHg1My8weDgwCj4+PiBbwqDCoCA5Ni4wMDA2NjRdwqAgX19zeXNfc2VuZG1z
ZysweDUzLzB4ODAKPj4+IFvCoMKgIDk2LjAwMzc0N13CoCBkb19zeXNjYWxsXzY0KzB4NWIvMHgx
ZDAKPj4+IFvCoMKgIDk2LjAwNjg2Ml3CoCBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUr
MHg2NS8weGNhCj4+Pgo+Pj4gT25seSB1cGRhdGUgbnVtX3R4cS9yeHEgd2hlbiBwYXNzZWQgY2hl
Y2ssIGFuZCByZXN0b3JlIHRjX2NmZyBpZiBzZXR1cAo+Pj4gcXVldWUgbWFwIGZhaWxlZC4KPj4+
Cj4+PiBTaWduZWQtb2ZmLWJ5OiBEaW5nIEh1aSA8ZGluZ2h1aUBzYW5nZm9yLmNvbS5jbj4KPj4K
Pj4gUGxlYXNlLCBhbHNvIGFkZCBGaXhlcyB0YWcuCj4+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMgfCA0MiArKysrKysrKysrKysrKystLS0t
LS0tLS0KPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlv
bnMoLSkKPj4+Cj4+PiAtLS0KPj4+IHYxOgo+Pj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9y
Zy9wcm9qZWN0L25ldGRldmJwZi9wYXRjaC8yMDIyMDgxMjEyMzkzMy41NDgxLTEtZGluZ2h1aUBz
YW5nZm9yLmNvbS5jbi8KPj4+Cj4+PiB2MjoKPj4+IMKgwqAgcmV3cml0ZSBzdWJqZWN0Cj4+PiDC
oMKgIHJlYmFzZSB0byBuZXQKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9saWIuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfbGliLmMKPj4+IGluZGV4IGE4MzBmN2Y5YWVkMC4uNmU2NGNjYTMwMzUxIDEwMDY0NAo+Pj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuYwo+Pj4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuYwo+Pj4gQEAgLTkxNCw3ICs5
MTQsNyBAQCBzdGF0aWMgdm9pZCBpY2Vfc2V0X2RmbHRfdnNpX2N0eChzdHJ1Y3QgaWNlX2h3ICpo
dywgc3RydWN0IGljZV92c2lfY3R4ICpjdHh0KQo+Pj4gwqDCoCAqLwo+Pj4gwqAgc3RhdGljIGlu
dCBpY2VfdnNpX3NldHVwX3FfbWFwKHN0cnVjdCBpY2VfdnNpICp2c2ksIHN0cnVjdCBpY2VfdnNp
X2N0eCAqY3R4dCkKPj4+IMKgIHsKPj4+IC3CoMKgwqAgdTE2IG9mZnNldCA9IDAsIHFtYXAgPSAw
LCB0eF9jb3VudCA9IDAsIHBvdyA9IDA7Cj4+PiArwqDCoMKgIHUxNiBvZmZzZXQgPSAwLCBxbWFw
ID0gMCwgdHhfY291bnQgPSAwLCByeF9jb3VudCA9IDAsIHBvdyA9IDA7Cj4+PiDCoMKgwqDCoMKg
IHUxNiBudW1fdHhxX3Blcl90YywgbnVtX3J4cV9wZXJfdGM7Cj4+PiDCoMKgwqDCoMKgIHUxNiBx
Y291bnRfdHggPSB2c2ktPmFsbG9jX3R4cTsKPj4+IMKgwqDCoMKgwqAgdTE2IHFjb3VudF9yeCA9
IHZzaS0+YWxsb2NfcnhxOwo+Pj4gQEAgLTk4MSwyMyArOTgxLDI1IEBAIHN0YXRpYyBpbnQgaWNl
X3ZzaV9zZXR1cF9xX21hcChzdHJ1Y3QgaWNlX3ZzaSAqdnNpLCBzdHJ1Y3QgaWNlX3ZzaV9jdHgg
KmN0eHQpCj4+PiDCoMKgwqDCoMKgwqAgKiBhdCBsZWFzdCAxKQo+Pj4gwqDCoMKgwqDCoMKgICov
Cj4+PiDCoMKgwqDCoMKgIGlmIChvZmZzZXQpCj4+PiAtwqDCoMKgwqDCoMKgwqAgdnNpLT5udW1f
cnhxID0gb2Zmc2V0Owo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJ4X2NvdW50ID0gb2Zmc2V0Owo+Pj4g
wqDCoMKgwqDCoCBlbHNlCj4+PiAtwqDCoMKgwqDCoMKgwqAgdnNpLT5udW1fcnhxID0gbnVtX3J4
cV9wZXJfdGM7Cj4+PiArwqDCoMKgwqDCoMKgwqAgcnhfY291bnQgPSBudW1fcnhxX3Blcl90YzsK
Pj4+IMKgIC3CoMKgwqAgaWYgKHZzaS0+bnVtX3J4cSA+IHZzaS0+YWxsb2NfcnhxKSB7Cj4+PiAr
wqDCoMKgIGlmIChyeF9jb3VudCA+IHZzaS0+YWxsb2NfcnhxKSB7Cj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqAgZGV2X2VycihpY2VfcGZfdG9fZGV2KHZzaS0+YmFjayksICJUcnlpbmcgdG8gdXNlIG1v
cmUgUnggcXVldWVzICgldSksIHRoYW4gd2VyZSBhbGxvY2F0ZWQgKCV1KSFcbiIsCj4+PiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB2c2ktPm51bV9yeHEsIHZzaS0+YWxsb2NfcnhxKTsKPj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJ4X2NvdW50LCB2c2ktPmFsbG9jX3J4cSk7Cj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+PiDCoMKgwqDCoMKgIH0KPj4+IMKgIC3C
oMKgwqAgdnNpLT5udW1fdHhxID0gdHhfY291bnQ7Cj4+PiAtwqDCoMKgIGlmICh2c2ktPm51bV90
eHEgPiB2c2ktPmFsbG9jX3R4cSkgewo+Pj4gK8KgwqDCoCBpZiAodHhfY291bnQgPiB2c2ktPmFs
bG9jX3R4cSkgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGRldl9lcnIoaWNlX3BmX3RvX2Rldih2
c2ktPmJhY2spLCAiVHJ5aW5nIHRvIHVzZSBtb3JlIFR4IHF1ZXVlcyAoJXUpLCB0aGFuIHdlcmUg
YWxsb2NhdGVkICgldSkhXG4iLAo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdnNpLT5udW1f
dHhxLCB2c2ktPmFsbG9jX3R4cSk7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0eF9jb3Vu
dCwgdnNpLT5hbGxvY190eHEpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFM
Owo+Pj4gwqDCoMKgwqDCoCB9Cj4+PiDCoCArwqDCoMKgIHZzaS0+bnVtX3R4cSA9IHR4X2NvdW50
Owo+Pj4gK8KgwqDCoCB2c2ktPm51bV9yeHEgPSByeF9jb3VudDsKPj4+ICsKPj4+IMKgwqDCoMKg
wqAgaWYgKHZzaS0+dHlwZSA9PSBJQ0VfVlNJX1ZGICYmIHZzaS0+bnVtX3R4cSAhPSB2c2ktPm51
bV9yeHEpIHsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZGJnKGljZV9wZl90b19kZXYodnNp
LT5iYWNrKSwgIlZGIFZTSSBzaG91bGQgaGF2ZSBzYW1lIG51bWJlciBvZiBUeCBhbmQgUnggcXVl
dWVzLiBIZW5jZSBtYWtpbmcgdGhlbSBlcXVhbFxuIik7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
Lyogc2luY2UgdGhlcmUgaXMgYSBjaGFuY2UgdGhhdCBudW1fcnhxIGNvdWxkIGhhdmUgYmVlbiBj
aGFuZ2VkCj4+PiBAQCAtMzQ5Miw2ICszNDk0LDcgQEAgaWNlX3ZzaV9zZXR1cF9xX21hcF9tcXBy
aW8oc3RydWN0IGljZV92c2kgKnZzaSwgc3RydWN0IGljZV92c2lfY3R4ICpjdHh0LAo+Pj4gwqDC
oMKgwqDCoCBpbnQgdGMwX3Fjb3VudCA9IHZzaS0+bXFwcmlvX3FvcHQucW9wdC5jb3VudFswXTsK
Pj4+IMKgwqDCoMKgwqAgdTggbmV0ZGV2X3RjID0gMDsKPj4+IMKgwqDCoMKgwqAgaW50IGk7Cj4+
PiArwqDCoMKgIHUxNiBuZXdfdHhxLCBuZXdfcnhxOwo+Pgo+PiBQbGVhc2UgZm9sbG93IHRoZSBS
ZXZlcnNlIENocmlzdG1hcyBUcmVlIChSQ1QpIGNvbnZlbnRpb24uCj4+Cj4+PiDCoMKgwqDCoMKg
IHZzaS0+dGNfY2ZnLmVuYV90YyA9IGVuYV90YyA/IGVuYV90YyA6IDE7Cj4+PiDCoCBAQCAtMzUz
MCwyMSArMzUzMywyNCBAQCBpY2VfdnNpX3NldHVwX3FfbWFwX21xcHJpbyhzdHJ1Y3QgaWNlX3Zz
aSAqdnNpLCBzdHJ1Y3QgaWNlX3ZzaV9jdHggKmN0eHQsCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
fQo+Pj4gwqDCoMKgwqDCoCB9Cj4+PiDCoCAtwqDCoMKgIC8qIFNldCBhY3R1YWwgVHgvUnggcXVl
dWUgcGFpcnMgKi8KPj4+IC3CoMKgwqAgdnNpLT5udW1fdHhxID0gb2Zmc2V0ICsgcWNvdW50X3R4
Owo+Pj4gLcKgwqDCoCBpZiAodnNpLT5udW1fdHhxID4gdnNpLT5hbGxvY190eHEpIHsKPj4+ICvC
oMKgwqAgbmV3X3R4cSA9IG9mZnNldCArIHFjb3VudF90eDsKPj4+ICvCoMKgwqAgaWYgKG5ld190
eHEgPiB2c2ktPmFsbG9jX3R4cSkgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGRldl9lcnIoaWNl
X3BmX3RvX2Rldih2c2ktPmJhY2spLCAiVHJ5aW5nIHRvIHVzZSBtb3JlIFR4IHF1ZXVlcyAoJXUp
LCB0aGFuIHdlcmUgYWxsb2NhdGVkICgldSkhXG4iLAo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgdnNpLT5udW1fdHhxLCB2c2ktPmFsbG9jX3R4cSk7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBuZXdfdHhxLCB2c2ktPmFsbG9jX3R4cSk7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIC1FSU5WQUw7Cj4+PiDCoMKgwqDCoMKgIH0KPj4+IMKgIC3CoMKgwqAgdnNpLT5udW1fcnhx
ID0gb2Zmc2V0ICsgcWNvdW50X3J4Owo+Pj4gLcKgwqDCoCBpZiAodnNpLT5udW1fcnhxID4gdnNp
LT5hbGxvY19yeHEpIHsKPj4+ICvCoMKgwqAgbmV3X3J4cSA9IG9mZnNldCArIHFjb3VudF9yeDsK
Pj4+ICvCoMKgwqAgaWYgKG5ld19yeHEgPiB2c2ktPmFsbG9jX3J4cSkgewo+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgIGRldl9lcnIoaWNlX3BmX3RvX2Rldih2c2ktPmJhY2spLCAiVHJ5aW5nIHRvIHVz
ZSBtb3JlIFJ4IHF1ZXVlcyAoJXUpLCB0aGFuIHdlcmUgYWxsb2NhdGVkICgldSkhXG4iLAo+Pj4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdnNpLT5udW1fcnhxLCB2c2ktPmFsbG9jX3J4cSk7Cj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuZXdfcnhxLCB2c2ktPmFsbG9jX3J4cSk7Cj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+PiDCoMKgwqDCoMKgIH0KPj4+IMKg
ICvCoMKgwqAgLyogU2V0IGFjdHVhbCBUeC9SeCBxdWV1ZSBwYWlycyAqLwo+Pj4gK8KgwqDCoCB2
c2ktPm51bV90eHEgPSBuZXdfdHhxOwo+Pj4gK8KgwqDCoCB2c2ktPm51bV9yeHEgPSBuZXdfcnhx
Owo+Pj4gKwo+Pj4gwqDCoMKgwqDCoCAvKiBTZXR1cCBxdWV1ZSBUQ1swXS5xbWFwIGZvciBnaXZl
biBWU0kgY29udGV4dCAqLwo+Pj4gwqDCoMKgwqDCoCBjdHh0LT5pbmZvLnRjX21hcHBpbmdbMF0g
PSBjcHVfdG9fbGUxNihxbWFwKTsKPj4+IMKgwqDCoMKgwqAgY3R4dC0+aW5mby5xX21hcHBpbmdb
MF0gPSBjcHVfdG9fbGUxNih2c2ktPnJ4cV9tYXBbMF0pOwo+Pj4gQEAgLTM1ODAsNiArMzU4Niw3
IEBAIGludCBpY2VfdnNpX2NmZ190YyhzdHJ1Y3QgaWNlX3ZzaSAqdnNpLCB1OCBlbmFfdGMpCj4+
PiDCoMKgwqDCoMKgIHN0cnVjdCBkZXZpY2UgKmRldjsKPj4+IMKgwqDCoMKgwqAgaW50IGksIHJl
dCA9IDA7Cj4+PiDCoMKgwqDCoMKgIHU4IG51bV90YyA9IDA7Cj4+PiArwqDCoMKgIHN0cnVjdCBp
Y2VfdGNfY2ZnIG9sZF90Y19jZmc7Cj4+Cj4+IFJDVCBoZXJlIGFsc28uCj4+IMKgwqAKPj4+IMKg
wqDCoMKgwqAgZGV2ID0gaWNlX3BmX3RvX2RldihwZik7Cj4+PiDCoMKgwqDCoMKgIGlmICh2c2kt
PnRjX2NmZy5lbmFfdGMgPT0gZW5hX3RjICYmCj4+PiBAQCAtMzYwMCw2ICszNjA3LDcgQEAgaW50
IGljZV92c2lfY2ZnX3RjKHN0cnVjdCBpY2VfdnNpICp2c2ksIHU4IGVuYV90YykKPj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1heF90eHFzW2ldID0gdnNpLT5udW1fdHhxOwo+Pj4gwqDC
oMKgwqDCoCB9Cj4+PiDCoCArwqDCoMKgIG1lbWNweSgmb2xkX3RjX2NmZywgJnZzaS0+dGNfY2Zn
LCBzaXplb2Yob2xkX3RjX2NmZykpOwo+Pj4gwqDCoMKgwqDCoCB2c2ktPnRjX2NmZy5lbmFfdGMg
PSBlbmFfdGM7Cj4+PiDCoMKgwqDCoMKgIHZzaS0+dGNfY2ZnLm51bXRjID0gbnVtX3RjOwo+Pj4g
wqAgQEAgLTM2MTYsOCArMzYyNCwxMCBAQCBpbnQgaWNlX3ZzaV9jZmdfdGMoc3RydWN0IGljZV92
c2kgKnZzaSwgdTggZW5hX3RjKQo+Pj4gwqDCoMKgwqDCoCBlbHNlCj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqAgcmV0ID0gaWNlX3ZzaV9zZXR1cF9xX21hcCh2c2ksIGN0eCk7Cj4+PiDCoCAtwqDCoMKg
IGlmIChyZXQpCj4+PiArwqDCoMKgIGlmIChyZXQpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCBtZW1j
cHkoJnZzaS0+dGNfY2ZnLCAmb2xkX3RjX2NmZywgc2l6ZW9mKHZzaS0+dGNfY2ZnKSk7Cj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgZ290byBvdXQ7Cj4+PiArwqDCoMKgIH0KPj4+IMKgIMKgwqDCoMKg
wqAgLyogbXVzdCB0byBpbmRpY2F0ZSB3aGljaCBzZWN0aW9uIG9mIFZTSSBjb250ZXh0IGFyZSBi
ZWluZyBtb2RpZmllZCAqLwo+Pj4gwqDCoMKgwqDCoCBjdHgtPmluZm8udmFsaWRfc2VjdGlvbnMg
PSBjcHVfdG9fbGUxNihJQ0VfQVFfVlNJX1BST1BfUlhRX01BUF9WQUxJRCk7Cj4gCj4gCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
