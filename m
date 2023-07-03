Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B34D7460A9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jul 2023 18:23:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FE5C82072;
	Mon,  3 Jul 2023 16:23:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FE5C82072
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688401398;
	bh=Nk1+XlYPWx8e4AcWbGj8WGCmLpq8NxAKeQ+6SqTA0wo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yiD7UeEqLNucLvNqVRMK1Lkwfpt+NJoCpRv4+EZPNjdnSlCeyrevNp4HBmlYzlzvg
	 MnkxFkBUNVKRwD3ARwuMvx6hpP/bS4F7IMCVeANjFn2eQ+f9SK+hKKMMAuLr9U1tWf
	 wd5JI5hmCM4IXKq6PdYEAyEhlOgt0oRTZfeyYqmMKPfoJcw1/wupUPHVvBSIV/ITkN
	 MjfZXV4xFZr6umNt8PQBy0cCASnAbr2sVyc+30wCgXnCdo5qBZfaODzRQtRUd8RAnY
	 HmiYhKoU46uQjOrZnkORQJMuDAkPH53/Bxgp2i6N71QLQPazKFltaCqGp2cok9Qhg9
	 v7vtZRjqVokNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C6Ls7Y3vwKBa; Mon,  3 Jul 2023 16:23:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A86A28204B;
	Mon,  3 Jul 2023 16:23:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A86A28204B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 61E8F1BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 16:23:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 38F5A81228
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 16:23:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 38F5A81228
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OdRRXXgWDRNx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jul 2023 16:23:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E62818204B
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E62818204B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 16:23:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="426608253"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="426608253"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 09:23:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="808644599"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="808644599"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Jul 2023 09:23:08 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 3 Jul 2023 09:23:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 3 Jul 2023 09:23:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 3 Jul 2023 09:23:08 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 3 Jul 2023 09:23:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AaNRkcvzxUBm4hrmRh7W3c/9tBzzihDGFtFHRYYfWGkzLSwdbsMtA3JmSng36gFM+NlUeVh7p8/R65Yewq3XYT43TAOiMbRW4Y5buzSz47Savl7yy/uBhIYVtFy1QGXi6AqnmL8U5AhKHrMvMywidU+pUX53uQAvoKv41o0OKdRq5IBK1x7kLb+6OY7ebZMC8eEYEFfk4kPHf6rhUO1jb68uITRAmhhpXczOgaaeH2oZTdbC42/7Rxo9Zz1K+DAT7RNKEYHPsLhyg2mD1xiCILFCCUwe/yUblkhh5g/M/ayVmmkK74Z23Gm3JpTIEX/bbIbtHS3tEpwGr+m3aCjVtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YvYPnuIUc+076pUqvPiHoe/IyYC2ZwLN710z9JblGmA=;
 b=dsp01ckwkYJhs8ZZufuJz04MdGkj7x6PsRLMmdJGIVpMZd0OmPC7FtvVecIAMpmZ9zJxhZGsMUjwArC21AdtDMjfCOg0PF5N/R7h9j8va4MG5Gxe+tq7kvxVHYLYWJFamZB6Hl0pp53alIwlsTXK8oN8NFVViERoYmxy9Y9wT04xCEAqfAGZl3+dSWCjWl7Loz/UxbSY+WnUj6AsD1QbwizhtJP4ZOxHBKgZTIwnowOIyde/TqxTgKVUMfnHm3yBoLszXumHOextAsTxR7dGxydv+M+6yEBOTxGruwBN/87IwixQ7oF105Pzfh16ToKxlQTKqvsMJTPcTnd0PF1bQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SJ0PR11MB6744.namprd11.prod.outlook.com (2603:10b6:a03:47d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Mon, 3 Jul
 2023 16:23:05 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325%7]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 16:23:05 +0000
