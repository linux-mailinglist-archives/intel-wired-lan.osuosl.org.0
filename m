Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D23CCB7C5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 11:50:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A21DC606EC;
	Thu, 18 Dec 2025 10:50:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yi2VK-sstmOc; Thu, 18 Dec 2025 10:50:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15D34607BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766055055;
	bh=Vm06RQu+V+ZS0AWpheZ/cfGUdXI1B1lB1DNA6Zau4gY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U7sIgE/eYfS+FyjtwPkIHngBGgxvWVqaj267ERUFJch1UaQ0jB35JK8LZOydZhgZR
	 O+9mPRoowV1wzLFa/KhdX7E9/N8koCnHmosN0wIsDI8Z4622pm9Q9+JqQk3T2FfqG2
	 SSW9eeLdDkim0AZM5si93hAmM3PHctsX7amXr8kn84fY+DoxB/h+UFg9VOgmjAXR+4
	 CvbijUUUWPCrC+gQYUoBN4Cvq3MuaphmTpCgraw/68ITpwVH/vqcHsvGx+cjb8ys4n
	 jE74fHo3TuwqotmfllCr6WNDsnSyBNfx+s1dlCf3892t3pWuDeDtg5gc+U8e4xynVM
	 Gzr+NgRNPjSbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15D34607BC;
	Thu, 18 Dec 2025 10:50:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 23BEC361
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 10:50:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 21519809B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 10:50:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KEC8_fY0Unfz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 10:50:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 24B8F80991
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24B8F80991
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 24B8F80991
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 10:50:52 +0000 (UTC)
X-CSE-ConnectionGUID: 11Pe6Y/xSI2JeKYiSdOwJA==
X-CSE-MsgGUID: 0uPjpjp2QROTbjG/E71qUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="79376312"
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="79376312"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 02:50:52 -0800
X-CSE-ConnectionGUID: gJfuYQEARIW1wyy6h+rUkQ==
X-CSE-MsgGUID: wJHVNPUfTH6rLuEHYDVphA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="198620980"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 02:50:52 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 02:50:50 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 18 Dec 2025 02:50:50 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.10) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 02:50:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gYnZrcvBd47MjQzCtGi3mahA5FFmKG65KoPZR4CJ4LNDQC0ZGxTCqJZvZwy0Wik8EG8kGNtgqz7NiTt6kM7k09bUFomdNcIVTWADZLdC2qymt8O3hMPAE5PBTCOqOciPZVsSyg/mnWquVzdQBfZcpr9o8uZy+BMBRtqFU7WOT87ihgxWRmvmydrTzEmu+LiMG3U/Dx11lyXop7NFybH4x/wcDWJ14FXlbI8euz0iWI4jtR03R7+XsfbXAE8cpp1KyCLzspr3t6tiuxrpD7UcSGu/v6bMrKWRQpNj4Iq5TzRNhkAo0QbvGA/coBC/GAxxoiSsZGRwSZXV0bzWGKlSpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vm06RQu+V+ZS0AWpheZ/cfGUdXI1B1lB1DNA6Zau4gY=;
 b=V7t0XGhUT/ncOBxF2IcyKwTQX0qnbmxlIDB4OdBVIGnuXe8TNEahaTRyyxSwurXDGq+GmBAo3YopX0RqQcU5XQSknjobBJYbDcTFaoUXL7Od4UlaSlO98+kFU0bm7Vz0BUZXkPopJAfj28p0q22B1NwBgmjUNJCmqP1C2r/Dr9uhMqFeH0Ey+baxwAkHL4wOocfKhzSbMKu6wQ6P3Poh/jjElHsl6b6atv3Mw3IQILuKHFIRF1vFSU4bKVRUkz8zzUZCPPXVLPYy2h6Pox0IwlHqsuBgMkhMIqlP9FtaIS8YGUl9AM1fbD7TZ7A90XvCEm+m8xV/OtE/5B+O8fT44w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA1PR11MB6196.namprd11.prod.outlook.com (2603:10b6:208:3e8::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.7; Thu, 18 Dec
 2025 10:50:48 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9434.001; Thu, 18 Dec 2025
 10:50:48 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Simon Horman <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 2/6] ice: pass pointer to
 ice_fetch_u64_stats_per_ring
