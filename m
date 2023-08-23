Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8F37861D8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 22:58:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B81C814B1;
	Wed, 23 Aug 2023 20:58:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B81C814B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692824281;
	bh=nConhx5Hp40jwNG3z7JoRgmmJf/2XzN95VqexQcunYE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bEHaEc5HbjK4Iip4bWpsvmMcDJ5Wi5WSVgqZZOsbtXa3KV7pqsqW0tw4AqeN1JO2F
	 +d/UnZRAQ5EEx9RrQTf9AOARGwey22W+NlmjvP+gT2PtnkovgvuS/DucbKPr5Z0/Hq
	 wSMIDmE9/GK/IwND/jAhT8bobGG0+EtHJsjH4WL1BDODrged9KcQLdDOlnNMYFPaOT
	 zeUD4glFKBYrGy2mCfFNsjNFcQuXaRQjqheVMaKxWtO7qNoYNjsKGPyWDXRjx2dTvo
	 i0jqiMNoYBjXGSeXWX3yThQIKMGY5509Q6El7fAIOUspOjmIjOx9gOzoSoO2Rt7Dk5
	 2FSs/kvKUOulQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cWTlRsmX6E1D; Wed, 23 Aug 2023 20:58:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88322813D9;
	Wed, 23 Aug 2023 20:57:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88322813D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 06B561BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 20:57:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0CEA813D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 20:57:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0CEA813D9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZEfHszbRJ__C for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 20:57:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5EA95813D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 20:57:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EA95813D8
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="354599547"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="354599547"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 13:57:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880530467"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 23 Aug 2023 13:57:34 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 13:57:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 13:57:29 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 13:57:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YoZa/mo8mciTv/jGn0nWaGC09iKmjbPydzUl0wsYkMkL69i5wDipkA2MDUT6j3QGsZAHXVtcQyhqA3dzZDe405ktTFVDk5vH7DnKiMvJKxYHYIyAUG60yapT1EQzEVhYZ/xC4UQF3M+pgX/+v2waHkooh2iX9rC/mSSO/99pCb/Cm23ZY4GnJPBG32c93HW8DPoqQcm6MyctdAUNopAYf6jRCTHOu56beipDIwppnGj6yUE/iehAn9s41XyqUHqBXpjBrAHnr421RxkH1XrvSfDGfybZMS5/OHen4EHEQQXeP4TbjI5o0RXxT4IyVxSkGNJUoapGW3NykdRsDUFqeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f7vc4KALZ43W8B1f4oUAslyHBLPaot4GaJVgy+VDZ6w=;
 b=Gx8wNwquC+OyYwTHNLLqHlOU+yVUjx1gNOZCV4sr5FzY4llaaDeOqDy8LP1iCYkknSX3epdSxcc7DXEFUD6En1c2a9giRCgSVWd3CC83NW01/MKZIi/Za78Iw+YU2trlbXp/PKIzkieHk5Cwx1wpfVXQDP4VR/oW/6rJbnZhaqx4eWOJVVTTzt7ltN/DocIQkpRzh7/8y6Y8T0vus4a0s2z3gbK5f5PNASz+O40vh7PZ+AvkqkT/hy1wf9KqwyoMzOTOS40XGt1wDjgrpNQs4kGQug4NzsmW5bA3CFgR+ronq31E+tmkcwfup1qJazeNiTRd6XTli4VQAxLt0Dfygg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA0PR11MB4654.namprd11.prod.outlook.com (2603:10b6:806:98::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Wed, 23 Aug
 2023 20:57:24 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b%6]) with mapi id 15.20.6699.022; Wed, 23 Aug 2023
 20:57:23 +0000
Message-ID: <83458ed1-ad92-1799-2a9f-e008a6daf3b1@intel.com>
Date: Wed, 23 Aug 2023 13:57:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230822124044.301654-1-karol.kolacinski@intel.com>
 <20230822124044.301654-5-karol.kolacinski@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230822124044.301654-5-karol.kolacinski@intel.com>
