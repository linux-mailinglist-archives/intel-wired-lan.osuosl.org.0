Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5E5737160
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 18:24:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEE436136C;
	Tue, 20 Jun 2023 16:24:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEE436136C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687278276;
	bh=t8PT2rDLfFePkNuISSIVL7drAHbO+xBVouuHDTabkXs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uPjyPNVR19OUen2qFMItaVZpZgCnm4z0E+s2PKcEQCZPscZUtPAGQD2VV1NZhcbN/
	 v1IyMR7w9jM4FcsffsR2xeTl2VXC3/1htotCCuzg9nLSYhFq0JvVXF2L3TuRtAOQ0Y
	 CgctgZnaAKV2M5LuzqMd3EL/ILtqy7QfmG1ai+ndkLhoSC/UCsS4DHjgbn1WS65VfZ
	 y0PmqZc+D/0lbyeRBOFy+GmvY0REYG00sjVQFEOBpZ3u5WPK5CoiD9Ew+VyIsB+ZKK
	 QYcYWcGtWU5lljdGGeWATiBBpg7v54KST5FmD9Z2sEtz5tNnFwYY5fQaSRHzeeK/5O
	 JddJaEsVholSw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qOrBmxUhabOA; Tue, 20 Jun 2023 16:24:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D28760F4B;
	Tue, 20 Jun 2023 16:24:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D28760F4B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 40CDF1BF954
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 16:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 12118404F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 16:24:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12118404F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3NFUsukmCUId for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 16:24:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA86E404A6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CA86E404A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 16:24:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="358779808"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="358779808"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 09:24:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="888303170"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="888303170"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 20 Jun 2023 09:24:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 09:24:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 09:24:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 09:24:05 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 09:24:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OlNyGeSd1Sw8lfDqAB1TZWQgloPmg+io9gChE0ZEuN4o2CbsAIOrKU74wGPUWtHuvwoioKN3UxrJDwAY1dRaGTYCP03GJET11CMMq/A9UVD2kZyaIxrH4S69Jc64mtsfMC2N4zRbGj5S6Ba04c3LSE9b3C7BuyrCFLRNNjushgt1fK6PUNCsFGocnW4RyJYib1HbxUQTk2JDHXNgsf6osWrWy65BeCilheHYBcB4+PoRBtkCdydO5Rdo2NXyOgtSijJ3wfVzkyWuTBX5/sZmcOZO3QIrm8PyMAAAcOaoIies4hxeuyQdWJao6HmaRA2xbaY6exMxbP46SUoltBR5Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UUGAGszN23w+X4lO8CNCgLZ02KvXMK+h+2n7KS2xP6w=;
 b=UGlUSS2x+43+pzw5GKVW9m2RQi2puPkkXnekHv/dyEbdioXGSuHL5yxupz11BFe+GypfbW3FLkxZ8vavRP0pNuC7Br9mIyNNWsijt8b6OQKkSsSYvDzHm71Xr9I2kKM1N5VIMFNZesGOTGcWV/ceN0E05bTHmKDo2Xf6hXOI0jGG0dMIMPRfERVTvfyTLSyHTAD6TtE4a3A8Bi/nhwH7pF3vwOtjBEcLZnuUKcHTseZSaaRyNfYItjzZuKiIS6sN5C1uLZTM8H1hcbnG/8pVF+uuITrfCokjyBQ8P+ao82paAVgUul53ROE/WZcat2+DLZw2CIdzzpQmLOySfwJkXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4451.namprd11.prod.outlook.com (2603:10b6:a03:1cb::30)
 by CH3PR11MB7721.namprd11.prod.outlook.com (2603:10b6:610:12b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.35; Tue, 20 Jun
 2023 16:24:02 +0000
Received: from BY5PR11MB4451.namprd11.prod.outlook.com
 ([fe80::c5b8:6699:99fa:fbeb]) by BY5PR11MB4451.namprd11.prod.outlook.com
 ([fe80::c5b8:6699:99fa:fbeb%5]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 16:24:03 +0000
Message-ID: <99cc9c67-4027-70f8-3ff5-ab5ed5f8be73@intel.com>
Date: Tue, 20 Jun 2023 18:23:56 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, Gal Pressman <gal@nvidia.com>
References: <20230613122420.855486-1-piotrx.gardocki@intel.com>
 <20230613122420.855486-2-piotrx.gardocki@intel.com>
 <c29c346a-9465-c3cc-1045-272c4eb26c65@nvidia.com>
 <18b2b4a1-60b8-164f-ea31-5744950e138d@intel.com>
 <17cc8e10-3b54-7bb7-6245-eba11d049034@nvidia.com>
 <20230620085919.497c3a03@kernel.org>
From: Piotr Gardocki <piotrx.gardocki@intel.com>
In-Reply-To: <20230620085919.497c3a03@kernel.org>
X-ClientProxiedBy: DUZPR01CA0304.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b7::6) To BY5PR11MB4451.namprd11.prod.outlook.com
 (2603:10b6:a03:1cb::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4451:EE_|CH3PR11MB7721:EE_
X-MS-Office365-Filtering-Correlation-Id: 03496e54-cd08-4bd8-d24a-08db71aac2e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ucWJnOdKkhCVLSwXQc97RQT9rnehNMFpU4uewiVS7EaYflv3S2/tJyT+/r/R8mSfZoB+c3FS79w3uB++f2RGfd7b0bZORZq+dHpEoFu28CuiOjx2dFcgYI1u+JQoNM4HegPHy8LK//qfnJhHQaIQuRs3LXjF6YW9rjHVcjyvu/t9JExQ2niPr1ECcq1WLvwkOI9xzKCVrB2YRRdNA3s6a5MAHtX6ar8vbb9dHGbQE5wMXgJjHdcK4kAhMpBTGsMlE0dcncuWzSfiinIGMBB8LKaRiwGDdk0Q2xFoIBnURQvHirQLfAkhqitT4czStl6h2+xKuorZsxfsw/swxooIyAXjOBVXGHNZTFijdfvOculD39VZAGg1gmWhJJGros4seE2HXLRcfg4FJ+KWlwuiVKWZBO9jTI3hlpZ9Qv3Vve6VVXQYKlElOpFeePBusS8JqSnjOMo6/nNcTaoO90n+d4c9d3+Retf5P8uio0Vg4ZYpXD+StP9LiXysXsr87GieTQzdJz3zFTBCGG826nBT7hFy547HhEOE4kcgwQdvc1G9Axao3lqZYk1XkF4aT9PVl2VbGYiJYTrfQkltb8U1CPFQqkZmWq92XILXim0VBEapxuk3QbYoJJ9EJzJ+7tALQxROg2JlTYrPQJG7z9pThw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4451.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(39860400002)(136003)(346002)(396003)(451199021)(38100700002)(82960400001)(36756003)(31696002)(86362001)(6666004)(6486002)(53546011)(6512007)(26005)(186003)(8936002)(8676002)(6506007)(5660300002)(4744005)(478600001)(110136005)(31686004)(316002)(41300700001)(66946007)(4326008)(66476007)(2906002)(66556008)(83380400001)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0RHTzA3bEpBK3IzeVQ0TzVJbjUyTFVHZ3lPWFRlUXFlQjdiZ0l3L3NPMXZZ?=
 =?utf-8?B?MHlXQzEzemliMnJjdHVEaWlCSzJQMEg2QWlqcEpPdG9BV01ZS1psbDRWTUhn?=
 =?utf-8?B?bFRCYTBLSGx4NEl4aVNncVBoYS9jdWdwbnBZY0RnRDlQV3g2dkFUVGdWMUwy?=
 =?utf-8?B?SXdXY3E2RE1lRnJVSnJJRXRyVzZSM21PNVU0b0tOMytZcUlmaWUrdklsNG10?=
 =?utf-8?B?VTZwMVdYTGFZbFFMU1BKWmJpMHpUMVpkWVM2TEZjSWtaT01yUE14R3ZzK1pZ?=
 =?utf-8?B?ZldaSTlaMXlUZ2lSbm5WaEhVcjBXU1kvbVNFdjN1U1R1NVR0dDJodmpZZXJm?=
 =?utf-8?B?bG9kK2tOUGlvZWQvNUFQNzR4MDIvUktZLzd2TTY4bEZZSGR0N0h6RWhUaDd0?=
 =?utf-8?B?TUw1bXc2QTZtQXh5NEFQZW0vLzJ2czM5M0RSOVNuZ1RQbTdQRTBTME9ibG9S?=
 =?utf-8?B?VXlSRThvL3FyenVGL0pFaVp2eXRhWXFIR3JFQ2JXdGtPZWZ4VG9hZnBreW4w?=
 =?utf-8?B?c2FzRzRUSGppd3Y3akpZSkhlSWxmRWZqeENoOGx0NURrelZmNGhtdWpFOFdW?=
 =?utf-8?B?blJpMFI0aGkwZkgwbzVYOEZNWCsvRmJPMUZRVE5aNzFVWGJMMUxFWWdPUVVL?=
 =?utf-8?B?L2EwTmlmMHB4MXEwN2toTXFUYzFHVXZVazdkMFJKRVoyL0dCZCtJS3B6TVow?=
 =?utf-8?B?V0Rtb0VtT3JTYllpZ2NjN1pkMXZrOE5udzVtaTNmTCswZUsreGVrMlIybnlP?=
 =?utf-8?B?VndKN1h3S25LN3JocHI3OHZiYnhVWUZ2bjdtenIrbk5xcC9ZT3dCZ0tWdjB6?=
 =?utf-8?B?a0J1OHRVQ0p1b2tMR2FoampFcWY0YW1uakNpSlBlTWkwNFA0UFV2eElOcWtN?=
 =?utf-8?B?UXA2MHYxYWhYSStlZzFaMmZiN2d5MVRwc0FPQjZmQThnZWRRVHlCbFRFcHAv?=
 =?utf-8?B?a0tncFpZbVNqMFAvR1ZvT0dNMWpPQTZsdjRkUDZRZlN0QXd4WlRmYVYzaFJu?=
 =?utf-8?B?OXcvdnhVNWU2amJOSXE2MUJxdXFRa1VnaHNNbkx3V3ZBUDgrS09sSUVLM252?=
 =?utf-8?B?YUhXQWE0YisydTlnS3VOYlRTbG5rY0NxOThsa0cwZTZyTSsvS2tzVHIrdDVX?=
 =?utf-8?B?VzhQMHdBanhiNmdxYW9rV2VUR2hlUjBiRjZOTCtsTDNYMndjbUJYVWJEVnhz?=
 =?utf-8?B?aXdyOUNYbHBxbWFJdGtHUjMxN0htc256VjdTekJ3aUdRcFBvejNEQXN1SDVr?=
 =?utf-8?B?K0hudDZrSjJEYmIzNFVaL2pabEI5bTRFR1JEN3YwbHp2eFZJd1FNRmNJdndW?=
 =?utf-8?B?ZDJKQ2o5bTJ5ejdVT3IrUTBIOXJzeGlPWmw1ZUlEOWlrR2ZsRVBZM3hoTXFB?=
 =?utf-8?B?OG5DK203ZFNMNFNBcDJiek04enNMT25JbVplR3AvOEIyQmh3emVXT1Q5Rkp0?=
 =?utf-8?B?ZVpFRng4V0hqVkU2R3pkcjVXWEI2OXNEYjFlVHJRR2Z5U2o2bjlIM0VoU3cr?=
 =?utf-8?B?WXd3RXJjckdTY3h4ZUlSL3RVSVNLRFVUdmdVVVNiSFFzaWdUR2tBc0NHZXJ3?=
 =?utf-8?B?MVNKMHRVY1BIWEIvNWFxK2VZM3NKZ2J3QXVUVGVJbksveElHZGNkSG92anYx?=
 =?utf-8?B?MzNPSWoxQzQrcjdSTUQ3Y3BYWkNCblpVMzNSdGY1cXlBY3Z2QWVYVVpCNC9t?=
 =?utf-8?B?RnQxWmF1L3NZbUMyUWo1TFpCMy9NZ1d2SWVQRysvM1VOYjFYRi9hUkV3a2Nu?=
 =?utf-8?B?MUx4YStvMWplMm5XUDBpaDRmcUNVdU1mVlpKY3dJVnh5WCtPeWM5Y290ZDJk?=
 =?utf-8?B?UE45UVc0SWVqaFZmRU9oNU4wRFdZK3Aza0x1djJlZjY0QzM5OGt1a0lZM0hk?=
 =?utf-8?B?Ykkvb2RQTEFxU3VXWEtiT2Q4VGIwbThlZlRMQXZzY2JvREhZSG1NVlhGOGhH?=
 =?utf-8?B?WjZDU0J5QXl4elVlL0N4M2hkWm4xU3g5aXh0eEtha0xaSk1SVGtQQTZYa21D?=
 =?utf-8?B?cEdZcFdsYXRacXVOYWpYYUVPZ09PZllpY2VrdGxGbm5aZnM2QjFIQlFuUEx1?=
 =?utf-8?B?UG1Kb005R3QrZWhLS2VHV0NNVHlpazk1OWZPWDVaOUxHOXJrbW5tQ0pVYTFt?=
 =?utf-8?B?RUkrUFhuVCsrME9Ka3hpbHRrYmNXdk5CMDMxV3BLazZVYjVOZ0R2d1ZNdjZB?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 03496e54-cd08-4bd8-d24a-08db71aac2e5
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4451.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2023 16:24:03.3562 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 757EWACt/MZLUAWchNDNakrRdmX1YkPDwKqaxMmw6WV6fKdkYaDfkVOQHIZQen7RMV4BwexvmleYQaiYnJ0rdLGCOMJlA3QzyzpVfvLh/5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7721
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687278269; x=1718814269;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SQtAY/YxUOKs46EHehghLswBOFqNEIZrxMc6KLE+4Lg=;
 b=FJlff1uz9vZo8SQtjB0zX2cjIEgD16A3bxSo9yKa043pgefJwS8SkIeU
 YDciSnwhuXbY+XY8xY//PzECyyQuLcxFmzgBw/eyw+gEpziYOuIZfSE8D
 fRtbamHSL/8bJCRZvhZcHyrZ0+c+sKiaZ9OVNoUWsFAbUXjHu/QTjRwq3
 L3OsrR5XuwTgO0n5tvfXmbBJGHCFwJvFSPVXbA+6uLNfjj2Wy91WnB7Mv
 eSIALKj+KRReMiN1NbmqrBl9N7h5YlJTdwDWPIf81/C6chse1WX7XObG5
 vmJ0jZqmeGv177Ms2m1P4IQawR1KNRgsMXUdG4l1DXyBfxYxrU1GerVG2
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FJlff1uz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/3] net: add check for
 current MAC address in dev_set_mac_address
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 simon.horman@corigine.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 20.06.2023 17:59, Jakub Kicinski wrote:
> On Tue, 20 Jun 2023 13:42:14 +0300 Gal Pressman wrote:
>>> I checked it, you're right. When the addr_assign_type is PERM or RANDOM
>>> and user or some driver sets the same MAC address the type doesn't change
>>> to NET_ADDR_SET. In my testing I didn't notice issues with that, but I'm
>>> sure there are cases I didn't cover. Did you discover any useful cases
>>> that broke after this patch or did you just notice it in code?  
>>
>> This behavior change was caught in our regression tests.
> 
> Why was the regression test written this way?
> 
> I guess we won't flip it back to PERM if user sets a completely
> different address temporarily and then back to PERM - so for consistency
> going to SET even when the addr doesn't change may be reasonable.
> 
> Piotr, you'll need to send a new followup patch on top of net-next.

Thanks, I'll prepare, test and send new patch tomorrow.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
