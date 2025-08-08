Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2849B1E28D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 08:54:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63FFD80CB7;
	Fri,  8 Aug 2025 06:54:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 50E6EdCBuJir; Fri,  8 Aug 2025 06:54:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB68B80BF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754636097;
	bh=Iar1fcu24pW93JzgJTBZGA42p+G3s9/OERbBnmF7NVI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pbvBXMaVuVkDbZUABEP3QMLIpJQ/i5Uw+U1Ohg9cBA6eXS5TOIwxJ0xM7uuNSVmrj
	 8aTb6pTh05Pvj3tOyv6ypNhB2jyv7YNB2olnIJKNsAVILILD1hNGGC3wHFXw7heQJU
	 2DF4EmdHZic0dQz2A1noUINlvFQNbx4S6YPBZT9/Zk9Ok85+HNyp+qP5pPTKfv6Rjp
	 SZVCO6UPqiHd6VZbmyYOr8Prqwi8t2nB7fk6Vg2nQhVViepybSvkkq8Hr6o9DH41cd
	 TA7nmoTKPp3Liy9T1be9fq+YVGn3g7w2GVD6vF9W+WKaLDHG71h4tCB2s9ezHmlsby
	 zLZp5D9b79Rqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB68B80BF8;
	Fri,  8 Aug 2025 06:54:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F7EB10A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 06:54:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 619C160AFD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 06:54:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Eq76YBi4UtSc for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 06:54:54 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 08 Aug 2025 06:54:54 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AC21460AF5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC21460AF5
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AC21460AF5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 06:54:54 +0000 (UTC)
X-CSE-ConnectionGUID: pUT+4bydQT6KcvmkwZMXxw==
X-CSE-MsgGUID: UDa39X5ZTxudLTOmi2ihXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="79537480"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="79537480"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 23:47:45 -0700
X-CSE-ConnectionGUID: 4CPfP8gNTzOmnE4B5aWEfw==
X-CSE-MsgGUID: FzW7uq4JROGAF/rWDcuY0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="202426251"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 23:47:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 23:47:43 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 23:47:43 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.50) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 7 Aug 2025 23:47:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zQhlnoiOJ37MQXV+Jc5NaPA0BToU6EaK+tGWsAA+dDqqFwcT2pRrsAvghfC87v5M1aIyAlyQNKMsWkJ/t7WxtfE8vpaxo+SiMEel0sqOPIYktoW/V4ooPceBx0tozlZsjitQP3GWqL/d1+g/ixwLbGOIu93u/GD6zjru9SLhhzkFcokLH4eYHt5G05CZy3BtWpGK6i6Dl4WVBQ58a73DUDFJCKES/GmGYRcczRAYoK1pef9mBTa1n11LvkU8GZB11k2rnsjPng2Iajz6N1OCQpbp46OSntN9s22OkvwoU9O4TzuXLt5Zh+1+NCHqKKZbkKaIUClvx4jS3Q2p4nOJuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Iar1fcu24pW93JzgJTBZGA42p+G3s9/OERbBnmF7NVI=;
 b=pYDH6O/bykxlibHprtL8hKsmkNj/AhkcDA6DSSHMGRAjINb9n48q1fWjJOPtgZtKmhv64jYx9+o9PAux9TY+oyXZsYp+3fcieom5NeRhs5QiGYTN4Z3ySU7emMhTFAbu6OAvMka2Eo77/Wsii4gnOG8PYjJ1G6DTFvEasKwvMGckX7GkmJlL5pEXcPdJuuvlFEOwSy6YrapFMLDSYzjkYBvPcpu/f1l7NV3UgMJuPc0k7sXOzRjvtri/g0YiKHW74cf2NwYfGWv7Q/QXZw9+J3JEdMYdzGQh8xG+6VH/CU/0WZGDnTBzuJ4hRF0kKfN2p3IJjzXJLq//mXZ1RGKsKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA0PR11MB7934.namprd11.prod.outlook.com (2603:10b6:208:40d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Fri, 8 Aug
 2025 06:47:36 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9009.013; Fri, 8 Aug 2025
 06:47:36 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix NULL access of
 tx->in_use in ice_ptp_ts_irq
Thread-Index: AQHcB8G7iXBS3idtm0G98HdGrM0yHLRYUQ+A
Date: Fri, 8 Aug 2025 06:47:36 +0000
Message-ID: <IA3PR11MB8986D9ED80626D918D36F201E52FA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250807-jk-ice-fix-tx-tstamp-race-v1-0-730fe20bec11@intel.com>
 <20250807-jk-ice-fix-tx-tstamp-race-v1-1-730fe20bec11@intel.com>
