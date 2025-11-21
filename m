Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA97C7BE53
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Nov 2025 23:44:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A08B40600;
	Fri, 21 Nov 2025 22:44:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MJG8mBikSoQm; Fri, 21 Nov 2025 22:44:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37334405B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763765047;
	bh=sW1cMxahWCsS5lRiL1vKGpbzuj2Svz3MHPWrkZfkjWI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xz1Y+B4OU1x7mhqTi8t4tVzX4sfIlgtgyYM4iNtGTI53duauk2IGAif754PneQHp6
	 70R6wiCWdTN72FXdzd3wJlcyQrXS88U+69i7s4RG+JAtX6SJe/JWkxq//0HiYudU9I
	 u3Lu/gpINI3xolow9vU95aF/5YPCEqM3VBmdIBBQ6+nM9SJ2KSNcLBWcJxLhyeP9IF
	 s4uH7yftRNyU9bRYquhkMO/VcXGSBW7rDwEOvi+ku3tLoYr9KsERCxy72NDt0UukSq
	 x+QVXN2YpDg0mX/H23Af1Pp0gZSaeZRC9P0Nm7AXJLm8cgAkLht2R/lXbO104Mmr6s
	 Ou+sUHGZ8/wKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37334405B9;
	Fri, 21 Nov 2025 22:44:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B8712122
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 22:44:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9EEA460B3A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 22:44:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tkYBenzF5AH4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Nov 2025 22:44:05 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 21 Nov 2025 22:44:04 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BE9B460B38
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE9B460B38
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE9B460B38
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 22:44:04 +0000 (UTC)
X-CSE-ConnectionGUID: 4ESZTGdTQNqX0HtIeQM/Hg==
X-CSE-MsgGUID: mILTtffkTC+Yi9GB7RtCbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11620"; a="65948517"
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="65948517"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 14:36:58 -0800
X-CSE-ConnectionGUID: IrNtfOxcROOs/dYl7BwJsg==
X-CSE-MsgGUID: Y+cWRL5+RQaLgK7PI48e1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="192060366"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 14:36:58 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 14:36:57 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 14:36:57 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.24) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 14:36:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dBn6nQdEhFJSl9mz6I7zEAOfWtIe7/LgwYOMlnh0+TDWvwnp19SV+dOZOnmJ35QI2Ju9vGkKioEAmWarjj2gLlpnadDqhwBh2hp2fvfBmZfsYK7NLnhY7ZVyH6rJl6k/Q6kxoDaxNo0RfM/Gy9CN+epgGzOSIvBLvb/CraEVex0HjyXGrqCXZNtcbFur1dASJAIFCKpV6kz8VfHR6caF5yDrEpC7Qvb+0u07SwWxIZArfTwt4qOzfkywvHFv49xDdwZdHqHgVjKIEXe/revQy4zMJ6d8/cuo/ob5+BylgpiBxmtdGSKyrVsNcFsGvBASjSYRqoUEOH1p7L+OLOAXng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sW1cMxahWCsS5lRiL1vKGpbzuj2Svz3MHPWrkZfkjWI=;
 b=OICqtvSFX90bZ/aXiOk6f1iu7NkLnUmpWup71I/JEqiRTNxvecVD6mACYGDa17V/IA/l+9nhdeueGFMpSIXObi8nY2RCJp405uQRkXn98DEtmtSq426CZDHEKeA1tjdRz1riinCjDykaQ6WV8O9HXmGwbvYcgcAPGChQz62xKVH9YRGwOJXMQIP/qoKf1uYev3/u06jNEQQV9vZCcOjuYcU0NTZp9q17lZ2dFA77QFOV53dcasabK/WB47k95fUP7ioirX29SXpI/mO+LmDTuw1aj/91LQmfBj3maJMsOhdUZyxBuZfKswSB8KJ/kuD6zD4GpDO+3SxR6mMuB1fjYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CH3PR11MB8561.namprd11.prod.outlook.com (2603:10b6:610:1ad::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Fri, 21 Nov
 2025 22:36:49 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9343.009; Fri, 21 Nov 2025
 22:36:49 +0000
Message-ID: <62207dc3-3deb-43c1-a895-53fe01bf20bd@intel.com>
Date: Fri, 21 Nov 2025 14:36:46 -0800
User-Agent: Mozilla Thunderbird
To: "Joshi, Sreedevi" <sreedevi.joshi@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
References: <20251118042228.381667-1-sreedevi.joshi@intel.com>
 <20251118042228.381667-3-sreedevi.joshi@intel.com>
 <f5ec8890-c2e2-482e-a913-8cf943f5966f@intel.com>
 <IA1PR11MB628988BEDBE721E28252D46D89D5A@IA1PR11MB6289.namprd11.prod.outlook.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <IA1PR11MB628988BEDBE721E28252D46D89D5A@IA1PR11MB6289.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0110.namprd04.prod.outlook.com
 (2603:10b6:303:83::25) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CH3PR11MB8561:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ee456cf-1d37-478f-4f94-08de294e757b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZW5DdnpOa1BHNUwxRUFEclpmYWRFRnY1QzI4eEdVRXlhMnAxRmFhM3JPNUlu?=
 =?utf-8?B?MmY0Slk2Rk5XM1MyOG01MDVoQjlvMHVyMzRGU055dmp6aWQ3aWI1WVBRR2hK?=
 =?utf-8?B?QTBvbTB3eGt2OTRjSEQxWFNaWnNDZzVscW9JYkIyUFNvcGhTUVJScVp2ZklM?=
 =?utf-8?B?RVJ4dmJsUkZnNmhWUlFvZGtZK0x3N2VqU0VqQnRhZTd1K0JHN1NYM0RmbThH?=
 =?utf-8?B?cXlhYXdwSVlsSXFkd2tUQUVnU1l5UHBCZk9kZU8yTW1XeU5mRzh5T3YrWnlq?=
 =?utf-8?B?dHV6cWx0WnNDNWVNVE9RWHcvN3duV1dJZUhIbDIvcHVsRndqMnNKM2FpbCti?=
 =?utf-8?B?NzNEZEoxWHZWS00vbS84QzZEVnZCYVlJZXBleGdpTGRUMkE5ckZkeDdMbWVP?=
 =?utf-8?B?Zm92aXlaUG5HSzBGMzlWNkRGeGZEWHJNb0tjazRnWUVmM0lUaHFYbzdBZWNH?=
 =?utf-8?B?Q1RWazhiZ3Q1bEdzVnFJOVB3WjNjOUlGRVBnZDR5ZitoOFczYnFzUTNUb3I2?=
 =?utf-8?B?aGh3cFBVZVREcGdIeisrUXhDUEwvdkp5SjlUd0pDY1pMRk02cjhhQXc3L21I?=
 =?utf-8?B?eE5uN3YzVWVjck5SQlpNNXZsTGxzd2pnckZLYi9EV2JqOVUvUUR5N1Y4dlE4?=
 =?utf-8?B?bEhjQkhiQUZ1L09UajNPYk0vb2hZVnozbTZNNXFiVm5wS2J4YTd6RW0raVRL?=
 =?utf-8?B?OHlEaEVoMHp2Q2NGdjU2Yzh0WWNHT3JVaGJnMjVRQkMvMjdRQkQzbno1dHVN?=
 =?utf-8?B?ZlRrMDg0aEJZc3Q4QnZhUFlFVFgvZWhxNDhjUngvZWtWR3ZVbFI3WjRVS2ts?=
 =?utf-8?B?eWZjZnJyQmtHSlIwM1BPUkZvNUFNcDhvWkNxbUxvaGM2dUNtOXVVYkFuSS9W?=
 =?utf-8?B?Nkx6eFJLMEhMU2gvSUNiMXVHbjhMUkVlQ21LcmRKUWdvOVpXLzh6a0RyYTNB?=
 =?utf-8?B?NUNpTko3Ump5M0x5WXR2cHBjcW5tZzkwYnQ4T0JLNm1ka0NhaU0xMktlbkVr?=
 =?utf-8?B?bk9EbVdieCt2Qm92aHlvR3Y1MmhGcmczQzBUU0VobU1GN0NkSldEZDFkSUdi?=
 =?utf-8?B?NXpJWVdjQTl0TmpPbGdxZ2VZc1o3Y21EbGdhT01halo4bjdsL0NFbXllZW9i?=
 =?utf-8?B?anZHSCtqU2VMdEhqWThkd08vOHRUbTQwUGRzcWhwOVRHMzRBYlA0OTBQNEJE?=
 =?utf-8?B?YTZ3UEtabFJFRlozWEtjYkFlVm1DYVRRNDJpekhwYzZSUTRTcm9pYXdDc3RK?=
 =?utf-8?B?VnZGcEp3MzdpMlVCNFg5ZFhod3pVeEY5ZHZka2h1cnVGc21YV0dUYm4xTnd0?=
 =?utf-8?B?Q2JXR0ZEVjVzdVI5dG9lRFh6eFI1bnE4SmVkUFJ3c2VPT2x4cXFUVXIvS1BQ?=
 =?utf-8?B?SVBybmkwbGIwVFhVM1VHTlhNUnJxaGFod1BxcjMyT2JXL1F0bTVPZjRYVVVN?=
 =?utf-8?B?OUhXY0t1b0xNaVFxQUR5SUJ0dzNCc3JnNHR2LzEranRsNUhhcmxlNngvS1Mx?=
 =?utf-8?B?WkgxbjhTQ0FhMXpzK0MrUjBSTkx1T0EyOE1CSTJjTzU5cXhBNzZuVHcyb0dX?=
 =?utf-8?B?WHk0bTVVazU5UkJodzhOT1VBWkxoVTMxOTBDZ3dJaVhWMUxjclpqZk52UEtX?=
 =?utf-8?B?NFR2U1N6TWFzd2FjeDg5dHQ3RmRaNUQxVS9WeFlZRXJUdEJOSlZSd21la2oz?=
 =?utf-8?B?ZThLVlVNWXNXL3UvUUZ0QjNZVG0xU3lrQWxqTTBZdnhzSFhPLzduN1dpSEx2?=
 =?utf-8?B?UlpheGpTbmNiMWJMU3d6b0pmYlNmMkN4Z09NY3VLUFBTOEtaK1p3U3o4ZDlR?=
 =?utf-8?B?dStYR2lhYzlRU2xOU29YSVhCZ2U1NnNNOHd6MXVMaDBpUm9pMVdxaVRBRzhl?=
 =?utf-8?B?V1NRQlVwOG94Um5zMzc4Y1RQa0k3V1M4d0hibEFYR0dXQ1daYWZCSXAzaXly?=
 =?utf-8?Q?+NikGH3eriiAy1lNQv/gxY03jzkBzcZJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWNGZktBeU5EblFoUXpJbVJBbXpLUGpsRWdkUkNWYnRtcUNFSUk1cDd3NVcy?=
 =?utf-8?B?SnN4MDZUaE0xUXpyT2QzZTdHV3k2U2V1UFdGZzVMWThSSWc3elBWem9qNE50?=
 =?utf-8?B?MmVXWEtnM2lpZ2ovcGhKVnB5ckYrVzBRVzdSaDByeVhNVHh5SFZQM0REUUdk?=
 =?utf-8?B?SngxS0xRY3hScC9BOXREOGQ3U0haNXlDODJCRFVWUnkxZkFsRXIySHB3K1JJ?=
 =?utf-8?B?QzhNRjNxZUd5NXB6UXFEcEZiSzhmRkhWbEJNZjIzaFhKYURta3RmN0ZsWk5n?=
 =?utf-8?B?cmVWb0h2VXRhTW1MQ2F0R0tyWlFwKy9ZVTc3a0QySVVsbEcrQTBEOFozQUdY?=
 =?utf-8?B?MU5TMnlkSTUzeHl6d3B3M1l1aWd4d016NGtnZHNUdVN0UUU1OXQzVG15VU51?=
 =?utf-8?B?UFNZekhqUTBwMU9IVXh6Y3hrWFNVemV5RFpRMFFHVElMV1Vzd3hta2ZMWi9t?=
 =?utf-8?B?YmhzeVMrSURmN3hVSUV2VU9QMkltWkZCTFJhaWtQWnZuYmhuY0VOeU03L2JH?=
 =?utf-8?B?b01VZjBiWG5TM3ZjV2dXUitxbmxoVWcrUGZTanBEcGF6YU41RTBnUFU2eGsv?=
 =?utf-8?B?QUE4RTlYTTZPNmUyczA1VVhuSU53WE95U2g1Qmg0QWFjWVJhOGlNOVcxQTFh?=
 =?utf-8?B?azBTb1BVRUYzczd2TEF5VFNPcUtPbndYMmlwTkpLaDRIdXZrQmpGZDNjNEZN?=
 =?utf-8?B?YXB4Ym5MSTVPWW0zV0lyZk9WVGd0MldycTN1c3ZZQ3hBSnFtRnY2WnJjNEpJ?=
 =?utf-8?B?NjlmbDZmcnB3UEJ4ZUgxcEZLejlDTmtpWmVrQjF3WWI0UllDeHl0aVI1b0Ri?=
 =?utf-8?B?OUpkU2lrOURIVkVSb2tjeVdCRER6bnF1dXpSSGUwTk5Oalo4QzdUVnJlM2I1?=
 =?utf-8?B?Y1RHeEVPSjQ5YXlWZ2MvMmR0cm45QXowMDMvTGVHM0dYM2JtSmkvNXlWZkVI?=
 =?utf-8?B?TmpSM1lUd3kvMXV4bDl2a0hJQzgydkMxV3Q1dWc0WEpNSUhuOUxTZVFFejgw?=
 =?utf-8?B?WXU0Rm10WXpMUHV5RFN4Z2dtZmp6bkFWRXdoS2orVzFzL1JTT0ZlUnUxRGRp?=
 =?utf-8?B?NWFoeHNTVWwrZENROXY3cDcwcFFrS1VuZ04zUzJvV2pQNU5UTjRWWnhDNW9M?=
 =?utf-8?B?RFlJakJudnRmanFFOTFyVDY4a29iVGo2aFRudCtOVmNVcFF1OUZKNEZKTmJT?=
 =?utf-8?B?SWZ0UFZ0QWYvdnh1cE0rYzVnK1JKdjlFUFFKQjA1aFR2TDRDSE43eHBrYUFv?=
 =?utf-8?B?NWFaSHdhQ0RablQ4dzV2eTcwT2wybEtiOW84cHhudHhPV1lTeTFXMlNIYnBL?=
 =?utf-8?B?Tk9ocmZMdFQ2M0pCM3FRdjZWRmJOckIrNloxVTl5Yk5RZkpOSmNjNmtqTFo0?=
 =?utf-8?B?by94VkUxeHJDNGJlT2pvbzZhdkVlMjI0ZUNVTGUxOFMwa2dhVk1FV0ZLbmpp?=
 =?utf-8?B?VWYybEtRQXBtd2tySTJIVEVwTXVSR3lnSGlRcThNM2dSVTN3bXVIYndRSzBE?=
 =?utf-8?B?Ti9MbEJKK2lLK04zM0xNSTByM3d4d0xtbXZ1TytkZEI3dkpNd1JZYkR4ZG5I?=
 =?utf-8?B?RHFmeURramYzMFVlSzFhY0ErQS9IbXZ6b0RDaU9rSVp0a0JYZWVkQ1R0a0hY?=
 =?utf-8?B?Z0RMbzM5WUpQd2Q5VThPNEJSbnEreDU0Rmxvc1FBNmt0N0w0d3MvVTBjTWhv?=
 =?utf-8?B?VURNRGUwQ3NCZ3ZYUW9BYkIyOWpiU1psU2ZOMDFkcjhkM1BRYlVmV1UxbTAy?=
 =?utf-8?B?a0swRUlHeldjMmtXNkp2dDh6RWZzbmxUdnpobG5BdTZxSy9XQ0p3aThMbkpW?=
 =?utf-8?B?Wjc4OWxBS3ZLMmJ4SnJub2tMTVZZSitCRUpiWHVEVFBDUGFWYkVhTzcyQTBV?=
 =?utf-8?B?QTdRZ2JTbnA0ZmFnT0JBSEFNOXZYOUJiV1NCZEJCbDdzQmYvZXBWSExzYnk3?=
 =?utf-8?B?aEs1dm5qc2VrRy8xeUF6UWdSZ1ZxSmVsekdXU0pheHZpTXZzbWxRYjZ0dm1X?=
 =?utf-8?B?RUxra0F1OGhoZG9lSzY0M0ZHYkJCR0RXU0xKYkNxcDZUVTFKcU5yQ2dsenNz?=
 =?utf-8?B?cmdKdmtVWU9rNUh5Y2Ywd0pYN0JuazdHT0xZdjkrNVpHbUs2eUxmbXROd1No?=
 =?utf-8?B?V01aYjhRbnlWYXRSQjlESEVVY29HcEttcmlIQVJMWkRrNDhBdWExdGh3T3RQ?=
 =?utf-8?B?OHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ee456cf-1d37-478f-4f94-08de294e757b
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 22:36:49.0530 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sEFc6UpmU2QD3uHWR7BjhR0sSQXIlfjaqPQXmk+dDDDoS9Qk8z47MqSVsy+yjcOG736hzVmV2vbV8lvFzhahBkh/5ekZLqfXFSfN/vi3RUY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8561
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763765045; x=1795301045;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ddV/3m7wYYD7wiQ8jRf+89Yk7M4FgpKPUDNRLTI7UT4=;
 b=BDzUe+/HUva5R6MrwI4gWzEPbwOVDI0wHdUq268nH6WC69sdf7OPAHC2
 9aMH05CbSo8gUaO5RasAf7S+SMnrPCC7ljnL5iuK83G1fLwrExPuO2hh5
 3zUsL3Zu7+9O3AQvNrkFKuILvljosrxmYoHmI95H+tWqoqo/5DH1qvJ8A
 j/y9o5AAXVmOX0GkaGCaDZ1kntFyrbF6CcGmc8leFdibomknCfdSoSFF6
 mMqHj3LNaQ1KAOsV5xgR5yymJzYwmNNNTR9NCKcBlw6ioOo52muDr4b0K
 SzmdFgVzPKBBUZITiJwXnXVYF2Tw6B8j5AOAvFtRAGb/eyx8yhqDoRbqb
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BDzUe+/H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/3] idpf: Fix RSS LUT
 configuration on down interfaces
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



On 11/21/2025 1:53 PM, Joshi, Sreedevi wrote:

...

>>> @@ -393,7 +393,10 @@ static u32 idpf_get_rxfh_indir_size(struct net_device *netdev)
>>>     * @netdev: network interface device structure
>>>     * @rxfh: pointer to param struct (indir, key, hfunc)
>>>     *
>>> - * Reads the indirection table directly from the hardware. Always returns 0.
>>> + * RSS LUT and Key information are read from driver's cached
>>> + * copy. When rxhash is off, rss lut will be displayed as zeros.
>>> + *
>>> + * Returns 0 on success.
>>
>> Can you make this Return: to make kdoc happy?
> Will do.
> BTW, looks like there are other occurrences of this in that file.

Yea, much of this file was committed before that check was put in 
place/enforced so there are many occurrences of this in the file :( We 
don't want to introduce any new violations though.

Thanks,
Tony

