Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D367B6085
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 07:50:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D030141919;
	Tue,  3 Oct 2023 05:50:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D030141919
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696312247;
	bh=tdKSO7Ttb9VDdevfOs7MZZxnbLOB7ZhV+YblCbfa9q8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7ishnxc68Z7FeeSRa3vIoFDNcTZNjLlVRheTs7PihJJmKqSMJgR1LPUCEqosIXqDN
	 YabCX42ZNszKWfeT3Au1463j818dIJtUuqZ1gqqbB5CclYVFH91akxTNYNP1SMP7Nu
	 L8pjkluDbfegOWCrS9qoBxA+7bXrMjVxLfMUQm1qr5OwP+T9xvFZ/o9kbZzJZI9dMd
	 ZDHP/X6T2XPB4teiqCNJpncAJGyFrVRcGQB//QZSrbo+XMWZlSS+2o5M0g5bjWTMrE
	 1dvzi4WRDXJty44pVNWipq/0bcyE4znOQaQa1pAetEeT59InwZVkRwaGyC7ScLQ+C9
	 SRjd1bjkmK9Qg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IQ_ZMLRiPcxR; Tue,  3 Oct 2023 05:50:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 538044189A;
	Tue,  3 Oct 2023 05:50:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 538044189A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D9D761BF584
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 05:50:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B010960C33
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 05:50:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B010960C33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s3hb0iQrxsar for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 05:50:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E56060C01
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 05:50:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E56060C01
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="382711548"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="382711548"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 22:50:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="874608320"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="874608320"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2023 22:50:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 22:50:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 2 Oct 2023 22:50:37 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 2 Oct 2023 22:50:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PVM4WP0Nj+2ZcdVMe1di2KEnWRa2tODpw5IjDVgeR9l4FMmVqReXPmVoBkKSWIX3ZqV6UWPWni7FH+PIoWS4R2ZafPSAfYL9uak0qA/A0bysPimXCY6Vs4LVLiOWVUXC+Vs4U3NPMX9W3mZHbZYr8PqMJ82Iv+yavCAcIAMVd5f38ALQiYsFEudk/JYtOYVhk/QvMoLuLeO7FAC0kV+kbNkkwl2r3Uj2N14/GUZGdhr4OIa8iLb0rZTPQWHdRqvjPLEiiOEAushOGydP3xbZyXxapsBissOgk0Wcqm7EqmXlZZV/H+pmMQaxNScltahGbepFg2EQtFl2tT4XoH4Elg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W6UzKf1z4aKfW6BOTXFiPL+Un2GMOMp2zMBmjDOmhGY=;
 b=a2BUjKQ8X4DXSqKdRO9O4xbYJ6wg+kpATeO2nw94xpz8XUHQ/QazIBH80jmO6EHTL47debjuH1dMf7lR14DNL7RitMi9QyhBIoS7A6KBvj2Wx8o0UznBrtzHkiCkL3w7PQ3nQxF3Aj/WSN5VC6jtygxLK9Ai37pg4xjgJiVoSE8bIiLm9ubF2jo46vYxzA/25U7JAZCVvoU4E5VcgNSu91Hv9yFJLlqoDhGtqkEcJaudn7S/JNb+ic/PGr9+G/jsoccB8IuS5xzuwxiXQ0BamAvCjCxQjIxu0y0PPNpz9a1nwmshd7SDPTjXuVUQ7XJQB6HaXVrsfrnNoH9u7MxgQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by BN9PR11MB5275.namprd11.prod.outlook.com (2603:10b6:408:134::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.27; Tue, 3 Oct
 2023 05:50:30 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda%3]) with mapi id 15.20.6813.027; Tue, 3 Oct 2023
 05:50:30 +0000
Message-ID: <d0dc80a2-6958-5cc1-b75e-2f1dd513f826@intel.com>
Date: Mon, 2 Oct 2023 22:50:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-US
To: Jay Vosburgh <jay.vosburgh@canonical.com>
References: <20231002200232.3682771-1-jesse.brandeburg@intel.com>
 <17923.1696290586@famine>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <17923.1696290586@famine>
