Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A3487C450
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Mar 2024 21:31:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90D3960619;
	Thu, 14 Mar 2024 20:31:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zHSMt0bqRveV; Thu, 14 Mar 2024 20:31:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9F2E60895
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710448307;
	bh=kQkEHYLTKKUGUTG4wiie4CcTlojwpS4D6ePntqisDYc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gPGfBVSGBonduL9yUobVIc0g/VSiI5x16+WLLBFFiqbbYhE9x1o0yyGYXmfwDf6SW
	 GowDdbcLz2sGHX691oDEB+tp9fFY2TbbD5lUt/xw9t1yEeil1Qby8PJBXcpm7H4cVw
	 weJGa8Tn884v/XYhBdnLbkeLdhhstQo0n5s2KoIxlORCCZiEClTMO+M3BrBmqJL6JB
	 ihCBBbNLfUwf+thT6MfO+fEnrmt1zagfDuIbKZ+XRatwsvDYLcSYDMXB1RhSythunN
	 iRmnOFl5NN53KY5WGru3/5uzIs7mY5zvuYKpMDSgtx97lid1qkxxMhno2kmvviv7pa
	 PZNf/3k7iBusg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9F2E60895;
	Thu, 14 Mar 2024 20:31:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB3E11BF31E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 20:31:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 967AD605F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 20:31:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xGC_SFjug4wK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Mar 2024 20:31:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0643D605BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0643D605BE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0643D605BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 20:31:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="9127853"
X-IronPort-AV: E=Sophos;i="6.07,126,1708416000"; 
   d="scan'208";a="9127853"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 13:31:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,126,1708416000"; d="scan'208";a="12864912"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 13:31:42 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 13:31:41 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 13:31:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 13:31:40 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 13:31:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l1RdBYExlLM/tUBccSxFdGs5c7Df0lX/lkZwU/5qpg8p5XGp74otnp6Lt72I43j7Y+NoZIIxhI7ulLu6XW+ui7EQmrhY14jFr9Q1lQZ2vndXaykzqmgmOALjlWuqSqjlQKp8ZLJTq1igLWFUFZ+cTWZBBvUIipUlOUm63EQ1dpbTN5+2YcKmhAmhi6IWHqee8xE/ORXsjv+PsgMBEZ2PpjaAh2eHYduhhUkbj8T2y8VTosd3ozW5zDMgWe8P2GOaJAD0wLerz+n2X9fLDyoVh7F2xla6XCOfZ3+yPFLiom/hfL3pmUKQQn2Iq793MNBTUjTvpVFupMgX+TsATohWxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kQkEHYLTKKUGUTG4wiie4CcTlojwpS4D6ePntqisDYc=;
 b=FEpuUwNMD81StbNf/quVni6W86gZBVpuTAwDYlxPDU2r42qiCrn31rPmEY8Uhlp1D85/gvyDwS1BQYEy1XeuStBvLi2m+6TLXhdITa+DTbVuYBfov+cAl0BM8pnDrlQRP9ckqZRAtFo6jR49MfJpcz2nSNUrHmxYMA/EiDMoFm8XtlTB7mooFPoXgQepuuE8t/4DqdKbssydVO+pLLgEkO3nwoca/6Pxv4TqC/3HhGLrRhlrCQXmg184Lh5mhuf3Ys4b+LqvlQHsbO19NxE7Rcp8GlPDvF+MZfKcAxDzJDzjhozwaDMPQSZA96+kk77msD7pOj8JJn0u4nGzwEFsWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by LV3PR11MB8768.namprd11.prod.outlook.com (2603:10b6:408:211::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Thu, 14 Mar
 2024 20:31:37 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7362.019; Thu, 14 Mar 2024
 20:31:37 +0000
Message-ID: <8f4724f8-e831-12f6-d4e1-4700ea47b2a0@intel.com>
Date: Thu, 14 Mar 2024 13:31:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Erwan Velu <e.velu@criteo.com>, Brett Creeley <bcreeley@amd.com>, "Erwan
 Velu" <erwanaliasr1@gmail.com>
References: <20240313090719.33627-2-e.velu@criteo.com>
 <4e203331-62f7-44e7-acd9-f684c30662de@amd.com>
 <c0ccaef6-44eb-4851-b336-cdb06647e1d2@criteo.com>
 <d16ff01c-4a01-4871-93de-a5c26a352301@amd.com>
 <7b612db6-cec6-4873-8a38-fb4c97192aa2@criteo.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <7b612db6-cec6-4873-8a38-fb4c97192aa2@criteo.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P223CA0020.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::25) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|LV3PR11MB8768:EE_
