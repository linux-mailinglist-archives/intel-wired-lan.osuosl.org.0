Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E44D889218D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 17:23:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F282409B3;
	Fri, 29 Mar 2024 16:23:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z4Z_fFErUMkQ; Fri, 29 Mar 2024 16:23:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B704409C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711729415;
	bh=h4R8GBWA63WH4EVoWhl5GdYg1A17UX0s4vly2LFsOZ0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4DC1+V3VrSEhV7o5PJLqmHrIf4v22SCWAcKiiIgfJj3/ZA4vd17BGSHEXR1OHqY3l
	 bW+/hDHRatkrPYN/fHaW0PhXA6YBB6tANo1E6t3yv4P/hULCSaXgxb24eSEXANk/vz
	 iK+3EDsWf5ytX3eUknOwSwlAg/J6+cgL695aJqsTbIcDLPCj2hIjjqmugoghC3vIJ8
	 dMEB4myN7jNDbIRfDk/+TpogQ4kOrWRuv/RTpgmk5cwORTnM7c/OnXuB3clTTmZXPs
	 Z/Me3srUwGTLUOd/bh++dKJBUXnvUtu78oNzLIgeRra8HhqVC6blNQupGfVj8Q7RTo
	 k3NJ2zHW8pJ/Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B704409C2;
	Fri, 29 Mar 2024 16:23:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E5FE1BF41B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 16:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 47EE582D0C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 16:23:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eHc--L9T4xQA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 16:23:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 59E3482CC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59E3482CC7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 59E3482CC7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 16:23:32 +0000 (UTC)
