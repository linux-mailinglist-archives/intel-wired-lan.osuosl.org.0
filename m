Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D61476A414
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 00:23:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2626A40C13;
	Mon, 31 Jul 2023 22:23:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2626A40C13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690842183;
	bh=59ClHi0B1b4CPih78yKNtESRjVtNmRfifUuLTlqiMDw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qF7mrtarW2T0zuWH3hpou86WBULmx+HaAJE+dSXIAj4mtOhogkKyjkpaEJjJfpDpz
	 C1cqFpwkoiTIBlfGIoV3SWMZXP9ONlprfm2JXSn1hnnDGXOKUpCmdkiQSPFZN6xOEM
	 wePj82yfXAYZG/tJcyOzMxdOkmfLyF1X8lYujeL/LkXw4bmVVD9Y/fmbYhkADgMyzb
	 UnxV3b91hHr6kZpuvi7h8zHRvHzH6ZSMOpaRiAA2iyiFgGVwB9rPRKHW6s/apmoiMe
	 a+Erwfr8d1kkUDAH/VxP6fw4mGHoW3EU2NtMbVomPF2GMN9yI2bkfZdxw0Tr8ZW14O
	 7xJVUip/4K6NA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LX55-fxnGI2n; Mon, 31 Jul 2023 22:23:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B5DA840BDD;
	Mon, 31 Jul 2023 22:23:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5DA840BDD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 57B361BF964
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 22:22:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 131C540339
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 22:22:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 131C540339
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EiFFs_mR3-dd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jul 2023 22:22:52 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62C4F4011A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 22:22:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62C4F4011A
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="348736212"
X-IronPort-AV: E=Sophos;i="6.01,245,1684825200"; d="scan'208";a="348736212"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 15:22:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="1059147546"
X-IronPort-AV: E=Sophos;i="6.01,245,1684825200"; d="scan'208";a="1059147546"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 31 Jul 2023 15:22:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 15:22:51 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 15:22:51 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 15:22:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kOalFEshQ7poF0VBadL0yPAZKgReR1B1sF809hJomXPbBDvutet6OvifLH/w74d812Ssq1JzPCpP3576aNNuH8U6w2P+90Jcn53R19QcvdT0NvnvuGvq0mLBW4cE1mR8T5YXKgQE8dTkPJrXjoxHbifaeyBJBUzAgqmFTkoVdNCSkUJRfBKbz50D6FoMwsVdwSwoQVnaKKkpwRw2i88Ddx4kTxyUctIHo9xH2ZhtxJbjwz2YCku7qVb4jQYVDu9ZBBHle9tYIFGQLW0U48dGY8vW/n8EwfJ6Fvdy8eIdd9pqdJHUla0NIg2EJ5erSwL1RUdq30Yjw+bYtzoKZU2F4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IJRaj9qHc8EVnGkdquq3iOtXNIDIwxZJBU48k0eWXuQ=;
 b=StxJGZOgbx/jA9ZnEhq4nStC1Hjgm+QRVBWwLO3jFCyZtDUPK265Oyl70LE1+NSkrNmmNdUAap1dYEqdTmit3dCHlHzDin2hXo+0szitNleaPwhYg+4GoFDJg+i599wmxKS1oKJTjii5NNG+KnTlpk1fPeglOc/XzA/XyOcTWrWSsbvCqiyHkJV1UQJQGXNREItgiQjzrT5V8eJZ8KY3VexwCmVXv7zzoxBb3PyWGQUP8E5QEV/Pdb5EWiiIi12bdhjmDGBycJxlXa8AuUCTEWgOUIox8CLKbkkAn9U2DoOFoygvmtkNh7fu6xWaXkmZpKZwMGFGQa6VL77ODF0ISA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN9PR11MB5340.namprd11.prod.outlook.com (2603:10b6:408:119::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.43; Mon, 31 Jul
 2023 22:22:49 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 22:22:49 +0000
Message-ID: <ef452117-09b3-dc17-588a-4ff1f2e4d470@intel.com>
Date: Mon, 31 Jul 2023 15:22:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Wenjun Wu <wenjun1.wu@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230727021021.961119-2-wenjun1.wu@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230727021021.961119-2-wenjun1.wu@intel.com>
X-ClientProxiedBy: MW4PR03CA0080.namprd03.prod.outlook.com
 (2603:10b6:303:b6::25) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|BN9PR11MB5340:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a42ee4d-c4fc-40cd-25ac-08db9214ac4b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jB+CKdIYRlmB6gcTF5pet3Dg/77PyAEspPGS5LvWy2RSNwQDfYQ9CQk0QOkZ0YpjYGJvanK8H0dl2TDDfNobuAu6sJjcjhFiWtW6v4mhOv+Sbn94xk5vJIh3lho2XpvPH5aqj71zr2AjnFVllPCRuzkqKsFy/94R5ZFKJgsuuBVJpqgO9p+5//HYGGCycCDV4eLY6ICNzF0tyDlF2/A7sJ/gEkAm4UxFCE81TAGKr16hA3GtzEN6VcHydMACGSabSYNjZk2MH9/pjOQagEjfR20THkrFC9TMxdlSJfjZsN8zfHvpAZvOdSRUKxtvEh4i20SQyg+y5aQlEhKNOTCZarN0ooiFHzbsw7e342UNMwvJ4FUX7Yb0JvWvahTp2YwydDSB1Rshwxf/VnD6sLu1bgp0sLdS4kQq0pF3OXU7sMGrBjD2eyfhtK3G65L0o1CgvEiGlUo7Kch21BrmzV2wEBV8dFeZQ4Te9oq/FbQQQRyxuwSq1Okkd9dB5LuBmildY4+wvhODxlK0/sC41HlYmkZ2qmDrtGHtCJWWogXV1kLtlO6Y/MY9XaG4vIn9HbxIk61N9i+OXsQsJJI+Ku9SEoyh/WUXkwO3G3iB+sWu6+JtiOMZGrjd60wwX56dRV4A+jAI+bTBS8GvB7tl1NkJzw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(376002)(366004)(136003)(346002)(451199021)(6486002)(6666004)(966005)(6512007)(31696002)(86362001)(107886003)(186003)(2616005)(36756003)(83380400001)(6506007)(53546011)(26005)(38100700002)(82960400001)(5660300002)(8676002)(41300700001)(8936002)(31686004)(66946007)(2906002)(66476007)(316002)(478600001)(66556008)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z09oWVNMVmEwUVlwQ2xNWHVROFhsK0N4SDFRMjY2Y3NKRlladEFYMFN6b01J?=
 =?utf-8?B?eU85em9qbzF1SC9ETXFldTVIZURxRVVnd1hxSU1RUkZRaitSR1gwV2tTZkRz?=
 =?utf-8?B?bVY5b0hHMyswQXpKQlFyamllU0VObkpha0ZVV215LzlaWEZpRFBORGdHWDZw?=
 =?utf-8?B?TDhsb0k1cE5RVEtLeHU4NjdGSHNlNnRocGNsV2FyaWZSVTBoYURyeXlUeDd4?=
 =?utf-8?B?R25YVmsvUWU4MmUra2wzWUZYYTQyV01pUWk3QW5MNTZmWFBxSUo5Sm9NelVO?=
 =?utf-8?B?aUNmSUtpbDVUQU1tb0RwZkEzVU5DYkxMVjFQYWxqbUFibFhWLzdxamNrQ2Qy?=
 =?utf-8?B?YjZvTXFqZldDNUl4aUllZWdEQi9XRDE2ZmpYZ1haUmVXc20zekRFdzY3T0Nq?=
 =?utf-8?B?QUhRZmtrQ2JEODFWMUhhQ0lQaFhWNmovd0JsMDVCb2VqcGNpWUYwOTlCSTNE?=
 =?utf-8?B?ellVZnkzcjlpM3N4MFVmSVlhR0lyVkxmay9kZElCSVBaWHNnM2dqcm5mOGJY?=
 =?utf-8?B?cjJZcUsydDA5em94K282NDdZUEp5QjQzK2FUNnRnNGlaSnFwZHZBOXhEVnpQ?=
 =?utf-8?B?TnV5UzV5TnIzeW0rS0JUR2oyd3NzdDhJNFV0TkJPdngxejVxTEdkdTVIU3JJ?=
 =?utf-8?B?SFlVakx6KzExejdFWnZMSEZCZTc1a21YREpOMXF4cEUycFhEWktyNG16OW1V?=
 =?utf-8?B?ZHBnZzFiVXNUWk02UGtYRmlyMlpOdXpMKzNONDZyQ1laOWM3djVhT3Z0cUtL?=
 =?utf-8?B?c2dwV2d5WnorUDZEaDhJUkdaRzJzblBKMkZSUkV6cU9DZnNZaGtWdWZGdDFP?=
 =?utf-8?B?TkIralhxZHE3SFZZT0ZOK0VBVy9ONlhFTHFrVjBQUkZ0VG5NSXhkQUxHSURM?=
 =?utf-8?B?ZGpJKzRvTFdpUEhKNlFpbkpINkdZT2dweFYvZk95a21YVGp0RS9EbnNhbFhi?=
 =?utf-8?B?czJoR1ZmM2E2WDExUmVQbit3T08zWldud1ZvWnRaOEFHLzVMdHNtM2xCajhK?=
 =?utf-8?B?TForc3AvUUQ5T2doQmVWbUljNUI1WVpmWWJwdjVmc0krU0RjdWRMeWN0S1dQ?=
 =?utf-8?B?dUJDK0drNWw2Ums4TVYvdjB4OTJ6bHUyZkFDOWhmS3lnUWFBeThCNDNPN3Js?=
 =?utf-8?B?K3VHTFZOMnJMU3hYTDNBNFdxTGNWUk5VUFFlZnZRUkdwTGJTWnNnSi9TNnpQ?=
 =?utf-8?B?cUp3QkFlWWMzcHhEWWVSN3Q3dUlVSW1Kd1MvUTU3M0Jmcmx2NEZ5T3Nqb0dT?=
 =?utf-8?B?cnNGdnQxOGo0Q2tleXUyZ3ViNjZkRDZnbmlTVmEzVnFiZXNhbUNpaElya0N4?=
 =?utf-8?B?QzNGWFdoYVFrV1N3S1ppQWFiamlCeFI3MUcyZEYreEJTaXJ5ZmZ3WGVQbG40?=
 =?utf-8?B?a21ld3BaN3NETWVkWnhqMUh0M3hVTGJiUFUrMEhIWEtVSjJLZHJIY05oVzZ2?=
 =?utf-8?B?OVlNbnV3VDl4VnhDOTY3ZGVtamJ6NDQvakhFc1U4LytJWEt3RmtJVlNuV1JI?=
 =?utf-8?B?TGNkdGY2YXhjYXY0WEJsY3BPelhoOXBBKzJjSDZ3S0pZNE9SQWNCM3FmM2Nl?=
 =?utf-8?B?TnZyQ1JNQkI5dDdGUjNXSU8vMkk5OVVYcTJsc05lMjh5bm15TnJocmwvOWdF?=
 =?utf-8?B?MThqY2l2dnp4WGxXbEMrMlFBdkQwUEp1dW5sWHE1ak0yb0dhSG03ZXA0VlZw?=
 =?utf-8?B?YTRiQXcxL1hjNFdhdGdqNHJpTDd3eTlLYndVQ09GbTlJcURxS2tVTkpJYTl6?=
 =?utf-8?B?cTZaY1FmQ2ZOaGs4a1dReGtMbW5CaFpRT3hMcm5vUGFwLzdqL01wTGc3MnZW?=
 =?utf-8?B?M3oxMk5VQjI0MnhkelFDY3dJNkRicUp2RUNTQ3pQVzVHSUJZME1KdjhlSTlt?=
 =?utf-8?B?c2pHMEt1MDNEOWhpaUpiY1BwWW9xbkYxZ0U4OUJzZmV0UkpyempNNVFXSm4r?=
 =?utf-8?B?VHNMN2xkVTNONlhUcTVLS1hmZmpWTWRsQkpKQ1BZSERqNGh2Q2lWdlkrK1VI?=
 =?utf-8?B?eHZLY2JWeDI3M2VJa0QrUE9LK0MyL2lJUEZPVVErSEs4VEx1Um5UYndFdXBl?=
 =?utf-8?B?a2dhZ2dtaTBsVU9Bc1ZxbUQ2QVYzd1Frbm1LVkJ6Z2dOVXRQUWVpL2M4U0xs?=
 =?utf-8?B?MHR2dDR1aHpHMlBMYU9UYVk2Z3krQmhWd0FCNnA5clBMV1dlR0JjbDRGa0RX?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a42ee4d-c4fc-40cd-25ac-08db9214ac4b
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2023 22:22:49.2804 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /shtZRllbaiPAOPtmTVxJnlXYSZMUW5InxoHmThzwXo/3wrL49yxMPefZQwMNu5oG8IMWgnOWFg35wbDH7p6QnEiKB3bTxj437aI+4/A/qs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5340
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690842172; x=1722378172;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V9owT6EFI4kFVxgVoRjkoyO7EjjJWJXiTMwNx0RPEJU=;
 b=B2NjpmlqcT+Aj18ogCys0tPqkZyompRkK0TlwwsWxTjlElb+Ic0NIgBv
 821rlUSN0m9gk58k24TZeGEY4p3yERkbxjs9K6Yr+ZYhD/lBXsd6gG0Hd
 gYmpIi8mHTZtX32rdAnBHV3h6HtubBNlZJ+mHQdY3yCh5TH7TU8IdrS7U
 DXLoV2ayUhsXi/cLvvOokIdzXg5brWl89uEDsfH6PDOUHxNkKKtU5jMW+
 kFaaEX4MMasMqNFuqIg+qq3m7Qui5zzmEoSYvJl7HYrnCpIouI+GCpDC4
 LgdC8jeKL6XRjaFyYOpA96VI6L0iDfODWKVSaZP4+efCtg0n55RbyEp1m
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B2Njpmlq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/5] virtchnl: support
 queue rate limit and quanta size configuration
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
Cc: mitu.aggarwal@intel.com, qi.z.zhang@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/26/2023 7:10 PM, Wenjun Wu wrote:
> This patch adds new virtchnl opcodes and structures for rate limit
> and quanta size configuration, which include:
> 1. VIRTCHNL_OP_CONFIG_QUEUE_BW, to configure max bandwidth for each
> VF per queue.
> 2. VIRTCHNL_OP_CONFIG_QUANTA, to configure quanta size per queue.
> 3. VIRTCHNL_OP_GET_QOS_CAPS, VF queries current QoS configuration, such
> as enabled TCs, arbiter type, up2tc and bandwidth of VSI node. The
> configuration is previously set by DCB and PF, and now is the potential
> QoS capability of VF. VF can take it as reference to configure queue TC
> mapping.
> 
> Signed-off-by: Wenjun Wu <wenjun1.wu@intel.com>
> ---
>   include/linux/avf/virtchnl.h | 113 +++++++++++++++++++++++++++++++++++
>   1 file changed, 113 insertions(+)
> 
> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
> index c15221dcb75e..f1250ddd063d 100644
> --- a/include/linux/avf/virtchnl.h
> +++ b/include/linux/avf/virtchnl.h
> @@ -84,6 +84,9 @@ enum virtchnl_rx_hsplit {
>   	VIRTCHNL_RX_HSPLIT_SPLIT_SCTP    = 8,
>   };
>   
> +enum virtchnl_bw_limit_type {
> +	VIRTCHNL_BW_SHAPER = 0,
> +};
>   /* END GENERIC DEFINES */
>   
>   /* Opcodes for VF-PF communication. These are placed in the v_opcode field
> @@ -145,6 +148,11 @@ enum virtchnl_ops {
>   	VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2 = 55,
>   	VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2 = 56,
>   	VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2 = 57,
> +	/* opcode 57 - 65 are reserved */
> +	VIRTCHNL_OP_GET_QOS_CAPS = 66,
> +	/* opcode 68 through 111 are reserved */
> +	VIRTCHNL_OP_CONFIG_QUEUE_BW = 112,
> +	VIRTCHNL_OP_CONFIG_QUANTA = 113,
>   	VIRTCHNL_OP_MAX,
>   };
>   
> @@ -253,6 +261,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
>   #define VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC	BIT(26)
>   #define VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF		BIT(27)
>   #define VIRTCHNL_VF_OFFLOAD_FDIR_PF		BIT(28)
> +#define VIRTCHNL_VF_OFFLOAD_QOS			BIT(29)
>   
>   #define VF_BASE_MODE_OFFLOADS (VIRTCHNL_VF_OFFLOAD_L2 | \
>   			       VIRTCHNL_VF_OFFLOAD_VLAN | \
> @@ -1367,6 +1376,83 @@ struct virtchnl_fdir_del {
>   
>   VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_fdir_del);
>   
> +struct virtchnl_shaper_bw {
> +	/* Unit is Kbps */
> +	u32 committed;
> +	u32 peak;
> +};
> +
> +VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_shaper_bw);
> +
> +/* VIRTCHNL_OP_GET_QOS_CAPS
> + * VF sends this message to get its QoS Caps, such as
> + * TC number, Arbiter and Bandwidth.
> + */
> +struct virtchnl_qos_cap_elem {
> +	u8 tc_num;
> +	u8 tc_prio;
> +#define VIRTCHNL_ABITER_STRICT      0
> +#define VIRTCHNL_ABITER_ETS         2
> +	u8 arbiter;
> +#define VIRTCHNL_STRICT_WEIGHT      1
> +	u8 weight;
> +	enum virtchnl_bw_limit_type type;
> +	union {
> +		struct virtchnl_shaper_bw shaper;
> +		u8 pad2[32];
> +	};
> +};
> +
> +VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_qos_cap_elem);
> +
> +struct virtchnl_qos_cap_list {
> +	u16 vsi_id;
> +	u16 num_elem;
> +	struct virtchnl_qos_cap_elem cap[1];
> +};