X-MS-Office365-Filtering-Correlation-Id: 97dd4382-6d41-4663-89f6-08dc4465bf4d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EmvVjVBUx5YMo9EE4TOMMsEfEt0VA3eV/TpzxQR2Z6rl11/UzC18R/XYiZUi58nzFhCEcYyC8/2m2cta/4regOdo1K3q81gaBLumkxl7KKZ7hIpkcEk4qDhtmHeMH/m0D8jN9nJ2ox2pNfnXMcJZvzNITxuyxvvJMhuTGSyaVkKLOxjdquhEaOtJQ6zwKe9lvIbpQfSe75lWIwDNFJXmnQrxWjvXmHg0ZcB2arzXS1Kqv8qWlT8Lg6G9AWTMaPvJuJgWi+C4ZNIGQr4RuZNLvEqMe6Y+M2XIKHVOFYec/qsZJVQqs9M1YW7g7lgbYnGgxGa4rkfwWwq1l+GEHoW6EUgse8RXrXdqM2JjU37E0deIapPY+sfVpptTHVjHD4vkdXEo2Wnzcci9PzqWHIc3U5g0Lp2MTYE3Llc1GRDNCdRbcB7XWR7xfeS3y/Wfrj6vSF/dIxxDedPDXLrkGhXP81KNNkjOahPiEHvGOULGUkVVxmc+nxiwK3fT4xCVR2kmz9q7ibbjUkoHmwy95oUcjbyhqLzQSqNcpgRK7GQJ4tqUWxVN3/5PsovfYZZsr3G/PUt2+6Jm0Mtu6N6sPRvKbmv59xjrzfxq4gB9rG4toS/OL5eweUQIHSSEos1ahTAp3CHCHMM8MHKP4S4/6GWhlP6dm16Hmu1iMeZ1o7+GA1E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(7416005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RlpVT1hYV2them5YREs1alhaYWhRbHh0d205N3c3MGVqOE9mTmxQQWdPdm0v?=
 =?utf-8?B?d0RKcFQvU28zcFovbzU0RG5BYXl3TmovZGVmM1NFdU1Ja1REdG1kL2d0bmpT?=
 =?utf-8?B?WWQ0RnVUR1ZJcE8yb2lOV0NKR2dHdE1ES0h1T1RIMUlVejF1R2VEcE5DWFJL?=
 =?utf-8?B?WHo1TVkwZjZsN0ZaQVZHcWljVmFBRG9KVFhiekdLVHQ4c1duUnNsdlE0THJX?=
 =?utf-8?B?bithdDMwUnJCMytWeTFaLzcxSU10blJxRXhnSjZtY2tyUjc0QUtvZUJXWGx6?=
 =?utf-8?B?a0pCc1E5Qm5CaWxaRFlLZWZhY2RzcW5US3hvY2dXczZkRUREYU1ZMVdNOGkx?=
 =?utf-8?B?Z1RQbFNMU2VkR2lTeWRYcitVTW90Szh4TE04dFBYQnJ1a3V1eUhSc2dhN2Vy?=
 =?utf-8?B?RXFkWkcwMHUyWG5zejFQTGZFZlN5Q1N1dmJQU0k1SVRFdjY4R0NYV1F4SjV6?=
 =?utf-8?B?Y0M0ZXREd0lyVnhZYU92Q2pONFdyVGU0RkNMd3dFZWdJbHNqbkxONEhqS3ht?=
 =?utf-8?B?YmRRQ2VZdFVSMU5KbkdvbmpTZDNwdnRpOU9mTTNRb3FBNHRXRGJFMjd1MXNq?=
 =?utf-8?B?LzN5b2RIdE5vdUROZitjYjJLOVAxN2syTEltenlsQXNydTlWcE5uWjM4ZHRV?=
 =?utf-8?B?T09STlczRThjTGVrOUpubXJLYndkZ2JuYzdyMEtRc1FGbGttdUIwcXIvZDFw?=
 =?utf-8?B?YjUvdURJeEpsQTVFS3hzdG80YTFYZzlHbWQ3QURHUTRnckpYRitYcmZ4cjZB?=
 =?utf-8?B?UHkzOUsyZ202YzlJdEJNRUNVOG5GT3JWVDJuLzlvcTZGQTBDcXBLN2xrR0lK?=
 =?utf-8?B?aUpydzhkN044cTNyd2pSZVJ1K3JPUTdldmhWRS93UUszQlJBVnpEQU9CNkIy?=
 =?utf-8?B?MXptTHhKZFpQUG04L2pVOWY1ZTVocEllUDdNNkMyb0hhQnNTVEJnMkRwUDVt?=
 =?utf-8?B?MnFRbHJvbW9lNDZBRUtLRXFYYS8xdm5sdTNycVJGUnN6ZDh3ZFczdzk3UFhk?=
 =?utf-8?B?ZDVWVjRpbUlFSjRyTTJOOFZtb1dXK2p4YW1tRW1XMVVydFQyd2Z4WVFFRWpF?=
 =?utf-8?B?RVBJNVJuZStSMmlZYWd2b2htNHZVWlFQYUs5dDZIUUF2d2dEYi9CQ3lzZUNV?=
 =?utf-8?B?eXFxelk0RzdzVW1uejNGSFhiMGs5ODVjdWdyWDY2NlpxYXFNamJTYXNnRlNO?=
 =?utf-8?B?ZFVhMVE5emFmekRPN2VTMGVJYVMwVG4vb1NZM0krV1Zzdkpua04vaDNCNFJP?=
 =?utf-8?B?M0szQXpGblFNb0RSNmpsWDVraUFGWFpOQjJXY0ZsbGxYV29NZjFLV3MyRTgw?=
 =?utf-8?B?RExaWmJZYkczSjdBR1hYM1A5Nng3UXdsQWljZXA0d3lYd1F3ck12eGdwb2JB?=
 =?utf-8?B?VjJpVHhpMDJzY3BzRkZEeG00azBpNVM0SDBPMVRaSXpqODdNdzYrSFh0YXd3?=
 =?utf-8?B?NG9rc3NOQjRpNjRJVlZVTTFnTjNQa3d0RDB0UUJhNU9zWVdlZzhwTEt3SG0x?=
 =?utf-8?B?L2t5WG5hYjRuMWJIRGZTcUIwSEZmUFpwQ1FSSkFmaHY5N0FodU5HVU1FVmh0?=
 =?utf-8?B?UDhyREV0QUhXSlY1VUVlZzFSVS9rSU8yeFpOdGhjazIxR2h2ZERySHhmbUtw?=
 =?utf-8?B?dTBLU1BqdEtVOHdCbUE5Q0JYVjBqRkUrbU9DRmRPbjcwTWZwbWxMSmNMMm5K?=
 =?utf-8?B?S0grS1FyLzh1UnYyQytFVUdvc3dhTzMwNGJtRUVtUXBoQ0oyN2FCWkV5Syt3?=
 =?utf-8?B?K3hNWEt1WjJHK2hhQjN3K0NXbDk5M0xNdWxka1EzN3lUM0x4dkhucklaRmVv?=
 =?utf-8?B?M2NGRkZsYWdwbnUxSTBCSTl6MHp0MXV5VEk5TEdQS1RZY25jcENlTkp2dVJZ?=
 =?utf-8?B?Z251ajE0UVkxUlIzYWkvY3QzdGtWNkM2SVk2VktXbHM3VzAvYkVKNk8zaGtQ?=
 =?utf-8?B?U3REcFZUL0VPOFZoTDZaQ1JaM0Q1VFVkcXB0cXF4aWg5RzNzZHI2dVkyL1pU?=
 =?utf-8?B?WmJNM1ZIOXNObW1vYTRKOGVFeFBOK1hKQkVHWnEyaWo3U09CTUpVckUrWFU4?=
 =?utf-8?B?SHJmamR1Q3A1NTFVWEw2Z3NuY1U4elBaSHdrL0Y4bWloOUMrTit5U0hXZmRN?=
 =?utf-8?B?SDZCRTFwWkt4bVFJcEJLdjZQSm1BT2NNU2tmQWVMTm5rOWt3NVBpTDJVTDlG?=
 =?utf-8?B?Mmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97dd4382-6d41-4663-89f6-08dc4465bf4d
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 20:31:37.3224 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fhuJ2FjVBBsME+fgDlMxorJTS2ErR16bzzdQ608StYHbOAU37wWUs4osXqFYjohntH3GSG7M601uPImPJfBRVAsMk5hayKrBj9RqUT3J4bM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8768
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710448304; x=1741984304;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=psH04jx38aROT2qxal3IjRokhk1QKyRuXqHN2vWUAWQ=;
 b=UJDRlidkb+FjcIF49ycs5+azPtvExRVze9/zP2uc2xxiDLqSpq5fz3wm
 ZL7saA26k0aVzchEmq2o9QqCf2e2WXQH5O8ngSWtWPYIUuG8rbeIvVJFs
 8bnsFlEkF5sYxR4trNMhEQPAq89HQhqzqJVxxxtsi90tEguygjUuhD4DO
 pyYyrn8C8eRGPWZo9GpAOVFNQ9ygz82wLZYnPt2vkyQna/sQ7IJcas+qH
 0h5FWK2EiY99pFvS20wLE9ERx6Nh6k5UKUTQvUeFVP6wpDOmYfQeMo9gj
 Vv+5l8T3DP1hNA28X9jJbV9KR50AZa1yBMujYWvB8VrLnbc6NHWz76R75
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UJDRlidk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-net] i40e: Prevent setting MTU
 if greater than MFS
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/14/2024 11:04 AM, Erwan Velu wrote:
> 
> Le 14/03/2024 à 18:55, Brett Creeley a écrit :
>> [...]
>> AFAIK there is no API for a user to change the max_mtu, so the only way
>> the device's MFS would need to change is if it's done during
>> initialization time, which should be done before netdev registration 
>> anyway.
> 
> Sorry Brett, I was probably unclear and please note that I'm not a 
> network developer, just a user that faced a bug.
> 
> My initial though was to check the mfs size in i40e_change_mtu() and if 
> mfs is too small, then let's increase it.
> 
> Maybe just resetting it at init time to the largest value (which seems 
> to be the default fw behavior) is a best approach.
> 
> I'd love to ear from Intel dev that knows this driver/cards/fw better on 
> what's the best approach here.

Setting the mfs size to max values during init and reset would better; 
this is what the ice driver does. However, this would take implementing 
new AdminQ calls. IMO this patch is ok to prevent the issue being 
reported and allow for ease of backport.

Thanks,
Tony
