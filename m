Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7398A88860
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 18:18:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64F8682CE4;
	Mon, 14 Apr 2025 16:18:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zW6NrqcL6sJ7; Mon, 14 Apr 2025 16:17:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 769D781EA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744647479;
	bh=GN5FIvFAQz1uL7aQ3EwBXaZ2b1PHmQUjQuUsE1xnQ7U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iJJmd6Zku53AAoi0Ei5QKwmSdARs/OWYCtfrdMOFtbmVnURrLrrMwbTVfAiEA7XtP
	 dJVzMFsJcXmQv4u+47s8D8QhYxljkoV1FBLR9wa3InwFROUpS9kBJBNQGftSvgyimY
	 TwyGNEu3vtQ47w3yVaCJFGING744MeTHDOm94+48bFV+isVmJRAaXMo5HuiadyIxZk
	 UgEwoZTjrSLAO22QNCMfPdmbMKBujwB/YtGJj8abiZsdYJ6yr7tD1k+T3GqWgO2tAG
	 B30CBagjvzUckpUhED3+cZOtLG1dgweknqLEnsmresR6u/NgThXodui/bJ0iXsnuLy
	 rj2mFQY/J4J1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 769D781EA3;
	Mon, 14 Apr 2025 16:17:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5131F250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 16:17:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3EFE360BBA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 16:17:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cSqa2hIgLX-e for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 16:17:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5F91460D58
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F91460D58
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5F91460D58
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 16:17:57 +0000 (UTC)
X-CSE-ConnectionGUID: cH/s5Vy8Tz6yPgvWbtNiCw==
X-CSE-MsgGUID: zkl6xPguSkmt718ZbDZBPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="71515516"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="71515516"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 09:17:42 -0700
X-CSE-ConnectionGUID: KZ/FDnUTTg6+qEgiHUDVgA==
X-CSE-MsgGUID: 0ll3F/ijThutUS8CZTFJPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="160825136"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 09:17:42 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 14 Apr 2025 09:17:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 14 Apr 2025 09:17:41 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 14 Apr 2025 09:17:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DhVjhjjhBQ5xeC3KeuAy1FMr1nLuxW9vlSEQL8Otr9dlngBM3/Y6X5IFMsWOhMwhEaupWhHGdhp5muPCoif8aE7ylpceO12/mojgZ2e9/ZlVUv9+PMqod0DwgUgZUA5ma/+QqbwePn7xwERuluGmQQnuJWBwp7ypTGHKIBoSYrAlxUUPvkEY9gkaWhzAPb1QoBRLFHUNM4H90ccsuimxH+MlJGD7bSfH+6atOXNppNXBBuibiJi/hwmhdlO9bjADyhbaniSSNACjletgXBtVdzqEX4wJwZ31nPD2snNus3yJqpTpll3f9g8s523OVfEzTslbyGjGEJEetkZ4HAqOSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GN5FIvFAQz1uL7aQ3EwBXaZ2b1PHmQUjQuUsE1xnQ7U=;
 b=r30XLx6e9Hffc5FcujQyA0CNa8fGpua2alhcwkx+MQBTC94kMj+aEH0e9LkLScwNC5zcx+ZkntUpF2g/NjcsI14FbR7RBFgm+cj3o8b8mo8kYSBL2YqIKF2F5kEEagk65vRz6DbSBEOPfaXFC23xckBl/bkTb6OVI74wPDLznXjuIVSAasXyf4EVliOwd7aEDxaKNBtoz7jgrEPWwMw/Y+3/EQQQ97/dFxltwLB1A3eyuu3RLByH2AShtN2/PU1Rr4if0jTGjixdWrmgy41ZTpfvVh2d2/wQ9BjkECHhkdtoApGg0PeUU6DR119LYH68/4jICgUCTE8lA1tGQbXRRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by CY8PR11MB7394.namprd11.prod.outlook.com (2603:10b6:930:85::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.35; Mon, 14 Apr
 2025 16:17:31 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8632.030; Mon, 14 Apr 2025
 16:17:31 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: =?utf-8?B?VGhvbWFzIFdlacOfc2NodWg=?= <thomas.weissschuh@linutronix.de>,
 Jeff Johnson <jjohnson@kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 Brian Norris <briannorris@chromium.org>, Francesco Dolcini
 <francesco@dolcini.it>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Dumazet,
 Eric" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky
 <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>
CC: "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ath11k@lists.infradead.org" <ath11k@lists.infradead.org>,
 "ath12k@lists.infradead.org" <ath12k@lists.infradead.org>,
 "wcn36xx@lists.infradead.org" <wcn36xx@lists.infradead.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/7] wifi: ath11k: Don't use
 %pK through printk
