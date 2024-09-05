Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D260896CC9A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 04:24:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F84F8136C;
	Thu,  5 Sep 2024 02:24:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BadCVQLql9Mq; Thu,  5 Sep 2024 02:24:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0EF38136E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725503069;
	bh=yRPclFw4nDrXmyg7zg/BO8fHMjVhtuYuFKxz9vNCvGg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=314RPiAMfzhNuKSkgO1rieAt4OpUDi8DpnqQ9ajzBs8ha3JjPd/3ZMfAE2I+APsgu
	 bwBd0BCGX5siyhNHUXwIj91DoCXs0CNqA+u57A+f0RslH+MHG8nEMtZ1uJDkhMTAA1
	 T8AkaMJp9xejD45LemeFGlcLWJGnien31MDBvlc36HWs8NktpzU3bZYbgwmogJWlGP
	 Pz+IuuzL0Bw/Qsnqn30uKtMwqxl6geiDAyhbEyw5ojTzlUj/NLMjYQDKCyEZH5xlKk
	 TAYi9fpbWzzRntiDSPsx/ozTcT2/rGziVI8rrEhEj+a5w/7q1XDjr50soHY+F4uPvb
	 f0rSO4gnLl0Yg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0EF38136E;
	Thu,  5 Sep 2024 02:24:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DAA181BF97E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 02:24:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6625400D3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 02:24:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0zA2z_7D7rGG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 02:24:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 959E540025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 959E540025
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 959E540025
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 02:24:25 +0000 (UTC)
X-CSE-ConnectionGUID: aSFLzbLUR+2ddDM9Pimn5A==
X-CSE-MsgGUID: MFM6Ba1FRvqIvnCHpkZRQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="35578945"
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="35578945"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 19:24:24 -0700
X-CSE-ConnectionGUID: /mM04xxLQk++qexpw89jFw==
X-CSE-MsgGUID: +G0dKtLASPiP2gKalhZsAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="96203324"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 19:24:24 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 19:24:23 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 19:24:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 19:24:23 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 19:24:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=unOOabM56Z/1LBW8wYAGK2+XQkcxTatUYSGcmr2FVmqWT34lFO59aDrs24UkT4u7ho5f+zBr2wPdODDjhjJlJAXg6swKQsMaqhI7eTgKI4c/W7gEKIU3ACUKztm5Z+PDKgQKDr8EBTYnO/kb0ImiIEpEPPJZEUSjP1MkAkR4PnCnRVJXuRpRIlGInBwYCF1+0zoiIlsFIY+0dqR9DQ8XJ7XAZEeUjDrjFat8c9YEYBZ9+dd9P939XYSPXYeQapnpH7aRbyOz4XGDn0sVss7yZVmrflwk2qj4B/U6OBKAq0chkhQRT+2/PAnca9aHUHpL53NEOkFaicDcAsYTVod09w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yRPclFw4nDrXmyg7zg/BO8fHMjVhtuYuFKxz9vNCvGg=;
 b=rv6PNXzbxE+voKs0TJSWdH1aof0lG4k6GmveQo7cIqeHNtX1Fcg/pXqGyGOAQo0lPfzzlp2gZqg0XA/M7Yt3aGxEZKbLQugxlQ33AD3yO3PhKaogwVWON3kILIvf4WtcTj0bjjuxV9snvLlHnKP8BBFGaCMhq+7QlZpJWwNhk27/mKxsK9Wz4oVtizyVmkne7br+7EITfagAy51XrhtFXLGcvgDxEH92/sdXGFDAFo6M7z8k7W1nPSSn6vtgOHV9x8csgfPGBsw57DjyKWulwudZI6F15ssAbCOO4YqIOJ6Pgh6RrQkiqYcxiq6BqwtvIvppLL8lgkjSBqAJZWRE3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5140.namprd11.prod.outlook.com (2603:10b6:303:9e::21)
 by SN7PR11MB7512.namprd11.prod.outlook.com (2603:10b6:806:345::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Thu, 5 Sep
 2024 02:24:20 +0000
Received: from CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::6a5:f5cc:b864:a4c0]) by CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::6a5:f5cc:b864:a4c0%7]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 02:24:20 +0000
Message-ID: <fccd53ed-a331-a398-17b0-d8c42f694748@intel.com>
Date: Wed, 4 Sep 2024 19:24:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
From: "Greenwalt, Paul" <paul.greenwalt@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 <anthony.l.nguyen@intel.com>
References: <20240826173916.1394617-1-paul.greenwalt@intel.com>
 <9cde2efc-b298-4621-9935-73b6bf9c113d@intel.com>
 <a2a7f63c-69ca-d7cb-8a1a-935403cb3d8e@intel.com>
