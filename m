Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D607B25EAF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Aug 2025 10:24:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDFD960A7E;
	Thu, 14 Aug 2025 08:24:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PXZSJcRBB-Jd; Thu, 14 Aug 2025 08:24:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BCED60A69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755159885;
	bh=hFNU0GDre6MkJFquXv+L/1H2UfwivFHgdkKhEhTxvBY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gr4bUOLasm4drejtFfn32xGMT4RxEpsAMVy5hlROzewFGEtgNP/p53WxAebczM4dB
	 I0j4fFHcOq/skxRISQ54TxJjX/JUaF0gJlHVelKPxnGMAAWXwrNETvZhFjzmb/LEeL
	 EWQNpNlRF6gowtVTOCLTz1mPRFtECKeRPNnCrOC1VDspll5W9uieBs8/EaErEP16lH
	 5vi6pHHdAtF+nTBaNaIRmfKt1/+p/4JlxAOeJg7Jo7ztCeDnedNDwAPtdgkXm7y9T+
	 Mm/L4/Aj0iuq7IOsPt5VALWSqhcrHtebwvPdmr9gRbD1PGba4go6KJwTHDiBXsudna
	 9yZcFqd/WQ0/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BCED60A69;
	Thu, 14 Aug 2025 08:24:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 03CBC1B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 08:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E99FB60A70
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 08:24:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AeGdS8mI2Tyy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Aug 2025 08:24:43 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 14 Aug 2025 08:24:43 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 349B5608F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 349B5608F9
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 349B5608F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 08:24:43 +0000 (UTC)
X-CSE-ConnectionGUID: q2JKJPpsT7WDe3rjRsVT1A==
X-CSE-MsgGUID: 72Z6dZWkRtGDMHy+vtPgvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="56677538"
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="56677538"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 01:17:19 -0700
X-CSE-ConnectionGUID: I9BKFjqCRPCYdde35ror8Q==
X-CSE-MsgGUID: /doGlSGcSfymrdff2OyH0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="197691442"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 01:17:19 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 14 Aug 2025 01:17:17 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 14 Aug 2025 01:17:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.76) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 14 Aug 2025 01:17:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ULKkHWYAtjO+4mdnPxcxQL1xBS4RGtchg4ZV391Li42qvR67Zjn8tElSBVOvNJ9ynHVC4wLIcPBTsM2APZqLY7NEBLBREzx8da9Rn4qyjzWCWTZ/si4fYF+dUBF5DReLaChb6VU8eU5+cC+8aKtxdBjDI5sPMdhaKB8vJf5IN4kWeWVkLgOhmYqFBvHSFm2Ctb8ZypdMPVdv1KdJ7k9SpO0ElNl8pFZaUFjOuUdrQ75PrhOlkrkJEgtiGsgpGqWB8Q7MhX1IXKKFPKGtVXIBpnMUr8gEgVZPA2/6No0qz24ZW7sUpF7gWgN1d1rI2nQnEwELfHOe10nJE0Szvi51/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hFNU0GDre6MkJFquXv+L/1H2UfwivFHgdkKhEhTxvBY=;
 b=k38vn1mufuLHXFCuf93ys+DJIQ5TIivjtbj1e3lsEtTgIbEjlqs5G6ZUvfzxtLHeuIAteiRU/zwD0n1DfcaUi9av3w28UMeEvx5aivkzsttKj2TsbT5hvePQPROtRUoKqeznVDk3vrxpX3JTKCZMhkZw9JiZJPhcos06/anXqwJDyUmQ24nqaHMClPuEWg5quX4oPZk1YQG0HgNZ9X0TUbvvM2vX2LmbnXwmn1tx/8dRhPbP6ckd0yOZMz24e+Xq+8wY4YWTKnbBdU991opyGwLpGpBSj944zK7bQqUf5cWlZml35yB7DmKjG8Ax9f46o8+X4D8XeY/WWEdmyelGIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB8152.namprd11.prod.outlook.com (2603:10b6:208:446::8)
 by MW3PR11MB4730.namprd11.prod.outlook.com (2603:10b6:303:58::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.15; Thu, 14 Aug
 2025 08:17:05 +0000
Received: from IA1PR11MB8152.namprd11.prod.outlook.com
 ([fe80::c08b:cd53:5bd7:7784]) by IA1PR11MB8152.namprd11.prod.outlook.com
 ([fe80::c08b:cd53:5bd7:7784%6]) with mapi id 15.20.9031.014; Thu, 14 Aug 2025
 08:17:05 +0000
Message-ID: <5b196a7e-1992-439a-9407-30c1867bb9ee@intel.com>
Date: Thu, 14 Aug 2025 10:17:01 +0200
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Milena Olech <milena.olech@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <anthony.l.nguyen@intel.com>, <richardcochran@gmail.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20250813173304.46027-1-anton.nadezhdin@intel.com>
 <ad9058eb-f1f9-4c38-b04f-9761121a48df@molgen.mpg.de>
Content-Language: en-US
From: "Nadezhdin, Anton" <anton.nadezhdin@intel.com>
In-Reply-To: <ad9058eb-f1f9-4c38-b04f-9761121a48df@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA2P291CA0020.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::9) To IA1PR11MB8152.namprd11.prod.outlook.com
 (2603:10b6:208:446::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB8152:EE_|MW3PR11MB4730:EE_
X-MS-Office365-Filtering-Correlation-Id: a5db0e1e-4bdb-40e8-a803-08dddb0af469
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QXdHS1N6ajhJczJtSDdMOHBWTzNNMzB3NjJZNVFKK1ZSNkxlcEFlL0dDLzJD?=
 =?utf-8?B?NVduaHFyc1NBYkJLaWl4dUNIVnBhcGhhNGxFakMveTJYeEhsbGJZMWZ0UUMv?=
 =?utf-8?B?R0tsNlBDSmxiU1FaQXU3WVhJbTlPZmU1WlMwazFXQVRBUVZ3N3JkWk11Tk53?=
 =?utf-8?B?OHIzTUg1SFNqS21IbktFSWVlNmdKNVpwMWVvMXJqcFd5aWE2RzJ6NWVOckNQ?=
 =?utf-8?B?Q01iZVRkZDR1Lzkxc1E5eFpCZFdCNW5JVml1S1QzdytjaGpxWEpKc2NrakFh?=
 =?utf-8?B?THVtK3BjRllydmNaeGRHVUxieWlXU3kveWJRWnFzeHBWVllCUTlTd0FmVXRF?=
 =?utf-8?B?alUzeTdWRWlOTkhiR2JKbHBtZUc1ZmdjcVpOTWVJQ0doRmRmR3pSWkR2VUc3?=
 =?utf-8?B?TzlOL3BoWTlYeU9iZ1dEL2dXNC8yUXJCWDVySEJIVStIVHduMzNIVWtRMy9Z?=
 =?utf-8?B?UUJ2eExMM2VDbGRqbktIWkU4WUpMMHVZNmJPZVUwQll6bVkvajhVQ1RwS04v?=
 =?utf-8?B?TlN3WXdsTU5SSzU2aDdQNE1Gb2I3MmVpd3IzTjNyZE9IcmVyZHZudVErZzJV?=
 =?utf-8?B?YVBMNWE3dDdzNGltaWFqYWNpdldIbnA5Nkttd2pPeGFkbDV3K1EwejhhbDUz?=
 =?utf-8?B?WHMrZkZ0SWgvTjFLVm1ERVMrWDVFcmFuS0xId3dKQkNCL2k1d0JoSG9DUFBF?=
 =?utf-8?B?VlErdmFhNEt6S0lTcVY3RE84cmptZE1xNmZ4aVJLSDhWRnFnSDd5a1l1R1hi?=
 =?utf-8?B?T2NtOUtQcE4yWW1JNTFxbTB5TDR6Y2tHQkNtam0rSmVWK2tRWmNqOEZGTzdl?=
 =?utf-8?B?dm1oVjkyOWluSXo4WjhrVkZxTU5hQ3U4a2NBRElPZDhIeUlhcUQ0S21lcE1H?=
 =?utf-8?B?ZE5ESWY1MFpzMTlDdi9nVnlUdm1hbzIvWXBMKytEUWFXN2dGUnVmbDhQU1pY?=
 =?utf-8?B?aDlKS2pBYktQMEoyUjdhSWlYWUxCZEJsQ0NLcGdMUTlnazd2RVd0SzRyelhu?=
 =?utf-8?B?UGtlY2VFSUFGaVRXS05BMnZmdWhlbzk5ZlhwS1F3TnpseEVBME9HVVFyYThB?=
 =?utf-8?B?cVVmckk2MlpudkV4OEYzQjhnSDZZZ2I5S0NpNmRCRGI0ME1YTTFjb1NuUWcx?=
 =?utf-8?B?cXM2ZWRDbDR3VExBN1VTYWIySFJ1dmhyMkNyOVdJeVRiaWF5Q1dlV2FlQ2Vp?=
 =?utf-8?B?V08rTkhWanZ0ZFZCenl3OUZIR2JWOTlFMGlXU2xvTVdCczhoT1BmNkYvMFZ4?=
 =?utf-8?B?TWVjSisySUErS0xCMm1BeE16ZFJhVmtDS0t6SHlMSFY3V0xsTWUva1FXQkh4?=
 =?utf-8?B?VWs4cWxLYW1DblE1b2pQeWVMYjk2c3FwbHZXVktvcnE5VzRlK0thOVBMN2Vz?=
 =?utf-8?B?N2xLZmhaRlpnU0ZCK2kraktBeEsxN2Y5bVZXV3g3VnBNQ1V5bG9mbFFkWDVa?=
 =?utf-8?B?VkZ1cG5CSjNPUnlGOFEvelIxNlZhTFJkSTdxTUVSRnQybml1WVNDREF2Q2dt?=
 =?utf-8?B?MjJHYXUzM29BUGtWR3ZCYjdiNHFvTk5UZjdzNjBiZjdaWEoyNmtwVjM1dWV5?=
 =?utf-8?B?Vy9BRHRRY1p4emZZSVNGVnUvRVFhVjFQbHdsT1h2d1gvdlhWU0owLzlUYW5Z?=
 =?utf-8?B?VGdjQ05CTnpRZGhwaVhvaldjbEZRc0k5UWpzSjhreVd0Sm5NZjhZR0dGZHlT?=
 =?utf-8?B?RHBPUXdGV05PZ2RWSFV5c1BudXpDZnp0b0UrWkVZd2RkZjAxTlB4bkZjVG85?=
 =?utf-8?B?ZkhEbFNpM3FkTWp0c2dYOC9ydzMyWENXdUtKOVZ1UXRvV25xenUyQUx4bkdh?=
 =?utf-8?B?aFFRMDB3WmtiNlZJK3A5NjdWTjhNOXpXUDYvOHp3YzRPNHY2SUhqSTNRWEFp?=
 =?utf-8?B?eU9oaGdCREpGbHJuMkNjUVcwaWxiQzNUbWp4VUZ1aHVaZ1E9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB8152.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STZ0WWRhWTNlQW1hM0NwQmlpM0xqWjFEbFliSCt5N1RaWWJEU3BQU3M5cU9Y?=
 =?utf-8?B?K3MyNlBxZjBaQ1UxOFRJZzQyK0RIU0lWMzZDdFV2dXdBR0xJanFSV2ZMVktP?=
 =?utf-8?B?SjU3SlRDNkR0K21WMkxianQvNHJTTWJtbEFEZlUrU0JoTm5Ma2p6UjlESUhW?=
 =?utf-8?B?blU1QTRnOTUwRzRheWQwMnVVc0Z0TmUxSktLVVBqbUk2R01ka0F5NEpkNDJU?=
 =?utf-8?B?bjljSUQrdFlUMmtJbTdMWnV5RDBveVZ0UXgvQkphRTBQVjlvK3R5NjlMeHZQ?=
 =?utf-8?B?RXEzNU9qNTBEYnJjak5QR2w2Lzd4V0hrL3BKTXpmUjhJV3pFR1NxT0pSdnQr?=
 =?utf-8?B?dFpjbXBEZENpdzlkN2RrTTZpd3ppRjIwNllHM1Bva2NRVUpCaXlSaTVOR2lC?=
 =?utf-8?B?ME84L01UMjdUek1lYitJZmdiM2xLSjU3SHAwdUtSRVhQQTJjYnNPQ0x5YW1L?=
 =?utf-8?B?bHhkTmxSVE9Mb3NyMVNONlFYTnZlb0FEb1ZueE4rcGFZaDlGSDBNT1BZN0E2?=
 =?utf-8?B?anhrSDRpaS90ci9KdVpnVXptN0ZlTHhkOXdZcVVZRHpkLzVlWmV2cDBPT1NR?=
 =?utf-8?B?RUgrSkxLcFNFY3lBTThhU3RqWmVud2pLeWE1SXdueDRBODdUeVJRNzY0WUxt?=
 =?utf-8?B?Z0xOYk9sZzl5RXNBT1Awek1BcVJURk5UN20wV1phTnJSQVNMQ1RiQjFHWDAx?=
 =?utf-8?B?TjFBdHptcXNaQnh3MU1QSEczdk9OT3grTnZaeW1Nckc3eG9HMDdPSCt1UUl3?=
 =?utf-8?B?akkwNExHNUJ2Y3BEOHRobmMvSm9reVVOeTBWWHB6d09lWG5IYXZGakZpUnRW?=
 =?utf-8?B?UjIvcnUxclRucW9QVGJUNmYzaXFibkxSeUtXeXVPQ2tycW1PcHVwZGRDeFR4?=
 =?utf-8?B?cGVPaTF1djc4QURQZ3lHWW9MSjhnOHhBTVhoU29EL0lDNHJPY1praW1FYnVQ?=
 =?utf-8?B?UkNrMnNXcit5TEdsL2h4ZFJhVTB5cktFa2xSYVlmOEdaTS9ETjRkR1NuME1u?=
 =?utf-8?B?RVJ2K2lXTHQ5UWt3Ynh3Z25adXNvcVRiMU9vZ1BwZXlJcVI3RG1FWVorVzQ4?=
 =?utf-8?B?MFdkcXJLdzRFNi83Q3IrL1FkenozZkN3RHozRnR2aWJqL3B5NXZRSHhnMUJv?=
 =?utf-8?B?a0hpYm9kL0sxR0t3YSt2TE5xelFPbVBYZFF0ZlR1NG1zUWVpKy9qbFRTSGN4?=
 =?utf-8?B?NXQ5eCtLV2tXZ3FTajUxOS9qSXgveGQzdVZVSythUWxmdzVvUno1RFZRUDFB?=
 =?utf-8?B?ek0rZ3RjeGZWVjZmYy93bU1CbVVtdE1OVTFxOG90VSszN3c1SUVQd0haZEZW?=
 =?utf-8?B?dVB3ckZRWnI0Wjdsd05FMkVGbU5oUFZZM2tDNi84MVo1TTJoOXg2QnJTWEdn?=
 =?utf-8?B?YUpzZWRQQyt2UDBHSWh2UDZtTS9OTHNkU0h6bnlyMG9YQXR3NTFrRWczZEhy?=
 =?utf-8?B?dEYxZkZlTjR3YnhKUmZyU0lWS3hBd1dYY2N1R3JPekVGbkhUR29XQzNBVlFO?=
 =?utf-8?B?Ylh0NkY1RDl1YTE0MEEzK1ZMaDNzcGFzaTN3YmJCdWVacjlQVHlUWDNWWE5p?=
 =?utf-8?B?R1pVdVVPZWFvQ0NkNGxZdEh6QUF1Ujlra3M4OHlrVmhKankzTTc3dlIzSzRQ?=
 =?utf-8?B?UFB4dS9OR3I2YjE2V1l2TjRJWUJVNFBVR1hiaTNkbm1rSkE2Znd0OHR3dm92?=
 =?utf-8?B?d2JuaDJ3Q0YwWE1IUDVTc2svc3FRYTkzcmxNNVNhU3kySWlvVEExaWNPWitB?=
 =?utf-8?B?V1BmY1FXcW1nWjlhS0tTZFkzY3p4Y3hPOTkwaGVldG5NMmVvSGRmK0xqL1c0?=
 =?utf-8?B?VjdVSU5zMFBpcjliaUo4OENnV2RRTjVuRVFwYlhnQTk4L3Q0S3hXZnEra0o5?=
 =?utf-8?B?bHFUeWRyblRHYUYrY2hvbnFhUzlCTEVZTVBYM0lYeThGekNEYUFnVXh4aUdn?=
 =?utf-8?B?Umt5d2RVdEwyK0RncXRVckhZcHFhMTlxc0hKdlJNazh2UHFYWDhINEpRWmNh?=
 =?utf-8?B?WDZVaTg4K1YxeXVNZjhyeTZuMHNNeVdWMjY4VHpxdFVHK3RIQTE5VUZ5QnJQ?=
 =?utf-8?B?dDh3RHdmUVdPYlFRQTFyd0d3blNGVHY1OWwwSHIwL21WSllBeVFhcW5HanlF?=
 =?utf-8?B?aDk5YkpGSXB6ck5lc095clpwaDBLWU4xSXFPWG9WTkE3U3Vmb1lqQndHMzRX?=
 =?utf-8?B?Smc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5db0e1e-4bdb-40e8-a803-08dddb0af469
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB8152.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2025 08:17:05.6493 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BW2U4obifU9D/ViXvt/s85sth9QysWsy6KiZSN22NG6kjMqULCYbXpgEDIAMB6wvt34J0AryMH0pxGBTux9A+oJ8GkQLaOFjgj3SDdxSLqA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4730
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755159883; x=1786695883;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m6P4ZgSi0C4O+LovFB1AjOuvdT7s4LvzpC9VXLvsg2A=;
 b=OK2DVQXo0MT8ZZQadPkQOjxHN/FrLI6VrqE9Ch8F4cLTiajXdny0Ssqm
 3zPEn+pTxhnpT7t5pMvU8BIcjTTbv7PcK0CXOgcVjhnhdwagHT62cwABM
 LcMhvWjHx27Xm/2xRfg3+fp1dCMD9PGgON7sp6SVLvVltc/xdAkH1wlMT
 os92PL6mmbjg2YCj4h0qstN/Cd0Ws4TuXAExfII4bVt4/k0G6mHdeqdtm
 Twdg8WQ3U/zdyYlRbD4TfNfPjjRh1R3t2ut9vp4PhB/5JgBFqQ+mXMFnO
 ezFVMaHIbBYtSRlPVGAYO4DibU3FZTkwD6ra/cgpWc+S6geGsq9grSXNI
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OK2DVQXo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: cleanup remaining SKBs
 in PTP flows
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

On 8/14/2025 7:19 AM, Paul Menzel wrote:
> Dear Anton, dear Milena,
> 
> 
> Thank you for the patch.
> 
> Am 13.08.25 um 19:33 schrieb Anton Nadezhdin:
>> From: Milena Olech <milena.olech@intel.com>
>>
>> When the driver requests Tx timestamp value, one of the first steps is
>> to clone SKB using skb_get. It increases the reference counter for that
>> SKB to prevent unexpected freeing by another component.
>> However, there may be a case where the index is requested, SKB is
>> assigned and never consumed by PTP flows - for example due to reset
>> during
>> running PTP apps.
>>
>> Add a check in release timestamping function to verify if the SKB
>> assigned to Tx timestamp latch was freed, and release remaining SKBs.
>>
>> Fixes: 4901e83a94ef ("idpf: add Tx timestamp capabilities negotiation")
>> Signed-off-by: Milena Olech <milena.olech@intel.com>
>> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> ---
>>   drivers/net/ethernet/intel/idpf/idpf_ptp.c          | 3 +++
>>   drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c | 1 +
>>   2 files changed, 4 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/
>> ethernet/intel/idpf/idpf_ptp.c
>> index ee21f2ff0cad..63a41e688733 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
>> @@ -855,6 +855,9 @@ static void idpf_ptp_release_vport_tstamp(struct
>> idpf_vport *vport)
>>       head = &vport->tx_tstamp_caps->latches_in_use;
>>       list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
>>           list_del(&ptp_tx_tstamp->list_member);
>> +        if (ptp_tx_tstamp->skb)
>> +            consume_skb(ptp_tx_tstamp->skb);
>> +
>>           kfree(ptp_tx_tstamp);
>>       }
>>   diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/
>> drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
>> index 4f1fb0cefe51..688a6f4e0acc 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
>> @@ -517,6 +517,7 @@ idpf_ptp_get_tstamp_value(struct idpf_vport *vport,
>>       shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
>>       skb_tstamp_tx(ptp_tx_tstamp->skb, &shhwtstamps);
>>       consume_skb(ptp_tx_tstamp->skb);
>> +    ptp_tx_tstamp->skb = NULL;
> 
> This hunk is not clear to me from the commit message, and the whole diff.

So in idpf_ptp_request_ts the code is making copy of skb, normally when
this copy is consumed in idpf_ptp_get_tstamp_value but in case of a
reset the normal flow is interrupted and skb is still in hold.
This patch release it during reset procedure.

> 
>>         list_add(&ptp_tx_tstamp->list_member,
>>            &tx_tstamp_caps->latches_free);
> 
> Kind regards,
> 
> Paul