X-ClientProxiedBy: MW4PR03CA0016.namprd03.prod.outlook.com
 (2603:10b6:303:8f::21) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA0PR11MB4654:EE_
X-MS-Office365-Filtering-Correlation-Id: fd412da7-53f2-4d86-ecfb-08dba41b8cdd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gjv9uyMC1/5rDWGbUwkYkYLXrn6xs6ipI09rUgphkA77Dknm/vC7fpsF5LfOhEkqKwrnJc4LLedLo3JfHCxeCnwpNgSHPetjSbPRLECQyckPCB8IsJo84d+Vj93UlumU8Py7rxtdMwNfOJhWv7LH/x+9EbPQiPmKydsnjhYZ30b5gbPbbrj/zNSTtZXjCCv0RE750vxkD3eiJ46m16n+cDH21irOS3LZbVSw3jQLI5v3FaeJfjDsyuI7rXv5nnQhMF9oGrZWCI4D4894pYFh9Fd4mtozVOlta1QCpQGi+LnxYsfO1Fj70AxKA7N0Lc5EcqaIZPUF94F+9KR0Fm3xxGtcGJvghbXRSOVf7Aef2i3HeqfFao/xu/TqhANsCVT8XjbE82eGhtxa/gDz+kOBGrZjEVJ48yOa4QmiSjW7WVsko/9GXjzSLFnOo/wrBvvsJns5fOnH7XaLPvU9e/KZJf5K5ohdxgkthisRlr1NsOU/Yf+jHkn9uXVpy5jJ/MasQLTerzbmYZLapg2dmh/sxzKpVYXPXFJe4VLQVkUlzO6f6bgePVrhcUnFvumTRk3ZXPP+1qMrULtecJTExOv3kQVv7jD9B6XdW/9P8RCz0xIKger0L6hHwH8sqf3lOjeDYxzErA+LrF9zitP2FmOhLg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(346002)(136003)(396003)(376002)(451199024)(1800799009)(186009)(2906002)(83380400001)(6506007)(53546011)(6486002)(38100700002)(5660300002)(26005)(31686004)(86362001)(31696002)(8676002)(2616005)(107886003)(4326008)(8936002)(6512007)(316002)(66556008)(66476007)(82960400001)(66946007)(478600001)(41300700001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NkJRS0dBRjlDdHBBQS9VRGVmMEIxMURUTzUydElURXNnSmZJVGJjelBjWlA1?=
 =?utf-8?B?RUJVYlcvZzhOSldUWHMrenNUMHAyeG1YREdnU1NRTElZMk9kcWplY3lReklu?=
 =?utf-8?B?L2xINFlGUUF5NU95ZGdFMVIyTkRuMmpMZ2JDalpQWkFKV0lwNWN0VUQ2RFlR?=
 =?utf-8?B?NnBkcjRhSVR5K1FwM2lIT1ZVNlhxbXVjaE1HQm9tcUZBZmY1ZWF5UzdYSnNr?=
 =?utf-8?B?QUpCMGdBN0NTRUl0N2sySEEyRCsrc0ErNG82NXpwUmExUFF1d09RK3kyZVBh?=
 =?utf-8?B?VkpKVFBtdEdzdWw4enUvRGdveXh5Qytxd2toU1Rva3JUYjBrdkxXc0dUWWtC?=
 =?utf-8?B?U2VQYWpBNFNzRjZCOXgxOStjclRmU3VJRFJ0WUdzTEhrVzhhTzgvd1FObzh1?=
 =?utf-8?B?ckkvVlhncEdyejVyeEg4UlZVRVB3WXJTTkYxQlgwTjlFaUQ1SXJsQ04yQlVF?=
 =?utf-8?B?NXl6NFhZb2lLMmJXUVVxaThnTU9hczY2NXNQT1dLM2ZHWktIdmsxcXVpQVRi?=
 =?utf-8?B?WERRemJYREhPUGJOVEZSMTlpVmhZRTFlNHZqN0laeXBlczRJcTFCN1NDVmRu?=
 =?utf-8?B?bDA5cm1ucFNLUnQ4KzRqVVR1Zno0ek80S1JSL2wzd3hSb21RMkxGbzZTM1N5?=
 =?utf-8?B?VXNlZEp2YXhrbk9EYWFObVRTdSs3M25JQUlMWWp2T0hYWEJHc2htYnNNNVFR?=
 =?utf-8?B?bTNnNW11akJYTWdWeEp4anNxWXhMcWNNN1VqaUVHWUd4U2kwbFgvbVlQdXRs?=
 =?utf-8?B?enhwNWY1N3FKRGNTdEx3MzFIYlRrZXY2b1R6T2wwTGpmV2xzKzV3eFJPdndU?=
 =?utf-8?B?ZkEyTzBNU0ZaN2lsL2hvNXAwNzNDK0pSL2w0V1dyMUExcldvRi9sUFFTMWR1?=
 =?utf-8?B?SjYzbTBlTncrbUMyY0ZWYnJZNHhHS0t3dzhMNXMrcDZINjkzbDVLMUdoWTB6?=
 =?utf-8?B?K2Y5Y25pVHRvK2ppVlFzZS9FQm9sV1Z6cndnSmtjS2ZPOFcwOTRJVy9ZdUdq?=
 =?utf-8?B?SjlWWWhrNkVTdEFDQ212QlQvQ2N0dHp5NkF4cVlFNWljcmtIV0FxMzVrdlZp?=
 =?utf-8?B?ZVQ2UWY2d3doVTRUdGh1Z1orM3J2NVB2dHZMNkxJSlJJd2J3Z0k3NW5aTzZs?=
 =?utf-8?B?UmRPdW9QTDlLWCtFcmpyako0S2t4MTljT0pjakhkay95YjNNMkpOUFc1eWVr?=
 =?utf-8?B?VDNZc0NKNDQzdGdENUhMcmg0MEpPSU1pZkpoOE53Qml3ZkdGd3Z2eTFyMURk?=
 =?utf-8?B?bkZGZmZUUUR2NCtCSmhCa2Zkczl6WWlvNDErek95M05QdnVtQ0ZOVlZLeUs0?=
 =?utf-8?B?OTdoTEZwcnNaR1hWUC93ZnZSUjJkbDg5aGUwV0FzTXdlaE14eStiTFBCQ0tK?=
 =?utf-8?B?bTlmUWUyeG9WdldMODE3dm5lenhUa1pxbGdrMHoyRjYyOFpQYmNvYm9GT1JB?=
 =?utf-8?B?cWpKL3J0THhUOEgyRXRmRTFNcGhtc3JJeW5xNDhRUU90RTdGZmpVOVRSWkhr?=
 =?utf-8?B?eWdjT1BxcHcxYnhwalBoSmhrNzZqMEdkUnlwRmFrUmc2VUtUM0FObitka1d5?=
 =?utf-8?B?bWNFQTd4akREK1V2Q0pZQVRKSWIrZ0NCaG1VSUppVGErWmphOWx4WHFqb3Zp?=
 =?utf-8?B?MHhHRi94Vk9OK0Q0RnhKNW4ranVsWWkzUHQxN2JYLzkyaldMQ1JhdXFpcHJT?=
 =?utf-8?B?THAvMmZZUlJ6ZzUzTyt3cXhhUWFXWmJxQkN6SVhqaVNmRm5KbjUreGFwNTEx?=
 =?utf-8?B?TDhEb0x2RFZkYS9sanVvVzlNaDFoSXk5MkZva0tCVldSK2NCVGxDRkFBVW1o?=
 =?utf-8?B?blVlWmkrdHFDYVFLNjJjTkZQVFVWS0xyRU5GN25QTThHMHhtN2d6ZTlMME05?=
 =?utf-8?B?Q3UyYnlhdXhNS21yZXNHekMvYVdERnRlZUxYN3lDdUlkeW1VUUU3Vk9aSkpi?=
 =?utf-8?B?YmlFRWZxeFNlOTV3dFFLS3VHb05hbFZBUlFPNG9ESWgxZTBTRUpReHVhckk3?=
 =?utf-8?B?c2ZGQmJEcG5saWlqSEt0bXdEcU1hM3d0bUpBclRicVpicHI0WDhZWlZUbHo1?=
 =?utf-8?B?ZEJRS2tvUWNJM2EwK2E1MHExTFBRS2lvbFZ2Yk4yZ0hDU25Wa2Q5NHBUL2pn?=
 =?utf-8?B?QU1NWUJvUUFNaStmREc0RWlzSWJtdnFLWmpmWmZ6L1oyS1UwMFNkaFBXUG9a?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fd412da7-53f2-4d86-ecfb-08dba41b8cdd
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 20:57:23.8934 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dHWYwR3jCipqTrEpd6jNpEV7UpkLo7Tii8SS3kQDT5mmcfbBNCp+BNP6pJ4ckb0jQAaLnuiJ/OrCj0StKHuh6U/jR/L9psnHcxaDZgx2AJI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4654
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692824272; x=1724360272;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6Su9Lvhzv2SfSjQ3JkDBCkUYow1lJbgar9tUSaCKRdA=;
 b=MSkePaKAWF2EBu9QgaXasXyXqelnds2asxr17IB4Vi0ui8ePJ9YmE7c7
 WM9gX7etjFMNO5/f+vbECoA01CXEwuPEV3qt3S6jofpJRwMluPe80M/w7
 5XLu+W4t76MWGbT+dppZDsrrG2FH2LbB7skWDt+h7vbbXz19jMSRLbfO/
 tIQ/7pxnYcGaCagJMBE8SkYQRmPLepKLu+MrH9VXADTD+R+piNa1oLsrN
 2DSB+rYC7g1xtD+mw7P/WZ9KMqokGidcSHNAamyb3+lehOxxe4e+tlsQU
 yTc7aMcxsycOF9in/bTV/1+/H7ptoTtsrFllCvOQMlMaTPOMjwWj2E8XV
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MSkePaKA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next 4/9] ice: rename PTP
 functions and fields
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/22/2023 5:40 AM, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The tx->verify_cached flag is used to inform the Tx timestamp tracking
> code whether it needs to verify the cached Tx timestamp value against
> a previous captured value. This is necessary on E810 hardware which does
> not have a Tx timestamp ready bitmap.
> 
> In addition, we currently rely on the fact that the
> ice_get_phy_tx_tstamp_ready() function returns all 1s for E810 hardware.
> Instead of introducing a brand new flag, rename and verify_cached to
> has_ready_bitmap, inverting the relevant checks.
> 
> The ice_ptp_tx_cfg_intr() function sends a control queue message to
> configure the PHY timestamp interrupt block. This is a very similar name
> to a function which is used to configure the MAC Other Interrupt Cause
> Enable register.
> 
> Rename this function to ice_ptp_cfg_phy_interrupt in order to make it
> more obvious to the reader what action it performs, and distinguish it
> from other similarly named functions.
> 
> The ice_ptp_configure_tx_tstamp function writes to PFINT_OICR_ENA to
> configure it with the PFINT_OICR_TX_TSYN_M bit. The name of this
> function is confusing because there are multiple other functions with
> almost identical names.
> 
> Rename it to ice_ptp_cfg_tx_interrupt in order to make it more obvious
> to the reader what action it performs.
>  

