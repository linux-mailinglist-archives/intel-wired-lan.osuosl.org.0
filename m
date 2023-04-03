Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FD06D53B0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Apr 2023 23:37:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 823E881467;
	Mon,  3 Apr 2023 21:37:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 823E881467
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680557840;
	bh=TwNY+XmHx9UFaCYWkYM/3fvJJrdHe4+PuIqJ5mgo3M0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z08aFRZG6rUOg/PdKp6tApiVa+RkSXH1hyXTO+Gy8MB5IT+59mHllxAqNZa2PG/t/
	 56MXhB+pz63T7Gnko/cx1qbrcCSr51MmrDP/dGaHu2Jih2hX1ls/w5olTBYW2P7FaZ
	 YLrBPurJAvE5EvFHgp3ebzMiy3iPG1GIkcjruKPj4bm0ysyRTrIcpCY5LMxyxJe5wV
	 SWGBwimYFUjJR0mbU22Rc9e2bwV953+0gynQCdLd97szqVwkK5JoEOyET3j/juE3Ay
	 T4E8Xuo6IzhaOcjzzWAVEpwuTD/pEI5dvh588OfEabB55/maFkhlyRq+2sobi8gYJM
	 FCZPvmid3Azzg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ecYZ09Qj_70W; Mon,  3 Apr 2023 21:37:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65A428141A;
	Mon,  3 Apr 2023 21:37:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65A428141A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 717571BF36D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 21:37:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E106409C3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 21:37:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E106409C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z9YgRh4fwuUW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Apr 2023 21:37:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9FC94096E
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E9FC94096E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 21:37:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="339511299"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="339511299"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 14:37:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="750632766"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="750632766"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 03 Apr 2023 14:37:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 14:37:04 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 14:37:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 14:37:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X5oM+ec8eiUetai8TIOaNpLGiUHlXHR1i6Tq1vmkUP9Ui9MHJC30DbiGQKyesrr5jrqQisbb/NoD83e+KFXV6vqKZTqjIG2kjlfQq7Dnf6Htp05tC+Jh5pozDoppQ64ikUHxIt6FGy21SywlQ4JC0L3Fhij42dfjfENoUjf/r7E3tn0zFflH89VHwtDRjUhn8r94mt9aSRwhFT/FA8IbXpW23nNcKgyqKgpN8s3X/M6HzEZ7iuFYEg5Xu0uNEx6QsTE6dY+O28fkLKc/wKSHKAo03beE+IIq+RnjIm2IQqOyvL7e+ffZJFgKPwV/hBxethEDgl75xE7mgyFTpxnP2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bxBVxZ1cAPB/XP4iN8HxfHjKMMXGXDiv6aEpW0W/YWs=;
 b=P/cSe05BToS+WC3LFL5d52S+OGeeULhSZCf6Q3N0B6lUzL0DPFM8APwxO/j0btTj7UJFt0OJBYSPAMxxaqlvGFkEoxMfv9WKaPlePdEOwrgorO0PlYG1lC34FGWElIL69FyLctNwloPVz0h2prmNyA8fAVF/kO/UoGgCGgHakz/blMMPexZf6L+LJCmgpGJrj4YwTtYZYJ6xGgeDf0uiAsr3kEuF594MwwW/OIfC7mqZJiUsd8BbNzTWGzjP3BmndfwAiAzjbhug6HFOeDY2UctPFijfnW9qlzbsGs9S/N67TLcZe0vPDauG3DsW24Lajslj7Tcs99Lr+Vns4wIdLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22)
 by SA2PR11MB5209.namprd11.prod.outlook.com (2603:10b6:806:110::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.34; Mon, 3 Apr
 2023 21:37:02 +0000
Received: from PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::922:4817:b4f2:c7b3]) by PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::922:4817:b4f2:c7b3%6]) with mapi id 15.20.6254.029; Mon, 3 Apr 2023
 21:37:02 +0000
Message-ID: <5d0439a6-8339-5bbd-c782-123a1aad71ed@intel.com>
Date: Mon, 3 Apr 2023 16:36:56 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Jason Gunthorpe <jgg@nvidia.com>, Jakub Kicinski <kuba@kernel.org>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <ZCV6fZfuX5O8sRtA@nvidia.com> <20230330102505.6d3b88da@kernel.org>
 <ZCXVE9CuaMbY+Cdl@nvidia.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <ZCXVE9CuaMbY+Cdl@nvidia.com>