Message-ID: <03256fdc-66d7-fc1b-2252-bb2af136c62a@intel.com>
Date: Mon, 3 Jul 2023 18:22:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20230703103215.54570-1-michal.swiatkowski@linux.intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230703103215.54570-1-michal.swiatkowski@linux.intel.com>
X-ClientProxiedBy: BE1P281CA0422.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:83::13) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SJ0PR11MB6744:EE_
X-MS-Office365-Filtering-Correlation-Id: 919cbd53-5608-4075-ffb9-08db7be1c7ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uDatQmiP5ZlzNVUfGavNqOXf9S1Mvq7zTxSyZAPM2c32M7WplNQ5awVn9c6oWZ9M06tJ2A0hHYde3Q97MajRN6EJkVHGFuSnr3Q85yNSw4p5pYo+DbhdWL8nMCwcg9Ruh5DzFlC4dEHyGX/4ZlQdH3CZEQXxRQS9239mtV5MWmWFaglt859IAknIile36rbyIHl7lM5AGh8bxC0A7P0naWhTew0L5hhWAlVp3KLz7PxqfPfZ4bNPs0OjULC2c7CEkZFlkpX0CR+uS5m49gGfM9tNTCKYZKd6tLpbYtnVGRmSHBbyYqUCMdmC22diu4vqnts39M15KynmSckQJEcXx51NBYHKWcrhHWMFpoCraWnnr606hdQo/Z7lyejCkatZ0UWJ5jEOgfoLRv8aXT8aPIIQhhIrr9f7vJD0zrmQvKkDlVe7ibqkjI2Ibb14bP5PLr5Kle/L3bhonSODe7OvlgqA1S3FuwzhAMND5CEdLm3P05xxy5T2n2ZGqi4kSoa4dH3Qf29yPs+Ur7Un9vkwZdMtxRL6mWhH1FYGxbT8+WWDdCFESA5r4hQpvBd8c+w9Boi4gTTus14XjOaRab3rxJp0H1svvevgvV4qWXz7e8p9rVqrENd+GhWTm/7JzsK1/FLzHoIjme7C4wuzISf9Lw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(366004)(136003)(346002)(39860400002)(451199021)(66476007)(66946007)(316002)(66556008)(6916009)(38100700002)(82960400001)(4326008)(26005)(6512007)(186003)(6506007)(6486002)(478600001)(45080400002)(2616005)(83380400001)(31696002)(8936002)(2906002)(5660300002)(36756003)(86362001)(8676002)(31686004)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWo0WWNHSFFiTmNoNEZaUnBwVUFzd3FnMG9CLzFlMUw3dE8xNWVlU2hLMW5s?=
 =?utf-8?B?ZU9TSXh4ZHM0d0ZxUkFPSE14NTRycFg1QzRoOHMwbHNSNU5XNzFUZVB0Mm1o?=
 =?utf-8?B?K21nV2NnaWFDV2d2VVlSZmpSVHhFMzB2SDBjemk0eFNVMXlpZllKUlJQZ1VY?=
 =?utf-8?B?NVVwWERqbEpYY0tyeDJhcTcyT2JocUVxbzBwK1RlNDI0SXA3ZEEweEpHV2RU?=
 =?utf-8?B?Yk11ZTJnNzNiQm40cy9zZUNIODR0RXgyRTQyRDZjVEtYTURicGdIOFlBVGx6?=
 =?utf-8?B?UWNwMk0vbU5MaTdmcU4rRUV0VVZhcFFzUGZDRnNSY2hJY2NDSE95QThLWUJq?=
 =?utf-8?B?L2prOUZIdWdRQ3JJZitPZ2FFUGpMZ25YdU56c2JtOVZUZWJNemNhYkRWS0Q1?=
 =?utf-8?B?ajlxc1h5b2xxRlBlaG56OFhtWW1ndGZuZ0VnVVAwK0RTQ3VQUUdrb3FZbDRa?=
 =?utf-8?B?dnVXWndjOUZ0Z2owL29POVpUcGR3alYyYUUxSFVTcTc5djdlWWljR2wrMy96?=
 =?utf-8?B?WnBwTlBJT0laUkpyTjAvRHg1dHJqZXhlVHdGcXBFSFAySmlCdG45TjNQdHpM?=
 =?utf-8?B?ZXJ0TFhkTDFydkpkcXh2NTd4MFRvR2F2QktKelZzN2l1MWlpWFAzeUx2TVIy?=
 =?utf-8?B?bkk4eXRQRWh2MDQzMXl1R014WnNZeDltMDhPaUpPS2krUjdjb3ZncmRYWFVj?=
 =?utf-8?B?dlRaeVc5Uk1KeTl1cGtHcWxmdGQxbVQrZWFmS1IxMlVZMVFkbm5jald3S3ZC?=
 =?utf-8?B?MElLWjRpODhldmxTUkc1N3pKd1Y0bTcra2crRzVHcUVnQS9yelM5K1BmSUhX?=
 =?utf-8?B?RFNkdGZXdWMveHBWZGJJa1VYcTBRRXJVcGp6L1NZbDhQSWRnaHhmNllrbG16?=
 =?utf-8?B?ZmhXd2dBclRpY3FIdVA4Um50ZDlBNW52VTQ5aUV0bHRJUXFNSUl6TXBCTzlm?=
 =?utf-8?B?Z3ZBZkx5MHlUckt1RVVlU0xtZktWL2JNZ1ZGNHdvSjVNWGN4d0VTOHJBajMr?=
 =?utf-8?B?dEE4WW94QVZYMndqSUw2d0pQZ1QyL0FZTFJ6MVI5aU1KMzhFdmttbDV2eUpV?=
 =?utf-8?B?WUR4QjlUM0ZoOGc5b085YVNKVmtRQ1d1eG03SmY0RGZsalREcjBvMHdab21B?=
 =?utf-8?B?WlVPVTFqV2ZPRS9KSnEyaDFQTlZnbmVlbHNLYUg4N0F1c1RQWWZnOEdMT0tU?=
 =?utf-8?B?eU4xTkswckFkUm5mdnRMY2JQN21jZDA3emd0R05OaHVxM0JxRkZySXh0ZDZH?=
 =?utf-8?B?QVZnNDEvNmcxeHhOcTRyOCs5a2FGZVM1UTRMQkxCZ21GZENacTVVZTR5V01r?=
 =?utf-8?B?WFFid1UxWWJUdW00SjRqUHpMMkJ6V0MwMjE4RnhIOTNhM1dLbzI5ODhHRHpR?=
 =?utf-8?B?VkVOZ2x1bGtNMFRLUkdnVFNDNExUZDZ5cWtRRmNtR0FIWU01QjBOMllqclVQ?=
 =?utf-8?B?K2xNdUwvTjJZZzAxVU9kY2kzTXNFK0Fpem5ZK0xoTEdwZWRZQ29udDZ0NlhZ?=
 =?utf-8?B?Z3JOOTNnSjlpZExDa2hHcVRxSlNvaEs5aGYrTk8yZHlSN0N5MjNIcDdyVFFq?=
 =?utf-8?B?aEVxbDd4blZSRk00d2lES3pOSkZTanF3RlJES0lqMC8wLzdyZGF2RXk3OEVB?=
 =?utf-8?B?UFBWYVE5ZmV1VzYyOEVOclJVNFRZaGJlZXFQOVIyWDFtNkdyR0E2ZFN5Sk5K?=
 =?utf-8?B?Qm9PQ3ViQlNhWDFnV3JKd1BxTFJIV0s4VU84QWFFTm9oL05qeEhaUXlJYWFT?=
 =?utf-8?B?VEtUR2lXSlNsK2w2MmNoc2lHVElnejdjRnJSV0JBZmZjOEtnYXBmLzJXQjB0?=
 =?utf-8?B?Tml0Vy90L0xpd3NRM1dGdEY2bTFyeC8zSnI0anJxb1NyRGs5d0JPNlJGV1NV?=
 =?utf-8?B?b0QxZUtUcmdZaG0vVzRtTEFzN2gxNTNQdHlxTS9lVzIvd1V2SmErNUxOMU9E?=
 =?utf-8?B?QWJ3ak9OOUNacUdvVGxhU1FqbEtGTXIyb0VZc0lyOGl5WlpEWmNqS21Oa2Uz?=
 =?utf-8?B?UEY5WU1zUGtSYzhFWkNxY2xHenJVT0RTQkNZTXFZeFJoYmlFcms5YlNvZVdB?=
 =?utf-8?B?TklWTXY5d0NFbnIrYnhncFBJVHlHS0JQYjZyM0JRZk1lbE9xdjZoQWwyVUgx?=
 =?utf-8?B?NFJ5ZGFHS1lNRmhrWTFDcUlZay9KOEdxMDlEdUNPUTNPSEtxYkpvVkZ4NkFG?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 919cbd53-5608-4075-ffb9-08db7be1c7ab
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2023 16:23:05.4167 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T+vjmhxozG30UsPeN6lPs2Uc5W/Uhy0ZEez4neRaoqFCRYkUfqNrDV7eSaKSSXBXSNwJ8yTkgNZ4QiWq2gV0mj/uyTOSlKa5ZultmhxaIgg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6744
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688401390; x=1719937390;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JDGF23TehpdaCQ8ROHIwcAC6I6NTFFO8swtJMkTHqw8=;
 b=nmKVdgq/GRlm/2wIO0oW3OnLlSFF1mnO0T0M1tVptj4+z+0lIR1bk0hR
 vqRuHTQqngR6RWckr2Rlg07uAe/jkeZaW1ROOet7PC5/lokv2UbpzC14z
 MsPFltobyNZipg1kOlxe2rqd8SCqVuqNUpwJWYyIsz8+teWeax9eZekxr
 5jIar60JRbeu22805xV7sa/Os288XG7EQ1ktUiEly6KBlTDjm/y4LOhG6
 jBEneH7tZDYch6gg1f7FV3Lr1IEOPw4i7sVAEcwtGFZMuIPL6uTWHJha7
 iI+8bQb7j+DRxAvXUB0ARhgejvGDuMbjQJhW1job0UVHc7pgjZTwfg639
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nmKVdgq/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: prevent call trace
 during reload
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, Przemek
 Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Mon,  3 Jul 2023 12:32:15 +0200

