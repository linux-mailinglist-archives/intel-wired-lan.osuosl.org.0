Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 307CD8083F2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 10:11:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 492E761598;
	Thu,  7 Dec 2023 09:11:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 492E761598
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701940292;
	bh=r1rv95R9lGRpZli+KAmfCTzYEnM7g/g5jq+J+VW4+tk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MkFrYxnWOzggElPsc1s1g0zlzNFkykIQe2TFWAEE4xFWi0E9PxG69wv8dlNzqiZ7p
	 L2s+WwsT2+jMBtnTxzN2KZSPC8C7MfxJc1PwtB1/OibpENbP5bvpePc2ub1g6f60bV
	 flnr+Bt2fE5gXHvQ9PoYf04D8fzP+ZxTLpxy1+Fnku27TFqEfLWMQ7CWDXe+eMgMWE
	 xTPEDNSqpAI5TvuzT15cI5Ofizy0xvUFM+zBppi1jNCi8mhIYGF4Yax9ixaMQEkh7H
	 6ti453oaDOjg66dg7Ulu4/P+UYr2mWsCgqDiF/5q4T9bghkX0t9j4cqyJEH2vTqkHn
	 p4+nD8iqktieg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wx88MgrDdmxG; Thu,  7 Dec 2023 09:11:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22AB560E13;
	Thu,  7 Dec 2023 09:11:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22AB560E13
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 851D91BF275
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 09:11:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 684BA61598
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 09:11:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 684BA61598
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rbz7UD3pmGue for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 09:11:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 74EE360B43
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 09:11:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74EE360B43
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="393937673"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="393937673"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 01:11:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="889680745"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="889680745"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Dec 2023 01:11:22 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 01:11:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 01:11:21 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Dec 2023 01:11:21 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Dec 2023 01:11:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fZoWLEkzgyD6i8ENcrxWbDEGHeNh6brLF5ncjSeDggiaaVveql+xdd7v59+kLipwQkXUkX1N+0AccgT4u4PSTYZKBGNe5Fd2NO3dXx2tYVjOrBpdmumlpETrUBbYikI4YH0+yaWZN4t+qdUSsQjslmNnEAZEtRMb6JEQKodPmejItKn4kEd6LF06Dh2wgcAbvo0HJW5BxZoTcg2mXibDV7257iDCzNQO/7SmhDEQWMwYrQ9y66q9iIWUCTn8cMyDesUpfHtRl/0evuspOCqB/K4A88Y9rItli4Gp4flwuVogbi/kaerXucpg8rmikXA+kb658WDumKVaBBCJ/14big==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wS9kA6idcookZ84Us2VIzoVmiJPwtg809F3X5CU3NBk=;
 b=WeNyEL3yaL9A06b9s15ADPLiwQRHY8V2iY6Hved4mvlwO7K2P5l+u7p2chtEPJcR78fPuYOmt6jKc9neebtMt1c9AnletpxdeR7QP4cX0+vPWTbsAzAZU3N3WDkk238CjhICg7E2k6LOVMXoW6sGwT/jIb/8bwQmKY9h2TXtYo5djBJVAANsEg88mdkBik3s9qomxwtm4b7OT49+yAAoyIbGiRQ5WgZ4JaWPLAtTTi+BcAV7YMTITnMbHSQa8tMny94uEwmOQBcid0puLBzdBnfAEohmzczNWmjdcGSpqv3LHuT/ZcBpZDHDrjyFNtRiBeAzgGCeSfhqGqulfOzoqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by SA3PR11MB7414.namprd11.prod.outlook.com (2603:10b6:806:31c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.27; Thu, 7 Dec
 2023 09:11:10 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::917b:5d71:ff8c:91c9]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::917b:5d71:ff8c:91c9%4]) with mapi id 15.20.7068.027; Thu, 7 Dec 2023
 09:11:10 +0000
