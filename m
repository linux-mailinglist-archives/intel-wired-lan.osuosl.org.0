Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8093A63E69E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 01:40:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B83F60BFD;
	Thu,  1 Dec 2022 00:40:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B83F60BFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669855218;
	bh=locP6pUZLLwC8ItpcRm4aQfUfR0Ovju05ZjJKZrefsQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0RUrn+sovPhckbOrjcpUZauogM2Ugkq0acnn4vVwf+uM/s0anmvtgFKrcApkjzMb7
	 pu42P+ubkruolmoz4ssvPSXb4GAJ8HFVFxl1oSgRdRNFavUC3R+weXaMfxuBMkN2w7
	 uhV1jjsXpDYlE7Ytr3sGvIXCwIOH4y+1pO6ta1A7RCYrGzepi0tnLOo5ROIPzInfjp
	 B7PomP7AqOrCjCnV0Y3jz84Pg2tF73WiAHU72eCPXVCM7bVJpa7wmZgNUYF5fY2g86
	 zKIcNZkPhvIPQGK7aVdIr8HhBypuax1I9BXJZQJ3cqdPTOMSQldzY+3M1xkB0FvuEh
	 xUYWdzy8fVD4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wuCXR8JIqiaU; Thu,  1 Dec 2022 00:40:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44CF060BB0;
	Thu,  1 Dec 2022 00:40:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44CF060BB0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0AFC61BF968
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 00:40:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D6CB5410E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 00:40:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6CB5410E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4_k-4CtyfCeq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 00:40:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79975408FB
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 79975408FB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 00:40:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="295243358"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="295243358"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 16:40:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="622089476"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="622089476"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 30 Nov 2022 16:40:07 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 16:40:06 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 16:40:06 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 16:40:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K+hWD21Eee6IEJyxoZDng6AO567xOKq1ImV6HWFhpc5d4TXbBAhksnUa6yw/jFhvjdlN+tRV5/ZmYk4zrQUYX5eMewT+dJoW+nvBPRC7vWM7gVUU3oBmhzEkNTBVZtn5aLXlS+iCyU2zCR1X4v45onVS058lbnlCZ8SVHHWR0g6J38cVB/lxAtp9/7eed1GaWkUkynSoov0zhy+UGfNus9Mz+o0c5dOFQSzd24Ko5aBi7x7I2OJF1p9gM9UgkRWDN1KmjxP0pgMKxraWV4LjqzCViaeNJu5Sc23WbDVs4xWuQKwmbv0IQSbxtpv9vzzXMY6et1L0pXm06SyVnKyFrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ejmFnc/rzq4OeIwDFCi9uSHDrJJMekROpsUpCBGHuE0=;
 b=Op7LhjzKfxo+DVw7byDkTGgPHFd8mUZvpIl81YVDsKL0Wove5ignv3/mVj3KMhpcO8QdkJfHDSjyklO5mLjkTz7EZmCcBgMZJaB3yAyPmUU6ycNiyHh4VJFMVpidbP/PTztaVHKQ0lsivvOS+r4Lwrd+yCut1xZRxtB9lkKHFIjZQfNWVV25Ge87D3hdZ9pFZhks6Bzmj7gpKtkZfuePyqKahw6R0HwjRm/nXfPdtpO3KsGpmXBs7L+IFrPZdpaocG/53as6+q+kFwkAqak4gnDRsUVAgsISIEsMdre35dw6JjOomEb4VkLmmliktaMbLBBqD/pg2xGnRs9XZOcLTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB7430.namprd11.prod.outlook.com (2603:10b6:510:274::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 00:40:04 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 00:40:04 +0000
Message-ID: <857f7d38-edbe-0260-7fc3-925131beb5d7@intel.com>
Date: Wed, 30 Nov 2022 16:40:02 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
 <20221128214749.110-5-paul.m.stillwell.jr@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221128214749.110-5-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: SJ0PR05CA0141.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::26) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH7PR11MB7430:EE_