Oh. Technically this commit does describe all the changes it makes.. but
I think it would be better to separate these for review.

They were separate originally I think...

Thanks,
Jake

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 41 +++++++++++++-----------
>  drivers/net/ethernet/intel/ice/ice_ptp.h |  6 +++-
>  2 files changed, 27 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index bd94b42e19dd..393156b9b426 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -281,11 +281,11 @@ static const char *ice_ptp_state_str(enum ice_ptp_state state)
>  }
>  
>  /**
> - * ice_ptp_configure_tx_tstamp - Enable or disable Tx timestamp interrupt
> - * @pf: The PF pointer to search in
> + * ice_ptp_cfg_tx_interrupt - Configure Tx timestamp interrupt for the device
> + * @pf: Board private structure
>   * @on: bool value for whether timestamp interrupt is enabled or disabled
>   */
> -static void ice_ptp_configure_tx_tstamp(struct ice_pf *pf, bool on)
> +static void ice_ptp_cfg_tx_interrupt(struct ice_pf *pf, bool on)
>  {
>  	u32 val;
>  
> @@ -320,7 +320,7 @@ static void ice_set_tx_tstamp(struct ice_pf *pf, bool on)
>  	}
>  
>  	if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_SELF)
> -		ice_ptp_configure_tx_tstamp(pf, on);
> +		ice_ptp_cfg_tx_interrupt(pf, on);
>  
>  	pf->ptp.tstamp_config.tx_type = on ? HWTSTAMP_TX_ON : HWTSTAMP_TX_OFF;
>  }
> @@ -591,9 +591,11 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
>  	hw = &pf->hw;
>  
>  	/* Read the Tx ready status first */
> -	err = ice_get_phy_tx_tstamp_ready(hw, tx->block, &tstamp_ready);
> -	if (err)
> -		return;
> +	if (tx->has_ready_bitmap) {
> +		err = ice_get_phy_tx_tstamp_ready(hw, tx->block, &tstamp_ready);
> +		if (err)
> +			return;
> +	}
>  
>  	/* Drop packets if the link went down */
>  	link_up = ptp_port->link_up;
> @@ -621,7 +623,8 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
>  		 * If we do not, the hardware logic for generating a new
>  		 * interrupt can get stuck on some devices.
>  		 */
> -		if (!(tstamp_ready & BIT_ULL(phy_idx))) {
> +		if (tx->has_ready_bitmap &&
> +		    !(tstamp_ready & BIT_ULL(phy_idx))) {
>  			if (drop_ts)
>  				goto skip_ts_read;
>  
> @@ -641,7 +644,7 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
>  		 * from the last cached timestamp. If it is not, skip this for
>  		 * now assuming it hasn't yet been captured by hardware.
>  		 */
> -		if (!drop_ts && tx->verify_cached &&
> +		if (!drop_ts && !tx->has_ready_bitmap &&
>  		    raw_tstamp == tx->tstamps[idx].cached_tstamp)
>  			continue;
>  
> @@ -651,7 +654,7 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
>  
>  skip_ts_read:
>  		spin_lock(&tx->lock);
> -		if (tx->verify_cached && raw_tstamp)
> +		if (!tx->has_ready_bitmap && raw_tstamp)
>  			tx->tstamps[idx].cached_tstamp = raw_tstamp;
>  		clear_bit(idx, tx->in_use);
>  		skb = tx->tstamps[idx].skb;
> @@ -895,7 +898,7 @@ ice_ptp_init_tx_e822(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
>  	tx->block = port / ICE_PORTS_PER_QUAD;
>  	tx->offset = (port % ICE_PORTS_PER_QUAD) * INDEX_PER_PORT_E822;
>  	tx->len = INDEX_PER_PORT_E822;
> -	tx->verify_cached = 0;
> +	tx->has_ready_bitmap = 1;
>  
>  	return ice_ptp_alloc_tx_tracker(tx);
>  }
> @@ -918,7 +921,7 @@ ice_ptp_init_tx_e810(struct ice_pf *pf, struct ice_ptp_tx *tx)
>  	 * verify new timestamps against cached copy of the last read
>  	 * timestamp.
>  	 */
> -	tx->verify_cached = 1;
> +	tx->has_ready_bitmap = 0;
>  
>  	return ice_ptp_alloc_tx_tracker(tx);
>  }
> @@ -1338,14 +1341,14 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
>  }
>  
>  /**
> - * ice_ptp_tx_ena_intr - Enable or disable the Tx timestamp interrupt
> + * ice_ptp_cfg_phy_interrupt - Configure PHY interrupt settings
>   * @pf: PF private structure
>   * @ena: bool value to enable or disable interrupt
>   * @threshold: Minimum number of packets at which intr is triggered
>   *
>   * Utility function to enable or disable Tx timestamp interrupt and threshold
>   */
> -static int ice_ptp_tx_ena_intr(struct ice_pf *pf, bool ena, u32 threshold)
> +static int ice_ptp_cfg_phy_interrupt(struct ice_pf *pf, bool ena, u32 threshold)
>  {
>  	struct ice_hw *hw = &pf->hw;
>  	int err = 0;
> @@ -2507,8 +2510,8 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>  	struct ice_ptp *ptp = &pf->ptp;
>  	struct ice_hw *hw = &pf->hw;
>  	struct timespec64 ts;
> -	int err, itr = 1;
>  	u64 time_diff;
> +	int err;
>  
>  	if (ptp->state != ICE_PTP_RESETTING) {
>  		if (ptp->state == ICE_PTP_READY) {
> @@ -2561,7 +2564,7 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>  
>  	if (!ice_is_e810(hw)) {
>  		/* Enable quad interrupts */
> -		err = ice_ptp_tx_ena_intr(pf, true, itr);
> +		err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
>  		if (err)
>  			goto err;
>  	}
> @@ -2847,13 +2850,13 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
>  		/* The clock owner for this device type handles the timestamp
>  		 * interrupt for all ports.
>  		 */
> -		ice_ptp_configure_tx_tstamp(pf, true);
> +		ice_ptp_cfg_tx_interrupt(pf, true);
>  
>  		/* React on all quads interrupts for E82x */
>  		wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x1f);
>  
>  		/* Enable quad interrupts */
> -		err = ice_ptp_tx_ena_intr(pf, true, itr);
> +		err = ice_ptp_cfg_phy_interrupt(pf, true, itr);
>  		if (err)
>  			goto err_exit;
>  	}
> @@ -2925,7 +2928,7 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
>  		 * neither on own quad nor on others
>  		 */
>  		if (!ice_ptp_pf_handles_tx_interrupt(pf)) {
> -			ice_ptp_configure_tx_tstamp(pf, false);
> +			ice_ptp_cfg_tx_interrupt(pf, false);
>  			wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x0);
>  		}
>  		kthread_init_delayed_work(&ptp_port->ov_work,
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
> index 48c0d56c0568..30ad714a2a21 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
> @@ -100,7 +100,7 @@ struct ice_perout_channel {
>   * the last timestamp we read for a given index. If the current timestamp
>   * value is the same as the cached value, we assume a new timestamp hasn't
>   * been captured. This avoids reporting stale timestamps to the stack. This is
> - * only done if the verify_cached flag is set in ice_ptp_tx structure.
> + * only done if the has_ready_bitmap flag is not set in ice_ptp_tx structure.
>   */
>  struct ice_tx_tstamp {
>  	struct sk_buff *skb;
> @@ -131,6 +131,9 @@ enum ice_tx_tstamp_work {
>   * @calibrating: if true, the PHY is calibrating the Tx offset. During this
>   *               window, timestamps are temporarily disabled.
>   * @verify_cached: if true, verify new timestamp differs from last read value
> + * @has_ready_bitmap: if true, the hardware has a valid Tx timestamp ready
> + *                    bitmap register. If false, fall back to verifying new
> + *                    timestamp values against previously cached copy.
>   */
>  struct ice_ptp_tx {
>  	spinlock_t lock; /* lock protecting in_use bitmap */
> @@ -143,6 +146,7 @@ struct ice_ptp_tx {
>  	u8 init : 1;
>  	u8 calibrating : 1;
>  	u8 verify_cached : 1;
> +	u8 has_ready_bitmap : 1;
>  };
>  
>  /* Quad and port information for initializing timestamp blocks */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