Message-ID: <cff236f7-a484-418f-b6cb-7be14581033d@intel.com>
Date: Thu, 7 Dec 2023 10:11:06 +0100
User-Agent: Mozilla Thunderbird
Content-Language: pl
To: Grzegorz Nitka <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20231206192919.3826128-1-grzegorz.nitka@intel.com>
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <20231206192919.3826128-1-grzegorz.nitka@intel.com>
X-ClientProxiedBy: FR0P281CA0061.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::16) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|SA3PR11MB7414:EE_
X-MS-Office365-Filtering-Correlation-Id: 682dd72e-6503-444d-68a9-08dbf7047409
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wzUFCL40zmTpCPgdgW9d6/H4LGUMAJ0ryg0El75viqD6jTRZ5brrHacNeJZWkq0weRcINCY2bWwL3PnYAst9S69NwJsl6xyWAz3YX2EL/BuxmGuJvLCrje6DaHo2FIHbV9f11RdTfJioeOsllY/XzikPMQUaRBCWmULPh5J4Fd399JXutcsNLBaSLNscpK5XOOq2Rthg0KWc/gZKGYlxk4oy0D6hUKZn29z7pP1rJCnRIju34+l4jOFuNfh75wfGndTbiGpmysKuw+l+7fTR7j58JcHt6RZL2jxXZDauYij/jzpQpVXJHC+x7wu/TtZe2OQStcFI+2U5/udui2C6CjG/D4QJdYJ2c6bMwUTPmZNgXeDheNbZFfFcKCH2eIwb1+kKlRz+/GAKFmJLEOFFRhfs0729Q1RG3V9el+GpsopO3pbcOXWBKIoRmMvUnulRYX53bkgKE4/LswfgR6x19bIdyAVi/8QvoCM0nnJynvDMWOtaO40KavXM1c8dnQrhwJabZ2prPPI83D1k7RuCbTB7C4p7Dw9+OrhJwcLrL73dmM4AZ9UC0u4eNTWL8U1Vz5ndJBmDDQHSjV3NpCgKA1rULdL/sv1eGCjNIAX/arAcd6wHtZ8IYJ9ot/4C1ggM0WEDUh7V9uG9dIHW4XiINQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(136003)(376002)(366004)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(110136005)(316002)(66556008)(66946007)(66476007)(6506007)(53546011)(6512007)(36916002)(6666004)(41300700001)(26005)(36756003)(2616005)(6486002)(478600001)(38100700002)(86362001)(31696002)(82960400001)(83380400001)(44832011)(2906002)(31686004)(5660300002)(8936002)(4326008)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2VoWmN4RHpkckFEN0ZQWnZMVlFkVW1KVGRIeGt2OFdjQzhFWUpOeGNJY3g3?=
 =?utf-8?B?aFo1NUJYVUozWGVxdmJjdzRnbUU2MmxJYXRjWHQ2ejVjUTRCOGcyMHNvTzFH?=
 =?utf-8?B?SFA0YVYvL1R2Q21XMlNmdWg4M2RtN1ZVeHhzbkxQRGZ5aDM3SkF0UTBYTW9w?=
 =?utf-8?B?MTVrNCtwWGxaU2RTb1VIOU5weVFOK0ptRHllY0NZVUFVRUtYayt3U1JRYjEz?=
 =?utf-8?B?T2MvNUxXbHhxcGhERFVaVCtsTzBBaDhKbCtiREFkR1hjQktUN2daV3g3d2kw?=
 =?utf-8?B?Z2ZwY2dLUFRKdlZSOXpzLzhwSDdDRitDbXNRYVAvZmxqNlRwUHllSzhPOTd4?=
 =?utf-8?B?SWFBS0Jyc094Umw0My9FZlFhY3ZBWTVFeVFGbHEwWWU3N1lzb2Rud0VhcjBP?=
 =?utf-8?B?V1RPQkgxYVE5MDA5Y3JNR0tOZzAwMndBbEltSkJ6THVMUVROTjczKzI4dFRR?=
 =?utf-8?B?SnExZnBnWi91bjhyOWIvWTBpT0h2S0FEOHJqUW8vUHRTb0VzaEN0Sy8ySWZU?=
 =?utf-8?B?Y0U5aS96M1FJeHV1VkdBQ1FZVG9kT0pDWnRlQ0xEK0UvM2t3QVA5NkwvSklM?=
 =?utf-8?B?MlU4dWR6ZjNGeE9wcU11U2VkUTRBbkFTNUtPR0hKYzVVNi9iTmw4ME1JRURr?=
 =?utf-8?B?WGFqYmQ5QVhCZ3VkMndoNFJFVE5YMG1NRFpKWXBNcS9hTlUvREEyU0ZlV0Zx?=
 =?utf-8?B?NnJ5c2k3SENIRzhLZ0s1V3NjQnZJRVhuZktHVXcwQ2ZOV05kTDAwRFVKZjdv?=
 =?utf-8?B?ZFk2cXNUNS95aE5DZGFWUzhmMndpY2UwZGJkTHVxQWtyYi9ucUt4Z3o0M0ZW?=
 =?utf-8?B?Z0FXSW9WT1pmMlU1M3d2cUVCeUV6ZWJRcTZUR0JkaE54QVBMdzg5dVNUV0I1?=
 =?utf-8?B?eUdGNDNDQ2lCODlTWUpCeGNQY3VLNHk0SmdUWFpTeXdWY1pOYmw1cFd3ZHNW?=
 =?utf-8?B?T0dLYUY0b1ZlT0RzSXlubkJVUUZYamNrSlZjd2VCdTJqM3R1dFg4emNEdHdF?=
 =?utf-8?B?cXlCUkNBTE9FSVVRQytsMnBza3k3ei9jYS8wc3dmck5TMUlMRXhWVnl3b0Zn?=
 =?utf-8?B?Sm1SeWxFVS9hbHIrRWhNWHE4Ykx5by96UTluY09iUmMyUEwzN0pJRWNjdE9v?=
 =?utf-8?B?UXZnemhPeCtzNnZiOS9IMitkWEVjalNuMy9OUC9Yd0RKOHFXM2h0LzN2MzlV?=
 =?utf-8?B?ZWdERkc0TG1CNDNEdmdaVjJOMmlCejJzRnJpR0ZjOFI3Vk5uR2U3TEZ6NXhN?=
 =?utf-8?B?NmdTT0VDQjZrMXluY2VOVWhkQUxBSWk4aEtHdmpsR2pSb085Wlh5UEJpTDcz?=
 =?utf-8?B?T3M0ZTF1OE9vMnMzbm1DV2JtNjFlazd2dk9BdTlUd1FaNmVUWWl2WUh3Z0pr?=
 =?utf-8?B?RjFCRzFMUi9LUS9rVFNmWHhpM29yVm5oMXIxSEQ5ODVnM2dKUzBoT1BnRGxu?=
 =?utf-8?B?bGFLQjAyeU9ZR0pTNkJHQXVEMHYxdzZuKy9RTEFaajYzV3BuaEpDK0duNnpO?=
 =?utf-8?B?WnM4R3k0S0RweERncXJRcnQvYmlBTzhNVmwxaFY5OXYvdzRJZjE5VEVKek54?=
 =?utf-8?B?dklIbmhTNlpLMHllNHhzQTJqR09ISUFjNXk1NWJubDVLVDMrM2E5WWpPSHlv?=
 =?utf-8?B?d0E4a2JNQStkd0VUd3BMMzBEU085YitjM3hxUGp2dWxxbHhxRnlCWlFaSThl?=
 =?utf-8?B?MFlQc3ljQVF3a1I3MVhaWWt1djJEMDRYdWo5OGcycTVjZTVlMXdZN3VLTjlj?=
 =?utf-8?B?cXArd1R5cm04c2xXZmRnMGVqSW90T0dnTEk1eEFNKzZJVi85RDVKaEdBRExY?=
 =?utf-8?B?UENFcFRDdDVFcTNiSGExZy8vVkJKR2E2S1NRNVJIRFArTGRhckVET2ZpM3hx?=
 =?utf-8?B?YnZJeFFrVGNkVTN4L0lWVVR4ZGx6TGV6a2oxYnBSNzFxd3A0QTZheUJra29W?=
 =?utf-8?B?SHhpVGdQUmZoRC9aL0xjaWhURG50L3ordk56VWdQZXlPQU9rdTdsSkFhZ2Er?=
 =?utf-8?B?eGJ6aGV3M0diak9vWThaWnVqOVJWRUVWYkp6aWdIMVFkTTNWekVNOC92YitR?=
 =?utf-8?B?TFZlbmlTYytEYitJSi8wcnc4UTZ5VlJueFRPOTJTWWRxa1NQemdjSzltOEd1?=
 =?utf-8?B?NnZpL1BNRnA1SVBpaE1UMzVQY2ZNenN5ODZwUU9OUk9PNnQ0Tnh1cU9GMzl2?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 682dd72e-6503-444d-68a9-08dbf7047409
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2023 09:11:10.3537 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sRilUvaerdh8TfBDmQzN2HWvVSN9E+qAkPrwqtEf55MYMsp6vwisL84ak2Ul/nsZd4KhOWYpAYAWL6QxbfZmadoNEFR1PK1Koms3A7ZX44o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7414
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701940284; x=1733476284;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C0qXPZZCSWbhlvYWlqwRg7VHF/G3Ltc8cJeu3d7Xntk=;
 b=LZkmSAK9vj0qG4me7NlLXtSAKNNeaUoL+xluaY9CFwABi0IL6e7C2jvV
 hHyqYO0ruDj4tK84B5Y3DWlInlRZTPuwECDgT/wdnjvvvx7mpLgsUbvX7
 Z8TQI0CnvByXGvRujrjzb4m6D/xsloY3NZt1dho3r9RZLtP6SMblmukyi
 iG+L/JlafTqTGj+l5WPEF04tM8s+9gFJvhdIbmMtrkAS6T3wVe5ajLWoA
 5Z9xd/N3N2mcqw5FZdI+v4cnAgwZTJUjxBgSyJ/3jypj0dUIiyZlod8rZ
 e2aEa6fzkzMAAmrdhvEXAkU41xT8VvJXd9oywwepyVwl810CD69Wa4fzO
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LZkmSAK9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 0/3] ice: add E825C device
 family support
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/6/2023 8:29 PM, Grzegorz Nitka wrote:
> This patch series is supposed to add very basic support in ice driver
> for new Intel Ethernet device family E825C.
> E825C device consists of 2 NAC (Network Acceleration Complex) instances
> in the IO die and supports max of 8 ports with combined bandwidth up to
> 200G.
> There are 2 configurations (known as NAC Topology):
> - single NAC (only one NAC is enabled) or
> - dual NAC (both NACs are enabled, with one designated as primary and
>    other as secondary).
> 
> This series covers:
> - definition of new PCI device IDs assigned to E825C devices
> - support for new 3k signed DDP segments
> 
> In the follow-up series support for new PHY and NAC topology parser
> will be added.
> 
> Grzegorz Nitka (3):
>    ice: introduce new E825C devices family
>    ice:  Add helper function ice_is_generic_mac
>    ice: add support for 3k signing DDP sections for E825C
> 
>   drivers/net/ethernet/intel/ice/ice_common.c   | 37 +++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_common.h   |  2 +
>   drivers/net/ethernet/intel/ice/ice_controlq.c |  2 +-
>   drivers/net/ethernet/intel/ice/ice_ddp.c      |  4 ++
>   drivers/net/ethernet/intel/ice/ice_devids.h   |  8 ++++
>   drivers/net/ethernet/intel/ice/ice_main.c     | 10 ++++-
>   drivers/net/ethernet/intel/ice/ice_type.h     |  1 +
>   7 files changed, 61 insertions(+), 3 deletions(-)
> 
> 
> base-commit: 545c31d16cc00bba281ee1927d6338e27d4b7b5e

Thanks Grzegorz.

For series:
Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
