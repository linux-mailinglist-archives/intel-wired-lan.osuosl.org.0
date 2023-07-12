Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AADE751207
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 22:57:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2800241F95;
	Wed, 12 Jul 2023 20:57:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2800241F95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689195462;
	bh=FjQnQga0Y9Gnu+ipCs+x1rO33brjw47iS2+BWkfZDZ8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HXB1HyVgYnXto3+A5oife2Ov7ZChqEK30PvpsuhjMlhNQYv074M2AWrtoYMmLwCVB
	 bzJA91gcRrYcgvc8/FlkErX7c2sBMcSnMuxP9Cc0miRh8KHeXZ4WI+LnsM0oNMi2Ie
	 KyMP5WaxzEL19EA17D2JE7nJjlxcRfFKa9U/J6hOVEK2K/CkFcXdKAhAdXhqdnLz1I
	 sjWWKcO1yxze6hK1ez6WMnMChcmTjzy8nesv+9v/v4rS0GjGngGVj66sTa/FylKZxb
	 29PT/tLuuEISgNpYM+TGaUtuXiAb86D+lcKsBknsJWplfdDVqHS4IeozTl5rpshEOp
	 Oxcelt79dI3fQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9wF0ubFbSlLi; Wed, 12 Jul 2023 20:57:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97A0241D66;
	Wed, 12 Jul 2023 20:57:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97A0241D66
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 80C451BF400
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 20:57:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 55E5341D89
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 20:57:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55E5341D89
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8VJFhb9w_XG3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 20:57:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DE5F41D66
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0DE5F41D66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 20:57:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="428751927"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="428751927"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 13:57:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="721641554"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="721641554"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 12 Jul 2023 13:57:32 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 13:57:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 12 Jul 2023 13:57:31 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 12 Jul 2023 13:57:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H6rjMYoHG7cpKKazCllXhlchlYHCUj6bXHeGa/KMAbfm8ZSzIIxhrFGveUKrvW8t6FvPD2eiGbQ0gtYjE1GS6nSn9iSGfPzBd1gtVpNJK5BAv8Zo/z5Y2H7ncz4j7E+aENknAoFjwTUulum14ijxXBdlfaIodzGl1ekRnlgKVo1dZpPHAdzYfr/OmTjMivHtXrXoYO1b8bqNzr+ZOv6t81/c+Bybkwocf33nQhmFS+kKCbWLkdZIFHaikcvqSO7VtsQ+uKaxRC3St4kMev3zZEaHziz5CiD0PKeHI6XIl2g5bIQGD3RkUc9COv2VwYO7CDUzJDdNT0FEWKrzcu4kpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3vLmfL8wk9qxCHBB/scRxm1Ylo5F44mt7y/pAqqEr30=;
 b=jP0xZ22e+XbC0CrWuPJASvHpzlZwHxEgbaJtJVePDgVmYmuJIrRQdDub5mT00X77rHm3pKH/Thu5nM+er5gxeB1glY3aXzm1V7lbQoPbT4JD38HTVwgbCE3C2ra+JVrDXCXg/XM4XUKZT++ZO75nYn6sWN7KtjMeJKw1Ez5mfKu8iqReGS8BYiq1DAiDNfPaIFWDLF6LgDm4k0yk4syr/OTJAqkPWIzst0nrG4t0wR4lN2RkqwwJyHannpeqZ6tTolSrinXAlYZsadhdPLAN28a6M3merYUOv2DVOPj3RVKvhOMpYrZI2211P4zzyDXih0NM9ApFRvqPThOnOMtlVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA1PR11MB6846.namprd11.prod.outlook.com (2603:10b6:806:2b0::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.20; Wed, 12 Jul
 2023 20:57:29 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bd89:b8fc:2a2f:d617]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bd89:b8fc:2a2f:d617%4]) with mapi id 15.20.6565.028; Wed, 12 Jul 2023
 20:57:29 +0000
