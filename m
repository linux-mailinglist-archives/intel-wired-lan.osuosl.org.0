Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC332560504
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 17:57:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 859398400C;
	Wed, 29 Jun 2022 15:57:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 859398400C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656518258;
	bh=cVkhJBnnfMF6p8u9bauwn/p5jYEjf8qpcAMMr8ftsSw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8zVw16Gd911Y/gFoR4F1WDAuTipc2LCqeG0vj+pEOK+hVzf6JDiIsJW4m9BWybLnd
	 p9TGksp0bloW/C8dNv2Y90PA7QTxTOH8LEUX5BSlYLJDXpdKLtRSksngAXwbe3oavj
	 npPRWpZ2hTrPSW14sXrUI+6pO+cQvz0Cp4HoAXEZlOwhIYBUxz3A2YTyfGys6WZrz1
	 U6JDEM29+BnjsWkRjaGTULl+WVlgM4SMt8X+rEHISh7pxrbtp4z6MvHeSUups3qkzn
	 tD6gsyvhWlCVSbPZSoffCLWATe0NJlsmGOk6yH/9Z25XEsGdR3Q675HOXZAWlF7M9o
	 NU0Xg6iETfkdQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A6VaHDU_nJHs; Wed, 29 Jun 2022 15:57:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A1ED83F9C;
	Wed, 29 Jun 2022 15:57:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A1ED83F9C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 750911BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 15:57:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B3E260E25
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 15:57:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B3E260E25
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yprpnbmK-yFU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 15:57:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32D6860E13
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 32D6860E13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 15:57:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="270831069"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="270831069"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 08:57:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="717877851"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 29 Jun 2022 08:57:30 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 29 Jun 2022 08:57:30 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 29 Jun 2022 08:57:30 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 29 Jun 2022 08:57:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QAwoqpvjoB0kWD3fY/MZQ4LVnAZU3EWi0tqQDGTSa8LG1wzj23WvaqDoZspKxXTHiuNF9imWnq4oBY5yGceMygIVqul3pZ/N6GVVr3GOAchlmd2VKXoSEKwLi/HTIMLOwjPuw89YhkC73ZPeyxgpwpaATdHqjD5AA1KLA6Me2LU6yt2VUFSi4CDAJgaHd75ScdLdGzQ3kDeaxbYF7x1Jw2JfEO26WGCaOOisfLK4PDg1GEyOTNj0DeiiBBgzxSzTbhz7OkQG5lbH25UYa9cLtPnxXRoj8yaUvW/dS5jAUNDKmW9IW9pwbiGfaLHlzuSW+tIBfTPfoyyKEmTWfMOenA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3WF9f2g8U4qkYKdoZykDliOxU68LurC5aQAWD7ADn/E=;
 b=Tpg8q4eYULsK69Z6ATyJ9oSxvtOqWsp6j1z5f9lICocUV1ulE9RYpGgNhiLwxmHQcs/fheJsVeBlAyedkcGyh1rxfwDVT2/wNwdOLtonxa94wHXGp48xX6od9rxLbYSZ2NT2Tc695UeY1Z9rBZ1fG4lEXhQXuMzr0nqPg5ClpfCot7SJIsBUP1yU+3oQxcs0Ruyb8J4f8e32ij7gJ5tNz6L1hoIeZdyfiHKIZjKg/MNkYc3U9FsPq/ANHC3+1BVIxgvU/3hH1NT85GIwOcgVvIybRfZBf+HuNcVR5vnodcBHce76J7op4uLZblxXqwl7McjX8UlyZfbj6WH+CnsYOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN6PR1101MB2337.namprd11.prod.outlook.com (2603:10b6:404:92::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.18; Wed, 29 Jun
 2022 15:57:28 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef%2]) with mapi id 15.20.5373.018; Wed, 29 Jun 2022
 15:57:28 +0000
Message-ID: <9d3fb37f-036e-283e-05fe-c0a4417a3991@intel.com>
Date: Wed, 29 Jun 2022 08:57:25 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220624102110.1008410-1-michal.wilczynski@intel.com>
 <20220624102110.1008410-2-michal.wilczynski@intel.com>
 <2a67c395-d2cc-1826-ae43-5f02c808d518@intel.com>
 <c2a2284d-4616-6b76-57c9-2d34b800b38f@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <c2a2284d-4616-6b76-57c9-2d34b800b38f@intel.com>