X-ClientProxiedBy: SJ0PR03CA0373.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::18) To PH0PR11MB4886.namprd11.prod.outlook.com
 (2603:10b6:510:33::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4886:EE_|SA2PR11MB5209:EE_
X-MS-Office365-Filtering-Correlation-Id: c76b907a-b1ed-4832-2041-08db348b8fc5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TWaDQrv5re1xjaOlKJoudZHvmonBT/8XQKJodANO7dFWO9b20Vb5PmuP4lW+zZNYOdwTLLGKamkZElqUx17UKUTRgr6qkcRi9HRLoSfLqVtPpCUOqrNxhIhid3A0CVL4MOFK97hln21yql+eDy4paAEaE1p6+aIzbwJrVd0Cgwoqqpa8JeMS57FX4kODUA82ZvVM9cqSFD6ZnV/7JRLGZVyKtA9XYODp5fOdagz8GQJedG9kbh8Omi5KMb6q2LTtv2M/uVSN+RlxuHWjaIxcaly9LTX+xNyon7S/yHU9kVHmZTHWZwWbSW0q9vN/fua8Nu4YUiPGBZA+K0wO+PWjv+IOHwIIaYTTzMNt9Z0IIpZj4XsyCJAY1Q1dORlgQmrVdfTFU5yUvJaXE/45eEMBg5ZjCUIlsLgbZP+DhjBY+Lg+6h1OKNGQCh6c71mnSen6jdXqK9+5fRVF8jO6jyrkvjVXoiN6DtmcvNhbqf4YvJP8UyfvPZCcbCSyJfZuPETOWRAmbMmjmcOvMlaCC+UF6vJbecsOTQMe5pM37ukeb6ZobtCpRohtU/IG0wBRUOQAYQCox7k4VPRnEPnnVj8br9vqB79wd3ptICUfisv4jZNVE+y7FsrfNZcTPtZuDtMZwi4QCBw/hE9Cw2qUr83045ySoHPhf+fnbSJ9oSuvpqo0X9oVvXcRRg1uXk907ccs
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4886.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(346002)(366004)(136003)(396003)(451199021)(83380400001)(31686004)(16799955002)(36756003)(2616005)(186003)(6512007)(6506007)(53546011)(107886003)(6666004)(6486002)(966005)(54906003)(478600001)(316002)(110136005)(66946007)(66476007)(66556008)(82960400001)(38100700002)(8936002)(4326008)(41300700001)(8676002)(5660300002)(2906002)(31696002)(26005)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?LzcyL2Z1M3JLUW92OXUyN21rSDIvT0xqZU9WZUdIdWNwVzJGYlpVeFU1cjhq?=
 =?utf-8?B?Tm9VU284Y3ZjOXh4YW85alJ4V2c4dVNBMUM2YU85cjR3THNiNTJtL01UckNO?=
 =?utf-8?B?cUtRSko4U2VqZm4ycWNZU3M4cHBRcGlTRk41L1JQalhmR1pHR0c1RE4yemY4?=
 =?utf-8?B?QWtuUnlpRXlGNURhN2pEUzJ6NmVlbmtKZFRlcW5icE8ya0NOVDczcG1XQTg2?=
 =?utf-8?B?MEpQdlNZTzdPYXNCNElEZkEyc0NkeXNlZnZvWnhYcmNUWDNhbk5QcVJiTEVh?=
 =?utf-8?B?aHBIL0M4akhnWm1TcFJEVlQrZGRwRU9FNUlMcWNpYk5USEVxa3l2ZnFZZDh3?=
 =?utf-8?B?Y2hzVlFTcUZSYzRsUW4xNkZLSkYrS01yK0RKYmhWN1dhRnViTy8xd0Vmay9i?=
 =?utf-8?B?b1ZCQXhYSS9iN0F1eENGRjJZMGVkSjcxV3Btcjd1cGZ0MFZpYWF3T09mb3c5?=
 =?utf-8?B?a0gwQ3Mwc3RtWFNjRGF2UGJXeVRPU1lQT21tRzNFWmd4L25aVTBFYkI1RDZT?=
 =?utf-8?B?TnRVWVZZdWVqaCs2aUxlYnQ3ZDFjZWREWnRQTEpzS0V1UmM3RkxFYmYxOER1?=
 =?utf-8?B?RTBNZnMvLzVkT3IrTWtIVzRhWGordTZPWXlYTHcwMjNaN2ZNZE94QXZ2QzBB?=
 =?utf-8?B?MVJoTSttcFJWdlMvT1gxdVVSNmRZM0Nhd3E3TjV0V2plbXVWck9qU1R0QWp0?=
 =?utf-8?B?MHhlUWN5WlFST1R2ZGpqVmY2MFZkNWxDN2NKWGMrV0pKKy9kczBWb3QwN0U3?=
 =?utf-8?B?WlhQVHFUVHNYVWg3aVZoNkt0WEpUamdrRzFrcDhRYTZlY2xEWjZ1ZGZ0bUhX?=
 =?utf-8?B?cTNaTHJnb0RycjJtbEJFaG85a3dvclVhamdKOWNaeDc0QlcybnZYSVp1WjVY?=
 =?utf-8?B?S2RMbzR1SG43K01ReGlZaTJucUtkR2MxQlVoUkppVkFNaG5ZYjdCWlhDTmRI?=
 =?utf-8?B?OFo5MDRJS2VNR0E4bG9Va09RbE1RMEN2UWZQbUFVSzJLZkZncHY4YmwwdHZz?=
 =?utf-8?B?cnVjRk5yTTFIQmFBZUczMU1BdmVTUzZ6VzV3Q2FLYXluTXllWWtUb0pHTzho?=
 =?utf-8?B?T0pMdGNacXJxeHNJUDBURVgwK1JvdnlNU0gwaUpUemkxSFFodjNTME5FbUVs?=
 =?utf-8?B?UVhKa3hPRWw5ZmFMU29qNDIvRVVIQU00Z1R2UGs1aW9pU3NkbDJpMHFBd1hs?=
 =?utf-8?B?K3BHMTg0a2VYRk9ydDd4VDNtdzh3M0laWThWSDJuQW95RUp5NmV6R3VFTDMr?=
 =?utf-8?B?bzJNamU0WVovSWR1cGprZS83T3lzUmJPd2J5RkdhQmk0cW9ZZ2J5UkVrUmwz?=
 =?utf-8?B?Y1VBenl2dnlNQ3dpckhXTjlwd1V4alVnR2RQOXdtZ3hjK1hFUHBLcnNldXpX?=
 =?utf-8?B?dUczWks3ZDRGV0RwUU5CT2s3SkNKZ0g0NzExQXEvcUFLblhTaFRSTmhaWnVy?=
 =?utf-8?B?RWRWWXBLY0ZvWFpVWUpISXNteVV5OGRhNkNDVzBBZGlZR3orWUt5QkVjYmU0?=
 =?utf-8?B?SnEwcVYwOVRKUS9FRW4wbGFpdGtxamFZTHdOd01KbGZTeFlFSXRnL05ldktH?=
 =?utf-8?B?UURIMUx4Tjl2R1BHbjdRVHhRYmZBcFNEUFYvd0VPek1Zc2lJWkRsWnpnS3hy?=
 =?utf-8?B?eGxGT25zQ0o0NWg4VDFxWmZMQmo3OEZ2Rno0eFprRFZVU21paGY2RmN5eVBI?=
 =?utf-8?B?aElDWlJwYVUxc2gxUGR5RzJkQ2xFWHFsTWdPMzhWZ1ArTXBkY21pa0QzODF2?=
 =?utf-8?B?aTJJWDFtNEM1eXJYVjEvcm1XWU9uMjFxcFUydW1IdTZHUFVLOGY2ZG1tSHhz?=
 =?utf-8?B?Z2NCSnNzdW1zd0hCdUFwRmFPY3pWM1VsUHRyYmdReDlHRkF3MG4xZ2tsNk1S?=
 =?utf-8?B?MEJzbERLNGQvMTh3ZVpNR1Y1cUpVdFhWakFvbFQ2OTQvVXU3eVYxd3M1a1Fh?=
 =?utf-8?B?ZWN6aitjWDA0SGtSaDFYcHFTQWQ4RXk1NzhhODR4M0JoclpTL0NGYXBJdDEr?=
 =?utf-8?B?cTl2ak9uYWpFOXE5WCthV3JONCtmY1RYeTkySGpjR0plMHN3UVNiOG1LbzJI?=
 =?utf-8?B?RlZHdjVXSWVOYUV2Umo1a3hqbldTRE5UK2pXeFdpRm9SUFJFRWxzQ3cwZDlE?=
 =?utf-8?B?aW1pY290d3pYSFJXMHJlMjlNK040Q3NhL2kxczR2UUVJbGFQZTFrSngrajVX?=
 =?utf-8?B?SGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c76b907a-b1ed-4832-2041-08db348b8fc5
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4886.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2023 21:37:02.2398 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DoAHzbQnQJBIvOa0L9NDzReO20dPwiMz3GgWWgM0bfJ3jR8sFsyQmcf9lZlZLb6d9YqbmC3ZbGqVRb838945FcfBw+/xiOQkibtoQvkE8dc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5209
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680557832; x=1712093832;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m9S3r5y2EpAEX6JWmXbObWmCR6WzHeRzFRgYDogUtlQ=;
 b=C2k9/NNc5yFG9/W8hqcRFbPKf9PbzCZjNSuybG63D9eypKxch7isrD3Z
 yefa5kRZQCpCZ1qacy0I9ferBGcl2VAZqPB74hLScrr4Uw92wzDH4o2BM
 yq3pEmkrIc6lCzJUa6z/JSpXu89n7hlfVyyelkuT42uxqcQ9xgfmbubZt
 ehm6V3P0b22nRaHdu1rZ79yF327fpTIIBct/9yDp2jb7ErXH/J25lHLEa
 T4RQm69IAaX5RsK8kBWEV2yKDRTZ260n9OIW9fuCo9Mz7otvVxfQLrfj3
 S1JJM12AMqlJ3ZEucWaQgeN7rvQjYXOYNiadYyxewJZskV3mhihMCOwVW
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C2k9/NNc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/15] Introduce IDPF driver
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
Cc: willemb@google.com, netdev@vger.kernel.org, michael.orr@intel.com,
 intel-wired-lan@lists.osuosl.org, decot@google.com, shiraz.saleem@intel.com,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

