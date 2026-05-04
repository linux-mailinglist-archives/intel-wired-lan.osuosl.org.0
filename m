Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AC1HJ3cx+WkG6gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 01:53:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E73004C4FB4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 01:53:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5651D606F7;
	Mon,  4 May 2026 23:53:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wd78Zgunqjyz; Mon,  4 May 2026 23:53:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92E4A606F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777938804;
	bh=XWQeyxSbj0WPOv2Nv1oBqSK5qWRujpSUs3n3hz5q6qQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0qlLCouTyor9BRB1GR17/oIOK5lSczeje+xdrFrClWYcfO0uoyryqns8Iy/OgnNaG
	 eZBRxf1f9fB/VgkK45gpnUcfaOEovxg/O0ao9kKIFHxIeZoKjpyGBe68MJoPSzLMU7
	 R92uH1SEZnFgiDefYUh1QjsssTu72u703WQG/M7TX+G3sv/x4D79s5BpBnqKzt/X/O
	 tRDt1fwnkXab2Y2Q5njM2rtRdk0mVISgO4A8mjwaXZCVAj5Dqz0Jx/DoH9RyZStTka
	 izkzSjYQpvxij2yO59BNzmHAb3uqQ0LHDTM08aqkIFDQPlcdJDTwW3y/AhtFiqdwMS
	 W2kS7Bv8hofCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92E4A606F8;
	Mon,  4 May 2026 23:53:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C9E2C280
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 23:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B6C3C606F6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 23:53:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FDoh-NbFPZnW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 23:53:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 31B79606F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31B79606F5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 31B79606F5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 23:53:20 +0000 (UTC)
X-CSE-ConnectionGUID: HVEMyjSGQ/+0legZ6cP9/Q==
X-CSE-MsgGUID: SUuIbu06Q9OkaYwgozix+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="77825769"
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="77825769"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 16:53:20 -0700
X-CSE-ConnectionGUID: zddYYLUuSbGGvpZ7tFZV5g==
X-CSE-MsgGUID: MwQKEvKjSvKCpxxty9FJyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="235906047"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 16:53:20 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 16:53:19 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 16:53:19 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.68) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 16:53:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UZr/gzRY1g0ggQMxJz/OVuoyTmoB1MOKtbS/LbKsw2to9oeSVz97Yi1FPH5lT3Z4isav/ShDL4Ga0QrdWz1iziybTAVtjj3jon09WeSt8xVxb1CFXqroWPv4A6xTNj1gSPf1UdKSA02tv3JjAPPX9MQJAY4MnDaD3gjRHOaBUrpaXKES/FQfuTiYlF5fY+RRx8rzFJQs1nHM6DdRTRdgYKxaF09gAsEfA4cgtcTcXlz32PDpUkxsCtQ7lDEo4IRx+9Aqd7MQRXvafgSndP2oqbunQTqXxSzZ4mc6SzTuxxaxnRtAzpOHodbPoDTNtfN947InyxWT7PaohRlZ8kslJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XWQeyxSbj0WPOv2Nv1oBqSK5qWRujpSUs3n3hz5q6qQ=;
 b=QrY0cQvZZqXdp05+zG4X186GryusOR3T6g7JgmuLSfxypjuUrmFQOHdQM0OMOdKqtaFO+FqK/fdHywfnzSwNAEore7hm9L9yiA7YiidadZR6fqRv278Atp8bBtJ++KyXEdjTUpK0PSYSpt4ZWsoZabLkY+6RBdyVPSGaGbopSghs1YFmVlJtr+Au3uzTQFjRM30t1GQGrcqY8V2JlckzKj0NmX0Xv+fzyJ5zoRIORHpSySViegTzRIvxbVsoyTbPCNuY/xrUFTpaaSKsPDGTmwX2e9tYmsPDrXm2dF9DsAs3xHE21JkzcjFNNpUI4WGP+Ebk2K9EuMR9tZx6oRJoXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by SA3PR11MB7655.namprd11.prod.outlook.com (2603:10b6:806:307::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Mon, 4 May
 2026 23:53:16 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9870.022; Mon, 4 May 2026
 23:53:16 +0000
Message-ID: <44623db1-8b86-4e8e-82a3-46d65b055ebc@intel.com>
Date: Mon, 4 May 2026 16:53:12 -0700
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <jramaseu@redhat.com>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <aleksandr.loktionov@intel.com>
References: <20260428070647.777141-1-michal.swiatkowski@linux.intel.com>
 <20260428070647.777141-3-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260428070647.777141-3-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR02CA0030.namprd02.prod.outlook.com
 (2603:10b6:303:16d::18) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|SA3PR11MB7655:EE_
X-MS-Office365-Filtering-Correlation-Id: 57a82f9f-e9da-480a-7775-08deaa384f56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: Z/0M9ohNlUNZ5kas7q9fkawk5/thRkt80jBmkfbZw2KOBtbuHRTzn+DIn/KGiH5HeZHFrVmuMkeXxwt+vAtHJzvvPSZR073FSkZZ1CqtKaPJtU1dfc6F9dHfG5sZbCQKeWVmwOSL8qHFtl3750jXOHRnSBmTaMhwPU6uVrPzsI3JuHpQyRxQJC3zjBXtK67l7dxyb+6evzuWnUM7i21ECm9igcfGHQ93nDSKU1dZUl7JYWJ2Ck0M6LuWZYYxXerLjLRhhIURCqNMkc9h5YspD/29cEDbvj6FuZk3Bja15DSItRTvgxDOI+3N19nCeRZ8EyYiYtHxnE3+eNheKt/Mp+phsC7dzGNU1uSCraIr+3WyqJrQsRjpN1Ht7SbnOq8EWGrZgsuk6LFEvCLuKTP1/KSOWEyXBJUIBqzLf7ymzsv08W6gM4lmWqj51tnQ5h5Neu7D30gF4JY6SOsJbIeA6NdP8cz78mYh+SLqcnXXaW0xDX01FB9Oyv7e5Ik/jHVtfpAIq5g1sbCNVER9YVwqzxtnn/Mwv/LVm7pbOk3I5ilhp7Fp8UM/FYOvDuPS4IKOjAIg6z1RW8/aDmjwXTgtXIi4KH0WrTo74fuYEZHmrRj4LsnmyC9r4zs6oZo/U5Pg9ftyFX5pBDfDXmPrvYH1eanHtprahJCMyT2vd2ntr92hMsENATVpBb+FHtaW6FkQgeWlxVr1CeY/ARQWGGkKuQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azR5bFZVN0lITmZsUzRPSUVLeVZBdFJObmVBS0UxMnNXUERxd09lNnpLdldn?=
 =?utf-8?B?REpKVmQxZkRBTlBxa3E2TUlwdzZHejhoMzJTS00rcGR5anhVT1VoSkZ6VU1s?=
 =?utf-8?B?SmJacFMvd3ErRDBpSzd5aWFUOEVIM0FCc2ZpUUJ5S0laY1lxblVvaVBMb2JR?=
 =?utf-8?B?M2ZTTmR3UFhTdVl2eEUzRncrdEVQR0RrRHd3VEZnVE9KcXBsOG5MK0VHNjBl?=
 =?utf-8?B?emovd0pXWGNya1g3b0doeEU5a3dyM3RYSDJQaDBnOHhXMmpYV1FYdU94bU5W?=
 =?utf-8?B?T05vbU1raWVpS2dSK014enZFL3pNSStEcWpuUHVQVkFRR291V09FVVY5T2dC?=
 =?utf-8?B?KzYvV3ZINE9qNnExTHhDUkxDMVVyeWpNOFZjUWlRdkxWOTN6SDY5M0Q0Sjg2?=
 =?utf-8?B?WVhGVmg1WEJEdXlwVHdxTEkxVU03cG54ZlpqeEtHakhFNnJKNExwU1YxZTIy?=
 =?utf-8?B?UG5TZjJXbExmSjJ6eCtJNEdPSjdpd3IrdzdOQjB1ZmNoaVlVUmlPUy9QZ3Jx?=
 =?utf-8?B?cTZoSEg3T3Nra2pMWGpOc3ZpaWxhb0UvOVprTWpPeHRieWxrdS93aXBPRUZh?=
 =?utf-8?B?cmtRU0JGQVoreHcxcjJZRW82OUNhM1Vma0MzMnlhcUN0d1BpdHlUdFkyZFBG?=
 =?utf-8?B?bzJCUmRNSnVaRlN1akV4OTAwWWhZV0x6aDlTTkhKY1g5b25xenM0d3M5Mmlx?=
 =?utf-8?B?b1Fxd1ZoYXRnNFFwTFpXRG5NTXh6RDB2V20yeGZET09aem4zMXdkanU2MExG?=
 =?utf-8?B?dVdiMFkraytEY0RGVW5uRVhxZU9VVmlkQ0RFQnVHRnNrSzhVWlVSWEZ4ZU1r?=
 =?utf-8?B?MzZyM1UwRXhjRm9XU0thUmJIczFxTXQ4NXQzenJBZFl1OFJ1aFBMWnBwajZZ?=
 =?utf-8?B?YU01SDl4cWF1ZnFNcnQ2dkRXQnNSVlRTTnhUcmZuRkc5MERKQ0ZZK003eGF5?=
 =?utf-8?B?R2ViUm5VcHRwT2Y0RU5ad0tQb2hrTC9iMmt3L0ovbWQwamdUdjdHS1Q0R1pZ?=
 =?utf-8?B?V1EzWFhhMFVkSEJlcHQwYlJSZXZsZlhrUFVtZnpWMnJmNUI2SkoxYVM4SFlr?=
 =?utf-8?B?QnZFRk92WnNIRDBESnFXZWZmbUtSdzludDlqelVFZUtUZTVTaGc3N0ROakIy?=
 =?utf-8?B?TTJPWjQwdytRZHk2SjNRL0FTYUUrQVB4dEtZYkdLQS9DUWM2L3c0RFd1bnVU?=
 =?utf-8?B?YXJKckR6aFhBN2NIY2EyWk5OQ1ZVNjJRR3NyRVZ2KzdPbUNLbHJ2SFgyWk05?=
 =?utf-8?B?NVNuSW1aam54NjR6YXRhSmVEdmg5ZlorbmdzdWs3Rk80MHMvaGF2MVZOa1Ju?=
 =?utf-8?B?dVpSOXF5MVhUUjVlNktpa3JJM1hoRUNPeDE5QndMNHZxcFNvRmNjS1B1R0tj?=
 =?utf-8?B?dWNYeDZCNUF2QWptc3YzRlJLRDQxWml1SWE0UEU5VTZONzFlY05hK2tNSWNR?=
 =?utf-8?B?NW1UWC9mUzhMZEdOQUJvcW5lVm9kVHVzbzVCTkRmd3lGTnJKNVJ6Q3d2QjBh?=
 =?utf-8?B?eldWaEtIVHFJUkk2djFpK0xZYWVrazU5cktURHZUb1UrSXhqTTNKTXppM1BY?=
 =?utf-8?B?WU1zdlIrMndCNUpQQ0lSc0piMEhUUERzUTVrOEVNSXZpU25aMFBaZ0hwazVx?=
 =?utf-8?B?RTk1NkhBeVJmZjFLQXUrdERScU9JZXl5MEtpRlRJVHRpVi9PMk9ZMG5NNGMv?=
 =?utf-8?B?L0IyTXhHTG9kYVhPaHpRK3lKQy83ZzBYbEJFeS91Lzh4RTZ6Vi8xdzVXRldZ?=
 =?utf-8?B?UzUwQ2pkVmtSUERnKytiam9IQlZNVUkwYWMyTXl0UDBSZGFYWjh0dzVud09O?=
 =?utf-8?B?NVg3aEFnUmpNMUNBRlZlN3Zvc29TOTNtQjNzQkpBQ3dRelQ5ZFB2SmZwRTFv?=
 =?utf-8?B?OFJKV3JIbmUzcm92dHpsTzVLSTU1YkdaN0FCQk9NNklrL01CUDNsQzcyOGxm?=
 =?utf-8?B?bys3RWtvOHVsdW1NNkJQVHNqeUEzbThPeFo4eXF3dkJPSUs5RTh1NHlHRjNZ?=
 =?utf-8?B?TUN2M0JvUDY3VTBuWnRuNE0wd1ZEazJhQ1Q0bkFhdENrS2NjYzJpaTFJQUUz?=
 =?utf-8?B?eUFhWjFJZ2lpMmZ1WDN5d2s4bEVrZENIOUR2eDBKcUR1VDFQS0N0S0JqVzIz?=
 =?utf-8?B?elNUR0pMTU5yNHhzWW9CWlJ4MUtYRG44MW9FS1QwSzhPQTlBbE9KUkxRYVJB?=
 =?utf-8?B?d2lLNWVaTVRaazNGdjZ5THlQaE0xeUQ4UjNSdnBpTEZuSDdIMCtIN2ZqbHNy?=
 =?utf-8?B?QnZqQWtGTDh2N2VibE5sUHFxby85RjQ3L0F2TnNmdnFhLzE1QnBOUGdjeVNC?=
 =?utf-8?B?bGVxTjc2TnRscDRiT0RCeWVSQkl2R0QyOGdaWUNHZTZqNGpRQVRIZz09?=
X-Exchange-RoutingPolicyChecked: uEcBq+IW1SgjtYeepIBLYzhuDw/22sOnb3khSaxRnju7QCT00908WpmImRxXDedEymBrQeXu10i7pDvMuaDmuWDI7kexLMzNOTYYoM5VDZa7Chl0rafMDKTJWhj+iCaRvZc9T88/6nh55rcsyHbnx+t6Jr9ALWBP2c0dsSqZQqOvhqogtDqqRgScSWsOceRxf1GBKJU34r24ivxYfz29JpllWI6MkAvh7gVLU6I8bWAWJzBykKtfKVhgiucN57q+4XappPKin9Vq/s19NnsfPUI9ScpzoTh6pEldwX/hhljoaH6A0yf+ccQ2CZZ2fsurVtwBdcXGdrj4i/6EjYmFFA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 57a82f9f-e9da-480a-7775-08deaa384f56
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 23:53:16.1017 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Il7k5r0Hmf5g6oN7o/1uU1l1TCb5I96gIZP9SWEgtrtj/kpmfbjfh+zS0mxpRw/Kws6nsJue8jBN0qUaexGcKG/Nrafor1H5k2x9xprnfKc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7655
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777938801; x=1809474801;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2M05CyaiIvqnCwOBHYN/VCFAXWuTCrjy/F5pb3XVXDU=;
 b=G8+cEzaTi05Rb7xQbjjCnGxCNDOfwffiobIIWye6SQIrg/2F7fA3oDp2
 N3LdhZeoIsT0SJGyIfgv2HLOBiex1XUILDkK2Dw2p7rPr3x1mqfJylWAc
 jJxzwr61j7heUnKIZDTDlJiEAJMR8Qp7OUnmMWeRxcuREGpLNRoR1j6hU
 iMEvUS91isI6IE95YTYxFd/T2A/w/Jkvkcm4uxnNGvq9omcrBRUqsfEvH
 3wrXhUnDQYwOCyGIYRcjap8pXJXKMBmz+QsBOEv/fkrAgGDSsVhL1ebev
 NGqrHaCcTOImGXINLATD6RvfkdrE1Ys+4to1VFUsVuTE6qP+15yloY5aZ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G8+cEzaT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 2/2] ice: use
 NETIF_F_HW_CSUM instead of IP/IPV6
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
X-Rspamd-Queue-Id: E73004C4FB4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:jramaseu@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email,ozlabs.org:url]

On 4/28/2026 12:06 AM, Michal Swiatkowski wrote:
> The hardware is capable of calculating checksum for IPV6 packets with
> extension header. To not drop such packets switch from IP/IPV6 checksum
> to HW_CSUM.
> 
> HW_CSUM is also used in previous generation (i40e).
> 
> Previously HW_CSUM was used to indicate that hardware supports general
> checksum. Drop it assuming that if the hardware supports it, it is used.
> 
> Disabling offload for E830 in case of TSO isn't needed anymore as the
> check for TSO is done in Tx path just before preparation of the special
> GCS descriptor.
> 
> The commit from Fixes didn't introduce a bug, it just shown that the
> driver is doing sth wrong with the checksum features.
> 
> Suggested-by: Jakub Ramaseuski <jramaseu@redhat.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Fixes: 04c20a9356f2 ("net: skip offload for NETIF_F_IPV6_CSUM if ipv6 header contains extension")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
Am I correct in thinking that this supersedes (really, properly fixes)
the patch "ice: enable NETIF_F_HW_CSUM for GSO packets" at
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20260310150557.1138437-1-jramaseu@redhat.com/
?

Thanks,
Jake