X-MS-Office365-Filtering-Correlation-Id: 78c40fb4-dec5-4936-b18b-08dad33496b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OgSBuuZlJg3c5WsOH/wbfqXe6FS7YTciVHi4eJq9se1I55Xqd42lk5Wi7RihE9+j+e5Mv+oQAFUZI2lXz8xqtBJWG2xEC9pDydo+2S9N45820BuTw/ZcuTNmnassDdg65+CL2l53jH4seJjysCy+HLsHqF5SMeoF4uQVK/isn1FW7o+22htpNGoGsRQTQ+oOrVZVg2MXtLZ3qUphRh0aHe0mU2h8L2rq0+g+fN23BXRp+5+9oTGeYmNhUvbpb7gGIIr6BE40AYCHmnK1bdkbs4S8+xB8JVm+9ri7273fErLhItT05Wd/vwJCXDmCTDLz+wlxk8Bst0LtXCr66p2ws1/VdNy3GU4BopPpXQQi+zaM8ihrBlmJPYtDMVxMrHD9XNbkCwkf4oK6Wzd6K25wGDZ4YAnkrvijxWneXGUkVutW76DvG6i05vP6E5/vPC8AXi/sOGHQ2lNhfv5ke7CJzcHz2GEEEStbZDMJ1J+rPsQqFd/fKgv7qGSr57UZupUkyynJ1wFuD3aDfjdIhVltBBCMd20KoZ4XXW+HoMq0i9pUNiPALTwrA9pdQGmSVQwwu21gnM9tyYoszfkWVscqoVHhyQDJWtj/0SG6eQK4XXriMduWUp3caFe4A8rpkOGbl5C4+w2zoxMTl0r/XTkAronNkK7pzJ3Z8mF/8N687PbXrKU/SgFyL2nN0lQ/4/YbwfQzaN7kpMOTr1mlnEDVHGtrwGJXQye5l4p+85wF50U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(376002)(366004)(39860400002)(396003)(451199015)(6506007)(2906002)(31686004)(66476007)(41300700001)(66556008)(186003)(36756003)(316002)(8676002)(8936002)(5660300002)(478600001)(26005)(66946007)(6486002)(6512007)(2616005)(53546011)(31696002)(38100700002)(86362001)(82960400001)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SUc1RXZCQTNiR2tMYjV0RFBQMHl3Rkl5Lzh3WHNMd1JTTnNQcW9CZFJvWkk5?=
 =?utf-8?B?eFRzanpqTzJSSUgvM0lwVDF6ZHEwR3Q4OHFrb250THRsR0x6YWE0bDhCSnBw?=
 =?utf-8?B?NytlSHprditobzE1T0JjaXV3UUNCU2pFSnFqT1JNdlVEWTc5bDh1eGNFeW5p?=
 =?utf-8?B?R3BqTHgyeEE5MzY0N3V0RGFSRWJQeERPRkJqcFhKUUsvRjhSTXhOVjdiVTdN?=
 =?utf-8?B?aTBqUWYwWW1sdTFaSU0xQzZxaTlOaHNRYkhhdkZIWUl4UTBrZUZuSFV6dlN3?=
 =?utf-8?B?bjFXM0ZnZTlEcTB0OWpVZ2hiNU9PakdiVnk2UFcvR0dsRkJ1OVdlVTIwdXBh?=
 =?utf-8?B?eHBmTXRVYXp4c3FpcUt6RVZNVlNLemNCVGh4MmlQbTdqL0hqbENkTkJTaGsy?=
 =?utf-8?B?a0tzbWNGaE94eDNPNndqSUFNdGtWdWltdks1STFnRTRscVZzU2pvd0o2QmFh?=
 =?utf-8?B?Rm5XYUZwODc0YkxsaTQzK2g2VHVYK3FvT05wMTMxaEZFWTRwR2lrUHJUSTZ2?=
 =?utf-8?B?TkVJMFNTSmpjdGIzb09DR1hZajFSZ3J4eHpDOXljOVlZMFJFU05zSzRCQUZR?=
 =?utf-8?B?NDQ2cjAxbWNpTzhsWS9yOWN3Z3JVb0hCam1ZRmVHTCtXTExxVXNLVWFnWDVm?=
 =?utf-8?B?ZVhKNmVQUzJnQTE3NVJTL3pwSGNlWXB3S1NEcTduaWdvTitZYThxaEh3L01u?=
 =?utf-8?B?aFd3dGhqSzN6cktxK2Rma3h5eHd1d1hVS0Z1Z2d2MUJweFVpeEVCV09aOVN1?=
 =?utf-8?B?WFUwNVg5QWNmS0RtK2R5aGhLY2s3a0w5Qzl3TnhiRm5WTUJyRVZtMU5LWmpu?=
 =?utf-8?B?bkw5YkFUbjl4VGx5bGUzcEpxTm91UnVTV045dmZoWDA5M1JHZEhjL2h2aVlE?=
 =?utf-8?B?OVdpVWhxSW1xdlFFUXAzaGovNWJTNmUvNkY2WjNURFZNSkVRK1E1aXJneVNj?=
 =?utf-8?B?MkRXLzVwMjNqQitmNVdPOEI2bWc4c3h4SGc0OEFXcTMvMlMyaTVhbmZZaTVY?=
 =?utf-8?B?ZTVJdDhaTklBYVkwdGljR3Z4RzJHcXlpc2g4VDhtaHFtK3Z4NVpiTDNDL2Jt?=
 =?utf-8?B?VXFaK2JReFp6YStjdkMwQTM2WHQ2U3dackNaNGdDRXhHbmVPRy9mTXUzUmdX?=
 =?utf-8?B?MWRMdkhtUFpmenFHYk9SYjhROXNYR2ZPd2R5RHh6SDA4ZkRmUWVrbHBVVS9j?=
 =?utf-8?B?REtKVGpIQm8wQzFkc0sxS3FFblJ3QUVlR0poRzVNMHJ2cnhWQTFiemxRTitl?=
 =?utf-8?B?K3cxemgxb2xkYk8wVVA3V2dFakZianNyVHBEdXczNVJXZFFiaUV1K3NvLzht?=
 =?utf-8?B?MGtHTlZSeURIWjZkOHNScFhFZ1pHR29CVWRybzJkczJaN3k4SlZrbXVkN0lv?=
 =?utf-8?B?Um54L1RLUkVVQmpZbzFpWWtWakJKY3ZuOFBLWUtoYnN2NTd4ZXZxUWFyM3lX?=
 =?utf-8?B?NldtcmYzcFRsTUZUQ1E5M2ZOVm9Vak5XRjZKUFBQeVdEbkNkUHNnVk9wajdL?=
 =?utf-8?B?bUdIQjE3d1A5SDlwSVpiTzc0YVdpbndyeHo4UTNNTU9uUUhaUFVGbW1TNFhm?=
 =?utf-8?B?VDU0bC9GdU1IZnFwbjB1aVNBOWc5d0ZtQWVFUnRCTHJBK1VWbC9IU1NmYnVT?=
 =?utf-8?B?NWhzcitBL25DaE1tNkcybWNKTnhtUXBWS1NpTnhYaVVUYWV4aStFUGN6Q29r?=
 =?utf-8?B?djh4MVA5U0h3dThJb0FpUkJzSG9IbnBQeEY3SnFUcDhDWmJZSHgvK1dNZEda?=
 =?utf-8?B?V0dqdTJQcXJFdWZ4WFpjYUpqeXRuMWNONXF0aDB5K29QbU9VMTBSMjVsTzZm?=
 =?utf-8?B?YUhWWERoUWlubjV3NjRlUFJONzkzTXBpdmhXUWRLQkpmcE9pVC8zaHAxVWJT?=
 =?utf-8?B?SjYrYlREN3BjVnNpVWlQamNoNnNuZm0wWnorNlFXNXo2VGM5cGNTNXNPMHlD?=
 =?utf-8?B?cUNJWnZnT0w3clRRSDJValF3NkZJbnFuWEo2eWRhbUpkam1aMGovMkJtb1ZT?=
 =?utf-8?B?aERhL0Z1cmJxWmtRZjF1ZkZ5aWo3MjBUSnBhOXZEU0R5VnBJdE9HN1ZzTXh5?=
 =?utf-8?B?ZDgvc0RpeFl1UFlBaDQ2N050WXJVZzNPNG1iaVBGd0Y2RlJBNTN1cEdMbzlO?=
 =?utf-8?B?bGpXWGtNT2sxb1pyaE12RjNJSEt5N3JHa1VxNTU1ZW5IL290M3BaZGZBTjBt?=
 =?utf-8?B?Zmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78c40fb4-dec5-4936-b18b-08dad33496b1
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 00:40:04.8053 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: utNMhoyI2GKVPJcxtH0cJFKkEpubJVvl17UxuQmEgEg6t25LUAMri6z5dvLMZlB9y3Xe70q9nmw8ApO+MGZ8nXHyQoVP4deokWHQmlMUvB4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7430
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669855208; x=1701391208;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=fHvqXTZN4Po4/2hDFzpQsbOiY7ZoWIvXDJE2AkhZn8A=;
 b=Vt0XAG5vAmqzOkuDTa63AAWyPvekBbYNSWdrYVp9N2lFgTi/rERNssl9
 S+0ZF+kKni0DoEqCGg1TFbWAkURsJaXOuK2Ys9mUPtr+CKEVV2s8ktXc6
 hqpqA9wNvl2h66HnTqPBwBkJfCcQyTamkcTbWYLo8fdN/EEnoH0y2kXXC
 w7gRpB0pGnW9O4L5pydFzSK++kqkZIhjSefbL600FDj4JZgvUSQjOLLMd
 elyq5HgGPM9p8UX1YoFls5RubgmMdcWog44e1CAISS4QoS8h3Db23O/0o
 /V9SP90wNjWjhc9GS/XjbxHxem+/ODIgTGq20qsO1g9qDV0mgxgqgtG2c
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vt0XAG5v
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/5] ice: disable FW logging
 on driver unload
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

