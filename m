Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FBBA842AF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 14:13:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8875A60AE1;
	Thu, 10 Apr 2025 12:13:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J8GWh8K7QR1D; Thu, 10 Apr 2025 12:13:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0FFE61B06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744287180;
	bh=I3OVvduc2Ajy/63fGbcSd4X7wqZZW1QQMKtuFJB4bXg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MaZI3OfQFoWYRLR0AK/pAaPPBKNnfnwQKYbGI++KoCJTXVagmfPLA24a1r53pLApM
	 R1fvYM19ktpQURLPvOQorwq1BN/ta4jvOyWXXbleoXZIzFHOm/P7Vt2gnGpgA9IMCZ
	 ZNwsvTH5xTMw3WtRLT6mxGfV4speT3EIIZhLbExB/uqOjuw9y1oSRhRZgAXUyZs7vl
	 qzY97GcQts+GW5uuk1dI+dP5llv80Izi5oAMtwpqM4P6csBM1O8XuBcZGPjULeIywx
	 HeGjJkLrYlVcnyAYj176+dYMgb285TLw1dHmck1WhFUZYMM0n1tyPY6UDKxb7Hs2Pe
	 quJAm5Lzwtw8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0FFE61B06;
	Thu, 10 Apr 2025 12:12:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 46C08138
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 12:12:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2C78061162
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 12:12:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tkyZdtLBo6LQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 12:12:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 65A7B60BBB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65A7B60BBB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 65A7B60BBB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 12:12:57 +0000 (UTC)
X-CSE-ConnectionGUID: cODD4RHbQNW0k7AdURXnBg==
X-CSE-MsgGUID: fTTybrYaQRK3GVGMATqvfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45816441"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="45816441"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 05:12:54 -0700
X-CSE-ConnectionGUID: 1/0yM9OUTCC76f9rCSP2tw==
X-CSE-MsgGUID: MsbAqXnTT8qh5OakNA08tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="128754356"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 05:12:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 05:12:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 05:12:53 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 05:12:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZAHkXBYxRAzsSLD+aDh5h+WRHRIrrB/ZueJ4e/jSvYMuiVBYxuDAu5r1wmF54j/gyUBadCsz/HipouCoSFQ2aqIv/9kujnrAPm5v1tmpMvZD4Lm10vprQ8K4qtdHFDP3i6J/KGOKfDIQORA6SwyF0Zj9N9OzmmrNGGCFe4eSAwGV2gMWGTtl9le82fmgxrWsv3RYuxl9QkO3qThcWGt+eriPitpMjvEszl3abwIm6rT8EKjrUPTgFUmugq80eJH27Q1hvq5/e+bVoa6uogKYgKy5oQ14KuC0orHPNBesR94gtx183d6zMGh6nczNwrgvw2w+5pKEqUyEO6o8HOlm3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I3OVvduc2Ajy/63fGbcSd4X7wqZZW1QQMKtuFJB4bXg=;
 b=iWmwi/Z8LJR0ZSYhsl3g2TW4XJV1tYXYC1ifzdlg4N45A6SOAD8IRR0Ce7qpF9wSgB4ZSpEK/qIo1PhIixGsSCmmrZK8sN48w8UeL5fsEFB92ajcHaWyaBqMRcx454/phGirygb4x+b+mQJ8uaGg74aoNPWah+d3D9S/nZV5BrlRiGUdOtOB7HWQoP9hjTaAS29e1Nfn3ej8zg0WyuNUnK5oQfG8Yer2nrhnQAP6CDyIRql3PBmj9B3tm2Y+WMwEFFhgE9RPKV6ijAWMKngxYCo9NgD7j3ZuKPGKOYABCcjOOpHW0Y8RyXEWrLdhlBL8HHFzr66OJ6puOhSzV+pY0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by IA0PR11MB7863.namprd11.prod.outlook.com (2603:10b6:208:40c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Thu, 10 Apr
 2025 12:12:46 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%4]) with mapi id 15.20.8632.021; Thu, 10 Apr 2025
 12:12:46 +0000
Message-ID: <446f48f3-6dec-4396-ac2b-dbe45612d796@intel.com>
Date: Thu, 10 Apr 2025 15:12:40 +0300
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>
CC: <david.zage@intel.com>, <vinicius.gomes@intel.com>,
 <rodrigo.cadore@l-acoustics.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Christopher S M Hall
 <christopher.s.hall@intel.com>, Corinna Vinschen <vinschen@redhat.com>
References: <20250401-jk-igc-ptm-fixes-v4-v4-0-c0efb82bbf85@intel.com>
 <20250401-jk-igc-ptm-fixes-v4-v4-5-c0efb82bbf85@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250401-jk-igc-ptm-fixes-v4-v4-5-c0efb82bbf85@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0027.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::11) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|IA0PR11MB7863:EE_