Thread-Index: AQHcWltHHIuN33k2nEWLQdsB7erzzbUnIU3g
Date: Thu, 18 Dec 2025 10:50:48 +0000
Message-ID: <IA1PR11MB6241CB09BF6971A8304C3F498BA8A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
 <20251120-jk-refactor-queue-stats-v4-2-6e8b0cea75cc@intel.com>
In-Reply-To: <20251120-jk-refactor-queue-stats-v4-2-6e8b0cea75cc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA1PR11MB6196:EE_
x-ms-office365-filtering-correlation-id: b6d53c0c-fc78-4555-bb70-08de3e234dae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?d0x0YXQzalpSRm8zOS9tT0xUZWJZVXRobGxJbWpPTnA0eVFUNC9WVGFHUi80?=
 =?utf-8?B?bUhLajh0ZENFdXNXTU9aWHRnWWc0Rnd1RmlHNHBJdXRHUkNKRExBWERsdGhs?=
 =?utf-8?B?TkJ6TGYrU0d4Nmw5bmg3UXZSb0RYQjZUZjVLeFJ4ZnUxbVZ3NlFvY1QwUWR4?=
 =?utf-8?B?NkNrQU53UnNRZmtjSWtVY3FBKytidzZxL1c2c3JBSDVGZnpBck5ISitRejFz?=
 =?utf-8?B?czlKRkRVcWpkRHJRUi8xMTJ3Smx6SHpKOTVvOXZhNUJOcWpUT3d4U09UZE1y?=
 =?utf-8?B?QmpTa3phdnZIeitwYmN2Sm5wOWtvUGg4Wk1IczMrU016bjhFNWJZLzNIUFF4?=
 =?utf-8?B?K3cxc2pBV285c1NPa3luNVRNVmRVcmo1ZE9IWDJ4OWJFWTFhVFR1WjRYQjN5?=
 =?utf-8?B?b2N0Q2tOdmJGVGhWMFlJeld1WW9RcWxTeXgzSjB3ZlBlNTgwVmRVYitJT0xr?=
 =?utf-8?B?Tnhlb1o5WThXcUpBNHdJRy9OQ2lwZElCVzNCVVVDQmZJelB0dmJVMVNLOFJr?=
 =?utf-8?B?N0tJNnBWcWR6MUx1M2t6Zmg3VXdsMG9mSWk3bTc2N2ttSHVuYmxNMEdSZHY2?=
 =?utf-8?B?djBCdnVXbXB4QWRaNS9Gdm9Rbmd3QjY4Q25EVXk0NTNQTFJwbXUrVHFWQjgr?=
 =?utf-8?B?c0s2MGRiejQrdjBLSytWTFlpN2VNMEZHR0pMK1BacFl5N1ZkZVZSTldSTlNp?=
 =?utf-8?B?RFhWeTFsWlpCd1JxSmIxVElhWTVPVjQxQ1hFOWhXOXg2dGNsc1hhT0VDWEpp?=
 =?utf-8?B?M1ZiYVo0OVlIRFdNUThUY0N0dkgyOEJzWWpmNHkzSWdVeFFEWGpZeTBWdXJZ?=
 =?utf-8?B?eTZod1dwajM5S0FtVlRaVC8rN2F5MGdLT0U5Q3plaCtuN3pKc2NUV2V0c016?=
 =?utf-8?B?akdGcEI2ekdqeUdYZjlic3d6VHY3eUg5N3hYRGJNVmo3YlFFcHFWblUzQTdj?=
 =?utf-8?B?cUFTbWVlKzZrT0hMZ3cxVDdqZzVod1FEdWJoRzZGYWdvbStMa3kzOFhQNE54?=
 =?utf-8?B?TUFYTE0vS1FrcCtFV28vVkpSaFh4cTQ4NnBqQncxWWNUL0hKeXZQTEdDb2pS?=
 =?utf-8?B?c0tRNFBmZnM2NzlsYUFNaEhWZ2tBN0dsa1d4aDJpUE9BK2pmV1duOVRxQURB?=
 =?utf-8?B?SnJoRnF6VExZVmlBLzdVRFJ0Y1ZwQTJHZ2VPUnNZeTBnSWZuc3Y5ZWRrZEtI?=
 =?utf-8?B?T3hLQWtjVVNNSWNNWVZZc2NGU2RRVkdXcEgyM3YrSTczb3VUTXZrL2gzOTVn?=
 =?utf-8?B?WTF5VHpDVWtwekpMTTNhSmVqc1krQ0Z6Y1ZjYk51T0tkZ0pFMGdlalA2d29m?=
 =?utf-8?B?OFJpaDVtTWZqVlhHNktaT0hidmtoVEZMOXZTZlltbmpFYXlJMjlrNUdxd280?=
 =?utf-8?B?STFoQ05qNGdwUzFsaFdabjdmVnZOYVhJZGtXZ0V0TndCNVloRFRIcTE0WUwv?=
 =?utf-8?B?SzJBYmYwQlQxbXBYQmNwa29IQWZBdmtFbmtjQnl1N2NEMnVSOTZMTHJWN3RV?=
 =?utf-8?B?S04zTlFvWHFQaHpDTVFSUFg3TjE3RmhmNXc2V3lBeTY0S3lDTkx6RWlobWly?=
 =?utf-8?B?OXBhSHFBdTE0cEcyRGk4Uy9XVGNhbkJHY3M0R2tVWmw4c0NqNUdmbEVEaG5y?=
 =?utf-8?B?VmZtRlhJQ1FBT1ZOb1ZMTEkvSW1ha1h5SWRVYWpWcVFLczNBN0N1RDJnSW5q?=
 =?utf-8?B?aENQQmpNcHVIaCtNOFB1MjNUajhMLzhMUXFYY0xKKzJ6cDZsU1ZMbTJjeVZ5?=
 =?utf-8?B?Njl6NHVHL0JXTktSc0ZjZTFLeEx6YXQ4cWRuQ01pSSs4aGFBYTVtemh4TjNC?=
 =?utf-8?B?SjMrb0NYc3ArMHpObXIzcHIyY3JBQXlBS1ljcFduVjNrYXNTREZ6NTArUU5z?=
 =?utf-8?B?T1FRTHh4eTh1dldHeHZIZUtaVHRQRFVubklrNVFmSEo5dGQ3UkxOUlNUNkZT?=
 =?utf-8?B?SDhGTW41QndCNUgyQ1dzZUhrQjN1MkpITFBJS2gwOC83NmR6SEhiTGV0L2Rl?=
 =?utf-8?B?MGtlSlVmT3VKUjMwQ2dQa21tTnVHR3RmR2xRalFOeE5kQ0Rvb0IwYzFqbG9Y?=
 =?utf-8?B?RFdjRWtld2F3cDNKejVOcHBSeVRVSnUxNTdJQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(921020)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UUxNZ3Z4eUMvYnZQekJjdVF0bVZVNXhsOVpzaTRMS2N3cGhGSWo4TTNoRlhB?=
 =?utf-8?B?RndQQnRwYU9RUDlBbHNOMmZ4S0YzNGhaVjBFTlpkbzV3OVd0cDlzMjJCR2R6?=
 =?utf-8?B?b1h5QUJlamVKUEhsVXZTdklUdDVSWkZNK25HYTRnOHgwZURNUEdzekJheFdq?=
 =?utf-8?B?L0pOUmRLOVVxVkNhdzI4SG5qLzZMUzBtV0xEWkFybGh3RmNVbThqTmhBSUtJ?=
 =?utf-8?B?MzV3bktkZkNTMy8wYU9ncXNDUlR5T2RBcEZ5NDZWVkkrcnhvd25LSDVHc2ZM?=
 =?utf-8?B?bEttdE1CUzFkS0ExMi96ZlZGZVZWSzVBZUo0U3BsSGt4NDNyWS9ocGdacTdJ?=
 =?utf-8?B?U3dTL2tzdHMrQ1RlRUMyQWQwUmFubXo2MVlSWnB2UnNEWFV0MDdTZGhWNE8w?=
 =?utf-8?B?Vk1MRkkzYmFtcjYrNGRaYjJmN0g5V0NnRTRMN1VhekxhMWtLaDQ0czI1VkdB?=
 =?utf-8?B?VUpVcmNEUHJ4a3J6am0xeDdaNUdwY2hjTGpBbW80Vm5ZbXI1ZFlnNCtJbHpo?=
 =?utf-8?B?M2tYTVUzOTlKZ010OUFiWGJRZ1BHSkZ3NnpFejJuRWVoRS9Yck9yM0R3bitF?=
 =?utf-8?B?U2pHdHdWS1U5TXA2ejRsTFNVVzV2S3huNkJ6OS95bHlSaXJudzd3bk8yb2F3?=
 =?utf-8?B?QkFJY0xPTHU3ZlcwN3dteFY0NkpDN09DSzZ5dzRZMG1tWGtVRkhlV2lXWlR3?=
 =?utf-8?B?OVdPQThkTFpUaEVZVkxCSndzaHpmYWorMU91YXFwM0E0ZEFjTU5Ic2ZxamJw?=
 =?utf-8?B?SGhLbjZnMVJCK05zWGJLaytYN0FmM2FOZDNmVFNYMEJNWFErUjRKT0NsbU1Z?=
 =?utf-8?B?YkNJRXRob3VrMzJBOCsxUnczR09TcnhRcGdYcm5vVWdsTTVSeGNzWUNud1Y3?=
 =?utf-8?B?d3V1UkVPaytWNG9WYXR3eWNBbk02Qzl6YS8zSnRmYkl2ckJTS0ZNMDRZYVB2?=
 =?utf-8?B?NUt6WHNNcEdNZzExTFkxWlNpRVFCR2hwT2dvNUwrNDFzSm50MDU2eU84VHRZ?=
 =?utf-8?B?T2xsYzZCRGcvbSsrNzFvKzlUL1dEQlVEYTJrQmRJT1ZNLzVod0wwSXlUUmZO?=
 =?utf-8?B?b2JqR3FnSVIzNkVNbk0vcmwzbjBNclRzaDNRU0txRExEVnVXTzRHUHZ3a0lx?=
 =?utf-8?B?eTlrQ09KTXc1WDBneHkrR0JVRWtBdnNaMWRvQWlhK2M1dmpRTDRvQW8zeExT?=
 =?utf-8?B?eCt3eUFtYzQ3a281d2F4M1E2MDZ0eEVvRnpnMGptWll0QVJXKzRIZXJpWUcx?=
 =?utf-8?B?aHZ5Tk5oQUo3TjU2WXArRzZVR2ZIWVdON3BJQnlBMnNrMW1jM0t4RXRTc0h1?=
 =?utf-8?B?WCtXZmpEV3ROZ2dCa0NicXZXUnZXelhIaFJYei9TTUxrUCtUK2IrVjMyTnhJ?=
 =?utf-8?B?TlZMYklmZE5yb0VRYUxxRmowU0lHVVZQS2xmUWlQMENnQVJQcVlKU1BYSVVv?=
 =?utf-8?B?dGNETWZCS2wxQThMK09XbE05dks4c0lmTUtoeVVYZE0vUE1wZncycWxLQXZH?=
 =?utf-8?B?TG5MSnNKOTFBbEJkMFp6b1hDUWQxZVZFMlZVbFVRaFVUVzhoWE1YYVFDRC9Z?=
 =?utf-8?B?R0xzT2puaFF4NGIyUU1taHNRVG8waExEL0c3WlhGeHNkb2lNWUJWK1c3N0ZZ?=
 =?utf-8?B?UUFJK05hcWtjY0pJaHl3bDMwU3JNakY2R2pTbEVDOXV5bGMycWkrZ2tMOUJp?=
 =?utf-8?B?MXBwMDM1em5TVm54aU9ZNldjeEJzdTMzRnFEQ2pST0pLQU9DMVRja09oYXBH?=
 =?utf-8?B?TUJzdzdMTzlCUUlQUENCZGdtTUpmOE9uajVFVjlPbDR6U2NBcDh2M1htM2I5?=
 =?utf-8?B?T2QvZnhFWjNJRy94VW13U3dLQk84Wk14bUJweWtCMDI4M21QcFI3M0NhVm0z?=
 =?utf-8?B?VmxJb283Ry93RDl1cDI2RXVTQldudXQ1MFhBdFZFaTJMaC8xbThPUXVDeG8x?=
 =?utf-8?B?M1RITUtEUDFkaUN2SWt3aDAyV1JSTzVFNldJNFBaNEF4ZE8yNGxQK3FmbHdW?=
 =?utf-8?B?TGVvRFhITmduTzlKMlZKRWFVUjdGUmM4UnBmYjFuSXNRTTQrOTJXV2lpZmsz?=
 =?utf-8?B?MXJkd0I3cXNtY2xUNGgxejlUbXEyUnBjTmxHLzdsQzJxbmlvdit5aDRJNzgx?=
 =?utf-8?Q?rZVtx6eqhtQ6oQjpD7JQOXRpO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6d53c0c-fc78-4555-bb70-08de3e234dae
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2025 10:50:48.0922 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /uCMcpRRQL+fYBTanpcdnehoBc+A6pqICMbK7QTLDklYKmgjCHdIL5p2Xh0KIX+JvDrDaGizL4+X2oXSgjjg/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6196
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766055052; x=1797591052;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vm06RQu+V+ZS0AWpheZ/cfGUdXI1B1lB1DNA6Zau4gY=;
 b=kSDLBfISsnc38xrV5+VoQn57rCnpM5OpY8d6DyJ+dduEKDok1NUTHiOj
 erMUBD57BlWnw463lEr2ifH+kOdcUEXHgxYMf6O1NKlrHKnrd6JcanN2h
 WQ/jaHYAuH/V7UmI1vqQg7bjkxEgrnOpU4FBnBWADSvmzda/+bRlTj1GQ
 O/yYyvwXypKLLdtcqwcL+BH3ZUA4nlpQo3TzEuyznSjGeDsTWJ/Z55+g/
 AK+rFQs12j4ZLQFq/IBacnjDl0T8lN6AbkYWzQRm2GI0jNb/eFbSuaQ4h
 h+m2K2BvPr6FvLr1x8aP65FfPmd/ro9QIo5qh0ydo/mZFymyDRek03clS
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kSDLBfIS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/6] ice: pass pointer to
 ice_fetch_u64_stats_per_ring
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMjEgTm92ZW1iZXIgMjAyNSAwMTo1MQ0KPiBUbzogTG9rdGlvbm92LCBBbGVr
c2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgTG9iYWtpbiwgQWxla3NhbmRl
ciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMIDxhbnRo
b255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcu
a2l0c3plbEBpbnRlbC5jb20+DQo+IENjOiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+
OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9y
ZzsgS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+OyBMb2t0aW9ub3Ys
IEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJ
bnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2NCAyLzZdIGljZTogcGFzcyBwb2ludGVy
IHRvIGljZV9mZXRjaF91NjRfc3RhdHNfcGVyX3JpbmcNCj4NCj4gVGhlIGljZV9mZXRjaF91NjRf
c3RhdHNfcGVyX3JpbmcgZnVuY3Rpb24gdGFrZXMgYSBwb2ludGVyIHRvIHRoZSBzeW5jcCBmcm9t
IHRoZSByaW5nIHN0YXRzIHRvIHN5bmNocm9uaXplIHJlYWRpbmcgb2YgdGhlIHBhY2tldCBzdGF0
cy4gSXQgYWxzbyB0YWtlcyBhDQoqY29weSogb2YgdGhlIGljZV9xX3N0YXRzIGZpZWxkcyBpbnN0
ZWFkIG9mIGEgcG9pbnRlciB0byB0aGUgc3RhdHMuIFRoaXMgY29tcGxldGVseSBkZWZlYXRzIHRo
ZSBwb2ludCBvZiB1c2luZyB0aGUgdTY0X3N0YXRzIEFQSS4gV2UgcGFzcyB0aGUgc3RhdHMgYnkg
dmFsdWUsIHNvIHRoZXkgYXJlIHN0YXRpYyBhdCB0aGUgcG9pbnQgb2YgcmVhZGluZyB3aXRoaW4g
dGhlIHU2NF9zdGF0c19mZXRjaF9yZXRyeSBsb29wLg0KPg0KPiBTaW1wbGlmeSB0aGUgZnVuY3Rp
b24gdG8gdGFrZSBhIHBvaW50ZXIgdG8gdGhlIGljZV9yaW5nX3N0YXRzIGluc3RlYWQgb2YgdHdv
IHNlcGFyYXRlIHBhcmFtZXRlcnMuIEFkZGl0aW9uYWxseSwgc2luY2Ugd2UgbmV2ZXIgY2FsbCB0
aGlzIG91dHNpZGUgb2YgaWNlX21haW4uYywgbWFrZSBpdCBhIHN0YXRpYyBmdW5jdGlvbi4NCj4N
Cj4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZA
aW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVy
QGludGVsLmNvbT4NCj4gLS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Uu
aCAgICAgIHwgIDMgLS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFp
bi5jIHwgMjQgKysrKysrKysrLS0tLS0tLS0tLS0tLS0tDQo+IDIgZmlsZXMgY2hhbmdlZCwgOSBp
bnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkNCj4NCg0KVGVzdGVkLWJ5OiBSaW5pdGhhIFMg
PHN4LnJpbml0aGFAaW50ZWwuY29tPiAoQSBDb250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg==
