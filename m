Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4475C8CEBBF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 May 2024 23:13:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D371140885;
	Fri, 24 May 2024 21:13:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZnMJrTHGnBDQ; Fri, 24 May 2024 21:13:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1B3440823
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716585186;
	bh=8v5OvoLZdUfUCIHtmzlrMlL0b9JP/j+jXVNMT5gkGWI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yLAjElwxOnm5WA8HzI3Qi5mLwr7ARh7Axj6iud74ATo/FdwR+Fbm92DNZ5GeyJHtI
	 Akn2el0g0FyYMWzABnLehGcaPjdXbVWsChClZb/ef5bmNNvFZOWNzdQq85azo4s465
	 FAvIC/6CEDwjXkxlb8uY+LV34KA2sLAkFt18vbOjEOK+Igf2iCokdw/AxJdcKH8Re9
	 MeNWg+aYrXvWUIejD2JI1SPvQdBd8QadTqObJTX9Ti0Z9JhwiOvTY5P93J+LfsKJFp
	 OGk1pFVuGaARmGzpDh20t5Z1r/HTUmgchs3q6gX2FCY58/bcpCpPJ/am77LpR3oNrr
	 wIq49D0Dy+jrQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1B3440823;
	Fri, 24 May 2024 21:13:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F3A1B1CFE15
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 21:13:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EAE0C4082B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 21:13:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3plQKuaz2_fs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 May 2024 21:13:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 092AC40823
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 092AC40823
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 092AC40823
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 21:13:01 +0000 (UTC)
X-CSE-ConnectionGUID: p7mLDZh0SPqhroKajR/9tg==
X-CSE-MsgGUID: r68sD6nFRTmcCwNDCrju4A==
X-IronPort-AV: E=McAfee;i="6600,9927,11082"; a="35497676"
X-IronPort-AV: E=Sophos;i="6.08,186,1712646000"; d="scan'208";a="35497676"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 14:13:01 -0700
X-CSE-ConnectionGUID: cDsq6pZzTc2pf3teTOF48w==
X-CSE-MsgGUID: uPsjiOvjQa6bZFMJ2QR1Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,186,1712646000"; d="scan'208";a="34239749"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 May 2024 14:13:00 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 24 May 2024 14:13:00 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 24 May 2024 14:12:59 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 24 May 2024 14:12:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 24 May 2024 14:12:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cr2j9vC3kqA/c52CVkx8iBfOyNEFmoFEDQ8CMQU81ivthIibNfzV2PyYYNKqFGW9khj7owuUvbcTBRbSrvy1l04JUSjm+GObF5O3DO39PNj3cuVLKN0eS/YzIzlyC5GKUeacYhT7grPM3Z9SvG3NrT4ff5rACKsHYe1tt94N7t8F8iWAVuREh396srNoLddjoDo1UB8fpETIryYqcoiUXl7M1Socuy8yoq5p0Kvtahy7ygtUCkF0SYygeL2lqUzFU2PNyyKoaVMBK7jVgLURuVYhLR+rdcv2hhkluvsVuMufFVnVA19wfHmhOWbfSCnMLZtUkH2ENHQJQAJqjvYZVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8v5OvoLZdUfUCIHtmzlrMlL0b9JP/j+jXVNMT5gkGWI=;
 b=OgKVkQU6OwLKDMHTAhfuipyNhUSPLpsKi3d9iCzhhpchHaH3NNJqgDuSqyBh5w3Py52EF88xdcMSW37VDM17rKYanBMB+hdQAu//32IwT48FW/rMVhZ/OOSjZir62mtE1lGOa5PlPbgjf2ROaNW33u47dJF+IK7giXTgpJdo0IHrPsLybN6U3bgRIl/sT1dEvYdURBZmOjqORN7yNKo+ENBgLuxG9J4AQZr+7wESYS9QWZ209EyP+xMHijwKYuXYASlF/A7ocAgV+Y2KvldNn8m2a6Vpu6fLUCz2dvEjFxQUDyTZWdwGxwcWnDAkNNUJ7/EJfRr6F2H9qIW617VLuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CYYPR11MB8431.namprd11.prod.outlook.com (2603:10b6:930:c7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Fri, 24 May
 2024 21:12:57 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.016; Fri, 24 May 2024
 21:12:57 +0000
Message-ID: <df1f4dc1-446c-468f-83ba-8cd27ff39014@intel.com>
Date: Fri, 24 May 2024 14:12:56 -0700
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Anil Samal <anil.samal@intel.com>
References: <20240524135255.3607422-1-anil.samal@intel.com>
 <20240524135255.3607422-2-anil.samal@intel.com>
 <de98ffb7-91fa-4629-8429-8699c9ddea87@molgen.mpg.de>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <de98ffb7-91fa-4629-8429-8699c9ddea87@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW2PR2101CA0024.namprd21.prod.outlook.com
 (2603:10b6:302:1::37) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CYYPR11MB8431:EE_