X-CSE-ConnectionGUID: XImP9O99QhumWLP9c3gElA==
X-CSE-MsgGUID: lqhDNRmvTceFjL3udrxN7g==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="7112532"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; 
   d="scan'208";a="7112532"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 09:23:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="40164945"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Mar 2024 09:23:31 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 09:23:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 29 Mar 2024 09:23:31 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 29 Mar 2024 09:23:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SAgbSOdLw+go/QtPoebRI1QR4UQt3VYj2KJ7JrBt8vSwUnVVbUBQbLFaqG/jzdFDUQMGBwF70yES2TPYRMrZ/k+iKLyKIhuNTRVJOldhscRPbFtHR4bAkasfX3JbO2ExEDLzBWhMVOF/BPanGdDvnKeD36MVfW2ATaQrMWOHviUpprp/GxHmxBQvs0a+Dzys5w1uNBV12DyEEJ12+Vh5xlIvErh1al5/aFk03LCv4eTUKcXJx/mcPUOeL/XNZ9LdRDoBFQUa+PGMGdyl+Rkl5Efuxm2fYr4OBCh0LWMsx9lcoGyehgHcsBC+EeyaJ+pu09G9EBRjBkZTpb8Hk8yLSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h4R8GBWA63WH4EVoWhl5GdYg1A17UX0s4vly2LFsOZ0=;
 b=ZV5ffSSvpb2KvSl2jcIUmeghJzp97t9VNKfeG+fFV6bCr9IQPxtV7yB2Q6Cc90MBYZUfE+0bMEtA4nmq/L10dJjgzebe86HK1skhZCo1qerGh2hgJHBuz7Hbg3P5ES1n6Hi8vMfs0lnvMmdq1S4zbYKpCCoTQVyx6TxDQvsqCytlrfE9HM7rjxpw4iuS5PKpeR3IqrCpiRAOFrZkqRKmi3snVlA3SbwWwwL19TAEyLJQCZlTLTpGVWgztyWWWraEf355jG4QUyq5FTkqhQzWhbOO++6UMfzoCCAqU8bbQm0nU+vm6UbyE1JsP4yZGfyul4ZQssGcaSqW8bLiHJo86w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA0PR11MB7837.namprd11.prod.outlook.com (2603:10b6:208:406::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Fri, 29 Mar
 2024 16:23:28 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7409.031; Fri, 29 Mar 2024
 16:23:28 +0000
Message-ID: <ec2aa7da-a3dc-36f2-39bc-052e9ba97de0@intel.com>
Date: Fri, 29 Mar 2024 09:23:25 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240329161730.47777-14-karol.kolacinski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240329161730.47777-14-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0071.namprd04.prod.outlook.com
 (2603:10b6:303:6b::16) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA0PR11MB7837:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Rk7/4h9/hnY5/5IRZENyoKIYnCmMxFTFFjyeToTS6PgEExKVy2yQdevKoNQdPr0HPwQPdS6Ua0LUwUE2Q749CNLsmopt7Pu27SfYBGUGvUmlS95WRIN4t2NJkA9udIz5SO7XW489m4Vg7d9QNdYi49KxvPoZ+nY0bQIPDJyTM7GFF5DjyQrr2XkXazJYsZl7Hp4BNnl2SMH+lMDC/ZAvqljg2K5N4SqBGlXIx9gq+N9wZ4RFe43RA0IvH9Jm9zQ0HuyQ3eCqDuJnCZkJS4KIEZJi7xG0pKVCEykZb+7NWi8j4KpHpiSxeZ1k/Q+g3atZHyXU3JhIijjnQS0xjwECmNUPP1JQ46A7DHc6PDQjgHn3/7jhD9LxKzZGgADyUmaGdJTmDraz27RpKoN6sw7NqiaKoyRt67UCRkHxDZbBpF6qpxlGnlbqJRikHjO3gQemvUyiTBW53eZ22Hm57CxBagdacUpHIeThnDL852Nu+pvWbbLP12z0esRkPly/Krhbb6GzX8+dK3tvRVq3UzoU5J+hfIX9Ud9fvCYpaMTo70nJh4YaPa3gvNMqJbQuVf6/h9gV6NC67wkhc4FcSlVomUU1GkZbHjag9kU3qRJSF8gtVBSWCzLbbg2Sg9TW8o+X
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MjhPclRyTWVkcWRUb0RtcVAwMHlEZDFxb09jS1FidWExeWdMcmRxdHNVdVZo?=
 =?utf-8?B?eVU3anNZWmw2TE9XSCt0Y2lnd3RZR0tTZk5zUnB6OW42dXNPWVB4bVdkSHhR?=
 =?utf-8?B?U2l2cTQ4cGhXVWpxRU4vSyt3OCs3dFprWnZpQXI2L3pyT3hYNFQyd29kaTJk?=
 =?utf-8?B?MXJBN2k5T2xreVdIbWpqbGlMcGd2VitKL3pFM2VDQjdBYWJFQ0orQmZ1andt?=
 =?utf-8?B?Vm5YdlE2OTA1MngxRngvMmhpQzhXem8vRDBqRXcxUnJDcUlMOVVNREF1VmtT?=
 =?utf-8?B?MnEySFcvOGo0Q3JCVEFHbTByQm4xQzhEZktib2JqMGNvb3hRbVlEMGd0RFNa?=
 =?utf-8?B?U1Fqb0NROG9kR0tIMWVMMUtFcDBqamM0OEFDVlhIUGcxV3I1NWNweWRkQWJF?=
 =?utf-8?B?elFXanVTLzd3S2FjQUlDMExYUUkyRHNHVGQ1UFZ3VzE4aUdqOS90U2NnNnJ1?=
 =?utf-8?B?NEhuVUp5U0tMSnJBV3B6T1dkM1U0a1pPYVp2NVFhNUpuVFNUKytNTjZ0NCtK?=
 =?utf-8?B?TEVwNm1qL2lRcEN0bzc5Vlh1U0RRVE1wUGNPZU0rb0l5d0gyZ21TS2tCeWxP?=
 =?utf-8?B?UExTRXJhZlRKRTFzSXllR0p1alpUSE1FWmh2WnlBR01WV1VTbWlLbWRuSVpm?=
 =?utf-8?B?NjI3YnFpUmxacmxGYWVkRExHSTRGNjc1bFBtVkk2SmhDUWMrZWNsWTlxdzlP?=
 =?utf-8?B?S0ZmNm1udjNWSEhPZ2Y3WEZ6NGxobUJuYUE2WHN5K1VyL2VoS1hYK0xVOTJ4?=
 =?utf-8?B?MklkazRuaTJCUGxpSVpEMWs4T1BMVTBDUlh0Wk5vN21rSnQwNnZpa0t6S2RH?=
 =?utf-8?B?Sjc2R0tWZldzaFdBWk05NHBGYUkzMHJYYldlOHE2bUdkSHNlSlBKTkI4T3E1?=
 =?utf-8?B?VXYyOXRGM21GYlhiQ282Mi9IY1dPcVBqbGlDNUdnb2JQbFl3NmdvYkZwempu?=
 =?utf-8?B?N28zYlBWaXM3NTZkYWpnSnpwYkVaRFFpQ3RqOEJWZXMrNVBzVE43UDY4NmdM?=
 =?utf-8?B?RklPSmwxbUtzaEJWN2NyeFlKVnIvL0pXNWZWeVJIL3Z4dlJvYVpOcUxVV2V0?=
 =?utf-8?B?bGxLeGIxSnJxclIvWkRyQVpLK3ZQc2VsTGE1MVMrWFVYaDVPajdEdWhQUzcx?=
 =?utf-8?B?RVhlUEVpV3AxSklVZXMwMEh0bWx5NXF5K0xHcGhSS2M5S2h4V0thQ01rVGs1?=
 =?utf-8?B?eG9mTzJqVzRXekxBdTNialprbnMzNjhoODNPYnNkRldmdFB2dEMwVjBvd1ZL?=
 =?utf-8?B?STlXT2RGc2crbDZpQVVwZjQ2VXFaMlZOM09vaERnNXRyVUw1b0NJMVpUMjg1?=
 =?utf-8?B?Y3VwL01IdmM4SHJ4cUZLVmU4Tko0Uk9aOEtCSW1RNVAxUCt2OXNXTnN1d2Iv?=
 =?utf-8?B?ckVwVnNHZjVPL0JudlRzc040eDk4aXovcGFDTHhjUXd2MFN5RkxhaWduSGNG?=
 =?utf-8?B?WmJsVUQxOXBJMFI2QWJHN0JMVFhCN3RyZnpqeHhaVkwyVEJCbHlGbUplcU1t?=
 =?utf-8?B?ZGpLM0o3WTV2VDZDb2hHRjJqUTlCNWVkOEtWNG5xalJ0QjFiVERkUzRnZzF1?=
 =?utf-8?B?VUU1SklvVjVxdENZaVIxa3JxZ252bk9xT2x3TEdEV1N6eStRYUo5WUtyMWFR?=
 =?utf-8?B?bkk1dWZ2T3lvQTJsb05jeGkxamNJN1lDRmNHNVJlNEtqWExDcCttZU1mOEhr?=
 =?utf-8?B?TjhCODlLT1RxUFBZTkVoZWtFNFMyd1M1OFNZUDVIZ2ZTQ2RkUTRCU2s5SFVH?=
 =?utf-8?B?cWcvcFBRMXNKV1RkQUF0S2NjZWZiL004d2ZTbm1rb2MzWjB1dWE1UUw1Q3lh?=
 =?utf-8?B?VEJJcGVRVkdGUjBGREo3dXUwWnA0YTFpY0lqRE1lbUZzTG83YUVyY2NXdXVz?=
 =?utf-8?B?bWI3eFAydUl3RFBnTll5VGdybHRuejNMNUpJZjhpelZ4enlWbEl0bnBQV2Iy?=
 =?utf-8?B?OGVlUnZ0TmV3V25PZFBwTEw0Y2JEMUpTd3JKZXNJc1Y2czlQb1U2R2FYUy9K?=
 =?utf-8?B?TEh6cWZNZkNnMWwxNmZ4T21hQTRvZER4NDdRVFNMWkxmZUVYVlViN0RFeDRN?=
 =?utf-8?B?ZmNGd0NlVnZMTnRWc0xrRmkvOEFRK3k4V3pFZkhWWmZHMU5TY1g3M3Q5dzRL?=
 =?utf-8?B?d0dGMmh1SER1N09LNURxOWxlbTlNRzVQc0JtdXNPcVl0VVB2UjVRVE16WjVp?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c947d6ca-affd-4f7b-cbcf-08dc500c913f
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 16:23:28.8584 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CN5ctgVwV0I0LXElDn8NIgjnAFG9rs6CD/8Igbt3wAYubGpeKaOt9IvN8+RgRYkN1OGTvGM4BBEFn64ljwP9GqX+Vc3xb4EbLy+YPP072sE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7837
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711729412; x=1743265412;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s/Dg1JtGsQZuQYHVL7BTxMF3FD/xcmxyOdbTYS14pe4=;
 b=jfxNd2Iz0CYzt0EmIw4favFbVM6z9ORz7d0oliuww/RJAcg3FZQUHOIa
 PYYIK2biaROgfvX3u39gTPd9BcLEkPwQmPfrS+i0T00YfL4qmMzh4hriZ
 tevV7lI9C0QsFQrk1fT2G9WIgDRK/E+V37dBuf2iWMX6k4Si1wvGKtxEL
 V0z9qZXLqcCXDyUvEXOlzybaWcGbLOrBLYmS9j+afk0ABK8fKKbQPrgEH
 II6bcIZe7EMzQTiHqjguSR5due2yP5K/kuBilASTPllnmdd6zwVCpKUfz
 p6pJ8Cic8I3K4XaK5dPI28/4mhKleiEVF4Qm3oJyaKScHYifso484R9BX
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jfxNd2Iz
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 00/12] Introduce ETH56G
 PHY model for E825C products
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
Cc: netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/29/2024 9:09 AM, Karol Kolacinski wrote:
> E825C products have a different PHY model than E822, E823 and E810 products.
> This PHY is ETH56G and its support is necessary to have functional PTP stack
> for E825C products.

It hasn't been 24 hours since the v3 [1]; for larger changes, you should 
wait longer than that [2].

Also, where's the changelog?

Thanks,
Tony

[1] 
https://docs.kernel.org/process/maintainer-netdev.html#resending-after-review

[2] 
https://lore.kernel.org/intel-wired-lan/20240327075015.7c13a71b@kernel.org/