UG9zdGluZyBvbiBiZWhhbGYgb2YgTWljaGFlbCBPcnIsIEludGVsLgo9PT09CgpJIGFtIE1pY2hh
ZWwgT3JyLCBmcm9tIEludGVsCkkgYW0gdGhlIENvbnZlbmVyIG9mIElEUEYgVEMgYXQgT2FzaXMs
IGFuZCB0aGUgQXV0aG9yIG9mIElEUEYgY2hhcnRlciwKc28gUHJvYmFibHkgdGhlIHJpZ2h0IFBl
cnNvbiB0byBhbnN3ZXIgdGhpcy4KCkR1ZSB0byB0ZWNoIGlzc3VlcyBpbiBnZXR0aW5nIHN1YnNj
cmliZWQsIEkgYW0gYXNraW5nIG15IENvbGxlYWd1ZSB0bwpwb3N0IHRoaXMgaW50byB0aGUgdGhy
ZWFkLgoKQm90dG9tIGxpbmU6IFRoZXJlIGlzIG5vIGlzc3VlIGluIHB1Ymxpc2hpbmcgdGhpcyBk
cml2ZXIsIGFuZCBubwpjb25mbGljdCB3aXRoIE9BU0lTIElEUEYgVEMuCgpTZWUgcG9pbnQtYnkt
cG9pbnQgYmVsb3cKCk9uIDMvMzAvMjAyMyAxOjI5IFBNLCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6
Cj4gT24gVGh1LCBNYXIgMzAsIDIwMjMgYXQgMTA6MjU6MDVBTSAtMDcwMCwgSmFrdWIgS2ljaW5z
a2kgd3JvdGU6Cj4+IE9uIFRodSwgMzAgTWFyIDIwMjMgMDk6MDM6MDkgLTAzMDAgSmFzb24gR3Vu
dGhvcnBlIHdyb3RlOgo+Pj4gT24gV2VkLCBNYXIgMjksIDIwMjMgYXQgMDc6MDM6NDlBTSAtMDcw
MCwgUGF2YW4gS3VtYXIgTGluZ2Egd3JvdGU6Cj4+Pj4gVGhpcyBwYXRjaCBzZXJpZXMgaW50cm9k
dWNlcyB0aGUgSW5mcmFzdHJ1Y3R1cmUgRGF0YSBQYXRoIEZ1bmN0aW9uIChJRFBGKQo+Pj4+IGRy
aXZlci4gSXQgaXMgdXNlZCBmb3IgYm90aCBwaHlzaWNhbCBhbmQgdmlydHVhbCBmdW5jdGlvbnMu
IEV4Y2VwdCBmb3IKPj4+PiBzb21lIG9mIHRoZSBkZXZpY2Ugb3BlcmF0aW9ucyB0aGUgcmVzdCBv
ZiB0aGUgZnVuY3Rpb25hbGl0eSBpcyB0aGUgc2FtZQo+Pj4+IGZvciBib3RoIFBGIGFuZCBWRi4g
SURQRiB1c2VzIHZpcnRjaG5sIHZlcnNpb24yIG9wY29kZXMgYW5kIHN0cnVjdHVyZXMKPj4+PiBk
ZWZpbmVkIGluIHRoZSB2aXJ0Y2hubDIgaGVhZGVyIGZpbGUgd2hpY2ggaGVscHMgdGhlIGRyaXZl
ciB0byBsZWFybgo+Pj4+IHRoZSBjYXBhYmlsaXRpZXMgYW5kIHJlZ2lzdGVyIG9mZnNldHMgZnJv
bSB0aGUgZGV2aWNlIENvbnRyb2wgUGxhbmUgKENQKQo+Pj4+IGluc3RlYWQgb2YgYXNzdW1pbmcg
dGhlIGRlZmF1bHQgdmFsdWVzLgo+Pj4KPj4+IElzbid0IElEUEYgY3VycmVudGx5IGJlaW5nICJz
dGFuZGFyZGl6ZWQiIGF0IE9BU0lTPwoKSURQRiBpcyBpbmRlZWQgYmVpbmcgU3RhbmRhcmRpemVk
IGF0IE9BU0lTLiBFdmVyeW9uZSBpcyBmcmVlIChBTkQKSU5WSVRFRCEpIHRvIGpvaW4gdGhlIHdv
cmsuCgo+Pj4KPj4+IEhhcyBhIHN0YW5kYXJkIGJlZW4gcmF0aWZpZWQ/IElzbid0IGl0IHJhdGhl
ciBwcmVtYXR1cmUgdG8gbWVyZ2UgYQo+Pj4gZHJpdmVyIGZvciBhIHN0YW5kYXJkIHRoYXQgZG9l
c24ndCBleGlzdD8KClRoZSBTdGFuZGFyZCBoYXMgbm90IGJlZW4gcmF0aWZpZWQuIFdvcmsgaGFz
IGp1c3Qgc3RhcnRlZCByZWNlbnRseS4gV2hlbgpJRFBGIFRDIG1lbWJlcnMgZmluaXNoIHRoZSB3
b3JrIGFuZCB2b3RlIHRvIGFwcHJvdmUgdGhlIHJlc3VsdCBUSEFUCnZlcnNpb24gd2lsbCBiZSB0
aGUgT0FTSVMgU3RhbmRhcmQgSURQRiBzcGVjaWZpY2F0aW9uLCBhbmQgd2lsbCBoYXZlIGEKcmVm
ZXJlbmNlIGRyaXZlciB0byBhY2NvbXBhbnkgaXQsIGxpa2VseSBsYWJlbGVkIFYxLjAKCj4+Pgo+
Pj4gUHVibGljbHkgcG9zdGluZyBwcmUtcmF0aWZpY2F0aW9uIHdvcmsgaXMgb2Z0ZW4gYWdhaW5z
dCB0aGUgSVAKPj4+IHBvbGljaWVzIG9mIHN0YW5kYXJkcyBvcmdzLCBhcmUgeW91IGV2ZW4gbGVn
YWxseSBPSyB0byBwb3N0IHRoaXM/CgpQdWJsaXNoaW5nIHRoaXMgZHJpdmVyIGRvZXMgbm90IGdv
IGFnYWluc3QgYW55IElQIHBvbGljeSBvZiBPQVNJUyBvciB0aGUKSURQRiBUQy4gVGhlcmUgaXMg
bm8gbGVnYWwgaXNzdWUuCgo+Pj4KPj4+IENvbmZ1c2VkLAo+Pgo+PiBBbmQgeW91IGNhbGxlZCBt
ZSBwb2xpdGljYWxseSBtb3RpdmF0ZWQgaW4gdGhlIGRpc2N1c3Npb24gYWJvdXQgUkRNQSA6fAo+
PiBWZW5kb3IgcG9zdHMgYSBkcml2ZXIsIG5vdGhpbmcgc3BlY2lhbCBhcyBmYXIgYXMgbmV0ZGV2
IGlzIGNvbmNlcm5lZC4KPiAKPiBUaGUgcGF0Y2hlcyBkaXJlY3RseSBsaW5rIHRvIHRoZSBPQVNJ
UyB3b3JraW5nIGdyb3VwLCB0aGV5IG5lZWQgdG8KPiBleHBsYWluIFdURiBpcyBnb2luZyBvbiBo
ZXJlLgoKQXMgZXhwbGFpbmVkIGluIHRoZSBDaGFydGVyLCBJbnRlbCAmIEdvb2dsZSBhcmUgZG9u
YXRpbmcgdGhlIGN1cnJlbnQKVmVuZG9yIGRyaXZlciAmIGl0cyBzcGVjIHRvIHRoZSBJRFBGIFRD
IHRvIHNlcnZlIGFzIGEgc3RhcnRpbmcgcG9pbnQgZm9yCmFuIGV2ZW50dWFsIHZlbmRvci1hZ25v
c3RpYyBTcGVjICYgRHJpdmVyIHRoYXQgd2lsbCBiZSB0aGUgT0FTSVMgSURQRgpzdGFuZGFyZCBz
ZXQuCgo+IAo+IFRoZSBwdWJsaXNoZWQgZG91Y21lbnRzIHRoZXkgbGluayB0byBleHByZXNzbHkg
c2F5Ogo+IAo+ICAgVGhpcyBpcyB2ZXJzaW9uIDAuOSBvZiBJRFBGIFNwZWNpZmljYXRpb24sIHRv
IHNlcnZlIGFzIGJhc2lzIGZvciBJRFBGCj4gICBUQyB3b3JrLiBUaGlzIGlzIGEgd29yay1pbi1w
cm9ncmVzcyBkb2N1bWVudCwgYW5kIHNob3VsZCBub3QgYmUgdXNlZAo+ICAgZm9yIGltcGxlbWVu
dGF0aW9uIGFzIGlzLgoKU2luY2UgSSB3cm90ZSB0aGlzOiBUaGlzIGlzIGludGVuZGVkIHRvIHN0
YXRlIHRoYXQgdmVyc2lvbiAwLjkKaXMgTk9UICp0aGUqIE9BU0lTIElEUEYgVEMgZHJpdmVyLCBq
dXN0IGEgYmFzZSB0byBzdGFydCB3b3JraW5nIGZyb20uCldlIGtub3cgdGhlIGN1cnJlbnQgdmVy
c2lvbiBpcyBub3QgdmVuZG9yIGluZGVwZW5kZW50IGFuZCB0aGF0IGl0IGlzCmxpa2VseSBjaGFu
Z2VzIHdpbGwgYmUgYWRkZWQgYnkgdGhlIElEUEYgVEMuCgo+IAo+IEZ1cnRoZXIgT0FTSVMgaGFz
IGEgbGVnYWwgSVBSIHBvbGljeSB0aGF0IGJhc2ljYWxseSBtZWFucyBJbnRlbCBuZWVkcwo+IHRv
IHB1YmxpY2x5IGp1c3RpZnkgdGhhdCB0aGVpciBTaWduZWQtb2ZmLWJ5IGlzIGNvbnNpc2VudCB3
aXRoIHRoZQo+IGtlcm5lbCBydWxlcyBvZiB0aGUgRENPLiBpZSB0aGF0IHRoZXkgaGF2ZSBhIGxl
Z2FsIHJpZ2h0IHRvIHN1Ym1pdAo+IHRoaXMgSVAgdG8gdGhlIGtlcm5lbC4KCk9BU0lTIGRvZXMg
Tk9UIGhhdmUgc3VjaCBhIGxlZ2FsIElQUiBwb2xpY3kuIFRoZSBvbmx5IElQUiBwb2xpY3kgdGhh
dAphcHBsaWVzIHRvIHRoZSBJRFBGIFRDIG1lbWJlcnMgaXMgdGhlIOKAnE5vbi1hc3NlcnTigJ0g
SVBSIHBvbGljeSBhcyBzdGF0ZWQKaW4gdGhlIENoYXJ0ZXIuCkFueSBJRFBGIFRDIG1lbWJlciBj
b21wYW55IGlzIGZyZWUgdG8gcHVibGlzaCBhbnkgdmVuZG9yIGRyaXZlciB0aGV5CmNob29zZSB0
by4gV2hhdCB0aGV5IFB1Ymxpc2ggaXMgc2ltcGx5IHRoZW4gdGhlaXIgZHJpdmVyLCBhbmQgbm90
IGFuCmltcGxlbWVudGF0aW9uIG9mIHRoZSBPQVNJUyBJRFBGIFN0YW5kYXJkLgoKSURQRiBDaGFy
dGVyIChBbmQgZHJhZnQgc3BlYywgYW5kIGFsbCBvdGhlciBkb2N1bWVudHMgYW5kIG1haWxpbmdz
KSBhcmUKaGVyZToKaHR0cHM6Ly93d3cub2FzaXMtb3Blbi5vcmcvY29tbWl0dGVlcy9kb2N1bWVu
dHMucGhwP3dnX2FiYnJldj1pZHBmJnNob3dfZGVzY3JpcHRpb25zPXllcwoKT0FTSVMgSVBSIFBv
bGljaWVzIGZvciBUQ+KAmXMgYXJlIGhlcmU6IApodHRwczovL3d3dy5vYXNpcy1vcGVuLm9yZy9w
b2xpY2llcy1ndWlkZWxpbmVzL2lwci8KCj4gCj4gSXQgaXMgZnJlcXVlbnQgdGhhdCBwZW9wbGUg
bWFrZSBJUFIgbWlzdGFrZXMsIGl0IGlzIHNvbWV0aGluZwo+IG1haW50YWluZXJzIHNob3VsZCBi
ZSBkb3VibGUtY2hlY2tpbmcgd2hlbiB0aGV5IGFyZSBhd2FyZSBvZiBpdC4KPiAKPiBGcmFua2x5
LCB0aGlzIHN0b3BwZWQgYmVpbmcgYSAidmVuZG9yIGRyaXZlciIgYXMgc29vbiBhcyB0aGV5IGxp
bmtlZAo+IHRvIE9BU0lTIGRvY3VtZW50cy4KPiAKPiBNb3JlIGJyb2FkbHkgd2UgaGF2ZSBzZWVu
IGdvb2Qgc3VjY2VzcyBpbiBMaW51eCB3aXRoIHRoZQo+IHN0YW5kYXJkcy1maXJzdCBtb2RlbC4g
TlZNZSBmb3IgZXhhbXBsZSB3aWxsIG5vdCBtZXJnZSAidmVuZG9yCj4gZXh0ZW5zaW9ucyIgYW5k
IHRoZSBsaWtlIHRoYXQgYXJlIG5vdCBpbiB0aGUgcHVibGlzaGVkIHJhdGlmaWVkCj4gc3RhbmRh
cmQuIEl0IGdpdmVzIG1vcmUgcG93ZXIgdG8gdGhlIHN0YW5kYXJkcyBib2RpZXMgYW5kIGVuY291
cmFnZXMKPiB2ZW5kb3IgY29sbGFib3JhdGlvbi4KPiAKPiBJdCBpcyB1cCB0byBuZXRkZXYgY29t
bXVuaXR5LCBidXQgaXQgbG9va3MgcHJldHR5IHdpbGQgdG8gc2VlIHBhdGNoZXMKPiBsaW5rIHRv
IGEgc3VwcG9zZWQgbXVsdGktdmVuZG9yIE9BU0lTIHN0YW5kYXJkLCBwdXQgdGhlIGltcGxlbWVu
dGF0aW9uCj4gdW5kZXIgbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvIGFuZCBjb21lIGJlZm9yZSBz
dGFuZGFyZAo+IHJhdGlmaWNhdGlvbi4KPiAKPiBJdCBpcyBhIGxlZ2l0aW1hdGUgcXVlc3Rpb24g
aWYgdGhhdCBpcyBob3cgbmV0ZGV2IGNvbW11bml0eSB3YW50cyB0bwo+IG1hbmFnZSBpdHMgc3Rh
bmRhcmQgYmFja2VkIGRyaXZlcnMuCj4gCj4gSmFzb24KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
