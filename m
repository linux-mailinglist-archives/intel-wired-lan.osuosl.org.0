Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E2278CFFB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Aug 2023 01:09:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14D0541882;
	Tue, 29 Aug 2023 23:09:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14D0541882
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693350596;
	bh=dqZP4sAdBcZ9o4eVHl9Yp0bUDpMRHKDCNdxM0FK1y0w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=h9XXoNxj1fYno+sI7nGBRC9LfbA0uNU2H7RgrKLfIkJZrUK6o8MyzFj01GNUKkheS
	 wJL/ga4QoG2E8bAwwMUNZ4F0CB9zLhy+xfLjXGCIm6CRn4OqabtpA4URKjP9nlhqc5
	 DC1zbgNXwLR/ULlp15vBzC/kOc4hRWFlJdRMf5UcTrzIQX7wPOQAaHr8ahLXhgUeCQ
	 uF4t53Mp/0PrSgpXRcudgJvozVNZQv0+VLv7wP3DcThWFhUS4cd21xdoUvBVqozV62
	 B5EvXb5xqJuHQ9ZU1jKJajo9jeYxSubxNTBSiE6hFDIb2dZ3UzrBmPNSkZ5CS/rxwO
	 x3MIk5MoqNelA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WKIez5cAmz6Q; Tue, 29 Aug 2023 23:09:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9B3741857;
	Tue, 29 Aug 2023 23:09:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9B3741857
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA33F1BF574
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 23:09:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AE5F78139D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 23:09:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE5F78139D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DLZQfGYOEb43 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Aug 2023 23:09:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 77DE481393
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 23:09:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77DE481393
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="374405713"
X-IronPort-AV: E=Sophos;i="6.02,211,1688454000"; d="scan'208";a="374405713"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 16:09:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="732378670"
X-IronPort-AV: E=Sophos;i="6.02,211,1688454000"; d="scan'208";a="732378670"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 29 Aug 2023 16:09:34 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 16:09:34 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 16:09:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 16:09:33 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 16:09:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WWfc64VViEBP27CQUUXiJKBhOsgiiWQuIt6TvBmyTg7Nc7nAwUj5MilSW8I064lLFOLwB2Z4VZveb0+/Lw56ZEMR125lKc5f2HkjiNMSsBUrJkbf3S3aekiH/MbdX78c0Q+p2Ls6XvSNt5b/yFzRUw4e/R8vuSLrWROyy/XJFmFqy1H+MTPaWItJNmKoLRc85CGpKMbKtm0WukTvmw+TEFFYzLvubzlWSoe///r5jNp2KPJQn193MdL0puJoIUa1TiaQmbyE036y/sXCFy8wWssGotXHN16TvVWW4GEKBZm3JWYIs8lGeJNM8mD+PiK1U9kCDDK2HutOr2fxuoi/xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iRCQ+bqaYjBy42RDA/EiUEBMnEbfKXQdVp0jgLf3l54=;
 b=ZT2UeBGjScH4NInpv9i0xs+HyYWXbJGw8E1OLYpN/EKon4EV4tBHFiyGz/8XPdjCbsFqGdchCY2kQGOdoIkjIcUTIs9Auae9dgeDeM4G9vYkelDWljD4DjGRx+smHRn6t+SuhrYKiVarBfOiZ4rC5I4P3eql1dGT5fkdj0UTefV4fTK4iySvCIyTJ0c1EPI05ZNe8tT3/agwUC5+lEY4Id1OiZh5fYciV5P36NlC1+sTxebuSL5dWkhP+uvLJEL2XzLtNG7BY7l0KnqfLTOP+yyXDfdUs0QLRR6bJ8Fi5AXutITWsuRdcw3u17gptLM5SVHwjDJQWitoj+B3yQP8AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB4952.namprd11.prod.outlook.com (2603:10b6:510:40::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Tue, 29 Aug
 2023 23:09:30 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3%3]) with mapi id 15.20.6699.035; Tue, 29 Aug 2023
 23:09:28 +0000