Content-Language: en-US
In-Reply-To: <a2a7f63c-69ca-d7cb-8a1a-935403cb3d8e@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0197.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::22) To CO1PR11MB5140.namprd11.prod.outlook.com
 (2603:10b6:303:9e::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5140:EE_|SN7PR11MB7512:EE_
X-MS-Office365-Filtering-Correlation-Id: 763af92d-eea9-430f-8422-08dccd51d91b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?akJXZWM4R2QzSStyRnN1RTA3eWI3SFNkMWxzb1dGdDlyNnZhckFSM21KYllM?=
 =?utf-8?B?MlExdWM0bEMybHBvTDgwa3FqSExKSXBJTmx5clYxZCtJUGlXTjQrYlp6WXJR?=
 =?utf-8?B?R2Nia2M4RWd6bVczNlkwYUZRb2xLUUhCSW1pdFpaR3RYcHF3amVNd3lPM2t3?=
 =?utf-8?B?UHBySWFSeE1nYmhmaTRzQzlYTUJJZm1PSjBEYmQ1TVA0TVA2cW9jZXd6Ulk3?=
 =?utf-8?B?TmtVQTN3VnhlR1kxdUZ6VDE4WHRkWDAwblJMTjNyVThkSHd2TzZrWjU1ME41?=
 =?utf-8?B?UzN2M2ZxeGFJUmZSSU82anQrYWN3a1ZBZGttbmtrdUlmNzV3S2JJU0srYTc3?=
 =?utf-8?B?ZFVnQ2EwN3loUGtsdnpqNnh5OE1EakkwSU9acndmVEdiYUc1WnJWeVhweDlE?=
 =?utf-8?B?UktkbzhkU3gzclJRWWFicFg3SGdSQnFSNXJwTzdMUzlpNU1MTDFVYUtOZ3hD?=
 =?utf-8?B?QW90UDZIYzhRZW1FSkRZNytxaUVPM24waWVDVFJmWHdKVG52QUdTSlhQT0tI?=
 =?utf-8?B?RGNRcFI0VlJIVlBibkIvNjJVL1VXUzdvWHhtcG05NWM1dkxpeFhSWUduQ3gw?=
 =?utf-8?B?S1lRQlZGdXdHUTNDTDVmdWlmcHhaWjkzTENodjJoZ0lHaCs1QUdkdGp3YlpV?=
 =?utf-8?B?UG9tRVovR092aUZzc090ekJHaVo5SlhqRzNiQit6emdxZWxvQ09JUldBU3Zi?=
 =?utf-8?B?b1Uxak1MMlJmZjh6S05BWGNBTUROZDNDV0MwYmd6cFJrazZXazlIWEwyNk1t?=
 =?utf-8?B?SWJsSjEyaUpCcCs1ZlZ1ek9QSUtNL0NwQ2JXSjJyQURWeUQ4d0Z6YzN3WWtN?=
 =?utf-8?B?Ykx3UEI1UnVFMStBSHdGYnJUVDcyS3BqY0F4ZWh0TnhtTVhjMk9XcU56VTRq?=
 =?utf-8?B?QVhsU2QrMzk1MUM3V255cWFBMmxTd0QyaDhwbTBaT3NXb3lVcTB1blQrWUJY?=
 =?utf-8?B?QU1MRG0rdUVyeWxFSzJreWpRMUpOOHM3MVEyR2pIK3VaTThpdks2MElqc0Vz?=
 =?utf-8?B?RURhMHBPM1BMN3pZWmh2SGs4WWpsdEJjVDl6Q2NyNm5BUGFza1ppZ3U1YWht?=
 =?utf-8?B?bFJWcUtwZmNqZXE2R3JQSkdSUFJJNGl5eWdYWkNaSVV0TjB2Q0F6MVliN0hI?=
 =?utf-8?B?UjNkY3NwdkkyUTVacjdvdkdZZ2J3aVNGTk8rUFpNZDJ6eWhNZ3lrT2hFd21x?=
 =?utf-8?B?S1o4R1BycmgzK0hSV0dYMU1tWGtWVDM1NWVZSm5kVDhaeUNGVWt1SjFEbXNH?=
 =?utf-8?B?ODlHbHVFL2tjd1gyTGsxazc5N3YxcTltc3k2VXNpM3R2aWkyVC9EWXdMYWZk?=
 =?utf-8?B?NjZQZEcrbytrSjRFVHZqbng1dEV5QlZia3lMVVBCV21UOWN5blo5Q2xteVN0?=
 =?utf-8?B?bGNYTTRRUVVrK2gwUkovRTZobHV3QWluc3JNdmdVSG5nNU5ZUGxnaUxzQ0Yy?=
 =?utf-8?B?NU8xakRQMWExeVRQc25RTlpKbXhJTHZtbGE0MFljaFIySUZ2TTY0c0NZRUNC?=
 =?utf-8?B?emYrZHI1Y3Y1VVNZTXhENSt6aDViUDBRdnFYOEdxT2dyYlNTV2NwQktnM3dC?=
 =?utf-8?B?K3dLVHN2alBhb3R4T0xXbW54Z2twYTZFbE1zQ01YbEhsRlpuOWVsdDFYUG9y?=
 =?utf-8?B?NDJZVnZXbzBaVVBhSFA1MG1iMEJHaTBBNVVpbU1DRmNocTZxOFIzQ0s1d3lB?=
 =?utf-8?B?THZ1aDFzUm1neE5RR2hFVElETUJrRlFQbkFJWGtTM3NuUmdFSzUrbDJaRUJn?=
 =?utf-8?B?SW43NEd6LzY3cndwcnl4ekYzUDc1WDF4czNCeFNNd0lFVjBUc2QyWnRTMlBE?=
 =?utf-8?B?MWcwL0IrR1lpM2xtZTRQdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5140.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTFoSElEMDQwMVhJTFZWQlpnSkVkVUNxMDRXZk5MeURLWXdOZ2UyL0luaUFR?=
 =?utf-8?B?ak1TbzdwV0NONTN2VWltRDlzckZvYjNvUjFuMDZ1K1BqdjZWTExWalVZaFp3?=
 =?utf-8?B?VXd2ZEVzY2crT3NNY1V3d29aUlRyNHhaZlBySWp6cVBWa0JjVTFKR0VwTVpm?=
 =?utf-8?B?bDMwRStvUWJ4YW1jeG93NW54TFJKdnlyK0pKR1I1YVdRTFR0Y3VDNm9ScHdr?=
 =?utf-8?B?Q1h6Q05WOUliZGVrZWJXR3JRZWlOeVJSb3NxTXIyak1iMC9OTUVubDFOQ2lv?=
 =?utf-8?B?ZDZPb2trbGJ3d2xZQW5DZndSSCsyLzlneWlnci8rUVlMN1haZUZ5dGgyeVB4?=
 =?utf-8?B?WUY4b2xPVkdVN1M3M0N0L1U3RXIyU0pPUlRZQWgwdTBScGxKbEhxSG9aSGR4?=
 =?utf-8?B?UDFiSGUzRk5lNVZxV2t0dWo4dGRsVzZyMFgzTU9Oc0JpamFRMmE5aUxld1d5?=
 =?utf-8?B?bDhqNmhhbWo3THJUUno3UlF2YTdBa3prQ0lvck5WZy8zZ1A1NXB6bEJoRC9h?=
 =?utf-8?B?bHU3TFRaa29tSjQzTUVRWmpjSHF3SzB1U3BvbytMZ0JRdktqYXhLTElUZzhJ?=
 =?utf-8?B?NktxN0Z5NmNLR2toV2YzZjY5aFBLR0d2OVpOY3RGcGxPallhZEhhZ2lGMGhF?=
 =?utf-8?B?bmNFSFRRTHBVQThSeVFtQnMvdFM1RzE5RGNheE04VlNQRC9kbnlHZldPRFlt?=
 =?utf-8?B?bFlaalZEN0plNFh4WHYxL1ZTMTdyV1JETTdFTUM2ZTJGNWNmUloyTG9XcDdp?=
 =?utf-8?B?alBOWG9IcW5JZkhWaXdiYnl0MFBwQlIrdnBLOXJ5dndKWkZTQ21za1BjZ1Fj?=
 =?utf-8?B?YTFWQ0dweWVCNkM3U09DV01TQVBWVmJLSWh5YlJtQlYrdTBtcXJ4VFZRNWUx?=
 =?utf-8?B?NDlWSzZjR1liV1lHUUk0TmJnMUNpMURRbzFvczR4N21EYzJFSkZDaFljdzVk?=
 =?utf-8?B?UDVLSWVRcXcxaU4zay95OHRUT3BRR3VxRmtTNVVabEFrMnBhRG5SVUZjd2RS?=
 =?utf-8?B?SmNhaHNjQjBYYUVOdVhhYjdYS2dwTHBCMHFyYzhkWC9DNXNveERWdFhrSE0x?=
 =?utf-8?B?OWNVS1BseWtpSW9mOERmK1djNHY1UXNFZU95bjZrb2JFb0ZoUE8yZTd3VTQr?=
 =?utf-8?B?WkU1d0VIc1E5NVFvQ0JWd0NERkhUTUZUeHJOejRxZWsyeldpYTRBdVJlUUEz?=
 =?utf-8?B?ajNBWHh5c0pQNWVXVXZJZG56bytjdVREejhwNHdNdGgwdy9kQ0hwV2lMSnFy?=
 =?utf-8?B?STJHeWVYUjN2U1BLckUxNm84RlBWQnpraUtrd0R6MDJyQzcyQ2ovUCtEZm9J?=
 =?utf-8?B?QmkrS3hvZlArM0ZPeitwWC85cjNoNFJuUE9kTm1Ya3d1OFVSWWhrT0xTdkxx?=
 =?utf-8?B?RW9MemhrSXhnOHNXcE9uNGF3aGM3Q2tCNEdkN1QwQ2xMekw4L3BzRERqd1pY?=
 =?utf-8?B?clpod25jOS9vTHJEczhiV3pIaVF2SzdCTkt0RkZMRk1PMlRaTTh2ZEpGUFho?=
 =?utf-8?B?Y3QyR04rc05BdmNHTkl1SUc2UzhqNFdsbzBlTGV2amlOc0FVcTNVM2dleVgr?=
 =?utf-8?B?Z250VDhyTGlIRG14ZkZTR0drTno5MkRnVFlzODg1SXJJU25yYUNuenBqN2lz?=
 =?utf-8?B?TncrdG5BejJCR25vQUZHRER5bDNOb2FaWUk2OHlRSXVHR3o3anM4NDJsRkZ4?=
 =?utf-8?B?NE1oVVhjNkplY0xIZHBQbnFLbDhUb3A0U2t3MGJNSFBrQVAzTWgxdWRqYkto?=
 =?utf-8?B?VXBkV2dsQWgydTBibTd3bTRxZFZQdXBLN2RibWl0Q3FKQktQcUVtMm5OOFBQ?=
 =?utf-8?B?eDRhcmgyYWNQTitDZlV6OVcxb1F1TllwaGdObTl5RW50OXQ2WjNKMU92aHpp?=
 =?utf-8?B?NFFIQll5VE8vRTNVNEc5Tkk5ckk5WWpYYTJqdUNUV21ua3ZZMTF2ZVUrOTVk?=
 =?utf-8?B?bDloeEgvVGdERFhJOGZtaDZEQ0lHNDFieVB5U0YweXZScVZMRzRQejRVaGNt?=
 =?utf-8?B?R3ozdzJrbTg0UnBxbXZlL1RSUVY2ZFJ5SnBVV09XbTNxSzZEMnJ3WU11N3dN?=
 =?utf-8?B?NkpaMzRDZjNtOGtMcTc0dWtzWFRrZWMrNDFtSm94NGpXTEg3UWFBWFk0MjhY?=
 =?utf-8?B?YUJKVFRKT2tPdksrYWNPU0tNUmVUNFJGem9ydlRNUHlSaXBKbjZwWUNpd0lu?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 763af92d-eea9-430f-8422-08dccd51d91b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5140.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 02:24:20.0013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6m85Uq3VfXvfjzIkElMbnVQIp9gLK9lQTPYz3qBg5zri5vYQQ18S25LPZrT/G0VqLgrIEfgGIdnQGhCXMwvMrD3FEA2LRVlVlzshYNZDJvU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7512
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725503066; x=1757039066;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SiEUh5n63gyRZ/ZCWRQtA937Rfm49kv+cY/HC+zq6mI=;
 b=lRBUzsekBsyTW/NDYR3KEtL476lEXtP/f7bUCQUTVj18qE1vMyrhkrV/
 WANco1pl6SlI+Pgn1czdTiqFLHPHZukQkg3Q91zF8ng607oTHawmUxR86
 ZRxsHZ/YAgnfi0Py4qd5F0ICtQdcEnDnACILDkzl79agLd7vyIm0myr9z
 l69HGldhnoTzmv3I+lxhcW3eo7MloBkRRFQDwl2QaY5OEGHBLY0CU9BA4
 OSt7x8EdM807ZokPKDw6Y6MctFrOJqDRc9P3K1Q60uKzQ66//SyFcEiCJ
 mkjUmzmAwcgJ3Yp9lc8P4wTrYBZUUzfvPLOlEQnOlfXtVdrC47Fwa6mNo
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lRBUzsek
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: Add E830 checksum
 support
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
Cc: Eric Joyner <eric.joyner@intel.com>,
 Alice Michael <alice.michael@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/3/2024 8:29 PM, Greenwalt, Paul wrote:

>>>  
>>> @@ -6237,6 +6243,7 @@ ice_fix_features(struct net_device *netdev, netdev_features_t features)
>>>  	struct ice_netdev_priv *np = netdev_priv(netdev);
>>>  	netdev_features_t req_vlan_fltr, cur_vlan_fltr;
>>>  	bool cur_ctag, cur_stag, req_ctag, req_stag;
>>> +	netdev_features_t changed;
>>>  
>>>  	cur_vlan_fltr = netdev->features & NETIF_VLAN_FILTERING_FEATURES;
>>>  	cur_ctag = cur_vlan_fltr & NETIF_F_HW_VLAN_CTAG_FILTER;
>>> @@ -6285,6 +6292,29 @@ ice_fix_features(struct net_device *netdev, netdev_features_t features)
>>>  		features &= ~NETIF_VLAN_STRIPPING_FEATURES;
>>>  	}
>>>  
>>> +	if (!ice_is_feature_supported(np->vsi->back, ICE_F_GCS) ||
>>> +	    !(features & NETIF_F_HW_CSUM))
>>> +		return features;
>>> +
>>> +	changed = netdev->features ^ features;
>>> +
>>> +	/* HW checksum feature is supported and set, so enforce mutual
>>> +	 * exclusivity of TSO and GCS.
>>> +	 */
>>> +	if (features & NETIF_F_ALL_TSO) {
>>
>> 	if (!(features & ALL_TSO))
>> 		return features;
>>
>> to reduce indent level and avoid huge `if` blocks.
>>

Hi Olek and Tony, you both had feedback related to the change to
ice_fix_features().

Olek: to reduce indent level and avoid huge `if` blocks.

Tony: This prevents adding any other feature checks below this in the
future.
Seems like we should rework this into the feature being checked so that
we don't have this restriction.

Would using two helper functions for fixing DVM, and another for GCS and
TSO address your feedback? By adding feature checks are the top of the
helper functions and returning early, this could reduce the indent level
and avoid the huge 'if' block, while removing the restriction of adding
feature checks below these in the future.

Thanks,
Paul

>>> +		if (changed & NETIF_F_HW_CSUM && changed & NETIF_F_ALL_TSO) {
>>> +			netdev_warn(netdev, "Dropping TSO and HW checksum. TSO and HW checksum are mutually exclusive.\n");
>>> +			features &= ~NETIF_F_HW_CSUM;
>>> +			features &= ~((features & changed) & NETIF_F_ALL_TSO);

