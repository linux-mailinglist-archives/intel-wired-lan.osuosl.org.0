Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1347BED57
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Oct 2023 23:28:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 488E081F67;
	Mon,  9 Oct 2023 21:28:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 488E081F67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696886913;
	bh=BSc+9LcbXdFybVKsKwx5C7FRs+H2P+KD86lVM/YIgVw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aFE4F0/uc0faAXHxqrRRqMShdd7u0h7UmXeikC+Pi4hPnMSqOh1lQWmuLtKRJovP6
	 XHG9Kty9HzyGon0SXJh+tXzlPuX9KGCRqpbN/jVJK66QMnsXC4WotUmNdynmG8xk2b
	 6MbNl+ieu484HZ4kG2WOr23ZvMyumrraCCGliuhVhHv0GAyd2AU72trYmau/wdpzbx
	 MHVopAOh4RMYY+pEqR17jyd1iUBaykBJ6ZJnGzDTFeS+c0+gTT2O/+Pes6eXN22nCo
	 ZtErdNf3gcXxtFRYX0BCe25vZFkWDhTeHigEy2/HvI0azSR/2/+fFo022/Pb5EFkVq
	 ExcyKOaiFn+MQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t0virHnuH8aa; Mon,  9 Oct 2023 21:28:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2510F81E01;
	Mon,  9 Oct 2023 21:28:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2510F81E01
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F0071BF42C
 for <intel-wired-lan@osuosl.org>; Mon,  9 Oct 2023 21:28:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 76B4060BE3
 for <intel-wired-lan@osuosl.org>; Mon,  9 Oct 2023 21:28:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76B4060BE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zPLdl4vnA5Gr for <intel-wired-lan@osuosl.org>;
 Mon,  9 Oct 2023 21:28:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A27AC60ADE
 for <intel-wired-lan@osuosl.org>; Mon,  9 Oct 2023 21:28:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A27AC60ADE
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="384108678"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; d="scan'208";a="384108678"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 14:28:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="756853068"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; d="scan'208";a="756853068"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2023 14:28:25 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 14:28:24 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 14:28:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 9 Oct 2023 14:28:24 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 9 Oct 2023 14:28:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cIDPOaLF141qmW9I5FermzHnL1PH7avEOj4Z2Dr+b1qDaMYftjDoEBOaEeZkAb3VtzgamRqfeVG0wiNd9IsQHKiBbZ0o5ufO4v+atRx5TYtTja1wpCYi3uPzqVwcIn9y7+HeE7qO6Xda311oKLAZto9FJ1AGH9DT5TLAyNUyc5999247xCdYsfaO8RvVulm9EuNkugzTFwmuL0Jz3577VT4PYpKoczUWCG5W5BNOgEKhvNFF9z5qdNdVG2OnRueY60u+IarJ9XE+6EgvEE9qA+SgWILwrGKHAcYVBNOG9OC7N6y/b4LxKoZyjSoM9DwOm0k08M6WSn6jdFQVZKa34A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3V10HZ+b1zQYWcvwB8tERO/bmjPC7OG0ivQL0s2ovxY=;
 b=W5l5W5TIrcxPfvitCUoW9BahFDJ4fXPYDBIaSgkzj1+MrslGH+JexwQrEAFkBa9ZdShWKT1M256UPukTUSGYzVR86sor1ufg8euTpURV13eGljr2ub9XPiXcevAosM1Jzyn7nHIzYmg+wGb0jm0v/am/Qsq53ocB2lKVDDqoMZoARZK5gfb3+U82WehsP/IRlUVK/glfz8tuMKTgEu7sNFAOPncXhzu21O2t2pezgPp7XT0EvIeQdv4/gMw+xwfHhlIt5Iz9njCsW9XKnmIfhpB42CBumRKt2iODLKUM3oPWAGs4UeyXFzvpqOXPvcZlWAhJqpPtYpHoV+PDQW4uPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by LV2PR11MB6072.namprd11.prod.outlook.com (2603:10b6:408:176::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36; Mon, 9 Oct
 2023 21:28:13 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%5]) with mapi id 15.20.6863.032; Mon, 9 Oct 2023
 21:28:13 +0000
Message-ID: <36fec88d-3083-a2df-b0f5-7e2262157a68@intel.com>
Date: Mon, 9 Oct 2023 14:28:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Jacob Keller <jacob.e.keller@intel.com>
To: <intel-wired-lan@osuosl.org>
References: <20231005054441.3758364-1-vitaly.lifshits@intel.com>
Content-Language: en-US
In-Reply-To: <20231005054441.3758364-1-vitaly.lifshits@intel.com>
X-ClientProxiedBy: MW4PR03CA0268.namprd03.prod.outlook.com
 (2603:10b6:303:b4::33) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|LV2PR11MB6072:EE_
