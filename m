Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 800C8B0C091
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 11:46:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBB0683D7E;
	Mon, 21 Jul 2025 09:46:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rzPxTYprS81z; Mon, 21 Jul 2025 09:46:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 346B882126
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753091177;
	bh=Gqrd+mGTM7vRdwsUKuXZ1R1JQXoN3+CTG6++sRxRT8w=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uFWMtciPalgt1RSEEDquzzJ67jy4jtiwJqvo02kjj4G+1MdGuTtaMa292qSf200NR
	 R1AM5nj/yp7ICdC8fygL7a5Urdd8gDfDYP5eFNyxMK1QebfXC6wtQWb7vdrD6YZJfh
	 o5hg5pXj/T7BTAeupoUCcFnZiTRkVg2khAG+cmY2jMonTnUs/g+b6/EaIygFguILM+
	 SIQPUF/r5+9XoM0eB7oir02KmImO0xxzKWpM7vDx4SWO7HPhZNSq1NcV20NcVws63s
	 zZt48/w9uMtcC9Q+vBGE7q3VexTSVl1I/FUlVOjE2uF6+HDRgjBlDKGgTvJSVC43mu
	 bvNoDwPY9JzGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 346B882126;
	Mon, 21 Jul 2025 09:46:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id EC8FC1F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:46:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D301940826
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:46:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cipUEEytRz5z for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 09:46:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1D9F14080C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D9F14080C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D9F14080C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:46:14 +0000 (UTC)
X-CSE-ConnectionGUID: zj80+CChRUOnkY2XBt4SOw==
X-CSE-MsgGUID: VG0NFMNnT8OFPptfc5f5ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="66365919"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="66365919"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:42:26 -0700
X-CSE-ConnectionGUID: AOBHLhFrSZW5MvaX2yrrXA==
X-CSE-MsgGUID: szu4g2POQ6+uRONm5QrXdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="164446740"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:42:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 02:42:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 21 Jul 2025 02:42:26 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.72)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 02:42:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J1kxgY8Ylk23e0TKiwj2JS7UKqYC+Zo3w82UssnkjxUITIEAnpC/131ah3No2OkP3u9Iygf+9wZz2+gn6TSYIS1at29tRg/vdE6kyRpc6Wy1wPOH9b3T4qp+0S4ifwzXwT6asyaWLKrdkYcUA38Mi1kHlgAEQ44Np7k60KTDTzwBL0sZp9oVSWj/t0SASpfBCe8vKd4H+ldrEgK3TI39PdpvJQE16Ke5+MA2f08ccWEJzocCDZBqUBOtpxuQykHvSFpliuyRge2G9LK1iW4iRPd0Kz+GV2SLayehGr5MSp8P/eMqVcoGwoR2nKaFBabH+gEVgt1L9jA0swc6PnhfxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gqrd+mGTM7vRdwsUKuXZ1R1JQXoN3+CTG6++sRxRT8w=;
 b=qBMvkycX743sd+L+FJqUpSAgl0HH6I4ol/EYqSteHAoUpflKgN9Sz1HPh2c6bvDnXLKSL+A2VDyqflOkrmujNPY0qOeuACnljze1SCK4w3WDUketF2t3LKkeykiwTWklXCXTQZvquHBAo1cnAr94kwUKEcu6HdiaKMDHaxMLJf7yime+aNmIul8yvZTWSKGmneCg4+W6YKT8X8vyBFATHusHexOnk5KFjgBiRGU9Dbf0EUW38OFuhX31aa0tRrCw6wzFGvY3EuuuhB6ANVdF45A0WAyFWHE1grS/keN0a4uanHQWr5+q7WbE8KTP3k3yA8PVxfsFx0whV3FldTZtzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by IA1PR11MB6244.namprd11.prod.outlook.com (2603:10b6:208:3e6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.29; Mon, 21 Jul
 2025 09:41:55 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%6]) with mapi id 15.20.8922.037; Mon, 21 Jul 2025
 09:41:55 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Dennis Chen
 <dechen@redhat.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: report VF tx_dropped with
 tx_errors instead of tx_discards
