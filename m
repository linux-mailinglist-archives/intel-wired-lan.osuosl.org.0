Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B868A7C41E2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 22:50:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A9E960FD4;
	Tue, 10 Oct 2023 20:50:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A9E960FD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696971015;
	bh=3crRbibn8WMkhW1NFB1nLHTON6mp8hA9XNgZP+AmQiA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B8tKF+DIMv6Lkf3J+jD6NTqtHbv3qKGnkwJQUc9D44fSM42JMzDq2aX2WPQVV6JlJ
	 Y0KbLBz2tsqs0MsUp/IdoX2ozuGE57bmEa1OxTje15oxSEVeh8EV7k76hBcv+46Amm
	 4T0Ubaz9/tii8GFjknuzZu90T9tGF8KoEo0NnJf5N3syvpnEa3QfV9R8wd1EUvYmKz
	 pL16qHDt50cfSvZkXXsHUdmMG+5ERUCbqk4XuWI848ayKDysPNJXOzyMMo99EXcAH1
	 NmgaalNkvKX0KizzkzTOOP3DnRxnIfR8o4IwS+s0KEwfeuoeW7icMsEFRei6Y93ySI
	 MbKl0yWD3gsZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id giQlCXEZFpzU; Tue, 10 Oct 2023 20:50:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1EDB260DFC;
	Tue, 10 Oct 2023 20:50:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1EDB260DFC
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 71A661BF389
 for <intel-wired-lan@osuosl.org>; Tue, 10 Oct 2023 20:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 499CF60F10
 for <intel-wired-lan@osuosl.org>; Tue, 10 Oct 2023 20:50:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 499CF60F10
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f_rnArW_sbpY for <intel-wired-lan@osuosl.org>;
 Tue, 10 Oct 2023 20:50:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DFD9C60DFC
 for <intel-wired-lan@osuosl.org>; Tue, 10 Oct 2023 20:50:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFD9C60DFC
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="415535387"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="415535387"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 13:50:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="819403233"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="819403233"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 13:50:06 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 13:50:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 13:50:05 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 13:50:05 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 13:50:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hAKVVzqwwFJX1RfkW8dNKaei/Naksq69p/4qxmFDCKmbOsAULYtNVXFYqRDCOFnHTZzu+YIqFh6EFFmS22HFgrXk0teD1uiSloY5W99hLq8rlJsh4Ki2/6SjqQi1zbXpq7+VmKcSUjiTsRNT0iSWpjQKjOxAUTUkJzqmOo7DpW0fPeyrAV4vFVy45TjQEmSfNH2yQKMDE0z7hDyz4oPwK7uLuKzEG2zT4dTLRXnZ265NxsDJopI9OpvKCJWEn9uIQ2Ra6/B2S6+IJP7ZzZ0FbsHEQWbHyuyFa7td1x5PM/MMCl9LnAeb0jinw/AMTbKQPa6tnpWwtrDHFxLWQuC7GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UQ0ymhfFSmdj3iJCEoXB5Eg1MWx5uVZL5JulyhgdNXk=;
 b=Hwh14gonWSITrO94dUjeGvWERMnD3q4FrEIM6YLcaVKbwInM8mjv6QZre/TCKpXvvIjhe3OLxzYWhu9VkFFEsbsNrnccnrWsSlkVeSoHAhkjfDxStEllSapA20612rsRfm+ljYxoUlrGQ7b5La4/LEgVCWtdK3avUsvoiYXgfizoCywdTGEOB7XWXTePQYXM5cBqzt9eOJqtSn8+L1fg8/jSGROTl/vkC+mChMhUDh/F6UVDDMsnFM4aGV8jja35BmnVl1Fea7ZVDceYYUIZI+XOZUp6kluyOOuoec7G+h0400T9H4T0GuIATueFO1978eGfeahM7NHNJ6lCF3qAjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH3PR11MB8209.namprd11.prod.outlook.com (2603:10b6:610:15d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36; Tue, 10 Oct
 2023 20:50:02 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%5]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 20:50:02 +0000
Message-ID: <fce3af4e-b102-0a7c-71da-87aad5c1c0c2@intel.com>
Date: Tue, 10 Oct 2023 13:50:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: <intel-wired-lan@osuosl.org>, Nir Efrati <nir.efrati@intel.com>, "Vitaly
 Lifshits" <vitaly.lifshits@intel.com>
