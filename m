Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C909A9A78
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 09:06:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34CEE80B83;
	Tue, 22 Oct 2024 07:06:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z3hKtKG-ChYs; Tue, 22 Oct 2024 07:06:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6118780B93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729580783;
	bh=/iQkzeruFm827g5qykaT6fmzzOn2psI1LNaUAUW/Cco=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JXgBTl83nC+J8hRgw0IvTmERtWuK9iYBoF7fDYFRbUpU0j2ym2GwiVcWJ5aKSNwYG
	 ozKOXp0MeW+unGzKTWQ9GA08CyjdYqGdYOWX8NEucoMTrL1rItV+dqxahso0BGl8T7
	 0nOXqyyunBdysvLWwjXPOdG9h7rFrNz+VfUao5gpzN77TJY53mZJ9qJpXl9IY5jIRi
	 RX42ei6rTMbn+/TGQNoSrXuHecHw9bmdthvSFBP7IwqMX5uDqwE8L3vDJBnR1Ua9N/
	 Q6rP5ImZ6SbI2te7Owa1QOzJFklsQta7nZwDRydhzT0M9RxPXa7WswApS2XngppP4C
	 rM46LcwBmw6MA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6118780B93;
	Tue, 22 Oct 2024 07:06:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8721C2072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 07:06:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E99140277
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 07:06:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GHe0XBtFhVQv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 07:06:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 48D4240270
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 48D4240270
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 48D4240270
 for <intel-wired-lan@osuosl.org>; Tue, 22 Oct 2024 07:06:20 +0000 (UTC)
X-CSE-ConnectionGUID: gJ4gxWQwT7akDvQ2gqnE0w==
X-CSE-MsgGUID: oeH3vzTlTxqINX4ADQLRPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="28983708"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="28983708"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 00:06:20 -0700
X-CSE-ConnectionGUID: lTYBGVANTLqg/UzL2aLxaA==
X-CSE-MsgGUID: Kh4ITz1MSU2yIPBezJ4qYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="80181623"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 00:06:17 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 00:06:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 00:06:16 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 00:06:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uXRv4b8B/gRQnOwXipyyanjjb4JNPTWqoC8olyYRMaqluyD+DSePXQdIh/dkNOptDrFXWx/Zi+RmYv8NAHshUsfXoMv+Lrs1QPs2Y/Z0HaUj1yXKkqIoVVm0PxqLpd5Xwd6lHa2aoZg0qGY8YW93i4PbR+PdWSQZ57AfSAjnrWoqKsB/1lJUwthD3VDQVt+5HvgUU2wyxxRz7ozioWpShDjYSFh9YimSGF9V92/pWHB4tjEqgKp6Dzs0/mAMRClyN/YicwnSHh8zGGzva5wM3qj8IHurXt1FbaXU1CmA8cbb3vfukqoyHT4Ouf9otjLokoWBNxlttwVGre3nUZm0qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/iQkzeruFm827g5qykaT6fmzzOn2psI1LNaUAUW/Cco=;
 b=pdTy92DqjvaLfWRHUae+PsjEeGPS3uzQnvjgRHPPK2IJDTVK6D1jLj3aLhVFLZ+KQOAkK1H5LULjpR6jldhDx8NFM0umUELXZd9ownWMxzi3Md5ay2LnoMFIOCCwAvC9u7J5Pdyl26Gp7ZBVvSe6PgMg24YYIWA7fVKSX+Yy3KrAQU6ir8LiWJ4cWwPABPUoSzlt61c89WuC4WKK4Crn7bKJzGKS7YVU6qLOCPs/tg2iHcVeWFUcMKDxyieWP50Vsl9g49It0iOLK8LZK/PHkrC4F5h25FIctVd1XG4gvfPhKoOnWomwMXGJrejCW+zs3AwA4JBgoIVpfBkOTo0PTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by DS0PR11MB7831.namprd11.prod.outlook.com (2603:10b6:8:de::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 07:06:14 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%5]) with mapi id 15.20.8069.024; Tue, 22 Oct 2024
 07:06:14 +0000