X-MS-Office365-Filtering-Correlation-Id: d881e4f3-b448-42c4-3073-08dd782900c7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bytrdVBMNjNEbVlqOHpWWWd5NmF3MW85WXZremdaMHRRWXpBSTZwSUxuWXVD?=
 =?utf-8?B?ZGVpRytKWk1PWndmN3BmTXFKRTY0Y0pRN3VBWk9aQmJ0bXFoVEZmcXpxR0Fu?=
 =?utf-8?B?UEcvRkFMSW1xcThjTUpwNlc3Q2EyWjVUNVQxYUlKUU5JdUc0RjVEVllvL0RG?=
 =?utf-8?B?QWlBWDVpZ1JKZXpsWGozNnk3Zi84di8xcU51azR2WkVqSVlLT0lUaEovT3dp?=
 =?utf-8?B?VzBzakptaFM4ckNiZGpJMjFHUndBZUpJZWpXT2dsOHBOaGY5ZVBnRXdwUzNU?=
 =?utf-8?B?R2FXNkFqOVhnc29tekp6WE9MTXhUZmZCQXYyQVFJb3BjRVZkWVczeWNiOHRI?=
 =?utf-8?B?SDRjakw4VGlHd0pRUldKb0I3Yjd6ZVRsZHJRdkRtS094WHhBWWNrYmY2WU0y?=
 =?utf-8?B?enVHRUVFbnhweVpxK1hYTW9DbVhldnU3ZnZnL2s1ZlJmTEE1V1EzOUdkOUpu?=
 =?utf-8?B?emVEOXNZdEo1c2dvdW5HejlrZ0tDR1B1UDlnVlhwQWd6M1padVZscHplcGdw?=
 =?utf-8?B?L1RIOUF4WVpTMVllRXRkZGFYdlZBZlZnK3FMM1ZneGE4WnJkNHEra0RnZ20w?=
 =?utf-8?B?OEUyTWd6WlVKcDVJRnZHMHY2Y3Y3L0tWOGM4Z3RTQytKMzRnQ0k1MXllV0FY?=
 =?utf-8?B?TzJydm05SjU5WjRDa0J4VE9EZWNZMHVpaGJjU0ZWSmZjdTZNV1ZCMHlURTV5?=
 =?utf-8?B?VUliUHo4ZXBiSWFGcW5MaG5HTHV5b3BuQ1U0SDBFcDFYdUV6aGVWRzVEdGFQ?=
 =?utf-8?B?MnBwV1Z5YS9hdDJwT1dIQUFFODZMQ1lwSVF3dGcrY3NyUzREVXZxeWs5WkFs?=
 =?utf-8?B?aTZzdTRMamlxOSt3RnJVdllROWxNZFhYQ1lxK29ub1FuS0wzV1BBQmRTTTdr?=
 =?utf-8?B?RHBqV0FDNHQ1ZHkrV2E5L0doSDdkRjdqdndLdEFlVW9hNjk4dkI2YWhybVZL?=
 =?utf-8?B?NVB2TGpLTTh6UnpibkdhS3lxTzdhSzFLM3h5d2VBZTZ2dGxJSU8xdnZyb3VD?=
 =?utf-8?B?aW00T0dZbkhjemt6cjUyK0dpbVR6NVVhRWpNMzNGSVdMU3NFYThjR2R1N1hr?=
 =?utf-8?B?SUhJNFN6Qm95eEpDYWtQTGgxK2trSElWRlYxVDFja01mM2FsMG16VTdYYVFm?=
 =?utf-8?B?c0Q3ZHdkRnlMSXdLRUJwMjV1VlFrdjB3bXhpOFcrRUhHbkdRTzRaS0k0WlpK?=
 =?utf-8?B?eVpBcmxGZTRaREh6dW44alpYeW1TaUh6RlIyM2ZJL0ZUMVBQZDEvZVlWUzlq?=
 =?utf-8?B?RUFDQ0hSb3JYeHNrRlNFdnpiWXkvblpBb1liSEd6Y00zVllIdHFYaW92QUli?=
 =?utf-8?B?VmsxRWhTcXlvRWRKL2ZpWS9VMjFkZzhyTm9HS2VaNkRCNlJ2b3FTUmNhY0Ix?=
 =?utf-8?B?U0k4eUhqRitIcTVjcy9RdHB1eE9zSE9QTE9GWWdaWlk0NEVNTk9WdUtPTUhm?=
 =?utf-8?B?U01TM1JxUFRvQXpZZ0JTWkRsWGpHVG9QTjIxR0xwRFZnSEdFN2c1dGRQeGw3?=
 =?utf-8?B?NFhiMGtkNGZqOVQ5Q0FVbkdnNW9OU2xRTFdMOGVCUGloNU1Dd3dTbTNYbjVm?=
 =?utf-8?B?b2dUWEVtQzlLU1dNZlQxMXVudzJjb2ZsSnIrZ2pXdXp1RDhhVy84L0Nkdkdp?=
 =?utf-8?B?VjVuSE92NlN3NjZ1Nlpoa0xWNVM3WCtvNlIxWXdGdGJQRkpvQW9NSXorLzNi?=
 =?utf-8?B?aFdsdmFXb0VYdU1FdldWbkpNSzJheWZNMmZJZmVNeXJCNitIM2EyVXRZNHYx?=
 =?utf-8?B?b2VkOGFYUE14NElKTTRCYXc5UnVKckhScmU1UFRUZ1lZMnR2MFpJaWl1aXJV?=
 =?utf-8?B?TmErWVZwcU5wNGZIQWN6WmZHZ3hnV0tSTThTSWRIV3JkRHNmSFBLblJSUWgr?=
 =?utf-8?Q?jhUpAUAbLQI4m?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2FXWk5NNmdDT2R0Y0tBV1pxVjVhdFFIZE05SUFHMzllWndTOTRhdVpOd1E5?=
 =?utf-8?B?ZS8vWi9EY0tXOUZsa3dXeHFpc3dRU3E4QlRDcnV2RlNuTFU2bHJSc3lDNkYr?=
 =?utf-8?B?ZENibGR2dlRKNmJFK1cyeDhLbzZNNUVKTDBTMjM5Vk9zcEx1YmxkNTBodmE2?=
 =?utf-8?B?QUFpTkxhalBDTGM1NUV6WXcrTklremlQcExLZURkVnNqQUl1R2x4Uy9HZ09j?=
 =?utf-8?B?Wk5hUmZ4akJySm53Uy9RWWZtZk53bVpuNEdxa29jMGd3STJNZ0dnTFN4UjZj?=
 =?utf-8?B?eGt5UUhoRlBVWTJFeDREbndrdTUxRXBCOXIvcTNOY2V1Yzd5SEgwMHdxRUpz?=
 =?utf-8?B?K05mK0g4TkdyRkdUb2pUbDZ4cEtmdzhDejFBZzJJcDNwVXlBNlRWc2R6cnI1?=
 =?utf-8?B?Zkd5c1dvc2IxbEQ5emg2Wm44MnRiMWREc1RzQzFvYmRsdHk2YUl2T0hkOGRi?=
 =?utf-8?B?ajNFc21EZk1PeHNUQnpnNGE5MEJPcElNN2h3ZVJ5Tlc5TTYwaC9jdHhsUnkz?=
 =?utf-8?B?Z2E3TmRYRlZUOFFWRU5HR0VrTmxwUnN6QXRUaTdWL21MNXgwN1M5Qm9nMTBa?=
 =?utf-8?B?aFlCQ3htZFkvUDhPVDg0YWswRzZaYWV6WlU2alM0TEdYWFpMQnZGMk1ZdVJi?=
 =?utf-8?B?NDdwaXN4c2hSdDBENFBxNCtiM0ZFYmMvOVNUNGFGYWRTdzg3WTdCMUxlaVNa?=
 =?utf-8?B?NS9lVGM2VTJjZUtzekpjaUp5d0V5WkhHTEM1alRuSThkOTBTbDh1d2xZMlhp?=
 =?utf-8?B?Umk3QnZNbS95TXhCeEtHQUFBRU8rd0lHYmJjZFF4Zy9BK2ZUamlPcEdheTFX?=
 =?utf-8?B?dEZ1NlFhejdsWllWUTd3MUswakd6U3BKc2FzaHY4MUQ2MGkrUlUwNUpjVWYy?=
 =?utf-8?B?b0NCRm1HT21IWkxIVUQ4MEJaa2NRQkRvRUtJQlE0dFdmc2MzNDNDSnVVOUhv?=
 =?utf-8?B?VjdaMWdwaGhpU1pPREp0TUFGOGF2dk9BQ2N2SnZGSVV0TXIvYmt2ZXhtb0Rt?=
 =?utf-8?B?U0JwNldXOEdaRW1LUG12WVBRTE0yeWtnR0Z2S0plYzczTCtyR3Y1UlNwQmps?=
 =?utf-8?B?WEFZNDhXNU9ORGtNWVJHdTNxS3FCNk1PaHJXR254Wkp4SVpSbmNlMzREU0tQ?=
 =?utf-8?B?VXpHSnRjWitjZFViZWtOMmxyaUozckh0Uzc0eHFEN2tqbVduQm5Qc3g0ek5p?=
 =?utf-8?B?Qjd3dWpvL0VuamxPVFZnSnZ2SWFEK2Jkd0puQnF1bjBEZWtCQktmQ3FwcUZT?=
 =?utf-8?B?SzNoSXpyWGpTaHNSeUtDeGJVaDk5blZmSFEwRzRucHJleTBmM2FqUjRobDBv?=
 =?utf-8?B?R0VtMWROaGQvTlU2dTVFaG51eHg3TTBPdGVQaUN0cUdVRTNBNTQxenJVVlhX?=
 =?utf-8?B?UjVXSWFMM1dQWXlzaDFtMjRMZjVHY2Q1SzJ2S1ZsUFRadmJvNmFONlo2UXVZ?=
 =?utf-8?B?eDBWbnJEOGZOZ3NTRUx0d3hCQlhtS256MzhVdy8xTnNOUkM1R2NNWUc2RDkz?=
 =?utf-8?B?Y0JZQThKL2dUemRkdjRqYjRlY3ZkcnFEemVNSTRFNEhPWGZYT2dDVGdGRVVT?=
 =?utf-8?B?RHlzNDNjZVU1WFcrY3NITndrM0laMkpFSEIyVno1MyttZmhQVlpFVDVwRFJi?=
 =?utf-8?B?cVkyVDQwNnZLaG1aeGk3ZFhHQzZJL1NHbzEvR3N1UjVoRXYxbncwMVUva0xP?=
 =?utf-8?B?WEN0alFGUllmNlR2S2hINFMrTnBQaElhdmlJcGJ3ek9lS2lNMWJOSlVoZys4?=
 =?utf-8?B?em5aWjFwR0t3VmtrbHl2dTlwSWYyeGJrbStYRXhrL0wwYXhadlYwSUx1Qi8v?=
 =?utf-8?B?UzRoUlRSemE1SEF2YjFaVHNQV2c2aE9OVGwvdm5UWnVlaHFHTUF5R2taWXAv?=
 =?utf-8?B?ZFM5VStiTkIwd2ZYbVR5U2p0dW50bHVvYWhCZTliYW1xK0gydmpEdzdUU2c3?=
 =?utf-8?B?TDNSV2V1bGFsZmZkTzdlTnNxdEtXdVVic3dHM1g1NHpKVk1hUGlTU0dhd2RP?=
 =?utf-8?B?S0xKOGlDNXJNRU5mZURIUythaDZyaVJvRUh3QkFjcWpydUZYdWQ1Y0pKZTB0?=
 =?utf-8?B?Sm52dG9SQXlvUTRDNU5OVzJaOXZpTmxaUVZoUjB0NUFRT04wY0dEMFQ4ME5W?=
 =?utf-8?B?RDE1bGkyQ1NTeE1vMHhGMTE4cEprdHNPc1FCdWpGcVREaG8xbzVjbEd3ZVFn?=
 =?utf-8?B?ckE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d881e4f3-b448-42c4-3073-08dd782900c7
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 12:12:46.1029 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CMDM34LHKrf/2vB6BiWiKhu0wtnX9zndxHHLB0OVXpoYRvVBhSUH7Ch3wN17gzix4wR+vYK7gGGXYV7YN6atTZXXsifhuTGL18Yd747mVKc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7863
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744287177; x=1775823177;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+57zPd8L/bFZgp1a9Qn1z1EEDSEAwCK4NzF7N6vAJNI=;
 b=XwPSZSE/5ghDnKL0Gb6S0H1m/FlWtJStRwXbNb+HfSH2tYb28bq5bHG/
 dJq89rWltBK5XvwWMf0bbb7nnNBEVJLHSFEYPcqUzanuf/UNIesfYvOhn
 6DuSbaaxTyv5M0ZTCmmGfoZGOdKHFoQ/Pm4kNB9uWqTPeBIAJCf+u/tM/
 vLDrFJmvLQ4WyL4U+nCPyLnK3oKFgdqIxIYm6RR/FlEVYDmUs7Spgj7z5
 FpTdDRIldTNjwtVGYMJ//U8cW0eLmfV/xRC+OZHZL3GPsfW4Oa6cYRk68
 wN3cVA6rQN4TlMZV49jS2tqcfnfAncO/jJUqUB2hpRgQLG6kGDDmU3Ugs
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XwPSZSE/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 5/6] igc: cleanup PTP
 module if probe fails
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 02/04/2025 2:35, Jacob Keller wrote:
> From: Christopher S M Hall <christopher.s.hall@intel.com>
> 
> Make sure that the PTP module is cleaned up if the igc_probe() fails by
> calling igc_ptp_stop() on exit.
> 
> Fixes: d89f88419f99 ("igc: Add skeletal frame for Intel(R) 2.5G Ethernet Controller support")
> Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
> Reviewed-by: Corinna Vinschen <vinschen@redhat.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 1 +
>   1 file changed, 1 insertion(+)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