Message-ID: <bdf08528-1e45-0b7a-e617-63151aa89e0d@intel.com>
Date: Wed, 12 Jul 2023 13:57:25 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Wang Ming <machel@vivo.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20230712121943.7597-1-machel@vivo.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230712121943.7597-1-machel@vivo.com>
X-ClientProxiedBy: MW4P220CA0009.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::14) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SA1PR11MB6846:EE_
X-MS-Office365-Filtering-Correlation-Id: a3b5da1d-e974-4f6d-9a7e-08db831a9a6f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TANAT6zAy4Z59X99ZN7bofiPtq/dGp6YlfKQUn6uof7MNg4yP1SEuxxMjpiv2Qfd7iCt0qz6qreiBuIAcYOCpawoQlyFfb/SvYSIB6rJzAF4NbIE2jGi/OSdJlF4HgsSH1vfR5F3bf0mVLGRte+htiitSsE1tW+A35J7Y6mlw7L2wn8oU8HbEAlmlAAEewSZI4q1xLE5ctUhB3+5LgiQ22FjNIhmowKAv0XprqHa1bx7odpUEjrjJox92eYwmtANv8nhEpK7dKLDCpbV2Cp9Iw4o4oj5XeBapUTN0T6kwbqrPbeq84NeeWmbD1qwfLDUA9+XgPMlET6xTGzYpNY56vUxhCGMcKmCbO1JQAdpz1YUo+Pbh3YtOF9WT9plQwKKesA+2ERY+gIKQrmtwHvJ9VJV2U9YLuw9pVjAaaCErItb9OD/1WZ8XUWbfKZXbiWdpRyZ3rD3Q45YbPk6AcfHxkENiyqziBGWtlFCMWbA/WnLzueH3vwiK45k/92m2IsS29EC1g+fT9WuhTLUBDBTCRHmtrUIE8mIH34gUYAl75VkqQ70Xe9lSt7fWRywKJaO2GvYqLTJfTwDqmTLIPrFRyOZICOia/raWV1SUu2tcwEdnKL1zgjNFCXHQOI2uskf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(39860400002)(136003)(376002)(366004)(451199021)(4326008)(66946007)(66556008)(66476007)(316002)(2906002)(41300700001)(478600001)(8676002)(8936002)(110136005)(31686004)(5660300002)(6666004)(6486002)(6512007)(966005)(53546011)(6506007)(186003)(36756003)(83380400001)(38100700002)(82960400001)(26005)(2616005)(86362001)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YTlrRTRvK1Y5S0gzNmZuSkRRNkVMYjR3RkFXR1ZNUXZKYXE0d2Rhdkk1UVRn?=
 =?utf-8?B?UWplZnphclFPMDJRUDFwcEd0Vkh2dVhMZFkweXVvSTl2WmROLzMyNEpHdmlj?=
 =?utf-8?B?eW9VK2xJdmk1dlRGTE9NNnFjZC95S0pQSElmZE9tZG9YcUkzME5MQzlFM3hv?=
 =?utf-8?B?OWNtVGZUNGFpbVR4M0VndklrMnNEODl6YWlQUlR6M3djVlFZaUh5aGlsRDFR?=
 =?utf-8?B?ZmVLRnlKRUo2Y2xJMWlaeFJxdjNkd1FmdHlXRjNEZmpaTUNGbURBV2dqN2l1?=
 =?utf-8?B?NEU5b1YvbGFXWWgwbEpqaFQvSGZpdWl6N2ZDS1RZRmIwSDVNb0FnYXBYNHFK?=
 =?utf-8?B?WVJlbmNhQjM4RUt5c2dzakVBa3NYTmk3eHdvZytLWENPNTVKTmZrcktXVk9o?=
 =?utf-8?B?YmhjNEVxVUk3V0JoK1NER2h2b2tnOUsvclFmK1ZYMVpJU24rc2Qvbm1ZM3o0?=
 =?utf-8?B?WENVUC9LWUxpTlo0QncyV3RaVHYwRlcwRDlZQkpnckhzaUN6MlFaNkVkaWNo?=
 =?utf-8?B?WjJiUHd0TzZCUmpLemdGaHFFS005SXpVV09KWXlsSDRMOURIWkw4ZVZvVTJY?=
 =?utf-8?B?VW9Ya21wSlN6bktkMzl5ZGpJQm1VSVpkUC85TkJVTWQ2WjU0Ynl6MGhxQXYx?=
 =?utf-8?B?ZWxDY0tScnVwRVMrZ3IrMUJDaXkyZUN0WFRQcTZObkRnK01HS3JRMGE1ZzFQ?=
 =?utf-8?B?ZDlMOThyblp3T0podnQvbkhZdGtHWnYrYzVvQ01YYjN0MXpNeFdDc25lM3dS?=
 =?utf-8?B?b0pCRkl0RGxYQkxsbkhpck1PMVR3RHBOREJyd011UGdTZDFUczFDa1dKOTJz?=
 =?utf-8?B?VGNHSEJpZFAybndpc2IxbmVYdm9GbzNOeC9NbS9HQWNMY1ZNZGFDcXJTdFpG?=
 =?utf-8?B?alhVbXZ3b3JncmU5TTRNZi9HVTloNjc0RlRMazZjaVhKUUQvSDczZUtNL1l4?=
 =?utf-8?B?K1ZyUDZYeERLWC9iTFdaZ2loQkMzNVNqNHpDZ1FmTFRyRkYrNmEzZXBuc2Fy?=
 =?utf-8?B?Z3NYakxES2EyUCswTjdGVkxoTnVyYkMzcUFSaVQ0Y3dTUTBuU2RNM3YyUmNF?=
 =?utf-8?B?ckVUd3VyczZZbVltQ2ZOS0VXcnREcEdacGgyZUpZUmUyWmdMenNId3p2dXgx?=
 =?utf-8?B?SGViakl6OXN4c010UWlJZTNWYjN6MXc2NlVCZ2czK2k3Qkp1YmZZQld0NDFr?=
 =?utf-8?B?V2V0clorTHRreURUMXY3SEY2QzlhcGZaaDdsTmNZQ24ycDJLK1F4N3BVSUFH?=
 =?utf-8?B?SFQ3RzFjdEQzV24yRjRPdFg0Q2k5T1R6ZTNqQzZ5YWJxR0Y3Z1lrTVRrRmk2?=
 =?utf-8?B?alBYUmxGWnRzeGtRSHhWZERKblZDTnczZ3dlcHhRai9RV2RQdTFoeTVCZlhN?=
 =?utf-8?B?ZmZVeUJMQk04S3grUHNBRGUvVXBnbnRjeHRObE5JVGN1ZTFzUUFSYXdtdis5?=
 =?utf-8?B?eFRSMGpCTlE2U21YaXI2eWcrVXlnQXhMRTR4WjNEbGFqdlp2RHlnaVp0aU9H?=
 =?utf-8?B?VzUvRnZrakh5SkpWTHJiY3hVV3ZUUk85WjFtR2k5MzFQRzl0N3lJalZJTVdX?=
 =?utf-8?B?WkgzWUhqNFZBVnQ2L0VNSEZoTDdsVW1mZ0ppMmF5SFh5c0pUL3RlaDNBbEVJ?=
 =?utf-8?B?YlJXMzArR2dUeDk5UEdLdGl3TDdnVmpQQW5YT3A2N0JQRnJZZjVwcW1FUHcr?=
 =?utf-8?B?TUQweVhFVWxRRndEcnY1VHFHRFBBVU5ZQWQ4dmlvVjg5QUdoNk9vaG93SmNn?=
 =?utf-8?B?S1NZRnB0KzdOTG0wSHNRU1dTMzBRMlU5RnhsRW5lRzNJVEFxZzF1TWpZZHNu?=
 =?utf-8?B?UUJ3Q0JyUGJ0dXZPaU9Cc0hBdEthVlozYW9EZytlK1ROekJDbEl4RDJoSmlL?=
 =?utf-8?B?Ykw1bTJnZkJlRHU1eUJ3elhYY21ZWnNjVnd6Q2ppZDhkQlVOTzJ2cXpSK2g2?=
 =?utf-8?B?SXN3VkxnM2d2WU5zZnRCS0FVY0IzeXVlU2I5ajVVbTg5TkxpajlCMnhncHp0?=
 =?utf-8?B?TmpZc2VNWVZLY2xvN29CNzJVSkNPQlZkMW5NM1hEYVJtb084QythdDVrMkFR?=
 =?utf-8?B?d0F0SGJQQzVRV2ZOVi8yY0lVYlJ6emVsMEZKbDhnbWVmNzhidnhqRXNGVHdq?=
 =?utf-8?B?WktBSUpvVU45SG9BUHdLTUdaVDR0dHRuZEpyQSt3amV6S0luTnhKWFAzMXpo?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3b5da1d-e974-4f6d-9a7e-08db831a9a6f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2023 20:57:28.8249 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wVhykCqElUJB0wHh10QgmzPDr+hIWU4zgfHkGJNp4JJ/1cQpbjbe+XlVMUvHU91xcdzrGfN7u9aeHw3fxTltiFh8Nr42eieyDwEGGMocZOA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6846
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689195454; x=1720731454;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vRJzNNR3G9e7AQK5YZtmbWHS5MCT2zaFWP6Pfjtsaz0=;
 b=Slu2SNnZc3NePZfbAD1vHdnpOTjY42Bm23+blDkqDdVG7EtkBBxpLiAn
 fP8Fep4yiGFot73uk0kwl5DmnbzdLHNyh25gsWxSQkPJff0a4/VrHrZeV
 dLJ3FlPBWfIIeuDTL4HCcEQ0u2wHEwShsCa8kGOOslwcj2GJGGE8d3hiT
 PlMFry1z3rXVdjPwyImKNgmusHcsfjhBShIP+QQvztIE1mUCSH0IEz9uA
 Lhg678jxArdRrmk7s4C6MszdKGs1cfIzW83AQ+ncPQxaED0wdYzl+66sv
 ZAOGihNT5iEjiXdOWnUPBZBCEEPDbQRsk2N0oBJE0bJ7Iv+NbdM4Z0hoL
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Slu2SNnZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] net:Fix an NULL vs IS_ERR() bug
 for debugfs_create_dir() in i40e_dbg_init()
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
Cc: opensource.kernel@vivo.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/12/2023 5:19 AM, Wang Ming wrote:

Please designate a tree for the patch (net or net-next) [1].

If you could include the driver (i40e) in the commit title as well. 
Also, a nit, but the title is a bit long, seems like it could be a bit 
more succinct.

> The debugfs_create_dir() function returns error pointers.
> It never returns NULL. Most incorrect error checks were fixed,
> but the one in i40e_dbg_init() was forgotten.
> 
> Fix the remaining error check.

As it's a fix, there should be a Fixes tag as well.

> Signed-off-by: Wang Ming <machel@vivo.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> index 9954493cd448..62497f5565c5 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> @@ -1839,7 +1839,7 @@ void i40e_dbg_pf_exit(struct i40e_pf *pf)
>   void i40e_dbg_init(void)
>   {
>   	i40e_dbg_root = debugfs_create_dir(i40e_driver_name, NULL);
> -	if (!i40e_dbg_root)
> +	if (IS_ERR(i40e_dbg_root))
>   		pr_info("init of debugfs failed\n");
>   }
>   

[1] 
https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html#netdev-faq
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