Message-ID: <c9bc7c2a-622f-5d82-69e8-2d24ba3875fa@intel.com>
Date: Tue, 29 Aug 2023 16:09:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: <jesse.brandeburg@intel.com>, <intel-wired-lan@lists.osuosl.org>, "Corinna
 Vinschen" <vinschen@redhat.com>
References: <20230824091603.3188249-1-vinschen@redhat.com>
 <ZOdWAdHNJzDs5ss7@calimero.vinschen.de>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <ZOdWAdHNJzDs5ss7@calimero.vinschen.de>
X-ClientProxiedBy: MW4PR04CA0086.namprd04.prod.outlook.com
 (2603:10b6:303:6b::31) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH0PR11MB4952:EE_
X-MS-Office365-Filtering-Correlation-Id: 62c6f6ed-18f9-4516-3a60-08dba8e4feeb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JZnICrSKLlvgB+op3flBmdpLyWFflfSkNlRZmqFEDHehH9AHT40YeV2j4j8e9MH6fuWGIcuzLNiX8NZ2zx6m6kpQwAqRNtdbrcXHJ7/zjYTeSRGGg2rGzb0dwh2WV103KYnMABTrEH2F1V1dztXFQOxuqs94QZ/ISI8MdkG4FZ0PCOGlQF2gvW/fOjE/91xxOeQnREaN2eXi/sufO/Ezy0hIgpmvbcNOZ2xkauEoKfdxxWMjVOpDRA6i07aHR6IE8r3SXYXofzFXH0NIiJ46y1jwYkeqhPPwbt94/if+EJC48BQkWhHDijD72yu2g0ctW/z+JzUHg9sIKF8F7pRVUy3uV4ZbzPYBZ5h9fAY/6wmTDqhea4cOOrCn4NjikV1XkxMIY/OVmzJpnaR9Hofi/8sC2Wjkw08NlaZpSL4yb0gbOMEMTqTRVLXQIkWIZWmq0CylTu0Nr6XqDzxUAR/NWi4pb8L8PQUHwRmxed9IiWTW6iVsGj4/6d165+ia9aFuZsnyB+bNWF+yYd1BLyUQ1OlGkSS87yBjVt0zXA1BudlnxUkZg8kMD2299qhbJPxS/qe58VOIG8AAL/oVWugf2+hfG4Y4UG/zRXYsUwFub1tUon0JKzR6qXLJZvcuHVw2WxtgTOWj78iO4pZRE/f9og==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(376002)(136003)(346002)(396003)(451199024)(1800799009)(186009)(6512007)(38100700002)(316002)(82960400001)(41300700001)(36756003)(2906002)(6916009)(31696002)(86362001)(2616005)(8676002)(5660300002)(26005)(8936002)(6666004)(6506007)(6486002)(66556008)(66476007)(66946007)(478600001)(31686004)(53546011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHZRczJVakc4S2FBajNtVmxSQ2ZiQmozOWJhQW1oRkMyZ3N0TTdqcmFNekVm?=
 =?utf-8?B?bGxVTFZrVmNYTlIrRU5OdTErb1ZxRFJlcEtGVzhJU3ZCbDRzQmovK0xCNjUr?=
 =?utf-8?B?TUZTZWF0cnE2WnMzdGVtTG9WS0ZyMThHNC9JWXhYOUR4Q3hGOUJLcU83RW94?=
 =?utf-8?B?NXE2RitpOUVFSFdJRGE3WXhLMGgvV3cxSUlWSkpMV1BBdzROaVkxbHhIMnIv?=
 =?utf-8?B?VENaWUhkK3NDd3hDSUlsUkVkNDk0dzdSZGtHRy9WZFJwTmIwS2hIWGoxMzkx?=
 =?utf-8?B?MGdUNFJJSzdvclFCNURReW5mZkc3QkJnT3o1Sm4wOUhFUk1RS29yQkp1bjY1?=
 =?utf-8?B?WjBJK05XeTM5NHRwUUxrUW5FWDBwbWlnUEpvMlJnQk8vWTdWSFoxdWI2bUF2?=
 =?utf-8?B?emVxRVRjakg0K1Jmem9qQ1hFMnQvTnFKTVpQV2x5NHQ5OWFydDFuazd5Wk5G?=
 =?utf-8?B?MU4xSzNTVGFuWWJJekpZSEQ3SENjK2I3Znh0UXBiK1pnVVlpUFB4NzFsSjMy?=
 =?utf-8?B?TWpWQzBVY05OUkFyaXR6amhobTJWZG84YWFreW1sU1I5Zkt2Nk5HZnN0ZmNB?=
 =?utf-8?B?bm9jUjNNOFZOZ0dBQjZkbVlLUlVGTGRMc1huWHBSZEJFekJvZ1NUUW9NT2Q5?=
 =?utf-8?B?Qmd4a0ROMnVTWVVsUGdLa2QrenV3ZkJxY0wwUStnbktPMlczZWJaMnliU0RT?=
 =?utf-8?B?NG1CQ2RvOHlYRXlUZEMyZWJ5SzNYRkN4ODlaS1IxZXdqS3YvMTB2Rm1idjF2?=
 =?utf-8?B?N2pudTVLRE5UMnhtUEtFTEVpN1g0MFI2SW1Zb0JoTFUwdnM1bklWMHU0U3Nk?=
 =?utf-8?B?cE4rYTZybDFGUlAzVzRvWWcyVDBvNjhtb0VSOWw3anZnNHRpdXBrT0x3d0Yr?=
 =?utf-8?B?RWFJVnF4YkoyckMvOU8xNEtOMGNJb3pBUUZaNGhRblg5RDJ5OGl0L1RzbDhV?=
 =?utf-8?B?Z2NnOEZ6SHNPU29USXo5azJ1cXBuQzJPWitKVFVJTmxWcWJxR0lzdVVHNkFF?=
 =?utf-8?B?S2xBcjI2bEVoZFNUaFl5M2xpUmZyQUxrVE0xVXE3azV6UDNVd2dYZGlVczhN?=
 =?utf-8?B?TTNxZ3NXMmJUcjBkeHh6M2UwSFFGUXMwZys1UjNOZmYvY1pCWThyNXY3K0F0?=
 =?utf-8?B?WVRrRWZLdThqWFg4K1ZsdldidWxkOURkempXTjBxNlNVMnhnQ0xJWVZvYzRh?=
 =?utf-8?B?TERGVnZ3anZLSkFFTE15Wmg3MG5VY0NIWHZPYXlBN2UwYjVNcW5jZzV1eXV4?=
 =?utf-8?B?UTUySXBiNkl0OVRSOC9vaW1MdVJPNHN2ejBOK1RObVNNR0xHRTgxSy83NmMy?=
 =?utf-8?B?WWI0VlY0TVViVmI3c01rOEdTUkIvNnBjTTd2WkQxckVkcGd2bHdpdTlsNnBj?=
 =?utf-8?B?WjdaVFhUN0NnaHNVRWg3d1VKZloyT21hTllQMjlPQzk3d3MrOUxTYUN3aVZF?=
 =?utf-8?B?U2VTekw5UnpOakRCS3VxQ0U0L1JTQjZBWTNwYWw3RjJCZGl5NlhlcUlzUEVC?=
 =?utf-8?B?VUtwekVtNWt0T204L1NWYmZIMVhhUFM0NWJpOVgzTDE1Sm9GemkyZEh1b2Na?=
 =?utf-8?B?UnBxanU1ZU1sYVV0VEhJTys4bEl0UGo5YUh6T2p2ODV5Z2UwYzV6WnBEREFC?=
 =?utf-8?B?eFpENk5JRkVNOFFMRlgyT2FvQXVpRmVISU1xaGVoNkRWYXlSQXZiUlZwbm5t?=
 =?utf-8?B?TWxUb1l0V0EyNnA3blVEWktrRkV1emNZUWJ4MVFLRjNxdVZMMzRPNXN1Tm5P?=
 =?utf-8?B?NmlRVER1NzhBdDdTZHlmWlBoWHFOT2NBN3lzcmdLVHhYeWRRMStQdDFJaVZJ?=
 =?utf-8?B?TDc4RFNGYU9ZaEpGZ1N2SlJweTVqa1pYZGtWUUJEVVJRQWZvUXc5WmRRdm9O?=
 =?utf-8?B?TUxGc0pkL1ZpSTNhVHFlYkdrbjNVWVpEaTNCMzZLa242UlNJQWpGemg2Q3ZZ?=
 =?utf-8?B?SFZIb0ZCbkFRRFhnNS9zblFrRnFPUlg4a2VGOW5WSGE0eHNJSnZsdWQ5dmpO?=
 =?utf-8?B?VFExcnQwZU5ENkFxeVUwSy9aWW5JWGF2Vko4RmZlSk9LelM3VzlvRE00QTBh?=
 =?utf-8?B?N0Zhby8wM0ZNbVAzK1dSeTQxWDFUUUV3L2JvUzM4SUN2aUxibXFxd0J4enNT?=
 =?utf-8?B?bzE3R3BkZCt2QU5aamdvZWlneXlvZWc2Q2RURXB3a3ExL2kzU0hXeU1WSXpD?=
 =?utf-8?B?aXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62c6f6ed-18f9-4516-3a60-08dba8e4feeb
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2023 23:09:28.8280 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n+Dz+aKuryXDoESx6bWu2+52pB8DecwxE2RssTzdxhWpG+4Yo0zuQfuVkz9tjVlc5LfkYEoIPE1Nnk/8Vt9JHUmI6ErdLC+7S8UPBZR1LFM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4952
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693350588; x=1724886588;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+2HiezEDiaUICaPYKIj76Wqq5QgN9p1/6JvgxKThhYk=;
 b=Trr0iuOQ9WWfj49sO+FcqnGF54BVSRaECZYCycgDRu5cxsgm5KljHng5
 xFMYTYBQYaQODMpG/URd8DdBp4cYRyLeyZ2ojoSG4F76N+52evZU0XL1W
 rg4/iah9Qm64eNarDf5COIEzao1NuoIJcGd7fBMO2YiJWoWP2d8hDqviF
 k0YBs2lnNKvduRaMqAaLT+4EPX+0X5IqfnxfPb7tdO4FWq2hIlWLEbsES
 xBZ16KU5j26OmZxK6e5r0AGheY2JqEhEYxd0T/aod2zr8tcsxdMfZHzj2
 YKPD82+DHyFFo/O72VRx6/XqKu5OAByPkrlWz7gESVNG7+NDiGZJSI9X5
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Trr0iuOQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] igb: clean up in all error paths
 when enabling SR-IOV
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