X-MS-Office365-Filtering-Correlation-Id: a1fed13c-03f0-472d-2fc4-08dc7c364907
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S3J3VjZvdTJrOG1kS1ZJWUhvSGs3QVVUYzZyd1hDYnI1RktrZkJZOExlQUYx?=
 =?utf-8?B?UzZHRkxRRmptK2dmUng4blpVUE15cVlROWp4Nm1kdHhEUzBrcGUrbmhVY0Fj?=
 =?utf-8?B?VWM1SkFEQ1Nic3FZSjVBaEoxRGFHZEVPVWlTNGRQeUFLZ3RrT3dQOFJWMzh3?=
 =?utf-8?B?Zk9XUlhjMzhoZDNsVjBubWxPRkV2SE5uVVR6K3JYZ0NRQStSYWZpWEZhRFlR?=
 =?utf-8?B?dVBVSzV5U0ZvNEo3Yk83ZGI2NmZ2OWpGUnlBWmtGN2dDRzVXcHk1RW54ZEN0?=
 =?utf-8?B?WFg4RUExVUlxMXMwdFBIdnBsVzJDeXYzTUVudmt6a0pLQWo5YkF6aEVmZUtl?=
 =?utf-8?B?SlZLdDdjWjFWanRxaGNRM2k2NjlsbXB1UzNJaHBTRjduSnZzU1hLQlJBK09L?=
 =?utf-8?B?dk1KUjlzWTFIMXBMUmNla0FJUnFzRXZrY2NYMkVEd0dGdFh0bmFTNStpTmlu?=
 =?utf-8?B?L244bHRqUXZrVUsySFVlMUZvQTA2dlBKZWVIYkY2MC9QZENJeVQrRUVnRU11?=
 =?utf-8?B?THZJd0FVYThEVVpxOEpKWVZPaTJDOWs0TXVNemJkd3QvQjhmWUFobDgrb0VW?=
 =?utf-8?B?bDZLcXdVazI1QVJId1BFYUlSZDcyZEU4VWdDYlBJTEVhVEZnMldHaE9SVmRX?=
 =?utf-8?B?VXhqU0g1OG1xOTV2WDhWODlqM1k2TUVvMUhEMGF3YUF3VVk0VW0wa25mU3VC?=
 =?utf-8?B?VFBhK2g3YVl2WGFXekFrSjJjSEo5TFB4K3JxUFdseFlMMUcrbGF5MzNJbTg2?=
 =?utf-8?B?YWxKbGUyb3QzV0MvYjZacXkyR2Z4Yzh6d3g1bjVsOC93ZFFzV1BGNUtBdE0v?=
 =?utf-8?B?Ykc4VUs3TkZITVoxUGlwZTdYaytCaFRoTUpFTzZqOEJGVkk2bkprYythQTJ5?=
 =?utf-8?B?ZmJpWEptSytHa1ZvU25qQXRIa1BBZmRORUljeTBVVlZ5YU1rWW1KVnEwcFlH?=
 =?utf-8?B?T1FyNkcxTTM0dFk3U2V5dHNPTTg1UHk2aE9YRlJIWFlLVE1LZURTNkUxWnM3?=
 =?utf-8?B?djMvUWxZVmZiUUo0QlVlVWlIYWNaK0Z6OGMweWh6RzNvTml3YzNrMzVPbmNk?=
 =?utf-8?B?RFRCQmp0S2RMa2NkZG9sKzVpUlVqcWlodm9GMUlrY0ZaQVBUb0FFYWtkOHo1?=
 =?utf-8?B?M0lJWkJoekUvbHNJMTNMdXczd21kNTl2S2ZXK20xVnlOUjV1WVJpL204TUo2?=
 =?utf-8?B?cHNubkdMeUVGNzNDUUNGZzJDb0FpeHFHY2cxVkVZUTExdU50THVNL04rSGpk?=
 =?utf-8?B?TlBTd1laQWRtY1JLbDNOVThHamFpNW5HeEdHZHlNb2JXWElKZThxOTZweDNS?=
 =?utf-8?B?UzdtTkxtbmRkV2grYWlTVG9XeVBBRzZ0VGNKcTVPdml3OWJNaVdSZHdqNExz?=
 =?utf-8?B?MWhhcitVejhhaGMwRERESGNIUFUxeWowK3AxRVhkdlJ1THFyclZRSzVrU0Fx?=
 =?utf-8?B?Y2tubzFsTXFkOWJwbnNUUVYvbndNSWdKU1U3UCtuY0RIbmpPWGlkZit6RDd0?=
 =?utf-8?B?MkdkYW1jNDhFZVlpTktFaTNmQ2N3UHY5S0VybkE1NjFaNlg5SkljNThjT1pa?=
 =?utf-8?B?RmwzdHJTbzIvRmgvNzhqb1AzR3BvSmtSSGV3YndCZzlhaEY5WDVjWVduODA4?=
 =?utf-8?B?VXVYUHZoUWJkZkVQcGdIWXhKOVFYRkM2b1E3SnZSVkpOR2RoUHJnRklnSE9N?=
 =?utf-8?B?OXloa1pEOTFFUnJqRmNHV3ZhY2tVaEgyVnM2d1lGZWl3bnNlR2hJcWxRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2UzTVcvcUx1aEUxTi9lNk5DaHFURUx2dktWK0pXNnBkZFNMSkpNSm41YjR6?=
 =?utf-8?B?c1NBc3VGdytyRmJzcXZwVjBITkdpUkc4L2Y2Lzg1OFhIQ3J5VHJycXZOWnFx?=
 =?utf-8?B?dlVFUldheEJEbzlpSW9jWmYyRUFGK0N0RFU1ZDlHSlZ0RzBMN3JYb0xyczNC?=
 =?utf-8?B?ektQNnBCZGlpK1RUSDJsS1V4TkNnazRrYVlNOFY2eDIwWEZ5TjZWVUtQdEt2?=
 =?utf-8?B?NW1hQlpHMDdncCtqbFRvMS90MXhhMy9JdERNK2dOb3JQVjVKZWpsWStxVThh?=
 =?utf-8?B?bWw5MDc4SmJhUGd3Ni85cHpLWmVpRU13VXkyZ2FNK0FsNGlUUS85SnJ5YVVy?=
 =?utf-8?B?ZG5Oc2MyTm1aNXM2R2JPN1FBbXlCMUZ6TFc3TjY1Um1SNDVDZkJhSE04ZjRQ?=
 =?utf-8?B?b1N6MEJEcXFqR0tla2ZFQThEMDNRajFOQllJbTU5OHhDSjY1Vm9uNzV4Zkha?=
 =?utf-8?B?YkVYaEZSSHhCazFMa0paQ0pNM2pSbEkxRVNuS1FyNUVsQjZtZzJZWkVHMVVB?=
 =?utf-8?B?ZVdJYlJYZzd4c0N4RmZLczhYMVhDckxZMTExSHlKQms5bHQ4b3VxRDMxYm5H?=
 =?utf-8?B?TXJHdzNwRHJaYmJIMG54Q3l4UHQ3bC82S1R3L2dpNXRlSXIvMCtkKzg0d3U3?=
 =?utf-8?B?S3NMck1TdERBelplK2VnYmwyUW5wQ3RUNEsvVFhGU2RibG9kblF6RmsyNHl1?=
 =?utf-8?B?SFFtbGJXbDdFQjd0blozMk9CWk9odGkzNGZwQ2s4bDhScDZWNG9GVkRiWHFT?=
 =?utf-8?B?SzNPUXl2NDl5NDRFZ2pnM1ByMFVUbkw4eFAvN3RBWW1BNE4wbHFPdzJBbjQ3?=
 =?utf-8?B?VHZxTFBSdlJUeU9SRXFaaUNsZGEyWlZCZ2ZYTllGNVpTR0IwcVZ4aFFINk9n?=
 =?utf-8?B?TlJJOFFKcjhXM25KMzRUVWxUS2E5UWFjV1hiZ1NHY3RmdTJXc2hEc3R6aE5M?=
 =?utf-8?B?ZHhMQlFFdmt5MW03ZVVCR3RHTjVsL3dET0hNdEpzQUdsWGtaQnkyVkk4M1ZV?=
 =?utf-8?B?T1JwcjN2RFU5TitmWjJCclBhbjRFR0ZHRFZVcmh1bDc0b2swL3R3SGNHcWwv?=
 =?utf-8?B?eFFINjBXSDJRZzRXM3hjQ200MWxCNVBOQ1lKalZOdUZuV3JaUXFtTUZpR2Za?=
 =?utf-8?B?THdHWFlhQkQrTWpodmRGaU85U2hMaGVyd0V5SnRJcDFhbFFybitJZjl1MUo0?=
 =?utf-8?B?MkVlajk3V0hrNDV0endNRVlmblJkOUU5L21Qd2t3YVlYOEorY0Izb1J0Tmht?=
 =?utf-8?B?UjZEOGgzQmtZcDRvcTEzb0pVNURHa2oxMWJNWHB1NXN0QnhudnVycGRmRENX?=
 =?utf-8?B?R2V0VzhNdGZ4a2xrNHdZeWlkMHpua29SMDdpRml6OUwxUVVxWlpvcEx0V2d3?=
 =?utf-8?B?ZHYzV3h0Q1htZjNEbW5zVDdrZG5POFZOWkVTMHQ3WjVVTjgxTFF5WXVBSzl2?=
 =?utf-8?B?VlJCdUc1Q0lNaE1uYVBSRTVYSEZ5Mmx0U0cvaGhhRS9uNi85QUdOcGlPNWha?=
 =?utf-8?B?b042OUtQWUtTR1lMc005aHFuSE5mbnl1VmxBakxGaEloakRRY254YmtTOElZ?=
 =?utf-8?B?K3d3cUtMclUwQ1pxbmNWbWpLNDE0SjFJZ3pwMWpxUGZIV011ZDZXZy9jdW1T?=
 =?utf-8?B?N1prK1NJREhOYlJuWlc1VlJwUnVGMnNpdjZPMEszd0NNb0c0aFp3RGtHejFM?=
 =?utf-8?B?Y08wWUVEZmRzYXcxcWJ4QWoyNlNUQm80Tys1WmwxM0hzU3VQK1RTamJKVTBJ?=
 =?utf-8?B?Z3hXd1R2bnlCRmxEQUdXeEpqNEo3T291WEk5blZHUWRMb1VZSnhlZTdoY29C?=
 =?utf-8?B?NkhPM1FKZm1JRHdlR2o5ejZwNWswb1BGVWhlQ1FONGhjTG1TQTcySUV5ZlhC?=
 =?utf-8?B?R2ZDVE1LY3MvaFdDbFVGS3ZkTkMvSHlPL01aM2hPZmJ5Qk5GMDh4WGRHbXNO?=
 =?utf-8?B?NTlWOVhCZktUNFNiS1VYYUZFbUxvbjkwTGlNdGV2OEpsR0dUSWJZdlowelNL?=
 =?utf-8?B?c1RSMExhTzRtamQ4aVR2L3g3SmxxaVM5MlRMVXVlVXVQS3pIcEczSVViSW1S?=
 =?utf-8?B?SkhUdGJ0bVduTU56SURhOEtzUDgxMnRUcWNVSWdDT0ZNNlFaeTFiVEZ5MFRV?=
 =?utf-8?B?THV0OTdXNC84cytLZFJMWXhOSTFZMWFwbEdINGRXRk9QMVRWSUEzNGtVdWVm?=
 =?utf-8?B?M2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1fed13c-03f0-472d-2fc4-08dc7c364907
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2024 21:12:57.5855 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w/ALtBaw5QW6uQcx20eCt/hb5i7EI6E1hwfPJsuvxyn/SMgSg6TZOXHNMR454isOmOd7pNcYFlbA72I1GUVQb5WbRwhErDa1GMvlc86ahWw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8431
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716585182; x=1748121182;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DMtLSsfO0x0lzIj9bJplUP3Sxa0JhoqXV/tMHozPuRU=;
 b=Xq+Ryh/cgf5XabX5Q8FeeCMV/xHm467DrtHMhexOhr4nKcI823lIkD43
 WQ8k6z/NNglhamBaQ71nkE+hpo8p+npgTApMhz+eQFWlBrBeQM7gYXNR8
 1RosHcLwxAKUALKb5/SX+HP0xTgzXp8QLc40Gn5i7+lCEP9Ckx+TyckzD
 GYs+1h+VqhJCyVGDXp4fEkBIN5eqDhaLHxd4i0QGAn8D8KKVnnR1Ccu9T
 L8w59/wB3HeSULR/ZvPvs7dQkgqz7i5mPdnIgJuymk85YUMeBV9/fMUvy
 bTumnaoQULxBiBhan8MDZYbJv8ozjpWp1VNjFZvJIMJri7DfMOcw21FFg
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xq+Ryh/c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/3] ice: Extend Sideband
 Queue command to support flags
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
Cc: netdev@vger.kernel.org, lukasz.czapnik@intel.com, leszek.pepiak@intel.com,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/24/2024 1:43 PM, Paul Menzel wrote:
> Dear Anil,
> 
> 
> Thank you for your patch.
> 
> Am 24.05.24 um 15:51 schrieb Anil Samal:
>>      Current driver implementation for Sideband Queue supports a
>>      fixed flag (ICE_AQ_FLAG_RD). To retrieve FEC statistics from
>>      firmware, Sideband Queue command is used with a different flag.
>>
>>      Extend API for Sideband Queue command to use 'flags' as input
>>      argument.
> 
> Please use `git format-patch`, and not `git show` to send patches. At 
> least that is what I assume the unwanted indentation comes from.
> 
> […]
> 
> 
> Kind regards,
> 
> Paul

While rebasing, please address the commit message formatting. The rest
of your submission does look like it has come from git format-patch or
git send-email, but we don't want to have this extra indentation in the
commit message, as it would then later be indented even further when the
commit is displayed via git show or git log.

Thanks,
Jake