In-Reply-To: <20250807-jk-ice-fix-tx-tstamp-race-v1-1-730fe20bec11@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA0PR11MB7934:EE_
x-ms-office365-filtering-correlation-id: 83e22208-10f8-4733-5567-08ddd64775e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WThLblJaSVBjSHlYWXgxTzJ3SFpXeDZpMTM1UDI2RkNIK1JRVHV5bnJRb1ph?=
 =?utf-8?B?S3RqSzJZZi9tKzlaK3hwMTBvcHZMV0dSQ2N1N09xN0c1ODVsUllZWjFWMGVZ?=
 =?utf-8?B?OFZuT3VKNnhwa3BFS3NQTlpnOVlUWUJ1TU9vT1hjdyt4QUFLZHgwZVhKUW9x?=
 =?utf-8?B?eGRoTXpaSWdGclRhVkpZOTFlTG4rVjM5VktYRWxrYVN0SWdyRTdwQjludHdv?=
 =?utf-8?B?blMxa0NWUnRYa2ZKemt5ZUxmbVNOOGNXYko0WmsxTVZvN2xUMFpLMENYVEs4?=
 =?utf-8?B?eTN0d1RYOUlYRncxTXFYSEhpdnVwNFl1ZkNXc0FvWXRPMWM4Z2JqOWR1ZHNv?=
 =?utf-8?B?UFZyc01rWDlMY1JKeFp0TDVVNldDT0QrdUMzTHI4eGpldGxCZTh1dy9INUY4?=
 =?utf-8?B?eEthMGMvZXRvVU5FUUVtVStIWGVDREVncjU5amhwWURjZTAzMUJXK3M3NnpY?=
 =?utf-8?B?SEkxR3N0eWQzcHNZRk5LZGowQzJWRWVrUnFSYW9qOUkrb3J0TTlVMitCSGxD?=
 =?utf-8?B?dTJNMWVQbGdFcm9YeSsrSFRrZlUrUXpaZXUvVWtoSFRBUFVMbzVlSnRkV1JP?=
 =?utf-8?B?MEd1UDkrYWVoUytEM2JNK2NlMTJ4Vjd6L3VUQjhpakR5aUhLUnkvYlUrMmpI?=
 =?utf-8?B?T2JRVWhDSHNPSHVRUjlxc0hFaDQ4Nzk3TTJyeG41TUE0cllGVW1YS0RyOGc2?=
 =?utf-8?B?Q2lwOWxxVEtXQmczMHNNNnU5NDYxZ2QrWktPelZjU1R4OEtJb1hEN0l3NUdZ?=
 =?utf-8?B?K0pyb25hSk9NTk80ZzJGMTN4TThqT2ZZeFRnaW5CZ3FJdkt3MldFWTVOWDhU?=
 =?utf-8?B?S0VNR1R3TFp0TmswZHl3UVlHTXYrUEMwcFkzMTE5SldjeHo0Q0IyRGdHMEgr?=
 =?utf-8?B?QjVmQ25jbDVyOXFxbHdFNTdDL3VuM2tiYm00aFNTSVUzYjgySkgyNDY0YUpj?=
 =?utf-8?B?L1lQWlhMcXhKMGJscjd4VkYybksyaVhLbnNVTWtNRWNuZmFKTkpscnRYcS96?=
 =?utf-8?B?dW90SmxzUyt3a1JIbm9SUTRHM0dGakREYzJmVUpwbjN3dzAyeCtXSWVBelRJ?=
 =?utf-8?B?eldSMzEwY2x0RTlYTnBSVGs1QXVCbjl1dDdCS3ZPM3h2Ykt2RzNteU5haUYz?=
 =?utf-8?B?cExzbWdEY3V4NFhkMTdlVXY1VzY4MUQvY3NSdlJkdkovUVlTVDR4OWgzL0pX?=
 =?utf-8?B?TVFwY2xvWXk1Y0VwMGVhVUNkb3VmQVZ0S1VJYlRXdWNJS0Y5WWNsamF4dVQw?=
 =?utf-8?B?Q2VLaFZsZ3ZzY1dxa1dFaDFYTWNPMGpWUlpSTE5HVjlSYkxrUXpKbDIybkhV?=
 =?utf-8?B?UVoyZFJsdmdTYXNhcGVER05wZ1hHSmYzd3laTmdLL0MrcVBSd1pJeHc1S1E2?=
 =?utf-8?B?VHowOHZwZkdyUUZWRGJUME9oTzJaZWdYWDdoeFFxN1E1N2lacGUxSUpsS2Fp?=
 =?utf-8?B?a3BOUFkvNXJ2WHZvYmdDVlk1dWpUN3hMdHBhTGduTGJIemZqR0Z0czhzMTVR?=
 =?utf-8?B?eXRtY0l3YnhuNUt2WHlkSUVmV2oxR0RsVWhjNC9JWDdTeDFQT0c5Z1VKNGFK?=
 =?utf-8?B?UHd2cmphQ2RsNUpFZ2IycWNCZCtkUVowWHBXMm5wY1g4aWZjN2dZbzRzNFlw?=
 =?utf-8?B?cFU2YUZhbVVFbWZvZStQNERhT3JnYWJLKzFYbUVZZEE1NjB1OXFQeE13THJy?=
 =?utf-8?B?QXkwYm1XQTZGN0FYd3g5YXE0OGs0WW1rMWZBaFliWTMrN0ZmZVYyQ1V4V2J1?=
 =?utf-8?B?Rm9OYy9MamlwRmpaRFREVUxJbnV5SzVha3VLT2xsQXRGMElYbEl5UU5SSmM1?=
 =?utf-8?B?UXdiaytQaG5NTlhwV0trR2FXL1hPUzRlTUZIVFljT3pkMTQza3RPc3NDRDhl?=
 =?utf-8?B?ZlphaUxKaEtlc2RoZ281dUhpenE4OGR0RnJuZWY0OU93aWNIUVlWWWhlcmtM?=
 =?utf-8?B?MXFqeDBiQ3FhREk5Y3ZZMFE4VXBlVTVjT21iRG9lRlNUWmQ2aVpOelE2R0JE?=
 =?utf-8?Q?tqh+WUOkiNzVwzl1bkWsbHJaV/xV5c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Mi8yR2FLbUZiS05xM0pSaWRPUjhHcUZnSTJ1L0JRTkxqSzB2b3VTYWxnSUhI?=
 =?utf-8?B?ZHltc3QwekNkZkkyd3d1ZERqalMyL29YU3luVCs5cU14TFIyVE00Ui8zZ3kw?=
 =?utf-8?B?MHM4Mk5lM052N3MreTl5eUZpMG0vVkMvZHJCb2hiZ0xoeXE1N0FjOXQraWk2?=
 =?utf-8?B?QXZBaW5sS2MwUjYzaXptQjFGdG1lUnhHU2xnTE13ejFtcE1HajVJSEVHenFQ?=
 =?utf-8?B?a2Jod2tXOFJBeWJHUXY5MEl4TDI5YmI0dXpjazhLc3l3Vk82VlY0VWtCRk94?=
 =?utf-8?B?TmtRTTNIN0lZYWIrZEtBOG1nRE5GT0VuWWVCRjlqbWk3TnllK1VBaXFJUzBp?=
 =?utf-8?B?Qkc0ZDlENWxBdXZEemVkeUhyR2hYb3hFSThuU1gyVXM2bm9mSnY1bmc4VWh4?=
 =?utf-8?B?YXFoZzlvVWlXUXBodmFTZEt2UE5Cc1hTQW5wbEI4YmJpbE03QnlXb21hMXgx?=
 =?utf-8?B?Zm82WDhOMzJtc0ZtL3dWTDJvVXRNeXJjUmk3VGxKY1RuVjVFT0EyS0N5N2Fy?=
 =?utf-8?B?UlgzeVVad2ZDdm92eFUzbXhsVVQrZC9Ta3NWUnI2aTBnbzNFblVLV1B3UWts?=
 =?utf-8?B?Ly81bzllQTZYRHBKSTJLYjluRDQ2Qk9vc1c2cU43eUxFVWorY2p0TW1VUWxm?=
 =?utf-8?B?dkRPbGtsNkltdTU4NkdYVExncVNvMFJLM2Q3dURwZGs5ZnNrcTFaZVF0MWpS?=
 =?utf-8?B?RFNQanE1WmNUdWdJR1VPVHJqZzI0OHhid1NHTEZPVU1IT09VUWZzelh6OE5q?=
 =?utf-8?B?aGtZTVJieC8rdzRqMjJKZDdDZ2NDb283RVNjbUYycVBaUmJCL0d2RTNlZnJK?=
 =?utf-8?B?Z1BnMEFmV0tSSG9ySmFwbFBOUWlha3VMYmdqcEFNV05jZWcvL0hZTlRNaVBy?=
 =?utf-8?B?c0dCcE9hdGU2NjhZVVhqdGdsVFNoYWdHemZwMnMrYUxmOXpUQkRVcGZ2dDR5?=
 =?utf-8?B?enJUMkRlVGx1TWx4dTg0aGs5Yy9FZU1MNnJPZjFoNFo0MHk0MFRFSGhKSUQw?=
 =?utf-8?B?ajN3cTI3YnRyLzAxYTQ1d0hnRXVqdzNZWmxTOUxvSzd2aDdBVkE0RnhxTm1F?=
 =?utf-8?B?cmNkdGJQY1pyaEh1NFJQbmNIOXYrOEUvMUVNREgrNGIwbk5zOVBlUkNNcWhp?=
 =?utf-8?B?SDdhRk1hVXNyTzhaZ0pLTGl4cFJEZWw5ODZLSkZJUGVFLzAwY1QweTZhK3lM?=
 =?utf-8?B?UXVnazcvZmRzMXUrbm0yNm52M01QNmVXRjJ5MnVYQ1FkUmV2bGRYN1E4Qmhk?=
 =?utf-8?B?QTZYOW4yYjd3a1M0L0c5QzBJbHhUbzhja3JqTGJwdGVsdUZNdElrS2dCSkY1?=
 =?utf-8?B?OTBtd09kQkg4RTBsMkY1OElYRGV3ZGxPS282OU5Ed01MRCtUbjBrTE1oM1BI?=
 =?utf-8?B?dEpxZ2RWcjJUNURNaFBwVnRONnlkeHB0OUd6UDJqT2lQdFhaRVh2WkhjZFpV?=
 =?utf-8?B?eHpzanZMVTd6eHQ1d1RhS1huZEVVRnpwNFFXTjkvb05SbmFDMGZKcXRmSnVO?=
 =?utf-8?B?MFFjNWxzWjF1YnJSWkNaWm5XQ0F4YytIWVlSSEhPQk5vbE1HUHh3VkpDTS96?=
 =?utf-8?B?UWJML3JDdmlKTXhGbHphM0I2NUduUVRSMlNsRFQvWElOdmVSOHl2d0k4OGJ2?=
 =?utf-8?B?YnovN0RpMDhlMkdrazJ5SS9rVmZqbHJQNTNpL2xPVTdJSkhHcEVLclJLVGcw?=
 =?utf-8?B?TysxeUJZZ1VTMmgvUDFua3N5cnRpZzd5YjQ2OG9ONTNIdjlreU0wMVA4UnBJ?=
 =?utf-8?B?am5Eem1zOGNEN1l6TEh5WmZlc0gyOGFiK0h4V2hnWUtyanNNbk1XQlR5Q3N3?=
 =?utf-8?B?a1ZqOUlpc2xPb1BNVmVjeHNzOW02cnFWaUJ1aFFWOVdLU3RvU3lTbjFKMzNh?=
 =?utf-8?B?T09PQ2J1d3BJVjREbzllMGx6ejdIN25wTTBPeUVqZTlveTJBSWNORWNZS0VD?=
 =?utf-8?B?LzJyaGUvRzBMZkVqSGNPdHdwcjZTQVU3eGlXMldlMlNBckRRS0IxZmZ0eHY5?=
 =?utf-8?B?Z01pNjNZeVVRZEN4N251OUR0UXp2b2hnT0lRd2hKUEREdEg5WC8xVnVaZVBI?=
 =?utf-8?B?S2NvRlhXT2U5djRTOFYvQWVuTGQrSTY4ZHFYK3VGWjM3Nlk3dDhraG5McUN2?=
 =?utf-8?B?K21YNDZOajJteVBDb2syckI0ZTk3WUFTbmJoc0dNOGJYZVNWaW5NNXJIMUJa?=
 =?utf-8?B?dmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83e22208-10f8-4733-5567-08ddd64775e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2025 06:47:36.5273 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FHWTAU13+vpTCuBA3/2qXrAoBc2tdrsPNTxOMK+uwntsA27HKyD11sBYXJKb4izRbe+ge1J4KvHqL0Db67ha1GVNTnFYEfl8qxwaVOLemUk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7934
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754636094; x=1786172094;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Iar1fcu24pW93JzgJTBZGA42p+G3s9/OERbBnmF7NVI=;
 b=O3X/TjIf0fkkFky9ahMi0K13VmWDlpGlRA59A5YlT2fN9pv1tYwF+N/4
 br9rGa8nuNoPlOsMj06+jOpmfSOVvRBASqp8DvH4LHsiJ6zGPOPjMrMuv
 +y1hvQ6Rk6qJTXKijsMHzJi47xhh9ik4+nBWZxduXIRJLaIMwcPyxU0/j
 /Ce2GUCPa+O/i7onfxDaV+6RL0vAyiEfQ54MYG8KeFM2jg4Xdj50MOu5w
 d9vAL+Dd44N8h3kqSQ7RFkj8vLt/5et3Vq96+daePvOjxaZphke1HKAqc
 LNcaxDBolqMVdxokJrOF7D3Rue5gUlFj/ttL5DNPKxh1O5dG1y8HkjMA7
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=O3X/TjIf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix NULL access of
 tx->in_use in ice_ptp_ts_irq
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgSmFj
b2IgS2VsbGVyDQo+IFNlbnQ6IFRodXJzZGF5LCBBdWd1c3QgNywgMjAyNSA3OjM1IFBNDQo+IFRv
OiBLaXRzemVsLCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgSW50
ZWwgV2lyZWQNCj4gTEFOIDxpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZz47IG5ldGRl
dkB2Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldCAx
LzJdIGljZTogZml4IE5VTEwgYWNjZXNzIG9mDQo+IHR4LT5pbl91c2UgaW4gaWNlX3B0cF90c19p
cnENCj4gDQo+IFRoZSBFODEwIGRldmljZSBoYXMgc3VwcG9ydCBmb3IgYSAibG93IGxhdGVuY3ki
IGZpcm13YXJlIGludGVyZmFjZSB0bw0KPiBhY2Nlc3MgYW5kIHJlYWQgdGhlIFR4IHRpbWVzdGFt
cHMuIFRoaXMgaW50ZXJmYWNlIGRvZXMgbm90IHVzZSB0aGUNCj4gc3RhbmRhcmQNCj4gVHggdGlt
ZXN0YW1wIGxvZ2ljLCBkdWUgdG8gdGhlIGxhdGVuY3kgb3ZlcmhlYWQgb2YgcHJveHlpbmcgc2lk
ZWJhbmQNCj4gY29tbWFuZCByZXF1ZXN0cyBvdmVyIHRoZSBmaXJtd2FyZSBBZG1pblEuDQo+IA0K
PiBUaGUgbG9naWMgc3RpbGwgbWFrZXMgdXNlIG9mIHRoZSBUeCB0aW1lc3RhbXAgdHJhY2tpbmcg
c3RydWN0dXJlLA0KPiBpY2VfcHRwX3R4LCBhcyBpdCB1c2VzIHRoZSBzYW1lICJyZWFkeSIgYml0
bWFwIHRvIHRyYWNrIHdoaWNoIFR4DQo+IHRpbWVzdGFtcHMuDQo+IA0KPiBVbmZvcnR1bmF0ZWx5
LCB0aGUgaWNlX3B0cF90c19pcnEoKSBmdW5jdGlvbiBkb2VzIG5vdCBjaGVjayBpZiB0aGUNCj4g
dHJhY2tlcg0KPiBpcyBpbml0aWFsaXplZCBiZWZvcmUgaXRzIGZpcnN0IGFjY2Vzcy4gVGhpcyBy
ZXN1bHRzIGluIE5VTEwNCj4gZGVyZWZlcmVuY2Ugb3INCj4gdXNlLWFmdGVyLWZyZWUgYnVncyBz
aW1pbGFyIHRvIHRoZSBmb2xsb3dpbmc6DQo+IA0KPiBbMjQ1OTc3LjI3ODc1Nl0gQlVHOiBrZXJu
ZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlLCBhZGRyZXNzOg0KPiAwMDAwMDAwMDAwMDAwMDAw
DQo+IFsyNDU5NzcuMjc4Nzc0XSBSSVA6IDAwMTA6X2ZpbmRfZmlyc3RfYml0KzB4MTkvMHg0MA0K
PiBbMjQ1OTc3LjI3ODc5Nl0gQ2FsbCBUcmFjZToNCj4gWzI0NTk3Ny4yNzg4MDldICA/IGljZV9t
aXNjX2ludHIrMHgzNjQvMHgzODAgW2ljZV0NCj4gDQo+IFRoaXMgY2FuIG9jY3VyIGlmIGEgVHgg
dGltZXN0YW1wIGludGVycnVwdCByYWNlcyB3aXRoIHRoZSBkcml2ZXIgcmVzZXQNCj4gbG9naWMu
DQo+IA0KPiBGaXggdGhpcyBieSBvbmx5IGNoZWNraW5nIHRoZSBpbl91c2UgYml0bWFwIChhbmQg
b3RoZXIgZmllbGRzKSBpZiB0aGUNCj4gdHJhY2tlciBpcyBtYXJrZWQgYXMgaW5pdGlhbGl6ZWQu
IFRoZSByZXNldCBmbG93IHdpbGwgY2xlYXIgdGhlIGluaXQNCj4gZmllbGQNCj4gdW5kZXIgbG9j
ayBiZWZvcmUgaXQgdGVhcnMgdGhlIHRyYWNrZXIgZG93biwgdGh1cyBwcmV2ZW50aW5nIGFueQ0K
PiB1c2UtYWZ0ZXItZnJlZSBvciBOVUxMIGFjY2Vzcy4NCj4gDQo+IEZpeGVzOiBmOTQ3MmFhYWJk
MWYgKCJpY2U6IFByb2Nlc3MgVFNZTiBJUlEgaW4gYSBzZXBhcmF0ZSBmdW5jdGlvbiIpDQo+IFNp
Z25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KUmV2
aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwu
Y29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAu
YyB8IDEzICsrKysrKysrLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyks
IDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9wdHAuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfcHRwLmMNCj4gaW5kZXggZTM1OGViMWQ3MTlmLi5mYjBmNjM2NWE2ZDYgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMNCj4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYw0KPiBAQCAtMjcwMSwxNiArMjcw
MSwxOSBAQCBpcnFyZXR1cm5fdCBpY2VfcHRwX3RzX2lycShzdHJ1Y3QgaWNlX3BmICpwZikNCj4g
IAkJICovDQo+ICAJCWlmIChody0+ZGV2X2NhcHMudHNfZGV2X2luZm8udHNfbGxfaW50X3JlYWQp
IHsNCj4gIAkJCXN0cnVjdCBpY2VfcHRwX3R4ICp0eCA9ICZwZi0+cHRwLnBvcnQudHg7DQo+IC0J
CQl1OCBpZHg7DQo+ICsJCQl1OCBpZHgsIGxhc3Q7DQo+IA0KPiAgCQkJaWYgKCFpY2VfcGZfc3Rh
dGVfaXNfbm9taW5hbChwZikpDQo+ICAJCQkJcmV0dXJuIElSUV9IQU5ETEVEOw0KPiANCj4gIAkJ
CXNwaW5fbG9jaygmdHgtPmxvY2spOw0KPiAtCQkJaWR4ID0gZmluZF9uZXh0X2JpdF93cmFwKHR4
LT5pbl91c2UsIHR4LT5sZW4sDQo+IC0JCQkJCQkgdHgtPmxhc3RfbGxfdHNfaWR4X3JlYWQgKw0K
PiAxKTsNCj4gLQkJCWlmIChpZHggIT0gdHgtPmxlbikNCj4gLQkJCQlpY2VfcHRwX3JlcV90eF9z
aW5nbGVfdHN0YW1wKHR4LCBpZHgpOw0KPiArCQkJaWYgKHR4LT5pbml0KSB7DQo+ICsJCQkJbGFz
dCA9IHR4LT5sYXN0X2xsX3RzX2lkeF9yZWFkICsgMTsNCj4gKwkJCQlpZHggPSBmaW5kX25leHRf
Yml0X3dyYXAodHgtPmluX3VzZSwgdHgtDQo+ID5sZW4sDQo+ICsJCQkJCQkJIGxhc3QpOw0KPiAr
CQkJCWlmIChpZHggIT0gdHgtPmxlbikNCj4gKwkJCQkJaWNlX3B0cF9yZXFfdHhfc2luZ2xlX3Rz
dGFtcCh0eCwNCj4gaWR4KTsNCj4gKwkJCX0NCj4gIAkJCXNwaW5fdW5sb2NrKCZ0eC0+bG9jayk7
DQo+IA0KPiAgCQkJcmV0dXJuIElSUV9IQU5ETEVEOw0KPiANCj4gLS0NCj4gMi41MC4xDQoNCg==
