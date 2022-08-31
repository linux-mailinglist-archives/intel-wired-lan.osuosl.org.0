Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D035A8784
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Aug 2022 22:25:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 299B340386;
	Wed, 31 Aug 2022 20:25:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 299B340386
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661977532;
	bh=rCTqq7lFUrm6PgRJlL2H8UWNMNUKPjPQH3uz2lGNWvQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9YnE3wRCLEdltEq6XXYEq2NevG+q71c8P2xv+OiOFG4DXp8BtMqE9h6jU3AtHhaaz
	 CHVbvm6hEH7VoVOHvgyVphiZp1nc53VVrt0eTBiha4VYT7GpnZSe/cRKf07lCx8OWU
	 fxTvHotM0Zstz3ZN36e8vBwomxxJfRCdDNG9GSlN8fYEM5/9KF3pcn8dvhQPMVvPvS
	 ukjUQeNtV53FSZij5e/ZShO7qpyV6E4slt84NQ8TVwnqnCd/MsdtYlD6kNulO12EYz
	 5pS/mnKiefGeqUuX1tlbb2gxrjZ2kG8kIZsXkrxKB20d3TLVzWKau+phbZxlGfTQvi
	 tUrsVE4V6qcxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jMb8qtqZ49JB; Wed, 31 Aug 2022 20:25:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06C4A4012D;
	Wed, 31 Aug 2022 20:25:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06C4A4012D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B6EF1BF422
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 20:25:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 249F060C0A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 20:25:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 249F060C0A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rCxp6AYRf0zZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Aug 2022 20:25:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42E5A605AB
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 42E5A605AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 20:25:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="275285988"
X-IronPort-AV: E=Sophos;i="5.93,279,1654585200"; d="scan'208";a="275285988"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 13:25:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,279,1654585200"; d="scan'208";a="754541583"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 31 Aug 2022 13:25:24 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 31 Aug 2022 13:25:24 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 31 Aug 2022 13:25:24 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 31 Aug 2022 13:25:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 31 Aug 2022 13:25:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QAkC43iwrZqHIN671s5rB23iUnw6SlNTJI/HXGs38QTLy3NTdcl1qHG8FFEKZtjWP1neMjv8lL45DeNMXXMKo2t5B4rII9ClKMnlFmFyZV/LiIYjRhIvO/qaXKNp1QZQhDKyrE4i9G69781zqSvhmspCHM6eg1De8rLIgbcN5HBGR27VcLOL/KArFPqR4dr+/AhS4uNtG+sFGTIhblYx3446/OP0uomMhiGj7+JrNcPX/PJjFqpQckfe1EEaezjULkOIZ0s9iEUH9PvRn1PLDmKKpYqTdHxsv19bFk7kUTePhC77wmOokzesuhesaoKKGRqTr+m1gfoIGlmeRmrmTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CpXN2mCyoVcr+lzjajpNU5zv5XTfpPKaKSdOHWluw0s=;
 b=G81mzktjIzx9cCqtLT8eqOw2wZMWUWAZG7sWdJHKHcQUxKBwGANb6898CuQUlwDNdnETdkSGVRkThq7bQzPenS8IKqMKdetxLUx96zaxO4W3fJ9GJ+Esrsc50cQg1FI3cteGbK3EeZrjVhQGE7h5oMJ2r4GLM6Pq9GYFvw/qZnggRnXkPEAZ2S4IdZVaGPQsC1MKnbFI6QKevjQcY0ILla8bp/oVl5YTCNPEbUGpDIZp7FK+eRr52RzuUMtGCMS3+QPFPIp3Y/LlaPm/KxBK+OcmnTSJzlbaS+MulZwmZWotjW8leFUzJ9amZ59TY9RXQHyLqfg0aNioB154F8J7Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DS7PR11MB5968.namprd11.prod.outlook.com (2603:10b6:8:73::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.10; Wed, 31 Aug 2022 20:25:22 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5%7]) with mapi id 15.20.5588.010; Wed, 31 Aug 2022
 20:25:22 +0000
Message-ID: <7c42b619-5749-92bc-87d4-1459438c691c@intel.com>
Date: Wed, 31 Aug 2022 13:25:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220831135243.8623-1-mateusz.palczewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220831135243.8623-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: SJ0PR05CA0104.namprd05.prod.outlook.com
 (2603:10b6:a03:334::19) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 83252849-c25a-4967-d1c3-08da8b8eee36