On 8/24/2023 6:07 AM, Corinna Vinschen wrote:
> Question to the Intel folks:
> 
> On Aug 24 11:16, Corinna Vinschen wrote:
>> After commit 50f303496d92 ("igb: Enable SR-IOV after reinit"), removing
>> the igb module could hang or crash (depending on the machine) when the
>> module has been loaded with the max_vfs parameter set to some value != 0.
>>
>> In case of one test machine with a dual port 82580, this hang occured:
>> [...]
>> The reproducer was a simple script:
>>
>>    #!/bin/sh
>>    for i in `seq 1 5`; do
>>      modprobe -rv igb
>>      modprobe -v igb max_vfs=1
>>      sleep 1
>>      modprobe -rv igb
>>    done
>>
>> It turned out that this could only be reproduce on 82580 (quad and
>> dual-port), but not on 82576, i350 and i210.  Further debugging showed
>> that igb_enable_sriov()'s call to pci_enable_sriov() is failing, because
>> dev->is_physfn is 0 on 82580.
> 
> Along these lines, isn't the first and foremost bug that igb_enable_sriov()
> has been called for this NIC at all?  In terms of patches, shouldn't the
> guard expression in igb_probe_vfs()
> 
>          /* Virtualization features not supported on i210 family. */
> 	if ((hw->mac.type == e1000_i210) || (hw->mac.type == e1000_i211))
> 		return;
> 
> get changed to:
> 
>          /* Virtualization features not supported on i210 and 82580 family. */
> 	if ((hw->mac.type == e1000_i210) || (hw->mac.type == e1000_i211) ||
> 	    (hw->mac.type == e1000_82580))
> 		return;

Hi Corinna,

Adding 82580 to this seems like a good change; did you want to submit a 
patch to do this?

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