Thread-Index: AQHb4KFPgqZZVZVCPECLNvSN/WS5vbQ2s2sAgAA3pYCABZrzUA==
Date: Mon, 21 Jul 2025 09:41:54 +0000
Message-ID: <IA3PR11MB89858EA6B76255A9F43CD7348F5DA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250618195240.95454-1-dechen@redhat.com>
 <CAOftDsEnyXZa8arEGL5pRa-0RvfwS5Tv7eb-uhOzCUAZcUxoAQ@mail.gmail.com>
 <c9ecef85-a460-4442-95f5-99f0d3ff5496@intel.com>
In-Reply-To: <c9ecef85-a460-4442-95f5-99f0d3ff5496@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|IA1PR11MB6244:EE_
x-ms-office365-filtering-correlation-id: be91f59c-4f57-4a16-ade0-08ddc83ad434
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?czQrSndrdVkwVmJ0Y2lnbkZ4YlFOZTZ3d0IxNno5bmcwQ3FrNHhXS2JURjNQ?=
 =?utf-8?B?R0p5NlR4RzF5bDRFWExnZ293VzVGcTNNQzZSbEdNR0dvZEk4aVh1QmJ6RnBw?=
 =?utf-8?B?Rk1URWtLWng0NWNiZ3lUakM2UXhmcUdqOGVMZnlvMFUyamNCQTNINmJ5ampU?=
 =?utf-8?B?bnhiTWdCK2ZHNWhMbGFwS0YrQUxwUmxldmdLSjAzeHRYeUF3ck9sMnZCbGV3?=
 =?utf-8?B?YWl4cm9JeDNNR1hGQk1RMThzcFVoRVhQRVZVaWtWVW1nZnRTOXVER2Ivdnh3?=
 =?utf-8?B?ek40b0dVZnc4RWlpZWpvS1Rra2VybGg5a2R4ZmM5OGIwa0RqTTZqTDZjWEVZ?=
 =?utf-8?B?VzgrZXR1WGRJU01UUjhWRDdLSXRtZlNGRkl1MnJjQU4weWJHT01hNXlyZFV3?=
 =?utf-8?B?SHV2R3UvUko3RnVsNHlkZGRvcEd2NnlxbDdhQnZRVmdvdWZzN1ZvZzJja2gv?=
 =?utf-8?B?bkkxcE1pRWM0UmNabTIyVFMrWGZ3V0dxQlRyc1R2TS9qSVJHSjEvWHJlK3FP?=
 =?utf-8?B?TUNZczEwQjUzd21DNUxmZHJaZWpuVTM1cmhRaW9NNitzWGx1S0lqRG5RT3Jx?=
 =?utf-8?B?ZEl4RElGdkk4RGpFOTZuR3JTc0JMb2hiZmhueUNuSWxRNk9DSEpIUGU1NHFT?=
 =?utf-8?B?Nm1KbkI0aWxiVGlIL2k4TklrL0lISWdON0J0T3BzMDlYMXdFcXJMWEtvUFd6?=
 =?utf-8?B?TU0rYXJkU2k2cVJjVTUzUGdVZTdwMnNFazBFdGVWeGNlZWxKaGI4R0llVXlU?=
 =?utf-8?B?eHoydythUUNicWpYQm5kS0hBcE1VYUtLNysxMmtBbEt0YlNvaHlMNzlhOGpJ?=
 =?utf-8?B?U28rYlhjaVNHZnJwd2FSTjl3V0w0eUtBMlkxZzh3Um03cDQ5cDRITy9vYUdL?=
 =?utf-8?B?ak1HdE40ZzQ2VjRZNmNNaW0zQzBzb2xJcTBiVHQvODh5QlJIQ3dyWjZKRVF3?=
 =?utf-8?B?YlFHK1ZWbENqMVptTW9wQUNYSkRBYnMvbS9SbnA4enRYU3ZoaWN6cWtPTzdl?=
 =?utf-8?B?L1BwOExScTh3cVlFRHdOWGdDTng3Zy81TkN0bjVMVXV4M2dRYmt1WmpyZS95?=
 =?utf-8?B?NWU5UEhiVDRFQmQrS0huQU4vVWJQQlhTRk90TXNPTEoxTStJNm5iWm1aVkIy?=
 =?utf-8?B?SGZwZXVMRmNTcTRnM1ErZjl4bURWQVgzeGpvcG9iT05YTUFIcVV5MEFJdXpM?=
 =?utf-8?B?YTZKUEJoalBDSUdONDBBRWhKTmJoMTZjckRmaFZEYUF4TFVTVStOVHJKekp2?=
 =?utf-8?B?UHZTZE9BYVAzWmhqVXlEbGZPcGRDWDE5RWpXMTBtdWJGS2dFektqU0xMcDdq?=
 =?utf-8?B?dk5qVzVEVnhNMTFUOWRZcGF0TDhxV3pyQ3AvaC9EUTdXTUZsc0JYM1FQSmRP?=
 =?utf-8?B?dHJuaDJRQ0JLOEo3eWF3aWk3cU1UVGVCclVMSWdoMFpseVBsd1FVRVQ2aERE?=
 =?utf-8?B?T2tFM2VXTStLUWVQYm1JV0lCbnBmK3pjQXNtVVd4eUNOUmhQNURiUTluWlJl?=
 =?utf-8?B?MVpIakZpczBha0J5dGd1UExVWlk3YmVsall0b09RTnJEaWpUYm9QNUtzZm4x?=
 =?utf-8?B?ei9mbVJUUGNQZGJTYmFkVHlwMGRHamR5YmJ4dGg4dFdZZjVFT01jY2JpTllV?=
 =?utf-8?B?RkMwQVU3V096WXlWdjU0TzRGeDRFUzdhWVN3REFOZzR3L1BjKzhIcnZmRU80?=
 =?utf-8?B?Z25GS0xUVk9Odms4cm5rVFp2UEU1cGVqVnZSL3B3bVVhTFFoOU11Q0JhZnhF?=
 =?utf-8?B?RE1wZUFsbllycVdLbTJEMitMSEtDSTZHbVpBWEFVdmdRVjJIbHhpZm5kQTdF?=
 =?utf-8?B?SHdvWjdVOXdLMG9Wb0JiU0lGbWJwQnhVaGFRRnFHR1k1d3VNUkp2bG93MXNV?=
 =?utf-8?B?UUtSQkxRR2RZNkluWVZRMTJVY0dVaGRiRzFjY3BZVU16eEhVcFJ0YWpnM3lK?=
 =?utf-8?B?b3BBekhCYnZtWWh0VVJWNVFuQit4WjNYc0g2cnVwd0JXaHlCUjRRVG9mMXN1?=
 =?utf-8?B?SkNhSVplRHhBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SVNGd2g2clpFVnBmQ0JnU1pzUVRmdUJDMTRrekVwVHVUR1o5cjM3ak1UVFlq?=
 =?utf-8?B?dEs3ejJwSHk0UE9rMThMSWVMTHYyUFRkZHB4cjhmVXJrekpMSXlId2Y3NjZU?=
 =?utf-8?B?bDh2WnM4NzdVTUhFeUFjcFQ0d2xnRVp4VWZYSE1aWjI3UUt4RSt3TFkwREdJ?=
 =?utf-8?B?MlZIQ294dGMzOVA0WVlZSVRqY1lNeTZwZ0tsd0F6d1AwV2xUNVJZRDhjNzQ1?=
 =?utf-8?B?ZUdKVkQ4aGhhemp2ZG4yZENmT01mTGFnS2dVNTJXZDNMNXN6RzNrdjhJMzFm?=
 =?utf-8?B?MGwzSnl1aGtvVEE0a0wxb1J2VzhuN0RKRHkrZEY2Zk1yQTNKNDdGbFFqUElx?=
 =?utf-8?B?UHh2djJ3QmpXU1IzNUpxM2M2bittSmdZNnNEMG5IQk1pK2hWalpCbEpoNWV6?=
 =?utf-8?B?dVZvSWNyVk1ObGNoNUFTQmFoRGxnay9ES3BGbHNFRHRTaFIxellaTlJYZGk5?=
 =?utf-8?B?ME1ZZGlldkQ1ZUMzUTlDRCtnTXRWbG53RVdneUsrOEJDMlBSd2RBL1YvYXY0?=
 =?utf-8?B?UURDc0hHdnUrdmFOdEg1YnlXV29rN1owTUwycHcwT2xBZ1E0RjNVZVRSTmZU?=
 =?utf-8?B?WlRSYWUwNmhRaFRnRmxqcG1LWnhDQnBnbHMyTmphckQvNjQxQytnQTZwSWpr?=
 =?utf-8?B?bU9Rcm5rSzg2RVNpZ2VwWCtvZWhOWE5teExlZE1yUUdjak4rd0FaWGI5RCsw?=
 =?utf-8?B?YjhKRkZLdlBqa3YySC9hSWt4RnU0SUp6VlppbTQxVWtpWEJzMEJiejFvYVhx?=
 =?utf-8?B?SWx0Mm9HbU5DRDd2dUFNV2RxVnpBQ0NqUGtLVUhhWTlFeFpBNzFHbi95T0F6?=
 =?utf-8?B?cnpVd0cxK3duOER1dk9nbzMvcThvamhReGlsUG5qQ1U2ckw2cVU4TE93c2FU?=
 =?utf-8?B?cUxwZlFOTThYaGVTTmN6NnArR1pKUFRHRVlPN2R6Wk9YTHcyNGRSL2kwOVRa?=
 =?utf-8?B?ZnVOMk54WXllcWxsNFpUTE1LY2szTWFYUUZmUUNxS1NYVkxxNTRxb1cwUjFp?=
 =?utf-8?B?MHJWK2pUeDlLL01DZzAra1dpYmdIL0lxMHVGQlhPSDBCYit6dGNuSEFTU0Ur?=
 =?utf-8?B?WXFCVVA4ZVJ0WmNyTEpabFJHLzA4SzIxcUlNK1pIaTNxT1N5Rkd0UWx4M1Q5?=
 =?utf-8?B?SWJUcWNuc0h6eUJZbGM2Q1U4ZDF3VGYycTdLSFNzZmpUQ3orbEFsYTBGd3hP?=
 =?utf-8?B?TG5reTJxM1V3NUVNMkV2Vkw4SE9vaElWTGNtZlp1VGJwVCt1VEpGdFYwRVJl?=
 =?utf-8?B?ZGk2UlVPSmhyTENnb1gvdXZmNUVrNWhWSGMwL1g3eGRqSXhQMC9nMVlRZ0ZC?=
 =?utf-8?B?QjhoSnROSlZxQXVPcDltdUdyWC9tbTU0dGpBZmI5OHpQMWx2cjFBTFN5TXJR?=
 =?utf-8?B?Uk9KRnlYbmlDL2REUEhOakhDblhzeTYzMXhVRUlpbEpqUHdaOWdFc09zbUJB?=
 =?utf-8?B?VXhPZDBQYXFwMytPWTJCZVlINzNHZGdhRVV1Mlhsc2VWelNoRWRrYU5idzAr?=
 =?utf-8?B?WGR2VVAvU295TDNlTU9jOXpGdzlaaEdLUnhNNUlmM2IvMEp0cXM1VTk1Nkdz?=
 =?utf-8?B?Q2YyeFBGT0c0NjFUQXF2amRlUDl1U3ZjOEhXRnRRcjlXcGpjQjBWeUNPZFhq?=
 =?utf-8?B?UlZZeFpsY1BraGVqdGdwQnlXbDRuOG9iV3VvV1pDdi9DdnNHb0R2L25mN2R0?=
 =?utf-8?B?THZuaHhObzc0OTFXMk4rSThuc1pQb1Fwb3NpUkMzbythTGhUa2d2VlZWZWRP?=
 =?utf-8?B?cUNQRXgyVmc0QXl5ejZjcVd5eXNtc1NpclpjcFAyK0FtR3BNZld6QXNDaU1R?=
 =?utf-8?B?NFhqeE9FblpBZVVxSXNOOUdteWdGN1JkcTMzQ1kzQ2lQQ1pFdXd6T3ZFNjRK?=
 =?utf-8?B?eUpTbzU4eEVkd2VDc2g1U3A3RFQzd1hLRjR0NlZvNFNON0g0anMzamZRQzY0?=
 =?utf-8?B?UEwvRklYTUJWNWdKT1dPdEhWenFRN01IcHRhMFoyMnI4WW1ibWR5cVhjZ25S?=
 =?utf-8?B?MVd1SlhmMGMyV255cmVYTTVpSnlHamFMNEd3UXpZay91NkRBbXhXTndtL0lu?=
 =?utf-8?B?b1RMZEovVCtvdVhXTDhibDJQdktzMlRXOGRGVU5rdVZWWHpTRnlUbmlXdmll?=
 =?utf-8?B?NHh1c3BEd05mbU12dGcvNCtIOCswVkVESlRvWis0LzNXaUdQb2lEekJYQkRj?=
 =?utf-8?B?dnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be91f59c-4f57-4a16-ade0-08ddc83ad434
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2025 09:41:55.0070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8fKLl8Dr8T3MMLeMU+PJGXu3l86tsbOE9H7bfr1WKt5zZlBuNZC4iSdMs38EO61nSoh4sJwosnOtBIXCnw/JSr4sR6/NzdKsP5CZ1UoldvA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6244
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753091175; x=1784627175;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Gqrd+mGTM7vRdwsUKuXZ1R1JQXoN3+CTG6++sRxRT8w=;
 b=lRc9ngzc94MGqHfHQAjmYk4I3wASutKupRr7fwY/aay3lSVHKJ+jnNdG
 +bJ5LkGrx9TLftesBsHYybl2QO6YDFhw01C10DO5UC+nyLVZeZ0P3crgy
 74HVNlAJkRjpe8qmyAICQCE8Q9HPwhZbyonxzhxz/YZfZBJ685zT2aX7Y
 psYD8uaHyCuBsBbu9Cho/EXrDsIFTcVp160xiVw0Z9g8IpmHpG/rViCIZ
 RfXOIGeMDgBRs8eyw4XC66qiSjzOZAXESuIpDzdWAiBsHNQctR7gfm/8m
 vVHDdKwvYbJXQzXnjd2ifLZx8JW3deBdu429hyDLKhGTsaJo0z/QzUYGW
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lRc9ngzc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: report VF tx_dropped with
 tx_errors instead of tx_discards
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBUb255DQo+IE5n
dXllbg0KPiBTZW50OiBUaHVyc2RheSwgSnVseSAxNywgMjAyNSAxMDowNiBQTQ0KPiBUbzogRGVu
bmlzIENoZW4gPGRlY2hlbkByZWRoYXQuY29tPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBD
YzogS2l0c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47DQo+
IGFuZHJldytuZXRkZXZAbHVubi5jaDsgZGF2ZW1AZGF2ZW1sb2Z0Lm5ldDsgZWR1bWF6ZXRAZ29v
Z2xlLmNvbTsNCj4ga3ViYUBrZXJuZWwub3JnOyBwYWJlbmlAcmVkaGF0LmNvbTsgaW50ZWwtd2ly
ZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5d
IFtQQVRDSCBuZXRdIGk0MGU6IHJlcG9ydCBWRiB0eF9kcm9wcGVkIHdpdGgNCj4gdHhfZXJyb3Jz
IGluc3RlYWQgb2YgdHhfZGlzY2FyZHMNCj4gDQo+IA0KPiANCj4gT24gNy8xNy8yMDI1IDk6NDYg
QU0sIERlbm5pcyBDaGVuIHdyb3RlOg0KDQoNClRlc3RlZC1ieTogUmFmYWwgUm9tYW5vd3NraSA8
cmFmYWwucm9tYW5vd3NraUBpbnRlbC5jb20+DQoNCg0K