References: <20231005054441.3758364-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231005054441.3758364-1-vitaly.lifshits@intel.com>
X-ClientProxiedBy: MW4PR03CA0238.namprd03.prod.outlook.com
 (2603:10b6:303:b9::33) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CH3PR11MB8209:EE_
X-MS-Office365-Filtering-Correlation-Id: 9344bcee-922c-458e-02b5-08dbc9d2794e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WhUXsVhRwWcnXndkQjluc6XkwtE7aLJH+R0YOUcSxQUnFpGMqeDp7eJO0te+a5hlJ14wv676tYrcW9SHwU4IS7bWY6VrRhf+w0JVFLa5Gb//MA33Q9sSQ+eyBLu5k1ii1iNF0f7Tbm0bICELpjIW49whLmLT73/+p1mJGCMB1CvxYayXfNo5z9ktITo+90ZY/JRV1zGeby17MtUI+d5Wf2qIxywMVGA4LWv1+EcRATR1edaS3Dmd76J1ohtcmeg56Kmk1jxFoqvLx6nuWZbpsXBrckmeQBLhQBUsLVP2wDXFPLho+xdCbVk69Z3rZ2gh9EVc1x+J9QoearMmbK8VDv2Y1O8zqebk0Lc815cZgoPhWYKuHWdjmx0kuVZLROT5AtRLMkK0LgscbPsloKVEpRADtEWwZvr6mGBCOXZoaTAgUIxuNPg44naEyW/DfYD+rblldqJ1x+1zodNQkI+3RE5tISwIUChrZ7gRDtZsSwGGYZBVSo/pdY5d4BJTbsQFGOe83NMHb/r7F6+iH+ucx0jTKAtv+M+DUw3FzOdNgnfqNqamNmrtYCHG0+BNAaQGiIe9r6GRqUJdL8bh9sBjX43IneGqCbSKOsB70E2C2s4GhhVWaUwfFI95sI0ZJzYR/IrINtxhWE2C8RXK5g7UQg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(396003)(366004)(136003)(346002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(2906002)(316002)(2616005)(83380400001)(26005)(6636002)(66556008)(66476007)(66946007)(110136005)(5660300002)(6486002)(41300700001)(6506007)(53546011)(6512007)(478600001)(8936002)(8676002)(36756003)(31696002)(38100700002)(82960400001)(86362001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WjlTOTFhVUw4eC9yRkkyTFY0V0NVTUVSbGRDL2ZEdmt6V2FNc3daUEJVelgy?=
 =?utf-8?B?WnpjRzBOSlkxVWdqbmRKbGMxQlNtVFNSMHRwMUpSdmU4dFREZU1acktLMHdu?=
 =?utf-8?B?RjFTVUg0cGREUzVqSUd4blVzd0VyZnY3Qmw1RVpTcXJCaDJ5cERnL0lUT2hk?=
 =?utf-8?B?UlI0UlpNeEJaVEw5TDZmYjhiMDlMZms0V1A3M1RwV3RuR1RKSFhOQmF1VVlJ?=
 =?utf-8?B?UlFabVAyN0dMQlhwSjdNM0RPWHlIalBLYlRnZXdUd3Z4dDhOdXFva1ptaFJT?=
 =?utf-8?B?WE4zbnRoTTl1T1MzWncvTFNPbUUwNEJJZG95c2V5dXdieFBwVmF3NTdEZTY5?=
 =?utf-8?B?bm9ib01iTG14TDROOWNKM2VBcmxVMnJJVkM1Vy93YWpQNVBCN1ZqQ2VnUEE1?=
 =?utf-8?B?UXJjdzRNL2JWQ1lKRUlvUmRtazBoalZ5M2VoZmliaVg2UUhuaTFRd3RJTUVw?=
 =?utf-8?B?WVVWVjg3d1hjSWdOWnFyMXlWcWVLcFpRTERUWTMxeHFuY3ROV2xodTVrU0JV?=
 =?utf-8?B?K04xWlRGbWNHbmp4ampRWEMyd21uWktxZ0J3c2pNLzMxZ3FVdjRYL0JWKzd3?=
 =?utf-8?B?cE9INHhjSW5ub0F2QkZoYVFLYzNrdmZYc0hZUTlCMEtqSEorbTc2Wmt2c3ly?=
 =?utf-8?B?cEFwOW1UTGUzRytkdXZUS1cwVFc4SjI2QU5RQ0QzNlZJS1gySEMzTytwM3Za?=
 =?utf-8?B?MUVZZ3lad09uZmpVc0d2VWZJd2RYa2I1Yk1MeWUzSjNVb29sT2tBdWdXTWU2?=
 =?utf-8?B?QjB6WDVYQUVBeWpwaUY2ZFJpeElldE9XQks1MGxubUcxK0FMWExLbmV4V3N2?=
 =?utf-8?B?RG1pd2dQYzNIWk9WaUpLSVFScDFYM2pVVWV4dmhOdW14czVlbFBYZStNYit5?=
 =?utf-8?B?TWl1MGNVNDJsTjVDcndHSmNLUmRsb0ZzWEQ1SnkzeVNaK2p5UjUyZFdMTmV3?=
 =?utf-8?B?dlVsaGtYb1hjN0hyZ09kMVVRUUdoUEtRcG4yaGZwbFVQbkhDcWZpL21ZUC9r?=
 =?utf-8?B?OTd0RmJoNVJuTFlvMWpia3Z2RlVUZ0d5dktnWlNMVVRwYmlIRDk5VkNnTlht?=
 =?utf-8?B?cUFjZ0QxVG9jMVpmNWF5cjF1M2Y1MEhwVnUrVmN5ampPay9Uc09YTVVXenBv?=
 =?utf-8?B?YS9aVTBwd1JyYWlTOVZSUldEeGt1NGc5ZXdOQnRsdDYzbS9nTDBLQ3YwQ3Ix?=
 =?utf-8?B?MzRwazYwbkVUY0NKTDBmWnNVajg1dUhMcFJsUHg1Ykh4UHFSemR0RGkrc3Y4?=
 =?utf-8?B?QXYwMmtjZnZjZ1ZCSVEvcmhQdEFpMlFvMGkxdXBGbkt1SVZ4c1YxNnp6bDNj?=
 =?utf-8?B?R1ZjZjZWeHE4ME40b2FacWJUekllRTRDcGpsaUVXNnFWMytjK3ZWYkJPQXNF?=
 =?utf-8?B?Y2JNeXIweDhUZ3dFUi9yQkRNenhEM2xEMjk0WGdMVG9GdTdSUmRkNGdZZExI?=
 =?utf-8?B?SXRpUEo4K3NFYkFSOGdBUEx4NTBzUWZVUXlIU1Z5T3krc082UFd6dUtzeldk?=
 =?utf-8?B?MkppbllRK3ltdUxnM0ZmeStWWEdWKzRaWGQvcGt3U3hrSUpScVZBMVpndGYv?=
 =?utf-8?B?K2EyQ0JGWWZyZkF1dlBMY3hFb0hsTi95RkZnQjV1MnVBVkptN0tqZHlrVFAr?=
 =?utf-8?B?NHZaK1lCY3BvQnJXVjh0aHFhVnJxTHdVejdvS3BONkNlUHpXNTZwRXdLMkkw?=
 =?utf-8?B?ejBpWWZJM2tLR2JPZkl3YlRZOFc5bGJjbks2QjBjb0VLYnFyUnBUSGhJd0pE?=
 =?utf-8?B?NDRZZEE1dmU5QnYvRmE4bVl4WEE5bStXNW1BemJOaUEwMnFDcVlkbDNHeFBZ?=
 =?utf-8?B?WEFsR1JPckloU2hhMEoxUmhmZ2RpdFR1TitQdXhHQjIrbUd5YXhTdGNhSVdK?=
 =?utf-8?B?bnpLWGpoSHBDK0ROT2FZOHRkRDRGb1R5S0plNlFDa1R4Tkp5aklZY090b1c0?=
 =?utf-8?B?dFMyQjRCZTRMQmZHdHA0U3lDRm8wRTF4WGdYK2tPdm5ibWRtTmhaaFVXdUM1?=
 =?utf-8?B?MGNjeXZ2M3dYckpMRS9NRFR6cFc1eXpGYjI3U1daUjcySnlncUg2ZlY3MW1P?=
 =?utf-8?B?SDIxT3h2bUZaT0FVU2FUdHhLbU9keXdaOG9KZkxIMUFRQ2FERWdydEY3RXl4?=
 =?utf-8?B?dmpUZXQrU2RWNFlxR3hFZkJRaW1XUzJWMTNVY2V1SmJ1Nkdyc1lOWWdSWkxh?=
 =?utf-8?B?SEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9344bcee-922c-458e-02b5-08dbc9d2794e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 20:50:01.9666 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UgrPdtVjzjvCaNTGBWzC9GLYVtxkNtjz9ZgUH4vZ7jsDxxOInVz4recU6zaPy4sBDxmZv5FIJYGozYP1jBiRZ/mbVtDjkN20Rq5wbSUY+vE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8209
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696971007; x=1728507007;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WtrYnqThI+CSEDfnsMTYArtr7W2nAVr9YTgaIvNSPXk=;
 b=N+Kst9wPpzap6Kv14axFCqtH2XfXXM3DwZLGIlWOdJmVAFKtW98WBxMu
 8vZOvZBm3ufDukL7dyEadTp14VBVN3nhbvu7wE4aleSYEI/xTL8lsa7ca
 gmED763v5f+Pjxwzom9P95u1p1Q57FkHYNBA0/7DJ/tOveb6ZsrJDjnIe
 Ko5b6KCSxlh1DU7m+rX5W+ndwotxLmwAcoQwhDEoA33bDYDlAsT9hS7by
 DMm2zvoxjmGijWo5MfJcevIdipxodnxG89poQbqFsdFU17AJFzlWbZnQ7
 m3jzzjtPxwxMNXXPo+D4e/WPsc0vMpgLWJ+3yWxLrcUGq+4qldoshXCy/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N+Kst9wP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: Workaround for
 sporadic MDI error on Meteor Lake systems
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/4/2023 10:44 PM, Vitaly Lifshits wrote:
> On some Meteor Lake systems accessing the PHY via the MDIO interface may
> result in an MDI error. This issue happens sporadically and in most cases
> a second access to the PHY via the MDIO interface results in success.
> 
> As a workaround, introduce a retry counter which is set to 3 on Meteor
> Lake systems. The driver will only return an error if 3 consecutive PHY
> access attempts fail. The retry mechanism is disabled in specific flows,
> where MDI errors are expected.
> 
> Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
> Suggested-by: Nikolay Mushayev <nikolay.mushayev@intel.com>
> Co-developed-by: Nir Efrati <nir.efrati@intel.com>
> Signed-off-by: Nir Efrati <nir.efrati@intel.com>
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v2: fix checkpatch errors
> v1: initial version
> ---