On 11/28/2022 1:47 PM, Paul M Stillwell Jr wrote:
> The FW is running in it's own context irregardless of what the driver
> is doing. In this case, if the driver previously registered for FW
> log events and then the driver unloads without informing the FW to
> unregister for FW log events then the FW still has a timer running to
> output FW logs.
> 
> The next time the driver loads and tries to register for FW log events
> then the FW returns an error, but still enables the continued
> outputting of FW logs. This causes an IO error to devlink which isn't
> intuitive since the logs are still being output.
> 
> Fix this by disabling FW logging when the driver is being unloaded.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_devlink.c | 32 +++++++++++++++-----
>   1 file changed, 24 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index ca67f2741f83..923556e6ae79 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -378,6 +378,10 @@ static int ice_devlink_info_get(struct devlink *devlink,
>   enum ice_devlink_param_id {
>   	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>   	ICE_DEVLINK_PARAM_ID_TX_BALANCE,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
>   };
>   
>   /**
> @@ -1484,14 +1488,6 @@ ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
>   	return 0;
>   }
>   
> -enum ice_devlink_param_id {
> -	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
> -	ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
> -	ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
> -	ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
> -	ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
> -};

Is there a reason you didn't add to the original enum in the previous 
patches and are it combining now?

> -
>   static int
>   ice_devlink_fwlog_supported_get(struct devlink *devlink, u32 id,
>   				struct devlink_param_gset_ctx *ctx)
> @@ -1743,6 +1739,26 @@ void ice_devlink_register(struct ice_pf *pf)
>    */
>   void ice_devlink_unregister(struct ice_pf *pf)
>   {
> +	struct ice_hw *hw = &pf->hw;
> +
> +	/* make sure FW logging is disabled to not put the FW in a weird state
> +	 * for the next driver load
> +	 */
> +	if (hw->fwlog_ena) {
> +		int status;
> +
> +		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
> +		status = ice_fwlog_set(hw, &hw->fwlog_cfg);
> +		if (status)
> +			dev_warn(ice_pf_to_dev(pf), "Unable to turn off FW logging, status: %d\n",
> +				 status);
> +
> +		status = ice_fwlog_unregister(hw);
> +		if (status)
> +			dev_warn(ice_pf_to_dev(pf), "Unable to unregister FW logging, status: %d\n",
> +				 status);
> +	}
> +
>   	devlink_unregister(priv_to_devlink(pf));
>   }
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