X-MS-Office365-Filtering-Correlation-Id: ee7e5a5c-8cf3-47c2-2ff5-08dbc90ea415
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3ylJ2P2uwxOAPy3J5X/A8vtmSXfr+2o532lVRdaVv3a420yMomrvvyeVdZMFZ3YByTS3DjNxKpkAcKtI6YGEGgTjjYevgmMeYRXq5p6kDTjM9lTFzCOrxfJ35/Rps429ntE551mh64sKv+kudFAFNGvGvOlLZXEfgEc5K/XKZ/Y9uO3B4sxwYaxr3oUa7Xo++3Z3A6ARGyACNUxdZVtzkhEQDeGuFyKwUTzQDHQT5uFzed0AZo+8kfsIuFNHGFRYZzzeU5ovf23gEDARvfUnSKy+2Sr6/ebBDqcKY6HN4s4GnAhqi3U1om2lS2x12B8uwxeYcqaIhbnfbbq4YYB87hiEU8CFoaEd6dcNMY12zzBEiQqRM4MMJNhy+UdT9iRC7mJUjDxpvNRiG6jufTfzjeQJiOJqODIG0wvlbOwWrsvHkN86+Y46hQkGam0YgK2JYLZ6duP15gpw+fcRj97Ch0dON5fu8U59s5TZUrmWmiP9STp+8DT+rcLKF6iqwXFfuqgg2vs1V12WDih/vbsc8tns+7h1NqGNTf9Uha8WyQbkS9LI6jxDO5QdbNJIL1QZhxyf7LBGXYCVir4jAnIeyIJ2jdR3MbHsAjHxhT9ex40GIE/ioSUGAjqVJ9YP4gCLZaNV9sMYe0STgnuJuio1HA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(346002)(136003)(376002)(39860400002)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(31686004)(31696002)(86362001)(82960400001)(38100700002)(36756003)(66946007)(2906002)(4744005)(41300700001)(5660300002)(478600001)(6512007)(6506007)(8936002)(8676002)(6486002)(83380400001)(53546011)(2616005)(66556008)(66476007)(6916009)(316002)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MkcvU2lpZFVESi9GZUYyWWRiWC9oMkFERXdDSVA3MzdjczJ2anhSRDZ5UnhL?=
 =?utf-8?B?RW1zY05wbkYybnk2ZVlqVEp6elpyNlRTazI5cStocm9jd3N1eWJkemZ3a3Fk?=
 =?utf-8?B?N0tFRlJNcXQ2S3VGc2p5ODE1bnN2dEl2a205ZGhCVlRQQTJhdjl0akUya2dR?=
 =?utf-8?B?MjZ6TldWZGdSNHQ4SDhqNnRXeUw0TnJjMVJDWEE1Qnc4STl2ZUNkYm9IRFZT?=
 =?utf-8?B?ZDVFZzQwV3hvTWNGNzVKQW5lR2RpTGpUcHdNRlJtcHVVZmRkN3pzemc0Ri9W?=
 =?utf-8?B?TjRDM0dNUlErQmNTL0xnSDZsUVowM0xhSTJxQ044dWZOMldmNUtjVzdRZjM3?=
 =?utf-8?B?UFZnRjMzeTlNZXRhTmFyb0ZTYzZCOEhoZE1sNTVLNlBjTlMwc1dPTE8rNkx3?=
 =?utf-8?B?ditYV1pCNmlEenU4bVAzMDdiVGNqMFNQY3E0dGZISFlwYjA3M01uQmd6bnlr?=
 =?utf-8?B?UlBZeHhjWWtCSTFraGJxRmw4T1BhYUZhbmY4bHRGTmIyV0NwRW1sS3NCWjlw?=
 =?utf-8?B?amh0RldRTS9VZ0NXV1YwUzhPZ3BmTXlHRmI2TFN4NUYwWFlONHdzbE9pOERp?=
 =?utf-8?B?dnlWakJPZU1IYmlQdEU5N2t4cy92MitjRFBRUmFmejVBYXV4NUhlMnhhNmtX?=
 =?utf-8?B?alJ0QUZKSzJhVEpIK0pIdnJCbSt3SEljSWdKR0Y2a2QySlNZcWdDa1UwWlgr?=
 =?utf-8?B?dWxHUUdLSWEybUNPL0RhaThuekVaeHZleVNNamFBUnNrUXNGanlubzVZZGd4?=
 =?utf-8?B?MXJBS1ZXdUttcmc4c1I1SCtpVkljM2lDSU1WYVR2UFJFbEpRL2VMQm85Q0RL?=
 =?utf-8?B?eXVSUmZ5TUg5VGxBUTdLcWd5a3p5aHNPNDM5Tm5vR044em5yemoyejRNeUlq?=
 =?utf-8?B?WjMreTJ5c243bHNIMnJDR0k3WWF1aTFMdmZrOC80cXVabzJlYjBYdlBKQXFl?=
 =?utf-8?B?SlBBdVBEdzhlM2plNTlTL1p4WEJ6N252MGgvUk45dW15emI3dFJRN0NaZWJy?=
 =?utf-8?B?WVNBT3FmU2VYOGdiMEU0MEdOQmtnVEdoeVF2NXZicjQ2by9aNzdDYy9IWDhr?=
 =?utf-8?B?NGk4ajZvZ0dmM0x6WFhJbkxsVXQrZ0lZclJNU2pQdXp2aml1cEpyRHYrYllE?=
 =?utf-8?B?cVZqMUhieHNOSXM2bzUrY0IyclJIT05aVXZFbG1nNVBUM3hxNmswbExtYzla?=
 =?utf-8?B?ZE80c0pwamxkSjB3QTMzOWoxYmZodDVhNGlvUk5iTFZDdGd4Qlc5aCtJY3E2?=
 =?utf-8?B?dSs4bW1MeUJaRDRBeHczNDVpY0xqNDNmb0g3dUw3djZTblZjRjl2bGN5VEFN?=
 =?utf-8?B?SnRGdDBiN3EyRi9pTzduUlRUM3pQZEFLTDhBZ3Z2MFJ5dzlWUWxrbVZKZVhv?=
 =?utf-8?B?OFo1bGhLWkI2aXE1YmJCQTdmMHNtSVo5dzJQbmFobXBQMmJJM0dBdGVUdDFN?=
 =?utf-8?B?VXJlV2pqazUvYk83N3BwUVFteCtTM3hKa3B4UW9ONW5ic25FN1NRMG1aV3NQ?=
 =?utf-8?B?RUpGZEhkSjZ4ZVg4WE5BK05pYXFQNVhiTGd3WGttdDMyZHlTeVJZYVd3UXYr?=
 =?utf-8?B?WnJFN0hLWGgrczVFaGZZZ1NSeHBOSlkzZ1FNNHpGdWl1NFJJRHhkWEE1OHNB?=
 =?utf-8?B?OWIrcCtqSkpOc2dWYXkxMzJrdGVJUWI5YlB1UExhNkJpOU9qMytmZlE3U0dT?=
 =?utf-8?B?Vi8yL1MwSjVTcE9UY2RjMmlTUmRLUGlaRXRZZjluR253UkNJaHN3c2trbmh1?=
 =?utf-8?B?bm5zUDV1Y2tCWWhJaGFFbUpadGk2TVg3ek5GM0VIUjlVd3UrYjhCT29nWnNX?=
 =?utf-8?B?QVZjTzRQSEtlZzB4UjVtOWM3dVVPUmsvRGNTMkZUU0lUUzZUVE9ZU2hXU0RN?=
 =?utf-8?B?N0JkZlBwMFpVZmo5SnBhN3h6b29RY2NGM1VtcncrcHNaZEFJSzBxbi91NEd1?=
 =?utf-8?B?cEpwbUYxdS80T3o4Zkh6Sm5nVnQ4N1JrT2JNSWtPa2tKcWNkTTl1TWZuZ3dm?=
 =?utf-8?B?UkdTYWZ0eGNDK05Yb1MwL25WckZiRFYwWFVrdTlwblFPRExUZ2xtRExtSXFs?=
 =?utf-8?B?Y3BnMnVBSGZuZCtQNndIWGMwOGJBUU5aMi8rSzJOZUlWeXErbmtjNXJ3T1ZH?=
 =?utf-8?B?N0M5MUc4N08rTzZ0cjh0ZjhTOFdFUjhXeW94ckpiVzhHWDc1MkZxRkUzdGUw?=
 =?utf-8?B?YlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ee7e5a5c-8cf3-47c2-2ff5-08dbc90ea415
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2023 21:28:12.4787 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QSAbmgYva0ZevUWLbmzJgVJh7HZ/wNYpdKcPmmZ1QvzaSdDGZKPGR5Ej6ERGp5WL/8jP+wNWoYYVyghrkPbNmgu28O/MZhczIj9AL/jybN0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6072
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696886906; x=1728422906;
 h=message-id:date:from:subject:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dt/+FdFT1sJ4KjeEvG3ODySJ76HXvU0mM0d1VGnrqc4=;
 b=IdnczslBlZiEo8vS8rgJjh2Ub6D1X5a56A7B1/db+6mjvmAJjYQUDwtY
 S+CrzV5bxd9kgVzhEVaN5X48O4m7RC1m/N1VbUVsKaj9P4jujF15Z7wTq
 lHEAC+sZ3AYCqDAHGM4FLJ8aLp41Bjebq7P73umGlOw5pabHNYvMsONkA
 7SaZ2waGg9SKfxHU2aei5HmGR78+A6OotJWwsBusqEaj2EWdu8l193pRM
 eCiSxl2sy7eYyVApj/0jzvUuj8AY/vSb/9PgY3urPkXpig6PcrbDXh4SP
 uq0eT5Ix+nLjZzks2niWAqu4F3DYpVYL2oGZOsdlOLI3QP6eXK5eB2iLg
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IdnczslB
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

A bit ugly. I assume we don't have any idea of the root cause of MDI issues?

Especially having cases where we disable re-try which is a bit awkward.
I don't have any alternative suggestion tho...

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