X-MS-TrafficTypeDiagnostic: DS7PR11MB5968:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Lj683r2WCRHB5f5nU6beFVwvSHr+l1uvAuBbTNeO0Oqd/WmUvtQ93u1lRq0yxT6qK0PQShN9itt0ELaDBoLpfVPt2I2l4I4HqgXfWnnFurrTDfYcWeYrhRgpd0gP5lCjI/E6pU8xzJZ6R/bLF3TSzdwz5w1xji6H25Rmr65qfZODwcRoihmN33Y2s/y03YC9mkLQOsOvWOw/cGG0hVMt3XxoErP3qkxR+06u0Ksko2wgoU38DGihwp7iKfrlmCz/8HmVQfHcVJPdi9t++oh55ERPIkKQP9fYOPylhawFfmhG4o3WeRsbaw9HOoAnyjCgZbJ978RfBeAOlp/TLG9SBU+YkZZsG+l4XjFPd4Q1J0wAMSrDbrw6UwlB+ME8b9zO7NEHlxlVag1EAdBOcYB9iZoE3qXy1+zvOD0beHhBiZ96gl1uBFvjxsnL8yB21iuQnkEGS7Ed8HnkKv1ICVvirI6iO3iyvtEo4qr88ND2Nin6YUcJVWWyJmUhqMyeI1sDpYW9+eO0cJoDGc8MeIHfHoK7oiI1o7qVkJBERBURrX1LFtA/ajIi10Xz1ZWi80c1njf9XODLYLosien7tLWKPRtck6RIki/jW3SEqglocUf1UfYR8yxf+TaR+6q9KBEhtJV/93hNF5pLvj+lF7bEyLu5o5a+a/4ffseFnrcgE/tYfHU4qf0NgFEH1MQDhNkbygdxEfzWuRHgjmJXDoOrmE3F2H8N7z5GNqCCwCP8YjrD+VWD08Qs9uoBpONMdZkXfSM+ftYKwjujsIcV0cl/J2zMAybqTU+N2okmoFqxQbI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(346002)(376002)(396003)(39860400002)(4326008)(66556008)(478600001)(66946007)(316002)(66476007)(6486002)(54906003)(2906002)(5660300002)(8936002)(8676002)(82960400001)(31686004)(38100700002)(31696002)(86362001)(53546011)(6506007)(36756003)(26005)(6512007)(107886003)(186003)(41300700001)(2616005)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UE9BSHhBeElQUlkvNzV5S1NaTjJldjdORC95czI1bXR2U3UxdWdrZWhQaGtO?=
 =?utf-8?B?amMvRGpGdjk5SkxGWFk5aVZQS2d1VkoxZ1FBSGgrOFpRTEI1aUQwbXF3a2Vw?=
 =?utf-8?B?MzJ5bFRxYWVlektJT0VsTVRXanNhQUNEejVWS2dEeldLb3E5bGJjYmpMK3ov?=
 =?utf-8?B?RW5FMDFvNnJQMkN4NG80ODJSRVNNaGJISkxORUxtY1NzZlNtL0hYUVNKWFlM?=
 =?utf-8?B?V25rMWUvOERKUVVlVlNiM2JESUZSd0dEQ1habG1aSEhMTEdNYnQvSndsUUdu?=
 =?utf-8?B?UGF2ZzlCM284OWJjc3pBOUdrZmVKc2lOSENQQmkvRkRiOUZRWjk0S0xzR1Bs?=
 =?utf-8?B?UjdDamZzV1VQMHo2L0paQjZSbjV3V0prRVNsdTQ0RWRYOEJhcUx1ekZtTXRu?=
 =?utf-8?B?dC91YXFLNUNOWm9OZVdNSHRLRitoaktNakEvVUV4REVjYzhJajBYSTAyV0Yz?=
 =?utf-8?B?MTI5UDFTSGtLNXNZSFlkUVgwc0RiTUN5aHliZnZWNHF1RTNhaUtrRXhPNlVU?=
 =?utf-8?B?N2pZY1lsSGVDYTU0QlZ0dlhNTzZYdThlSXEzMkMySVdlcys0L3Rxc2lKK1Ax?=
 =?utf-8?B?cFNmTXc4Z3A3c0lKNjVUVG5LVVUyckJ6YXZiNkc4NVdIRXJjYThLd1N2ZU5k?=
 =?utf-8?B?VVJObElETDlUQkZCVWVrV1F5cnNSdi9hVVVvZVFVOVBEbFZXS3kva2lESWxv?=
 =?utf-8?B?b2VZYXpHRThoSWJjZ1BDSnZ3TXhKeDhDTFJjK294bUl5UVlYcDhrSVI4Q3BU?=
 =?utf-8?B?eG9ieUhIdDczT0FDQXFuaEpWMlc5Y1ZaY1c0RUc0clMrUGw0WHlmRWNnbXRq?=
 =?utf-8?B?ZGZaWGhFYzd2TnVZbnkrSjVPUW1wNW4reGlDakZCOVV6a3pJMy9sa2VOL3V3?=
 =?utf-8?B?Rll4SjRjZ1FoSnRETFcyTXh3TGY4U0FDSTVBTTA3UldoM1Y5L21SR29abFFE?=
 =?utf-8?B?MWdxNHRySWFCTjRFWXJxQ2d3SFFUbER0RmhRMWZuakFDT21Ob3dlVEwxWm9W?=
 =?utf-8?B?bTRxbTdTbnZXQ0VhS2oyUU81bDVQNHM0ZGxMUkt6K3hORitRTm5reUZEL2RS?=
 =?utf-8?B?N0tyWm5sT1JpT0FFOHFjWnRBeEhFaTVuWFo0cDJ5MnFjeTU5c1VkSitMbHpJ?=
 =?utf-8?B?SlNyT3lJTkgzVHVaaHVZRVlKcjlTUHBDVFVzV3NwTDI2M2ljRGxISTdJeUJk?=
 =?utf-8?B?cC9PYXl0RUcrSUUrd2JQTXcyTFBWMkRqcENUUUdNZnRHZ2Q5VTlHQVQ3TFdP?=
 =?utf-8?B?Nk9nSmdVUndaWGVRWTVYYmlMYzNHd2xpaXNVdVhCbloybWJsN05VV1BBYW8x?=
 =?utf-8?B?ZzVnR2RDN3NEM3hFNDRqRVJEM0lwbDdvODFMbitFczJEY3RLL041NUsvZ2ZB?=
 =?utf-8?B?K2dwdENaZ1M0ZGhYenBYNGxaNm5lQ1FaSHcxc3FUQlM3V0NwdDJ5Qzdld2pM?=
 =?utf-8?B?cmpjRnd0NlA3b2pSUDlDcHQ5NEhObStIU0xkam1vdzlwUXJjcmVKbkswZWRS?=
 =?utf-8?B?cUM5d0xVSkIrbGljUVM4V0JlRURzSERuOHBOcHhFTXIwZ1ZuQXBtVWN2SU12?=
 =?utf-8?B?WE1hNVRYbkRwbzdvTTFJUWdXakJWS1pTTVN6d284clJ5SmwvSEJTZG41b0Jp?=
 =?utf-8?B?QmNmemJxZEV2Q3NtK1VTUHpNOWtsYVhWK1dyOTlIa2tZYVVTa1k0S0YxOTgr?=
 =?utf-8?B?ZzM2RTcvRmc4S3grck11UDZOMkdOY3Z3Q2V3VGVESGtvR1dKM0Z3OHhROUZq?=
 =?utf-8?B?ZlY1U3ZvUmh5NTY1T3J1QzhIK1F2OWh4M0lMYzdQZ3RVenBYQnBxSEpNQWdU?=
 =?utf-8?B?UWFTcmx2QWYxZG9GeVFxTkdzWTRyUE5CYVVJR241Q2NZbkNWQ2NiTC9OZUFV?=
 =?utf-8?B?bk1ZeUhIODBzQ2d5QTNGWFFDc1JlTFhuQ2wvYWwwSGhNTTF5ODlXZTlybzVu?=
 =?utf-8?B?Zlp5R0JvSXFpdjhqRVA5R1N5UGZHWlJaTFNGcHNGQlNyK0t6RUJnTEZ3T0Fo?=
 =?utf-8?B?QWRhRUxCc200a1lVWitBSFFzUmNualpuSVpuQWZESTZWbzN5aElLQ2JjZWZt?=
 =?utf-8?B?bkpRZFVBcjQ0aHAyTTE0anpnSVF4TjUvVTg0YUV0L0JvY3IzMXcydjd2aGZj?=
 =?utf-8?B?b1RaaFppNmUwRnlxeFdwYjZaai84L2RvNWgzVXZzRGt2ZEl6OUlWOTFuZGdx?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 83252849-c25a-4967-d1c3-08da8b8eee36
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2022 20:25:22.5939 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G5DvS8lwDfkHupUeLu00a4GpWZytuAnEibX/A1UMVjbbDBDeYx/zuCBsIehcq/rOWWow5VfV5KpX1+3RbLNtufvcdkl0vXAjAG1fQQpolUs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5968
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661977525; x=1693513525;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aB/xtuzSfbDYMm4jJrP+gQ2e1nfLz/qGqUYMCrrUYF8=;
 b=SUe4wv+skdWc+SDTLpUIjDxk3a3ylcTMuJ618G6VRmy5V61P6lS41l/q
 PZ+p4nGZgbTcWUsLrgndnusgc+6LICaUIkG5SNN0KX3aDOPCtv/q3Z3Mm
 rn0kOaG1uLJAYjeSetzGM8mAuClZZlNwVZhgw0tBrPdUEUiTpeHYs7ad+
 tJNywSbDY4IKFuSHUMtnrKxZlW1TMmyWemF6otJR3dxn5kGxcW8rt8BX8
 QpTBUxSU+w4yumDthKXYXNKKNIBZKT4V7QEctj0JiXr7Cvo8zrhg1arng
 xwDo33+pO02ymVkTqLM2/pTyfovjncUAjr7FDi7Aa2Ao7prvAAoy5Ay/m
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SUe4wv+s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix change VF's mac
 address
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/31/2022 6:52 AM, Mateusz Palczewski wrote:
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> Previously changing mac address gives false negative because
> ip link set <interface> address <MAC> return with
> RTNLINK: Permission denied.
> In iavf_set_mac check, if mac was handled by PF, was on start of
> iavf_set_mac even before mac was added to adapter's list of mac.