Thread-Index: AQHbrVDaMXOJlh9dNE2s1bjiYEGkwbOjVrxQ
Date: Mon, 14 Apr 2025 16:17:31 +0000
Message-ID: <SJ0PR11MB58668C93C9893C835E16A32EE5B32@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de>
 <20250414-restricted-pointers-net-v1-2-12af0ce46cdd@linutronix.de>
In-Reply-To: <20250414-restricted-pointers-net-v1-2-12af0ce46cdd@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|CY8PR11MB7394:EE_
x-ms-office365-filtering-correlation-id: 38fe510d-e8c7-4b81-77aa-08dd7b6fdba6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|921020|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?cnhMR0RVU0wvTExyVjF1OTJvV3J0VlhndWpvdXArdW5ZZ05zUVkwUFA2ejhQ?=
 =?utf-8?B?Z0tsR0RRVHdFdVgySC9SS2YzSEtyV3o1OGRsTUdBUFo5RmRydnVMZ21FaTJR?=
 =?utf-8?B?bUVycmxFeGE2K0VFam1ab2tnQVgvcWNBQkRtYk56QmhhYit0Q1ZoOW9WN2dR?=
 =?utf-8?B?TStiUDhyTzhzUzAwRDR1MWdONmFuUEkwMWlNNWFsVmJDdlUycWpWV1E4RmtK?=
 =?utf-8?B?K2h5MEg4aXUrSkV0YTFJTTBjKzY2R0s0MnNZaGxlVlRvdHhTY1hHNmRhS3hD?=
 =?utf-8?B?RFpiYlBCcEQ0S01oaU95bzVpMUdOeWlQazZDRnNUSCt5UDJpT1YyYm5veVFQ?=
 =?utf-8?B?U3YycVBxRnVzb2VsNmoxOXZzVDBXUVVYNFE4ZHVNMHNBbWhqWTdKQklxZ0Fq?=
 =?utf-8?B?dFlRVTFhaDB4VTJVOHZxRUJzT28wQzJZcE01TlRWZ1BnVXZVUy9iUDYvaklz?=
 =?utf-8?B?cEc4REJLektjNG9ycm1kRndzVzZsOTI1STNsOWdHL2h4VUcrenBWWTNmdHJF?=
 =?utf-8?B?NzlXVGFqeWVZTEFNS0lMTjVTTWYwWkxySmR4VVJabEdPaC90WDdqR2FHcWx5?=
 =?utf-8?B?WWZTd2dUSGZKZjVzMzFrY3p4YWkzU25wZWFnM3JoODF3TTB0WEY4L1JET3J1?=
 =?utf-8?B?cENhS1RzM2d3R3ZzRCtMcTFHOFIzZDFZZ01Sa20xUm9kS1VMVFgwOWw0NUVT?=
 =?utf-8?B?Z2FjRmsrNllKUW9mSU44SWh5UnN0aEc2bk5KNG1VTzVVZmdmWmhmNHkzMDkx?=
 =?utf-8?B?YjdWUVpvcnBWVG9PRkNXRkpUTTNoNjh1dE9UTUFLYWxnMStvdFBIUGNDU1p4?=
 =?utf-8?B?ZG9rQTlsVDdJdmt1ZXhvTS9rS3dlQVhpS01LZEJNTUc1bGVnaXZWM1lmcElF?=
 =?utf-8?B?Sm93QUtoaHIzT3phMS96OWl2aC91SGVYY0RCTWpneGVaU3ZFcGJ0WnZ0QlJ6?=
 =?utf-8?B?YjEwdEh2ZnlPYy9FY1Y3UGZ0VjhXbkxJQ25zRlQvdnFTR1VLQXNSU1ZGd0N5?=
 =?utf-8?B?bnRKTmlWNmkxY1NCb004WUNTVzJOM2ZVYnJQOXorN2JaR0R1cWZlTlB5WDFU?=
 =?utf-8?B?c3A3NERRR2VJbTlldk1BK3FjUm9WV05IOGRVbTAvdEpWUXZKbVl0d0ZtNjNu?=
 =?utf-8?B?TUEwbzA5UDg3TFlSZkc4ZlFkd2ViTFAxYUIrYnc2dmhyQTlITHltUlkraWpa?=
 =?utf-8?B?UXFyQkdoYWhBaGZaMyt5Z1A1bnhrem1PT0pkMk01QkwzME8rck04eU9GMTZu?=
 =?utf-8?B?cmR5WldkWmZmbUpnVXRKTHdWaTkwNldKQ3lrcElqZCtDVW5qdTlmalI2TlRB?=
 =?utf-8?B?TytMdWZTd0JNV0FIY1l6MGIvN3JWc3lUejhDcjQxYXJZVW1vWUVRZmQrLzhY?=
 =?utf-8?B?ZnluNlN6clV0VFQ1RXBFb2lBZHBSanBHVDVVaDFuMHlzQURQQkVNbTV4VGN4?=
 =?utf-8?B?bmtnNmZ5c1J0dUJOOE1wSFRJbnR2S1NsWUJ1czNxK1N5T2VyaGlQLzRqcXVN?=
 =?utf-8?B?R2s0VVBYeDVCWFFmMndoN0xkS2dleXYvQkQrRFljdmpVaFdLSVFuNHRCVEdi?=
 =?utf-8?B?eFkzdlhUemxHbmpMZU9rZkJDNHFPaDdUa2FHUnN3QnhIbXA4OWtyZ01TcnRG?=
 =?utf-8?B?b1grVlVrY20zdEZaMTAreDNLayszNHZXZ3hPL3RqUkxPYzhGN2FyQzZNWVdw?=
 =?utf-8?B?cW8zMEt4V3VrN25qWDQ3QW15L2J3TzBZQ3ZhenJTalZuOG5TSDJFOFFzK1NF?=
 =?utf-8?B?S2ZsYy8vWnc3L0ExaFRXRmsvbHlLVG8rY1E3STZteHpITmJmaVRNejZZTUZW?=
 =?utf-8?B?MDUwV3hjbEJwOGcyTFAzTFo5MVFmM3F4RWRZUVUxQlhhL2xsSENCRFBHbi9F?=
 =?utf-8?B?RVZJcCs0NzljTDlXekpFRE52ZEl3eGNFRzdxS3dKTlpuQnpHZ051VnJpOHRy?=
 =?utf-8?B?Nk9SVFZtL0FURDZmSG9JblJwZURMOUQvc0FjZTNGdWdPOHcyMVhpNlVnOCtP?=
 =?utf-8?Q?9zikMoY4458Ay59ntMzkhygdQUfex0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(921020)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aDgxVVhDQ1dhalhlWVl0VG5GWWMzMUxuNGFkYUI4aUJlRVdWbzlieWRReDZh?=
 =?utf-8?B?ZU1VSitpYzFJclV0REhzdElYTS9rR3BVa1MrYlp1ZnUrK3VhV2NsVVZ5UmhE?=
 =?utf-8?B?N2I5aXNERmphNHBETWwyR0lHZlBVS1hMMk1hYkxGMzJ4RG4rdGZSWDJGNUR0?=
 =?utf-8?B?ZFNpeG03T05TU2J4K2lFOTVhaVppRU1qbGEvbFlhbGs1MFlrb3B4MW9DdGUx?=
 =?utf-8?B?K3RndG4xbDhCbXdhQWRBZkxlV0xlUTUwN1duNklDZGdnems4YU1ZYzd1TVk3?=
 =?utf-8?B?cEI1T0p5VWxEZUsrcHJydlU2Ni9LS0FEM1YxTFVPT0dFRTRHL1d4bzZqQThy?=
 =?utf-8?B?L01VbUsra3JzRzRQbUhXMHYvdVp6TlU4bDcveDFzTkM4Y1NrT0NjVi9NNVR1?=
 =?utf-8?B?TjR3UjFPYjgybjU1UGptTGpQelhndzhJd3g2clBlaHlXNzhQMFNwejVsVWVL?=
 =?utf-8?B?Tmd2RnpreHI0QVBzT1QwMTNHNEpraW9rRHR0aUNnNkRFV2lBd0lQM2s5S3RE?=
 =?utf-8?B?aDdDOHNDVlBMeU9ocVhtQ0pIZm84R3lDN0pCc1F2WEpJUFc1RVY4MHNFMjBB?=
 =?utf-8?B?bXNvZGx1N1hCTmFLL3pwTys2OWpvREFIcEtvVGR4NDlNRGtLUlpWZ1FKaFJk?=
 =?utf-8?B?clVnbTlCd3FxakdrcVVwYnUxUFlpdnZ4OTBUSjNpSm9QMU5ia3J2OXFrVHds?=
 =?utf-8?B?MWJjMTl1SlZLUXNZaVpncENZVDNGdVBzb0ZWT3hEVlFCY2RFRzFxTzhIdWpt?=
 =?utf-8?B?ME5odWFnVlNPcFAzR1hjQmNGZnJ2bWpMa3Y0VmtRVUhSTHdCdmlWbTNtcEpk?=
 =?utf-8?B?cnRiZC9MUDVheVBleTIvMFBvSFA0aXA2YWxvYk9taXdNYWpiVFg2T3VaZEJQ?=
 =?utf-8?B?dURmWnNqT2Jmc3ppWDhOQzNPVm55VXp4aFE1cXhxOEg5UytrOGsrWUdtRUdz?=
 =?utf-8?B?Y2c2QlNGTXFjbXZWbnhYcmlIeER1Y3F2Nnl2YWxVdndkaXVDaGpmZ3N4a1hE?=
 =?utf-8?B?aktqejVpZzFpNVhmdHh4ZllIbjlBZ2poN0ZneHZrY3h6R1FGQlJFR3BUWk4x?=
 =?utf-8?B?KzV2YWFaS1ZSclp0QVZkdWFpbElXUmF5MklpbjNncURMbmRac1YvVTBwRWdZ?=
 =?utf-8?B?SjRhc1UxMENtMWpPWkR5anhLNnk4Q2J1YjdkRk1IYjNsM2IrSjRoWUd0QTJZ?=
 =?utf-8?B?cGJ3VEk5dlFyYWJLaXRqeDZyT1g2d0hXZFVpdGd6OVdhMkxLUS9zN1ljS3lV?=
 =?utf-8?B?NFhnWXhjT3FmR3lFc3QreFJLVTVDTVZPbHVrZFVNRm9Jd3JncTZHNE9mZjZD?=
 =?utf-8?B?TXNBOS9RZlowK25FTlBRa25IT2k2dVA5OGc4a3g2dFhLMElaU2ZQNDFJN0JW?=
 =?utf-8?B?cE5OcmtkNWl6T2t2SG9zb2xOMU9zSTV2aFB5bUREZGt4TysyRk53aFRPc1dx?=
 =?utf-8?B?dHduN0wzVGhMSnJzSFlYWG1LNGpBbmZ0MW13Mm1KSWZuZHZOazFJS253SThw?=
 =?utf-8?B?b0VBMXZlWVY4RHBYZGUrblhKK1R0bnYzZUVLWS94dHE1TzJYUEp1RWk2TlMy?=
 =?utf-8?B?MjFZMVhQZER2TE80dEdIc3hSbEZZTEI0aWxuWENwTzk3ZGlBcTBmMFBHT2pS?=
 =?utf-8?B?Z3E3em9qTXpKeGdadm1NcTg2TkovMzhnQUhJWkNMSVVXQlJPcmxGREFtblpP?=
 =?utf-8?B?V0xKNnpiY1VSdnlBcXFZckxkZ3lXcjd0NkZ0NXFybXZXM3hHN2lpVmgvRUJ0?=
 =?utf-8?B?MFZPamRiTWxmdEFkb1VSRDRqNzNpUXJyRUJWTEdkTkNFVno5Wmt3MERhbHk3?=
 =?utf-8?B?ekIyU0hWbVlXbURlZUJ0RVlxaUxaNVRKR1gxTGRDMEtVZndEZ0c5ZlFuTDJ0?=
 =?utf-8?B?ZjgyUHU4d3FFQ1J6TjVrNFFXNVlvRG9WWDlQNkNnMWxoeTJJSGpveE5RL1hO?=
 =?utf-8?B?WWN4VUkxbHV6ZEFrQ3BsMjlTUTE3TmJJVERnNmFvaXp4VzM1dUxmdWlWd3dz?=
 =?utf-8?B?NEFyNjU3SUJOK3IwTGxMY2lFak00SXVNMVVZODZ6TXhXVEhRa0ZCMHNpWVBp?=
 =?utf-8?B?Vi9RdjlFSVA3K1QvU0dPRXBOWDVSMytNeElQSnkwL1FzNVpQTGxvUkh1Qk5x?=
 =?utf-8?B?TVlWdTJQNzk3elVSRCtXWlh1dGpMdFhRR0xKbkNWc2NCQytXYTl6SjlQZWxC?=
 =?utf-8?B?Q2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38fe510d-e8c7-4b81-77aa-08dd7b6fdba6
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2025 16:17:31.3034 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pX6qbiPGxQIDrr5c5Ir74pc3b8VQQKr6IuDWKyEQWinLuU9nd8UCYwNZ9JpwESROY7mPZEGzAADSftdRDbgUtPPr5L0LS2TlVL3I61ukk5A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7394
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744647477; x=1776183477;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GN5FIvFAQz1uL7aQ3EwBXaZ2b1PHmQUjQuUsE1xnQ7U=;
 b=dz4i+JDRlu3RKAsB9zPhTH2gd37rr+kGcOByi4c2NZZ85sDeIiyEQCJh
 pm5GD8++lnvKHxZffQLyJhXjVUgE2tK3tfDcom+s1ex+9ayT747Ag9mri
 ktYwO2eSOxpZVL7UrvetsmTZ3zoaO7t2tia1TI5SQICzHpiCv3WGR1k6I
 dbM42ybcVkMVCzZn+oNXI+FK4oYtJ6NVz63PesHrgwIrFw3PQjU7FL8Vg
 7T3PQaXp9D+x8PiGgQwQ2bYj/dGm++gJewDbm2PPs+RWU9y+BwzBLDwVf
 KkbblYYOAMnfYv47joUKctrVi1wLOX/unuYOe0q/WVl4CMHarge0hQ5or
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dz4i+JDR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/7] wifi: ath11k: Don't use
 %pK through printk
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gVGhv
bWFzIFdlacOfc2NodWgNCj4gU2VudDogTW9uZGF5LCBBcHJpbCAxNCwgMjAyNSAxMDoyNiBBTQ0K
PiBUbzogSmVmZiBKb2huc29uIDxqam9obnNvbkBrZXJuZWwub3JnPjsgTG9pYyBQb3VsYWluDQo+
IDxsb2ljLnBvdWxhaW5AbGluYXJvLm9yZz47IEJyaWFuIE5vcnJpcyA8YnJpYW5ub3JyaXNAY2hy
b21pdW0ub3JnPjsNCj4gRnJhbmNlc2NvIERvbGNpbmkgPGZyYW5jZXNjb0Bkb2xjaW5pLml0Pjsg
Tmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3pl
bCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IEFuZHJldyBM
dW5uIDxhbmRyZXcrbmV0ZGV2QGx1bm4uY2g+Ow0KPiBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRh
dmVtbG9mdC5uZXQ+OyBEdW1hemV0LCBFcmljDQo+IDxlZHVtYXpldEBnb29nbGUuY29tPjsgSmFr
dWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pDQo+IDxwYWJlbmlAcmVk
aGF0LmNvbT47IFNhZWVkIE1haGFtZWVkIDxzYWVlZG1AbnZpZGlhLmNvbT47IExlb24NCj4gUm9t
YW5vdnNreSA8bGVvbkBrZXJuZWwub3JnPjsgVGFyaXEgVG91a2FuIDx0YXJpcXRAbnZpZGlhLmNv
bT4NCj4gQ2M6IGF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1rZXJuZWxAdmdlci5r
ZXJuZWwub3JnOw0KPiBhdGgxMWtAbGlzdHMuaW5mcmFkZWFkLm9yZzsgYXRoMTJrQGxpc3RzLmlu
ZnJhZGVhZC5vcmc7DQo+IHdjbjM2eHhAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXgtd2lyZWxl
c3NAdmdlci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC0NCj4gbGFuQGxpc3RzLm9zdW9zbC5vcmc7
IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LXJkbWFAdmdlci5rZXJuZWwub3JnOw0KPiBU
aG9tYXMgV2Vpw59zY2h1aCA8dGhvbWFzLndlaXNzc2NodWhAbGludXRyb25peC5kZT4NCj4gU3Vi
amVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIG5ldC1uZXh0IDIvN10gd2lmaTogYXRoMTFr
OiBEb24ndCB1c2UgJXBLDQo+IHRocm91Z2ggcHJpbnRrDQo+IA0KPiBJbiB0aGUgcGFzdCAlcEsg
d2FzIHByZWZlcmFibGUgdG8gJXAgYXMgaXQgd291bGQgbm90IGxlYWsgcmF3IHBvaW50ZXIgdmFs
dWVzDQo+IGludG8gdGhlIGtlcm5lbCBsb2cuDQo+IFNpbmNlIGNvbW1pdCBhZDY3Yjc0ZDI0Njkg
KCJwcmludGs6IGhhc2ggYWRkcmVzc2VzIHByaW50ZWQgd2l0aCAlcCIpIHRoZQ0KPiByZWd1bGFy
ICVwIGhhcyBiZWVuIGltcHJvdmVkIHRvIGF2b2lkIHRoaXMgaXNzdWUuDQo+IEZ1cnRoZXJtb3Jl
LCByZXN0cmljdGVkIHBvaW50ZXJzICgiJXBLIikgd2VyZSBuZXZlciBtZWFudCB0byBiZSB1c2Vk
DQo+IHRocm91Z2ggcHJpbnRrKCkuIFRoZXkgY2FuIHN0aWxsIHVuaW50ZW50aW9uYWxseSBsZWFr
IHJhdyBwb2ludGVycyBvciBhY3F1aXJlDQo+IHNsZWVwaW5nIGxvb2tzIGluIGF0b21pYyBjb250
ZXh0cy4NCj4gDQo+IFN3aXRjaCB0byB0aGUgcmVndWxhciBwb2ludGVyIGZvcm1hdHRpbmcgd2hp
Y2ggaXMgc2FmZXIgYW5kIGVhc2llciB0byByZWFzb24NCj4gYWJvdXQuDQo+IFRoZXJlIGFyZSBz
dGlsbCBhIGZldyB1c2VycyBvZiAlcEsgbGVmdCwgYnV0IHRoZXNlIHVzZSBpdCB0aHJvdWdoIHNl
cV9maWxlLCBmb3INCj4gd2hpY2ggaXRzIHVzYWdlIGlzIHNhZmUuDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBUaG9tYXMgV2Vpw59zY2h1aCA8dGhvbWFzLndlaXNzc2NodWhAbGludXRyb25peC5kZT4N
ClJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTFrL3Rlc3Rt
b2RlLmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTFr
L3Rlc3Rtb2RlLmMNCj4gYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTFrL3Rlc3Rtb2Rl
LmMNCj4gaW5kZXgNCj4gOWJlMWNkNzQyMzM5Yzk1ZmZhNzRjMDliZWU5MjRmNGVmZjE1MTM0YS4u
YTk3NTFlYTJhMGI3MzAwOWJmYjYwMA0KPiBkNTFjMzk3ODIwMGNlOTkxMTQgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMWsvdGVzdG1vZGUuYw0KPiArKysgYi9k
cml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTFrL3Rlc3Rtb2RlLmMNCj4gQEAgLTEwNyw3ICsx
MDcsNyBAQCBzdGF0aWMgaW50IGF0aDExa190bV9wcm9jZXNzX2V2ZW50KHN0cnVjdA0KPiBhdGgx
MWtfYmFzZSAqYWIsIHUzMiBjbWRfaWQsDQo+ICAJdTMyIHBkZXZfaWQ7DQo+IA0KPiAgCWF0aDEx
a19kYmcoYWIsIEFUSDExS19EQkdfVEVTVE1PREUsDQo+IC0JCSAgICJldmVudCB3bWkgY21kX2lk
ICVkIGZ0bSBldmVudCBtc2cgJXBLIGRhdGFsZW4gJWRcbiIsDQo+ICsJCSAgICJldmVudCB3bWkg
Y21kX2lkICVkIGZ0bSBldmVudCBtc2cgJXAgZGF0YWxlbiAlZFxuIiwNCj4gIAkJICAgY21kX2lk
LCBmdG1fbXNnLCBsZW5ndGgpOw0KPiAgCWF0aDExa19kYmdfZHVtcChhYiwgQVRIMTFLX0RCR19U
RVNUTU9ERSwgTlVMTCwgIiIsIGZ0bV9tc2csDQo+IGxlbmd0aCk7DQo+ICAJcGRldl9pZCA9IERQ
X0hXMlNXX01BQ0lEKGZ0bV9tc2ctPnNlZ19oZHIucGRldl9pZCk7DQo+IA0KPiAtLQ0KPiAyLjQ5
LjANCg0K