Message-ID: <8c5e2da8-8862-48ce-9bb6-0b00819f4d52@intel.com>
Date: Tue, 22 Oct 2024 10:06:20 +0300
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20241018171343.314835-1-jdamato@fastly.com>
 <20241018171343.314835-3-jdamato@fastly.com> <874j55gxdr.fsf@intel.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <874j55gxdr.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::15) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|DS0PR11MB7831:EE_
X-MS-Office365-Filtering-Correlation-Id: 233c19e2-8372-4832-2ade-08dcf268041e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VmFhQ2h2Y2tWZEM4dkdOWDUxSVM3UkhpV0UyWDQybFl6MzQyQVpEQUNtOWZq?=
 =?utf-8?B?S0ZsTDFRSGxyUzRFSmdzM3dNMUxtL09YcnVlSkU4a2tzRGhiSGgvMHNQK3Za?=
 =?utf-8?B?MEpkOUtZbmVBQkxOcUhpanJDWU03K0JBLy8rMzU0dHlVK3M1bEJtQmZHUnR1?=
 =?utf-8?B?SXRLajdvblZ0alQybmF2Q1VEL1JaOWZUaHVnRStaVnNidTNublBhWFpJYVdu?=
 =?utf-8?B?T2FjRkdCZUdsVGxIYU5FbXk5K1FBazI3Q0ZJWXk5YjNRSlV3SnA2bnR6Y0hF?=
 =?utf-8?B?cFpVY244K2dsRG1hemtRVnl3UHlROG5ZU0NFdFozU0kwZG5WbStZMmxldng4?=
 =?utf-8?B?SGRIQmlZR2dIa1Y0TGVKN1haUENaeG40YjFyL2NsZUVpVUNRWm1USS9DY3B2?=
 =?utf-8?B?MUoxdWJhdDloYjUrdWthS1pZTldBb1doREpqUnI3UCtvL2FsUmxXNGdNZEtG?=
 =?utf-8?B?bFcrWDJ5angvVFU5L0JCTFZndDJyb0lBSDJkeFJQMnQvelZUN3o1dm5Wd0l0?=
 =?utf-8?B?OU5uMVZ3ZHBLNkJxK3RXUW8zWEhKR1FvT0pZVHJGRWJSdHl5UXhkT0ZBV05p?=
 =?utf-8?B?cERPU2kxM3EvYytTLzNnelY2RWl3ZkxjU01ZVWZZQUQybnJ3QytmM1kyY0Ew?=
 =?utf-8?B?RFRqcFdtY2ttMzdFS2tSWlAyU2NielZaT3o2SXdOV3F3YlNRUkp3dFVtYjY4?=
 =?utf-8?B?TUdLQ3FwNW1FYStFWnhoTVF6UlFiRm50UzNuQXlTNktkcGZWbzhPdG9pT25L?=
 =?utf-8?B?Rytlekpzem5ISU8yT3NuU25OZ2tQbVFjdmtpbVByYWFiZTNoWE1WOTRoYWx1?=
 =?utf-8?B?Q2FGdmRIMTlPWUJPUCtDeGovaVQzc3ljaXROL2lNZ1EvM1c1WGlhVHZoUUV4?=
 =?utf-8?B?amF3ME8rRSsxYnJXbnJhUXpEcERweVNBT1Y3aDJjNGJyUGptUE9QOWU2MEh1?=
 =?utf-8?B?aEVQTnFqcVJXZjFzT3pKdzlvOWliNkdQNGJJOE1nR3RiSWhHNjhpQ1dGVkhJ?=
 =?utf-8?B?bTRKUkcrbUt3NmtvTUdFRWtFNDU4YWJsTW1yQ1d2aENLT2JJanF6V1ppVkNP?=
 =?utf-8?B?enhDaXl5OW9Wd1BzVDJUOWhuMmFJQjhNRmJnb3ZaSjBYR0pYSU5KY1ZaYm1Z?=
 =?utf-8?B?aUZwdFRORkY0MHNYV0k4TGh1c2gwT2E1eUlXREY0WGJ6ditDdlhyWTZUVVAz?=
 =?utf-8?B?eFY4ZStFNHRZRnZpYkVjeVlueW9FS3V5MWVyMkQreUYyWU5jMEg3bWZjMW03?=
 =?utf-8?B?TndKb0hxa204NVdzQ284ZTFTSU5KWmk3dnhtNmh0dUl6TEM2K3RyTTc1ZTRs?=
 =?utf-8?B?cDBHaC8wcW9PSk9RQ2pUOHF5RDJndnY4MWlYRmpzUXI1K2p5N2Z1UnRaeDEv?=
 =?utf-8?B?cHBYZ2E3ZlZXWi9RYXhVejZGZnkxaEloQXlqbUFpS2hYdUlaUkRCVE1uU3g4?=
 =?utf-8?B?VFlPbUhnSytmbndpQk11WGZUQnlSWGhWeWFZZTNDcmVOdTFUWCsyZ2Yvdlhj?=
 =?utf-8?B?bkdFejdJakZ3OGhYdDFzbktyTmtMSVplSnR5NTRWMitpWVp4T01MUklqVVNG?=
 =?utf-8?B?QStMZGR2VEJqR1R4RUNONzdkc21lQ2doYU9tZW5OdXVMZ2o3OUQ5YzhZZC8v?=
 =?utf-8?B?d3hpUEp1SklVeTNicjRDNHE3bHZ0V285aWN5YjhaYXpEWjU2SWdkRUpkZHhm?=
 =?utf-8?B?bk5HYmxPQW9rQ2FqTkV0L0RuWlNmUCtmY0lBRWFkeXBxdVpNVXhUdU40cDFk?=
 =?utf-8?Q?Eo0uRUip/2udSbehk5tSB+xYSWa3a+NOGDgadzf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bTRMbkNQVXhWcTYrUlIyOE9Oa1JoVXo5dkRLN3NJMlRBUExTeHFKaXIwNGFr?=
 =?utf-8?B?RU5XR0RyOStOZlNPaWJzbHRSZGc5UUNHNGluS256N3YyNHVTVzZtUmN1VG5y?=
 =?utf-8?B?c2xvZWd2TjNSV09MSEhmdUE2S29iMGFwcW5SMTN6RHpBRUFqSW1QYzM1VVJv?=
 =?utf-8?B?SjBCUUdvN0p3cDVoYThPZHpzZm1yRmYvdVdxSlhDbTdMQ3JqbzlVUURoaGNE?=
 =?utf-8?B?UkRtUmJoNjM1L2JHN1NhMDRqM2hhMGZQUG1CRGx4aCtpcFVHVXVxb1J6V2JE?=
 =?utf-8?B?Vk83NUltQzdqZnRpclNRcHRReURIK2g0UUdRNzkvV1JmMm8zeDE3WGJUN3pa?=
 =?utf-8?B?a0l5UnN1MzhheDFJb1pKM1JHU0J6WlBaMlJqOFVONzltVk8vVUpQdUZBVjZV?=
 =?utf-8?B?M0pLaFVrREJxcno0MVc2aHZUbEFKY2Y2bDhQRWI2bDhqY2dEbTcwbmZleStv?=
 =?utf-8?B?M2poeno5S0hlZHBHQWd4TjFHWENRYXh5dXduSU1pZWlETUVvU1BjMzdJaGxj?=
 =?utf-8?B?dFYrWDdHcFZDMzB5Q2ZnMFlkR1hjeUtyUEVKalZzTTYwUGZvOWtEMlM1OEs3?=
 =?utf-8?B?ZWo5SWtuMmxtV2JLL1BjakQwWk1nUmpDSlVUalBVTWZCZWs3SlFGemVQYVB4?=
 =?utf-8?B?ck9TbW0xYmxmb0dWakZhWHRIVDdJVE9pOUVnamg5QjNua0R5ZkRiNTNvaGVP?=
 =?utf-8?B?VWhydzU1b1ppNHdobU9zYlVodE9FNU1Wb2pmaGJGYzJ4MTFmWmR6aUVEQ3lB?=
 =?utf-8?B?NXoyeUdNWW5nMUNaWm4xSEUwdjNMblpLWWd2UkRQQWNLeXBRZnVZTE85Nkx3?=
 =?utf-8?B?S2hUTHFVS0k4MDlKUUtRSlZUMEZIT29WcFUrdmRKVjhKRDQrWjlaQUlFU1JH?=
 =?utf-8?B?VlVVUlg2SlRZWVlONEEwRnJZa0dkNnFOaXBkaWhTeEp4NHA4RVF1cmc3Y25U?=
 =?utf-8?B?WWlSdUM5NFNhMytUbGFFUkE1bm0xNDN2VEtoWlFkTHR6QktTUm1RSm11N09j?=
 =?utf-8?B?d1ViRDI2QmVjVThhOFFFNVA2VmdaT3NraGk4ZkZwVW5ZS0w2c0lNN0lZbFVm?=
 =?utf-8?B?MVh0bTlsTXloemkyNkpBZDN5SVZWSGNlMjF2cWdxWjkyRkp3aDRGc0NnSENk?=
 =?utf-8?B?QWZWblR1b2FaWGZxYnphNVVEaDBEK3d1cTlWQ3ZsUXZxcUxIYXRZL2hjSnVo?=
 =?utf-8?B?ZWtmLzErc2ErU2IreGx5RWorUUk1bnZqcTQvNzY5b0c5ZjVFNWJYOGVTWjFM?=
 =?utf-8?B?M2lOek44QWJ5K2h0VnhEOVF1Z20zOXdBRzJtcEJVenlBZmNHMk1vc1RiWEhU?=
 =?utf-8?B?bWRuSitZQ0ZsTlpKR21IS2dNbTRyUVliT2NkWklic1A2WFJpOUNzeFJlTUdi?=
 =?utf-8?B?OFM3eEhtdDRhcEZ0bHh5UXloV0gwTjV6RDQvY2p3OXB2VytNZmNiL1B1T1pL?=
 =?utf-8?B?ZVF3VDRhS2ovWHI4QUl2bHNlSEI3ZHZiVzdjTEZxeGRDSkZwUStFQndVWlFX?=
 =?utf-8?B?SlF3Nm14MVZSZUU2a0x6cExNOHlJVHFaanlZMHBrV2k1VDJ4cjZ5Z3ByUjZZ?=
 =?utf-8?B?Tjd1Vi9zNm5qS3RXUzUyRVlRVTZDSFRERGRJdmx0cllNOHpySEZGTjl1dzNq?=
 =?utf-8?B?bzRxekdxbkIySDlURUV6Z1pUVis0cTVNd1FqN0VDTFFBOUkyV0R1NVVQeHBu?=
 =?utf-8?B?QlRIdFBNd21HN3g3SnlwT2VhUWVKcTVQVFZLVEZsS2NPM0g5enlmQWJ6YjNm?=
 =?utf-8?B?WWlZamNkOHE1QjNrd0ZZQjlsUjR5VHBvenlsbGI4clRXM1R6S3NmdGF2NTgv?=
 =?utf-8?B?bUYycmdMQWFrUlZiaksxandFUXdXbVpXQXZrUTdjTG1YQjlxVmljRVY4OEhV?=
 =?utf-8?B?djZhTjlMSGlPRmFLL2h0d3ZXNXJNNHhPNlIxSjd4VktibE1xVlJoQUJ3ckZj?=
 =?utf-8?B?WFQxdnZMeEdtTTBIWUpEV0NmbzQ0UVlOOWtzbkNKMjhMNE5WdUk5YVFISkhK?=
 =?utf-8?B?TmpTZk5DRHZEWTluWHFKMnZ4eC9CbkZvWjJIdm9OZUl0UWNYQjN2NFBiWndF?=
 =?utf-8?B?bTd3NDRxYk1xV1Vyb2ZLREtaMUR5blFOY2VnUzBIcGJUdWlSZkkrdGRnMHRh?=
 =?utf-8?B?b2hIdUoyVFZ6WjBXUnJQVFZWSHd5UDl6MFJnZ281UEk1T3R5Y2M0WFZhTjJW?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 233c19e2-8372-4832-2ade-08dcf268041e
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 07:06:14.2027 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MgfLSQKdnmvruvAZYE1hQTsZ+SE6XkR/Vg4bK9pu5RBoh/pQDSdDAGiuYcOfQUwo3eI8O0H8qg9vJWum7vwYIKWsIp71woHJiI630UXfFwc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7831
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729580780; x=1761116780;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=09yr/akPpvoOPtY5jf8DRz5GzChbIXZ4xEZnSQHhq0U=;
 b=lrctGSPjcYqZDeDpsbrnHM9/BSbQhLKbz2M3HOBzhkbEmAhPBcqR+ciU
 NU6lbYnWMh1I/WoULIj33JUk6cd9i14rWpchW1x4VIbMGmY3DboQAPzqb
 3F0Kmo4+CTNRxv4ClqTaFnkJzeqnkJijtR8RuuqEkdRRjq2othip86d06
 gr2SOjVcd8abztL++X/ecD2VAqrYTaZIu1x+hEdu0Zqfxfj7KubLH4+pP
 cyzVTxJYjz3lP81nH3JAenmD3aDsNIgIz8HL+iglKQeeRAvbxzDEvwj8x
 qgAy0g+B/QJT4Qhw3XifW1lcJDhoL4DNm0+z4GWfBzggm2YjZGS3+7VUE
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lrctGSPj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v3 2/2] igc: Link queues to NAPI
 instances
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