This still produces a few long lines (netdev still prefers 80 columns vs
the 100 that is now the default for checkpatch.pl), and there are a few
places where you have multiple sequential blank lines:

WARNING: line length of 88 exceeds 80 columns
#241: FILE: drivers/net/ethernet/intel/e1000e/phy.c:166:
+                       e_dbg("MDI Read PHY Reg Address %d did not
complete\n", offset);

WARNING: line length of 87 exceeds 80 columns
#248: FILE: drivers/net/ethernet/intel/e1000e/phy.c:173:
+               if (((mdic & E1000_MDIC_REG_MASK) >>
E1000_MDIC_REG_SHIFT) != offset) {

WARNING: line length of 84 exceeds 80 columns
#251: FILE: drivers/net/ethernet/intel/e1000e/phy.c:176:
+                             (mdic & E1000_MDIC_REG_MASK) >>
E1000_MDIC_REG_SHIFT);

CHECK: Please don't use multiple blank lines
#273: FILE: drivers/net/ethernet/intel/e1000e/phy.c:197:
+
+

CHECK: Please don't use multiple blank lines
#334: FILE: drivers/net/ethernet/intel/e1000e/phy.c:234:

+

WARNING: line length of 89 exceeds 80 columns
#348: FILE: drivers/net/ethernet/intel/e1000e/phy.c:248:
+                       e_dbg("MDI Write PHY Reg Address %d did not
complete\n", offset);

WARNING: line length of 87 exceeds 80 columns
#355: FILE: drivers/net/ethernet/intel/e1000e/phy.c:255:
+               if (((mdic & E1000_MDIC_REG_MASK) >>
E1000_MDIC_REG_SHIFT) != offset) {

WARNING: line length of 84 exceeds 80 columns
#358: FILE: drivers/net/ethernet/intel/e1000e/phy.c:258:
+                             (mdic & E1000_MDIC_REG_MASK) >>
E1000_MDIC_REG_SHIFT);

total: 0 errors, 6 warnings, 2 checks, 343 lines checked

NOTE: For some of the reported defects, checkpatch may be able to
      mechanically convert to the typical style using --fix or
--fix-inplace.

Commit 5aa593aaf659 ("e1000e: Workaround for sporadic MDI error on
Meteor Lake systems") has style problems, please review.

NOTE: If any of the errors are false positives, please report
      them to the maintainer, see CHECKPATCH in MAINTAINERS.

(you can check this with ./scripts/checkpatch.pl --strict
--max-line-length=80)

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