X-ClientProxiedBy: MWHPR10CA0071.namprd10.prod.outlook.com
 (2603:10b6:300:2c::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2023225f-2195-4bde-718e-08da59e81133
X-MS-TrafficTypeDiagnostic: BN6PR1101MB2337:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6MeDCWAOTZKMX6hN9XSuRpIzNK5D6Jli6gnOhN86ZDn/IDypSozWwiH8orHBcjRKy6HtaUujfuOgNpI6j8WJ823LBwtBAGGCIhvUt5Dl8oDQRGf7I6+9OaK6xuMdERG306is4ba7CsgPe8WDEgozho7Fqu0w+KMfWpYa8b/jdUNxOuZYE3z0m5SWDMvbFV6Dzf9kz7j6c56Fe7s8EAUhhtuQVlioJ9Z5+gdGxKJ6yx0Kkih9OdLHCq13lV0jbtqv7KZxWmc+UoXUJzAIl/TYSQbMSiQKDMMoyjEY8EIqjuofKVYIqoqT7waqohwSRDiLuttPWmczWjAlD/+QdUiZySD5VL7dKEVrt/zojAPRNpuQrlyTA39+ybQsKQVuF5zlDaN3zSTpg4roYUoT7i3UDZ+TTdo/kX9cd5bWSfOT9F575X+YEjr3MF+BZLrrzfL5rfa8c4v2taVMW2nYlTKI4A4iLOClHFmySR756hOOplHV3m+LSTUviYPhNLIPkS/BMTvP9N0vnniofWO8czizBSNGVUpiA/nanB/Ls4aRS+u2EOfiqOjucdAoOm5VYvzQJwmUK+LjRX6EezheTk9to1WnBjP+zycNCuUUBhuXhVgBfS8eihEtkERctQH3jrpQbtDcPZtoGhJRuQec9sVU20veqVqvU6CKOOq5tNQDgZo3lmHnmXuag/GbJTWhZocsa1oSwvS36SrHv7aEPcepYnP8/tCxnrFZmdx9qtLoLhKRIh11jB3EdQuz6sJqcr3S9wnVW4texnOmFfcU3/i3+V8fhiiwTDpSFLvlso2e5AnqiilKHGYCYodJH8N+yOIkEe6Znsn0rE4+6bUo2OUfnhWcyVr0PHgoX/xsxmREe5Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(346002)(366004)(376002)(136003)(396003)(31686004)(6512007)(31696002)(86362001)(53546011)(6506007)(5660300002)(82960400001)(8936002)(8676002)(2906002)(4326008)(66476007)(26005)(66946007)(2616005)(66556008)(36756003)(6486002)(6666004)(107886003)(41300700001)(966005)(316002)(478600001)(38100700002)(186003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHhlMjdscTlCRURxV01qRTIzaUlEMG4yaEJCRmJIK2FsNHlQT09LSkJlWlhZ?=
 =?utf-8?B?dzlZRGRXcXBQQS82dVB2eDl6UzE1QzBNUDYrYWdiSmJRVHlnRWtUZkV3YXhh?=
 =?utf-8?B?S2VGNTRjRzlCMXA0TzYyTVNleG5FU3FxOWRHRkhzSk5DTjBkNkI2eGxSYnhJ?=
 =?utf-8?B?Wjg0Zll6aTI2UStGWDVQbEM1elRTUWZaeEM5WFFHRUlnVUoyYSt6M2tlKyt3?=
 =?utf-8?B?aU1CUmFyUGR5b29STExGUjJKYS8vUmo0ZllBbzVLWkJkKzdFWGYvaDl3N3RJ?=
 =?utf-8?B?MXV5QWYrQnRhZFkrUHhEd2U1dGhYbWJCaG9HQk5oRkdwR0dvaXgwK21RdHBK?=
 =?utf-8?B?WnN5UDBCM2ZwdEovQ1kzeFdQSmxCUFJoTlRvRkVyY2RNdk9KMlhibmJEUlVL?=
 =?utf-8?B?TXUxVzZSa0FUemVsMXVXSU1NZzlQUTBEZm9GeWlNalYzbG5Ld0xnQ2ljOFFi?=
 =?utf-8?B?NnA3MmlWN1pSVDU3ZTZqRWUzaFlpL3NTMWNCcUlWMmJYNUFsa1NnSWlGRTBQ?=
 =?utf-8?B?K2x5R1BTU0loRThKaFpJMCtOU0wyNld5MXFaVFVQcE9HV2ViTTZxNlhQZXM1?=
 =?utf-8?B?WURmLzZBVVE0Z2VnY1NZS0pDY2tSbksrRTI3eHU4Z3pORWxSNXkvbGkydDZv?=
 =?utf-8?B?N3V3SVZLNkZXd2pUaVladXRwRTZPUXdrek51WmNhYWRFRGdvV08yQ0JRMSto?=
 =?utf-8?B?aDhuckdhUGxoZ2I2MHRic3R2S0tubWxBaFMxa05YbjZRQ2tQWDhCUFVJd1Rk?=
 =?utf-8?B?L1RCZ21ZVDRHMk9TZzJ1bEt0YVpoN01USkFuaGZBS1lsLzRaRmU4eGdjK0Rl?=
 =?utf-8?B?S2RlNGRUaWFVSzBpWmRVZHExNVJac2VzOTZza2Y0NGg0R3F3K0srZW9KMFRX?=
 =?utf-8?B?NWx1TTVBZmhYc3dVemRWVWVuTTNZWG5IWlloby91WlRuVy9vOE9QYU1EUGdp?=
 =?utf-8?B?Nk9oR3dQOWI5TnZjMkUwWHRDV0NVdDA1SDRwRk5EeDF4UHJUeDUvU2JFZDVW?=
 =?utf-8?B?aFBIR0Y3U1ZEbHpGWGZOemJGZWplNlRBM1JqK3VCMm9VZHRqWEVvc3RTWjEv?=
 =?utf-8?B?V0d0YzBwWUR0ZVNsSlZGcFlBamk3ZlduTHMzZC9iQzh3bzIrNExBVUpPcGlx?=
 =?utf-8?B?Zll2Vy9jVWtnZG41RjJTTlV4cmFobnlwQ2t4SG1MS3RzRllFT3Z5MWZnZTdq?=
 =?utf-8?B?MnpzSG52dlMzZlFHS2hiWE9kdjliRGplSTFnWXF5bFd0bXBXN05NUk44aHFi?=
 =?utf-8?B?SFRtWGtBdE1idGs0eU5LZm9IMXBLR05ycVloSTM0Szdac1ltUGtRRy82cFRy?=
 =?utf-8?B?Z2dobGlrREpzd1F4Smh6UDFTdFlJM28rRzVUdmtWcy9iZkNZcGdNU0JaQno2?=
 =?utf-8?B?Qkt0U0crVW5Tc3hMTkorY1YyOWtKbm5OMmlmaGpKU0c0VWJyYnZwb09heElt?=
 =?utf-8?B?cXJJS3dDZnhNd3dRaGxEWGpZTkVPdURRRmtDYWUrUTlSNFoyR2ZQdDhvRGpO?=
 =?utf-8?B?bk1kYTRzK05Ha0JDMUdDN0M0dTVkVUhhK0hXbkdIblBWYTB1VmszNzBSb2ky?=
 =?utf-8?B?R2plY0dVOFdrREk5YldsWFRGK0Z4Q3F0dVkzZEtMbUpJUi90b2F0NkdPQ1JJ?=
 =?utf-8?B?UERDaUgydG8xdG5DSFNvdkdPSE4wYS9MZ29mUTFSbitNanNRTGxBWjcxdkl0?=
 =?utf-8?B?dm1INDlLUjF3UHgzYXVXTVorc1dqTGprRUxGb1A0SnNWQkVyVXh4bWF5K2Rk?=
 =?utf-8?B?Q0pkQm5BQi9IS1hHV2NjTTQxeVowUlJVWmtOdExwQnI0SFZKcWVmVG44TVg1?=
 =?utf-8?B?ZjNLZ1VwTVdUR2RGdmhxaUFqRlVMNDhDUTFHSkVJV1BlRlBhVmxvN21GYWNy?=
 =?utf-8?B?T2V2N3BiUlZCOStlWi9JMGJCSWRtYTBaSFpTR3pleld5SkRncG9zVzNxelky?=
 =?utf-8?B?MEJUZm5QV2dzNW92L24zbkttbCtKMWMycXcrb3dSbUtyS0MvMEx5ejhJU1h4?=
 =?utf-8?B?dkcvV3FkZ2E3endTVUhKdWFNMkpzSm1RUW10U2ZiT00yWXprZFdQU01Qa05T?=
 =?utf-8?B?ZWVpSEtBYjFNMFB5OFFxWVBQTFVOdzBoTmRPbVZ2RFRwNlhrazA0MXdwYTR6?=
 =?utf-8?B?bVR6c0JrZmlyZWtUNVZ3ZFMrYktoNkYxYUJCOFRFOG1JQWM5Y2JCMWszSU5U?=
 =?utf-8?B?RlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2023225f-2195-4bde-718e-08da59e81133
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2022 15:57:28.4402 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rTi6wNSo33WK7H/Jkd+xG9U3zy753PlvEfartHT/nAIUSyNy3VbvFk4YlDWyN/IBZCjbAWZHUKPglXnce/ChqnVqIHB2fd6LIGdrgrWf9DA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2337
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656518251; x=1688054251;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S0JAX+5ijC5pOUeiRobAAkwJzMki0+rkhykuGmq/5Rw=;
 b=J73R5b79x9H6BrK8S3pM4WCyANMTd4PO3xaigSklV2PZLHsMey4ena8Z
 5DWHjAbBCGjYosJ2ZTD/9MDhfkhwJJLP8BasXQwpXhIIYozeL9TL9X5kl
 wIedsBf80Jp7RjLd0uPDCud/daG+enwYeu3Kd3N5ponj+QRsu8wUWUKmR
 mEKv1Wmjrzk1UsuTODDzabxx/l0nr9S6lWYPC367DcRoH+oP4/2pzOjBW
 d3MK+cOCA5NpVxyvbny2Km2vyMzyDEnm7xyt3/h9vIB3drZmpf2oJVl2F
 //weNjpAsUkMEqIM0erUu4GvdX/8iXlWKk2ovyiT4qtlbY6oXEwPBT5nP
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J73R5b79
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/2] ice: Code added to
 support 5 layer topology
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
Cc: Raj Victor <victor.raj@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA2LzI5LzIwMjIgMTo1NCBBTSwgV2lsY3p5bnNraSwgTWljaGFsIHdyb3RlOgo+IEhpLCB0
aGFua3MgZm9yIHlvdXIgcmV2aWV3Cj4gCj4gT24gNi8yOS8yMDIyIDEyOjIxIEFNLCBUb255IE5n
dXllbiB3cm90ZToKPj4KPj4KPj4gT24gNi8yNC8yMDIyIDM6MjEgQU0sIE1pY2hhbCBXaWxjenlu
c2tpIHdyb3RlOgo+Pj4gK3N0cnVjdCBpY2VfYXFjX2dldF9zZXRfdHhfdG9wbyB7Cj4+PiArwqDC
oMKgIHU4IHNldF9mbGFnczsKPj4+ICsjZGVmaW5lIElDRV9BUUNfVFhfVE9QT19GTEFHU19DT1JS
RVLCoMKgwqDCoMKgwqDCoCBCSVQoMCkKPj4+ICsjZGVmaW5lIElDRV9BUUNfVFhfVE9QT19GTEFH
U19TUkNfUkFNwqDCoMKgwqDCoMKgwqAgQklUKDEpCj4+PiArI2RlZmluZSBJQ0VfQVFDX1RYX1RP
UE9fRkxBR1NfU0VUX1BTTcKgwqDCoMKgwqDCoMKgIEJJVCgyKQo+Pj4gKyNkZWZpbmUgSUNFX0FR
Q19UWF9UT1BPX0ZMQUdTX0xPQURfTkVXwqDCoMKgwqDCoMKgwqAgQklUKDQpCj4+PiArI2RlZmlu
ZSBJQ0VfQVFDX1RYX1RPUE9fRkxBR1NfSVNTVUVEwqDCoMKgwqDCoMKgwqAgQklUKDUpCj4+Cj4+
IE5vdCBhbGwgdGhlIGRlZmluZXMgYXJlIGJlaW5nIHVzZWQsIHBsZWFzZSByZW1vdmUgdGhlIHVu
dXNlZCBvbmVzLgo+PiBBbHNvLCBwbGVhc2UgYWRkIG5ld2xpbmUgYmV0d2VlbiB0aGUgbWVtYmVy
ICYgcmVsYXRlZCBkZWZpbmVzIGZyb20gdGhlIAo+PiBuZXh0IHRvIG1ha2UgdGhlIGFzc29jaWF0
aW9ucyBhIGxpdHRsZSBtb3JlIGRpc3RpbmN0Lgo+IAo+IAo+IEhpLCBnb29kIHBvaW50IHdpdGgg
dGhlIHVudXNlZCBvbmVzLCBidXQgdGhlIG5ld2xpbmUgaWRlYSBkb2Vzbid0IHNlZW0gCj4gdG8g
Zm9sbG93IHRoZSBjb252ZW50aW9uIHVzZWQgaW4gdGhlIGZpbGUuCgpUaGlzIHdhcyBhIG1vcmUg
cmVjZW50IGNvbW1lbnQvY2hhbmdlIGR1ZSB0byBtYWludGFpbmVyIGZlZWRiYWNrIFsxXS4gClRo
b3VnaCB3ZSBoYXZlbid0IGNoYW5nZWQgZXhpc3RpbmcgdXNhZ2VzLCBuZXcgb25lcyBzaG91bGQg
Y29tcGx5IHRvIGl0LiAKVGhlIG90aGVyIG9wdGlvbiBpcyB0byBwdWxsIGl0IG91dCBvZiB0aGUg
c3RydWN0dXJlIGNvbXBsZXRlbHkuCgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzFm
ODdmNmM0MTczYzIzOWQyYzA4MjUwMDUwOTczNmNmNWYxODM1N2QuY2FtZWxAaW50ZWwuY29tLwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