If it's not too late to use a flex arrays, we should. Otherwise, this 
should model after Olek's work [1].

Adding Olek in case he has input.

> +
> +VIRTCHNL_CHECK_STRUCT_LEN(44, virtchnl_qos_cap_list);
> +
> +/* VIRTCHNL_OP_CONFIG_QUEUE_BW */
> +struct virtchnl_queue_bw {
> +	u16 queue_id;
> +	u8 tc;
> +	u8 pad;
> +	struct virtchnl_shaper_bw shaper;
> +};
> +
> +VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_queue_bw);
> +
> +struct virtchnl_queues_bw_cfg {
> +	u16 vsi_id;
> +	u16 num_queues;
> +	struct virtchnl_queue_bw cfg[1];

same here

> +};
> +
> +VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_queues_bw_cfg);
> +
> +enum virtchnl_queue_type {
> +	VIRTCHNL_QUEUE_TYPE_TX			= 0,
> +	VIRTCHNL_QUEUE_TYPE_RX			= 1,
> +};
> +
> +/* structure to specify a chunk of contiguous queues */
> +struct virtchnl_queue_chunk {
> +	/* see enum virtchnl_queue_type */
> +	s32 type;
> +	u16 start_queue_id;
> +	u16 num_queues;
> +};
> +
> +VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_queue_chunk);
> +
> +struct virtchnl_quanta_cfg {
> +	u16 quanta_size;
> +	struct virtchnl_queue_chunk queue_select;
> +};
> +
> +VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_quanta_cfg);
> +
>   /**
>    * virtchnl_vc_validate_vf_msg
>    * @ver: Virtchnl version info
> @@ -1558,6 +1644,33 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
>   	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
>   		valid_len = sizeof(struct virtchnl_vlan_setting);
>   		break;
> +	case VIRTCHNL_OP_GET_QOS_CAPS:
> +		break;
> +	case VIRTCHNL_OP_CONFIG_QUEUE_BW:
> +		valid_len = sizeof(struct virtchnl_queues_bw_cfg);
> +		if (msglen >= valid_len) {
> +			struct virtchnl_queues_bw_cfg *q_bw =
> +				(struct virtchnl_queues_bw_cfg *)msg;

missing newline here.

> +			if (q_bw->num_queues == 0) {
> +				err_msg_format = true;
> +				break;
> +			}
> +			valid_len += (q_bw->num_queues - 1) *
> +					 sizeof(q_bw->cfg[0]);

See referenced series for changes to this too.

> +		}
> +		break;
> +	case VIRTCHNL_OP_CONFIG_QUANTA:
> +		valid_len = sizeof(struct virtchnl_quanta_cfg);
> +		if (msglen >= valid_len) {
> +			struct virtchnl_quanta_cfg *q_quanta =
> +				(struct virtchnl_quanta_cfg *)msg;

need newline

> +			if (q_quanta->quanta_size == 0 ||
> +			    q_quanta->queue_select.num_queues == 0) {
> +				err_msg_format = true;
> +				break;
> +			}
> +		}
> +		break;
>   	/* These are always errors coming from the VF. */
>   	case VIRTCHNL_OP_EVENT:
>   	case VIRTCHNL_OP_UNKNOWN:

[1] 
https://lore.kernel.org/netdev/20230728155207.10042-1-aleksander.lobakin@intel.com/#t
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