X-ClientProxiedBy: MW4PR02CA0030.namprd02.prod.outlook.com
 (2603:10b6:303:16d::18) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|BN9PR11MB5275:EE_
X-MS-Office365-Filtering-Correlation-Id: 19d48a48-9284-4288-40a4-08dbc3d4a6aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hT0nViKf/z1pAgLs+H6+hBhQF3HgXB5AjhL6tn57vtckORVO/ER2se2CoZoTS8gJcPdOyj6fIWYMGKaq5lYpQAPnwXRNgYeF97tUg/J3dBqyjezJWhWUiir94uAqhwjZk6uEi0RRIMyMfEW956AUX5c65OsqwHrgHAEGV+NopxkKR2fWt3iqbYIN15v4xhq0bO+N6T1kqjVCZ58I0bTg0U+N/Zv6y4TV4z+tQ1BNKnzb/tgCS13cy8OPet/gkk01gqRJ4+eMPU84gzYWBsrIX88Q4tq/FNm1NdzJnLSwhQiMxwPOGMG9NFLVnXgPx+m55PMaGDJlqZNOyCqhHPGeKVJ4h1v2Ymvd9xnS85s00m3oieMh0e6tH3x02Ku9Zrj8Z0wl/vrCj1xWaw8Nf7++3GK2cVsUzeAjAp/ZmNHokFKdTfIEhgQ3mfYKvVMJPYKxwO+u/1/35TddBLo2I+UmaabDA7te1ptt6IJHLKdPlK5y4UcDpWD0tkCSd81gQ6eMjMjcVd9SMq5p+vHcu7w6HvNX9PuZTrnEaTxRJIdjGdaV6pvXT7VhvdTbcMsoNzKfT775Hf01+Thz0r9wPtXbEKGvoMHCO0VQW6CksJrwdPnwh5qsVE3QoHIjCjGRCVoqS2GtDqWp1RZ4gYTgZJhwZQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(346002)(376002)(136003)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(5660300002)(8936002)(31686004)(8676002)(4326008)(44832011)(26005)(2906002)(478600001)(316002)(66556008)(66946007)(54906003)(6916009)(66476007)(41300700001)(6486002)(53546011)(6506007)(6666004)(107886003)(6512007)(36756003)(2616005)(83380400001)(38100700002)(86362001)(31696002)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MnBZTzEzMVRyYXZMYXFQRGxMbkljUVM4dlIvQ3VXWmlOVS80dUJQSFlnNEkx?=
 =?utf-8?B?Q1o5bGIyWWh6dGVFVHVpWXpGbDNDU3pqRXJBekJBWkFsdjNvSVB1TEZ3NjNy?=
 =?utf-8?B?L1kwZjFxejlqY1NjSUZ1NldIbWdoTXM4Z3EzVTJFaSt1MTJUS1NUV211OGR6?=
 =?utf-8?B?c3lLRHB4WVRPWWdWY2ExTnFBcGltUDhELzJlZHpPSEZVd0JqL2hjNG44czlM?=
 =?utf-8?B?dFgzclZHM1F4cEtJSFZFUTNuUHdDS3FYWHRuYlBzY2orK0pVWkNSbk5BV01W?=
 =?utf-8?B?d3k1Y3ZxcUtqN2pGdzlrbHZMcHdVRW16Wk5mUXBwc2pRMWs0YXd1dTREUkhP?=
 =?utf-8?B?c1BVS3FiaFQ2V001OU9WYzVjNnZlQzRSU3VUcXVuWUJ6cDhkTTJhemM3MEVK?=
 =?utf-8?B?L2hEQTBVRnBwQVQ3MFlMVzZYYy9IK3hyUmlRdzRCNHdZT1ZwTGdqN2VTbTUz?=
 =?utf-8?B?ZFJiL05QUERkL1VOMnVUTzZERkk5bk1raitwbXZZSzNrUkFmYVN6enJkNk8y?=
 =?utf-8?B?S3E2WnViTGRmTW5GR014VHIwZFRnS3hlOWRzL1lGNU1DdmVLZ1Z0cFNkNGJt?=
 =?utf-8?B?cjV3aG50MitJTEM3U0ljTXgxSWZDYy84Vll5SVoxK2pTN1JlU21LZHh1dm1L?=
 =?utf-8?B?SDY5aERHOVU2TVNtZk1wdUhHSkJwMXF0bGtndmRHcHBhWE54TVlXWituRThJ?=
 =?utf-8?B?UHoyb1h2Y2w3b1liaHJNZFNQUGlDeGhVV240NXBERGdGcUxCR2thamV4Qktn?=
 =?utf-8?B?VHhPR29hZjY2KzFXNHV5WUcrMGhMODRQTXh3ZDBXNFJZSnBkQTRoWEFTOHBa?=
 =?utf-8?B?QkNWS3cyMmlaWnlKN1ZXak9ZOHBzZ05KQXZJMkVabXcwVVB2aitqQkFhNXUx?=
 =?utf-8?B?MHFrdG5JZkoxM2UvRnUvNUR0TXhXc1hoM2ZHbEJYMVJMUGFYN1Q1czY5Q1hJ?=
 =?utf-8?B?bW9uUG1vY3grdjhNOXVGRDNkVlVVODBuZDZoZFdWZ0RjYlNadnhScnNCaXRq?=
 =?utf-8?B?UithbzJqckc2SHIrQmkwUjl5TUc3RHZwa0JYNHJUZnFkMkszNXZQdk1qRXN0?=
 =?utf-8?B?UEZJZnZtb2puTnB4ajBDQ1JZdlIvWS9BQkR6UnJuU1lBQmpSQ0dkM0xiNlhV?=
 =?utf-8?B?TnNDdXdaWUdHU0JWSnlLS2tEOXVVTi9wa1VyczAwb2JpUHBRYlZrUTVQcVpn?=
 =?utf-8?B?d1hsRGFQci9DWnFFMndnOXV6bUlEQmF2czc4ME10VW1NK2dVZEVyYkNqMXBV?=
 =?utf-8?B?dlF4b0pMajg5Ri9sTHBNckxXV1J6RW00Q2tBbWc5NzBIYXB1NE9QVWx4azR2?=
 =?utf-8?B?Z2lOVW9iS2FvVTZGRkU1Q3I0TEFETktvWUxNRk40d3RRVG1PSVgramE4SHZo?=
 =?utf-8?B?QldJcUFGbmcxdkErQVRVZXdFa0JXUEZKMVpIU3h0aUdyaVFkb3VFOXJnclZv?=
 =?utf-8?B?cUs2dkUvKy91Y1U2bTFhOUtwTEIvMExkb29IcEJYQjYxaTU4L1MrY2RkVEdq?=
 =?utf-8?B?RWltM2tBRDVjRE1sUk5NZzV2THMySHVjYlB3R0hxTlhML1ZpMzdlQ0k0bFlq?=
 =?utf-8?B?SUR0SDJpZ295dUhhaVFsZmRySFVLcm10UUZ0SG9BNjZNbHVLNStEczErOGZB?=
 =?utf-8?B?ZkpOWFJCL3pMUVBORlB3dXFINEZJeTQ5djMrZWRYeVQyaUVIbUFVWWxmSnl2?=
 =?utf-8?B?azlIdDVaaVJReThqK1lENXFIZEw1UlFqTmtPbzZqZytKLzFqb0hOQlRlbVJJ?=
 =?utf-8?B?dGV3Yk8vWDRobXZSeEVzM2p2cXpTNklXVHkxU2NESU91eVVUazVVV2tHYm9t?=
 =?utf-8?B?STYxaGQ0SnptWWZyRWlFYWxOalVCMDVYM1ZOYng3VjJEVXJLQzB2TFY3TEpD?=
 =?utf-8?B?cm8zVkRMb2owTjhJblRvK2ZCNHNGOCtHUlZRR2toM3ZVR2owWTlxOVUxUFNl?=
 =?utf-8?B?ems3MzBOVHV4TkFzdXpyN3FyMkVFQ3hxcDRrTTFTQTJkVHp0WVlqQ1o2MHBu?=
 =?utf-8?B?YlhoYzMwWWlKaGo5TzdHclh0VGc1ZVB6T1FyM1lsVGhLeUY1SkgwallqUmwy?=
 =?utf-8?B?RkVMUkRuRTNjVGI3MGFncmtxbmxRa2tEc3VpTFFIK2U0RWdBOXVVeDZPU0hC?=
 =?utf-8?B?ZEVQTDRGTGlhdllJeUtXbXZQaGpIM0djSzQxMnBIVUkyeFZiTWpCN09lNXJI?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 19d48a48-9284-4288-40a4-08dbc3d4a6aa
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 05:50:30.1497 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hkukzMik6ol7DODGYVSTfVMe+DgE4oAvCQd9+2YyCNjvly5mv1SnGEpneFFjwlizRupDk4IafpVjYlhvE+3x/UhYq21b0W54z3gi3R6vZv8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5275
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696312239; x=1727848239;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jVoVM39Nb89jTRp8VD/CcOPvNcFyoxvpVb16ayYp6iY=;
 b=KkrD4+ejgJ5lQgtGj5c8e41JnFSjg7fXbEta+OIqtWbko5BrGuTPLKOH
 RnVKKK98Hs3iHMupQX8Rg/q3SXqWoPpQJz8pnYHVpKz/GQEHxJU3Ntooq
 69Porkqw4aLjoJpmEsiEVCZJSI2Hd9JyVeu6H1g3c+PV089r6DgXxgN3p
 WMnARStW83tS3Yg2FsIp2Dh6ZmsY9MjzMIidYkSnAmWAT12TtSE3u4o99
 t5j4kiwv+xpR23h0enyxDYlK3iJ1FoABcoK2IyPYXy4RmC6p6boNc2YlQ
 iHzGLWkxKWV0LeGxrtOynq6c2O6S2tLBhTuH9MZ7n9E51QQwIdV82Uuai
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KkrD4+ej
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: reset first in crash
 dump kernels
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
Cc: pmenzel@molgen.mpg.de, Vishal
 Agrawal <vagrawal@redhat.com>, linux-pci@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, jkc@redhat.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/2/2023 4:49 PM, Jay Vosburgh wrote:
> Jesse Brandeburg <jesse.brandeburg@intel.com> wrote:
> 
>> When the system boots into the crash dump kernel after a panic, the ice
>> networking device may still have pending transactions that can cause errors
>> or machine checks when the device is re-enabled. This can prevent the crash
>> dump kernel from loading the driver or collecting the crash data.
>>
>> To avoid this issue, perform a function level reset (FLR) on the ice device
>> via PCIe config space before enabling it on the crash kernel. This will
>> clear any outstanding transactions and stop all queues and interrupts.
>> Restore the config space after the FLR, otherwise it was found in testing
>> that the driver wouldn't load successfully.
> 
> 	How does this differ from ading "reset_devices" to the crash
> kernel command line, per Documentation/admin-guide/kdump/kdump.rst?
> 
> 	-J
> 

Hi Jay, thanks for the question.

That parameter is new to me, and upon looking into the parameter, it
doesn't seem well documented. It also seems to only be used by storage
controllers, and would basically result in the same code I already have.
I suspect since it's a driver opt-in to the parameter, the difference
would be 1) requiring the user to give the reset_devices parameter on
the kdump kernel line (which is a big "if") and 2) less readable code
than the current which does:

if (is_kdump_kernel())
...

and the reset_devices way would be:

if (reset_devices)
...

There are several other examples in the networking tree using the method
I ended up with in this change. I'd argue the preferred way in the
networking tree is to use is_kdump_kernel(), which I like better because
it doesn't require user input and shouldn't have any bad side effects
from doing an extra reset in kdump.

Also, this issue has already been tested to be fixed by this patch.

I'd prefer to keep the patch as is, if that's ok with you.

Thanks,
Jesse



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