On 10/21/2024 8:48 PM, Vinicius Costa Gomes wrote:
> Joe Damato <jdamato@fastly.com> writes:
> 
>> Link queues to NAPI instances via netdev-genl API so that users can
>> query this information with netlink. Handle a few cases in the driver:
>>    1. Link/unlink the NAPIs when XDP is enabled/disabled
>>    2. Handle IGC_FLAG_QUEUE_PAIRS enabled and disabled
>>
>> Example output when IGC_FLAG_QUEUE_PAIRS is enabled:
>>
>> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>>                           --dump queue-get --json='{"ifindex": 2}'
>>
>> [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>>   {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
>>   {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'rx'},
>>   {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'rx'},
>>   {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
>>   {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'tx'},
>>   {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
>>   {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
>>
>> Since IGC_FLAG_QUEUE_PAIRS is enabled, you'll note that the same NAPI ID
>> is present for both rx and tx queues at the same index, for example
>> index 0:
>>
>> {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>> {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
>>
>> To test IGC_FLAG_QUEUE_PAIRS disabled, a test system was booted using
>> the grub command line option "maxcpus=2" to force
>> igc_set_interrupt_capability to disable IGC_FLAG_QUEUE_PAIRS.
>>
>> Example output when IGC_FLAG_QUEUE_PAIRS is disabled:
>>
>> $ lscpu | grep "On-line CPU"
>> On-line CPU(s) list:      0,2
>>
>> $ ethtool -l enp86s0  | tail -5
>> Current hardware settings:
>> RX:		n/a
>> TX:		n/a
>> Other:		1
>> Combined:	2
>>
>> $ cat /proc/interrupts  | grep enp
>>   144: [...] enp86s0
>>   145: [...] enp86s0-rx-0
>>   146: [...] enp86s0-rx-1
>>   147: [...] enp86s0-tx-0
>>   148: [...] enp86s0-tx-1
>>
>> 1 "other" IRQ, and 2 IRQs for each of RX and Tx, so we expect netlink to
>> report 4 IRQs with unique NAPI IDs:
>>
>> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>>                           --dump napi-get --json='{"ifindex": 2}'
>> [{'id': 8196, 'ifindex': 2, 'irq': 148},
>>   {'id': 8195, 'ifindex': 2, 'irq': 147},
>>   {'id': 8194, 'ifindex': 2, 'irq': 146},
>>   {'id': 8193, 'ifindex': 2, 'irq': 145}]
>>
>> Now we examine which queues these NAPIs are associated with, expecting
>> that since IGC_FLAG_QUEUE_PAIRS is disabled each RX and TX queue will
>> have its own NAPI instance:
>>
>> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>>                           --dump queue-get --json='{"ifindex": 2}'
>> [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>>   {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
>>   {'id': 0, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
>>   {'id': 1, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
>>
>> Signed-off-by: Joe Damato <jdamato@fastly.com>
> 
> 
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> 
Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>

> 
> Cheers,