> Calling ethtool during reload can lead to call trace, because VSI isn't
> configured for some time, but netdev is alive.
> 
> To fix it add rtnl lock for VSI deconfig and config. Set ::num_q_vectors
> to 0 after freeing and add a check for ::tx/rx_rings in ring related
> ethtool ops.
> 
> Reproduction:
> $watch -n 0.1 -d 'ethtool -g enp24s0f0np0'
> $devlink dev reload pci/0000:18:00.0 action driver_reinit
> 
> Call trace before fix:
> [66303.926205] BUG: kernel NULL pointer dereference, address: 0000000000000000
> [66303.926259] #PF: supervisor read access in kernel mode
> [66303.926286] #PF: error_code(0x0000) - not-present page
> [66303.926311] PGD 0 P4D 0
> [66303.926332] Oops: 0000 [#1] PREEMPT SMP PTI
> [66303.926358] CPU: 4 PID: 933821 Comm: ethtool Kdump: loaded Tainted: G           OE      6.4.0-rc5+ #1
> [66303.926400] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.00.01.0014.070920180847 07/09/2018
> [66303.926446] RIP: 0010:ice_get_ringparam+0x22/0x50 [ice]
> [66303.926649] Code: 90 90 90 90 90 90 90 90 f3 0f 1e fa 0f 1f 44 00 00 48 8b 87 c0 09 00 00 c7 46 04 e0 1f 00 00 c7 46 10 e0 1f 00 00 48 8b 50 20 <48> 8b 12 0f b7 52 3a 89 56 14 48 8b 40 28 48 8b 00 0f b7 40 58 48
> [66303.926722] RSP: 0018:ffffad40472f39c8 EFLAGS: 00010246
> [66303.926749] RAX: ffff98a8ada05828 RBX: ffff98a8c46dd060 RCX: ffffad40472f3b48
> [66303.926781] RDX: 0000000000000000 RSI: ffff98a8c46dd068 RDI: ffff98a8b23c4000
> [66303.926811] RBP: ffffad40472f3b48 R08: 00000000000337b0 R09: 0000000000000000
> [66303.926843] R10: 0000000000000001 R11: 0000000000000100 R12: ffff98a8b23c4000
> [66303.926874] R13: ffff98a8c46dd060 R14: 000000000000000f R15: ffffad40472f3a50
> [66303.926906] FS:  00007f6397966740(0000) GS:ffff98b390900000(0000) knlGS:0000000000000000
> [66303.926941] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [66303.926967] CR2: 0000000000000000 CR3: 000000011ac20002 CR4: 00000000007706e0
> [66303.926999] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [66303.927029] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [66303.927060] PKRU: 55555554
> [66303.927075] Call Trace:
> [66303.927094]  <TASK>
> [66303.927111]  ? __die+0x23/0x70
> [66303.927140]  ? page_fault_oops+0x171/0x4e0
> [66303.927176]  ? exc_page_fault+0x7f/0x180
> [66303.927209]  ? asm_exc_page_fault+0x26/0x30
> [66303.927244]  ? ice_get_ringparam+0x22/0x50 [ice]
> [66303.927433]  rings_prepare_data+0x62/0x80
> [66303.927469]  ethnl_default_doit+0xe2/0x350
> [66303.927501]  genl_family_rcv_msg_doit.isra.0+0xe3/0x140
> [66303.927538]  genl_rcv_msg+0x1b1/0x2c0
> [66303.927561]  ? __pfx_ethnl_default_doit+0x10/0x10
> [66303.927590]  ? __pfx_genl_rcv_msg+0x10/0x10
> [66303.927615]  netlink_rcv_skb+0x58/0x110
> [66303.927644]  genl_rcv+0x28/0x40
> [66303.927665]  netlink_unicast+0x19e/0x290
> [66303.927691]  netlink_sendmsg+0x254/0x4d0
> [66303.927717]  sock_sendmsg+0x93/0xa0
> [66303.927743]  __sys_sendto+0x126/0x170
> [66303.927780]  __x64_sys_sendto+0x24/0x30
> [66303.928593]  do_syscall_64+0x5d/0x90
> [66303.929370]  ? __count_memcg_events+0x60/0xa0
> [66303.930146]  ? count_memcg_events.constprop.0+0x1a/0x30
> [66303.930920]  ? handle_mm_fault+0x9e/0x350
> [66303.931688]  ? do_user_addr_fault+0x258/0x740
> [66303.932452]  ? exc_page_fault+0x7f/0x180
> [66303.933193]  entry_SYSCALL_64_after_hwframe+0x72/0xdc

I'd stop here, the info below is not likely to be useful, but inflate
the commit message a bunch :D

> [66303.933935] RIP: 0033:0x7f6397a7d957
> [66303.934702] Code: c7 c0 ff ff ff ff eb be 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 80 3d 8d 7c 0c 00 00 41 89 ca 74 10 b8 2c 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 69 c3 55 48 89 e5 53 48 83 ec 38 44 89 4d d0
> [66303.936290] RSP: 002b:00007fff085051b8 EFLAGS: 00000202 ORIG_RAX: 000000000000002c
> [66303.937088] RAX: ffffffffffffffda RBX: 000055bb806aa340 RCX: 00007f6397a7d957
> [66303.937878] RDX: 000000000000002c RSI: 000055bb806aa3b0 RDI: 0000000000000003
> [66303.938654] RBP: 00007fff085051e0 R08: 00007f6397b4b200 R09: 000000000000000c
> [66303.939403] R10: 0000000000000000 R11: 0000000000000202 R12: 000055bb806aa3b0
> [66303.940131] R13: 000055bb7e977bb0 R14: 00007fff08505260 R15: 000055bb7e977570
> [66303.940856]  </TASK>
> [66303.941564] Modules linked in: irdma ice(OE) openvswitch nsh nf_conncount nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 qrtr rfkill sunrpc intel_rapl_msr intel_rapl_common intel_uncore_frequency intel_uncore_frequency_common isst_if_common skx_edac nfit libnvdimm x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel vfat fat kvm mlx5_ib irqbypass ipmi_ssif rapl intel_cstate ib_uverbs iTCO_wdt intel_pmc_bxt iTCO_vendor_support ib_core intel_uncore i2c_i801 mei_me pcspkr mei lpc_ich i2c_smbus ioatdma intel_pch_thermal acpi_ipmi joydev dca ipmi_si ipmi_devintf acpi_pad acpi_power_meter ipmi_msghandler fuse loop zram xfs mlx5_core i40e mlxfw crct10dif_pclmul crc32_pclmul tls crc32c_intel polyval_clmulni polyval_generic ast ghash_clmulni_intel psample sha512_ssse3 pci_hyperv_intf i2c_algo_bit gnss wmi scsi_dh_rdac scsi_dh_emc scsi_dh_alua pkcs8_key_parser dm_multipath [last unloaded: ice]
> [66303.946397] CR2: 0000000000000000
> [66303.946919] ---[ end trace 0000000000000000 ]---
> [66303.955966] pstore: backend (erst) writing error (-28)
> [66303.956326] RIP: 0010:ice_get_ringparam+0x22/0x50 [ice]
> [66303.956765] Code: 90 90 90 90 90 90 90 90 f3 0f 1e fa 0f 1f 44 00 00 48 8b 87 c0 09 00 00 c7 46 04 e0 1f 00 00 c7 46 10 e0 1f 00 00 48 8b 50 20 <48> 8b 12 0f b7 52 3a 89 56 14 48 8b 40 28 48 8b 00 0f b7 40 58 48
> [66303.957518] RSP: 0018:ffffad40472f39c8 EFLAGS: 00010246
> [66303.957901] RAX: ffff98a8ada05828 RBX: ffff98a8c46dd060 RCX: ffffad40472f3b48
> [66303.958290] RDX: 0000000000000000 RSI: ffff98a8c46dd068 RDI: ffff98a8b23c4000
> [66303.958683] RBP: ffffad40472f3b48 R08: 00000000000337b0 R09: 0000000000000000
> [66303.959074] R10: 0000000000000001 R11: 0000000000000100 R12: ffff98a8b23c4000
> [66303.959473] R13: ffff98a8c46dd060 R14: 000000000000000f R15: ffffad40472f3a50
> [66303.959868] FS:  00007f6397966740(0000) GS:ffff98b390900000(0000) knlGS:0000000000000000
> [66303.960268] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [66303.960672] CR2: 0000000000000000 CR3: 000000011ac20002 CR4: 00000000007706e0
> [66303.961078] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [66303.961490] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [66303.961898] PKRU: 55555554
> 
> Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

[...]

> @@ -2955,6 +2960,10 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
>  		return -EINVAL;
>  	}
>  
> +	/* if there is no rings return (device is reloading) */