I don't understand this statement, can you reword this?

> Because this check returns always true and it never waits for
> PF's response.
> 
> Move iavf_is_mac_handled to wait_event_interruptible_timeout
> instead of false. Now it will wait for PF's response and then
> check if address was added or rejected.
> 
> Fixes: 35a2443d0910 ("iavf: Add waiting for response from PF in set mac")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Co-developed-by: Norbert Zulinski <norbertx.zulinski@intel.com>

Need Sign-off from co-developer.

> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 10 ++++------
>   1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index f39440ad5c50..94e4cc4011f3 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1077,7 +1077,6 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
>   {
>   	struct iavf_adapter *adapter = netdev_priv(netdev);
>   	struct sockaddr *addr = p;
> -	bool handle_mac = iavf_is_mac_set_handled(netdev, addr->sa_data);
>   	int ret;
>   
>   	if (!is_valid_ether_addr(addr->sa_data))
> @@ -1094,10 +1093,10 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
>   		return 0;
>   	}
>   
> -	if (handle_mac)
> -		goto done;
> -
> -	ret = wait_event_interruptible_timeout(adapter->vc_waitqueue, false, msecs_to_jiffies(2500));
> +	ret = wait_event_interruptible_timeout
> +			(adapter->vc_waitqueue,

Parenthesis should stay on previous line. I assume you did this to avoid 
checkpatch issues. I'd rather you go long line to keep other things 
styled correctly.

i.e.
ret = wait_event_interruptible_timeout(adapter->vc_waitqueue,
                                        iavf_is_mac_set_handled(netdev, 
addr->sa_data),
                                        msecs_to_jiffies(2500));


> +			 iavf_is_mac_set_handled(netdev, addr->sa_data),
> +			 msecs_to_jiffies(2500));
>   
>   	/* If ret < 0 then it means wait was interrupted.
>   	 * If ret == 0 then it means we got a timeout.
> @@ -1111,7 +1110,6 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
>   	if (!ret)
>   		return -EAGAIN;
>   
> -done:
>   	if (!ether_addr_equal(netdev->dev_addr, addr->sa_data))
>   		return -EACCES;
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