"If" I guess, capital.
Isn't a comma after "rings" needed?

> +	if (!vsi->tx_rings || !vsi->rx_rings)
> +		return -EBUSY;
> +
>  	new_tx_cnt = ALIGN(ring->tx_pending, ICE_REQ_DESC_MULTIPLE);
>  	if (new_tx_cnt != ring->tx_pending)
>  		netdev_info(netdev, "Requested Tx descriptor count rounded up to %d\n",
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 0d8b8c6f9bd3..1b1974d42002 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4634,9 +4634,7 @@ static int ice_start_eth(struct ice_vsi *vsi)
>  	if (err)
>  		return err;
>  
> -	rtnl_lock();
>  	err = ice_vsi_open(vsi);
> -	rtnl_unlock();
>  
>  	return err;

Just

	return ice_vsi_open(vsi);

OTOH, don't you need a rollback of filters in case vsi_open() fails?

>  }
> @@ -5099,13 +5097,19 @@ int ice_load(struct ice_pf *pf)
>  	params = ice_vsi_to_params(vsi);
>  	params.flags = ICE_VSI_FLAG_INIT;
>  
> +	rtnl_lock();
>  	err = ice_vsi_cfg(vsi, &params);
> -	if (err)
> +	if (err) {
> +		rtnl_unlock();
>  		goto err_vsi_cfg;
> +	}
>  
>  	err = ice_start_eth(ice_get_main_vsi(pf));
> -	if (err)
> +	if (err) {
> +		rtnl_unlock();
>  		goto err_start_eth;
> +	}
> +	rtnl_unlock();
>  
>  	err = ice_init_rdma(pf);
>  	if (err)
> @@ -5135,8 +5139,10 @@ void ice_unload(struct ice_pf *pf)
>  {
>  	ice_deinit_features(pf);
>  	ice_deinit_rdma(pf);
> +	rtnl_lock();
>  	ice_stop_eth(ice_get_main_vsi(pf));
>  	ice_vsi_decfg(ice_get_main_vsi(pf));
> +	rtnl_unlock();

So you added lock/unlock pair here, but not in the ice_load()'s rollback
path. There, you always unlock rtnl and then perform decfg() without the
lock taken.

I think you could do it as follows:

err_init_rdma:
	ice_vsi_close(ice_get_main_vsi(pf));
	rtnl_lock();
err_start_eth:
	ice_vsi_decfg(ice_get_main_vsi(pf));
err_vsi_cfg:
	rtnl_unlock();
	ice_deinit_dev(pf);
	return err;
}

So that: 1) decfg() is protected; 2) you don't need to unlock rtnl in
case of failure in the main block (what you add in this patch), it will
be done here.

>  	ice_deinit_dev(pf);
>  }
>  

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
