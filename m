Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7954DC40906
	for <lists+intel-wired-lan@lfdr.de>; Fri, 07 Nov 2025 16:22:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23B7161440;
	Fri,  7 Nov 2025 15:22:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZJK1c4wfkuhJ; Fri,  7 Nov 2025 15:22:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 726FD6145E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762528971;
	bh=mS7H+At+AqLfmJu+gncNIod4uwpi1mGFiRkD57RiJHE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bJfpEu4yDMspBZAtjGPe8OVWZ2nI8MaA2lFomWHFiR9nhdpVGuF6CeRnHq0IxZG9s
	 z1LtKupUeXtsqPAmLJahNAGFXHMufEs66ruHjV4oZGE8+Hvl9oj30satXurjqYLneS
	 hnU+wljgpErmkOUCxT+1hvqJXtmctISzAvQ1r6J1TmWCsiXYzmSMiCJ42Znj/JdVdU
	 OPEhlJxBeuRNESo51ZJBrZ1+FK/DX1Xt1sdBK4fe3uMMvNToN4et/+E1pmNKX8mNE4
	 FqsQAy3SY02KXWyG7b+TiH+hb/MSCz0SGIJzm1gKom+lgzatx3cqX5ii8VA5MoMSGm
	 NWt2UGrnEQ9Cg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 726FD6145E;
	Fri,  7 Nov 2025 15:22:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7AFE5961
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 15:22:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 56A62613EE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 15:22:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id acz2rrbi_5JD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 15:22:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 633C66083E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 633C66083E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 633C66083E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 15:22:48 +0000 (UTC)
X-CSE-ConnectionGUID: MVXXFUcXRXiI4gPn1aN+NA==
X-CSE-MsgGUID: 1qPW5NeaR9i5NZvNd69lEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="76128534"
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="76128534"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 07:22:48 -0800
X-CSE-ConnectionGUID: gWQOcxeqSSCZsELt3PWa/Q==
X-CSE-MsgGUID: LLwCaFONRseshw+rjqVjtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="187901223"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 07:22:47 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 07:22:46 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 7 Nov 2025 07:22:46 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 07:22:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iNvigNZbCQpRtuo1HGyBWmchfO6Te/fDbu31hsp76DqF/w/ywDU5Vb0b7aTHLH11ucf33uWiS0mJTkZv9zjkMXP3ZxjrZ//3aRO6/jFJrvY2LXqYVbmcqEGd+wU9cAbNd2gVG4AtsojTn6yIpS0yOq1il0XWiNGjglCYNXyNXjPVlkPMdZU22QGWh3CqOzNoD7Av0zegkl9EgBkFdNNpwxqDWXZb2XkLx1FUlxMUdU5bFwEajtNi9gImolvYnnhhfr2dpPU3ArQmQXWPGUf/mHqclbgD360PwTddjCODGIN4/BjVlYC8MxFHd+AW/QMbR/emg9DzahG3evvmpkH91w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mS7H+At+AqLfmJu+gncNIod4uwpi1mGFiRkD57RiJHE=;
 b=hI5iDwqeos2Of1qatZcU50/LnT0CJaUY1fE1gDCefAiY2/jxZ/baett1BBLfD0DGqQIf9xwtNtg1Fn6MkPiJj/G9Q3P7slT79xjw1mBNnviPHl0tCbGcG7/dZf/5vHT7gMAJzRoiw21IT4eeaW2+RrBcrpxGb4Hs1ZKCS5i5kuzFiMylbCt8lb72/YTap3/A3s/OtpVebddkOQvqXnWsRiPKqIg2jwhOkpV55buzBpRQb7IM6HNw6ZeC6/p29L0RZIlBMcVIjBRKHQunTOPAK7/P6GOc+4LZVuSQDbMlXYnclvhlpkcq+gwrK2ZkDYio98WrxRZiw5hTCP1/1ViGMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV1PR11MB8842.namprd11.prod.outlook.com (2603:10b6:408:2b3::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Fri, 7 Nov
 2025 15:22:44 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9298.010; Fri, 7 Nov 2025
 15:22:43 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] igc: Restore default Qbv
 schedule when changing channels
Thread-Index: AQHcT+wZgOM0wuawc0Oi/G81wF6ZALTnU5bw
Date: Fri, 7 Nov 2025 15:22:43 +0000
Message-ID: <IA3PR11MB898676AC586AC4FF179A408EE5C3A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251107-igc_mqprio_channels-v1-1-42415562d0f8@linutronix.de>
In-Reply-To: <20251107-igc_mqprio_channels-v1-1-42415562d0f8@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV1PR11MB8842:EE_
x-ms-office365-filtering-correlation-id: 404c6cdd-40e0-4fed-63be-08de1e117fb3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?VVFXN0xXZGJHeVlVT29KVHFUdWhKNjd6U3ZxSTRSUkdXcnZkUkZtTmxEK3hW?=
 =?utf-8?B?SU9Ub2pkWTVaUmZhelNRTXh3M2tpNnkwcHpKUy9sSUhKT0xIZEZrWktiWTlw?=
 =?utf-8?B?R25YNGVyYnFDU1pVZW9hajhaZFpoMHhSc3I1YjdzS0o4Vmw2OE02cTJMMWRq?=
 =?utf-8?B?enNyU1pyV0IxUVk3V2tkM21ObVRLV3dMRDkrMlh1UEtGRUFuWG1ac0RTZWxn?=
 =?utf-8?B?dlVoVWRKeVdYT1ZFeE5zVXc2a0ZjY1RyUmc4ak00bk9zVEhDd3FHYnhZckN6?=
 =?utf-8?B?YkJ5M3Q5YWsvUGhjWWliQU5EQ2hkNW1qaGthdWFmVURaMkhjcXZWR3hyd0g4?=
 =?utf-8?B?OWszQWJrTlozcWNZOG1EeFhudCtVZmR2MFpKQVJ5Zk5SdWpjbHNOb3JMMEdi?=
 =?utf-8?B?bHJZQlE3eUU1dGxNd3FxdVpvL2ZnM0tUd01adDBvY0h1cmFrR3RTRnJHby8r?=
 =?utf-8?B?NFlPU1htWFNOOXVBYlpNU2tuMzU4RHI2V2cvOHo2cVU3UUc0QkFpMi9HajZJ?=
 =?utf-8?B?UkRZVHNObVh2c2NwNWlSd1VBVGduTThBUzBsOTNVaG1zMGFWV01aRm12SlQz?=
 =?utf-8?B?K084TGM0c1pKbzh6UVc5R1NBT2IzSmJjSEpabDIwd2pwQk03RTVNRm5Hczhl?=
 =?utf-8?B?cnYvcHdaeS9SeVNvVjZxNVFOVzlQWUpNQkRUaDRHM1VaSDU0emlFWWRLR1kw?=
 =?utf-8?B?SFFPRVIxUi8rYkNGSDFJQVhhRllUUnJ4dFlMLzVHWlRHZGZEM2lRR0ExTmZZ?=
 =?utf-8?B?Qm52d2lncFJUdGFNVGFGMWZ0bVorMUg4a083SEVtQ251SndFaWhZdTBxK0ta?=
 =?utf-8?B?UGZWdkIxcndiUWJ0dUZHdDA4WHNKdUJlVHFPUEVVeEZiaFA4eGJ4Mld3WU9a?=
 =?utf-8?B?WTc4anlXOE01WTZQaVV6RkVLdkZza3ErWjVPcXYyVXFSUFdBNXlOSlpyQzRD?=
 =?utf-8?B?RGlPcko1SG5aVlRyNFgyelZUZXJ3MkIvaXMvdURpOXZkb0MxZ2FrOGRJcTBj?=
 =?utf-8?B?Nm5OUzAxMW12KzliSVhscG1Ga3R6VFQ4TDZEclZGc0hXajcxdzBhVUs1bStE?=
 =?utf-8?B?VDNIMDFadzdMTUxNS296elVSTGJtWXJVRkIyRlBIMHBwMWtpZng4OWc4c1pP?=
 =?utf-8?B?d1A1elYrbDJ2SGdYU3JKYmNRQ1BTUmIzcVNYeFBHWng2M2dNbzhMUUlDNEFG?=
 =?utf-8?B?K1dWampGMGtvQ09pdHlXZTV3blFNYXprMGt4UENGSFJGay9tTC8vK05Ia292?=
 =?utf-8?B?RUd6Q0tjWS9sRituQldCaVRaVktZVkhFaHMvRWlyM1JpL3JKSWZxbDgyNDhs?=
 =?utf-8?B?cGZVbmZsQ3E5aUxwUHJNWE51dVVXUzAyRHA1T2ljUitBMkxJK1hlZW5mUzN0?=
 =?utf-8?B?RUFXdFlmakMrTkpxQTUxNkZDZ05qTXhRUm1JZm9iODd4WWhyMzVVd1FmcG9i?=
 =?utf-8?B?QW9lZVhwbStpbmUrVlljRlhKZEZwSk9PSTZMU0c5MkZwWVFsaTM0UGFYNzlj?=
 =?utf-8?B?c3VaR1VKNncyYTUyV0I0dHVDbEM0aDc1bUJtMmRsSnNhTkM5SC9KSU5abU9p?=
 =?utf-8?B?S0dRVmlpSGZmeHpjUktRWktWeHZrdjJKbHF6N1Z1MmQrTk9uaFlvVG9GQTN6?=
 =?utf-8?B?aDRaaE5NdVNPYmxJb1BRbHA1bS9FK0x1WkpOQUNnSFk4c3NkMDgzRmFSTjRY?=
 =?utf-8?B?alB0RkNrTXpQSHNuL2lkWks5UFdGYlpnWVJUcktwN3FIRjRqbDJEaHBuR0cw?=
 =?utf-8?B?UGtvOFRPLzkzRkRmTWNTQVJ4M3NhdW9NVi9JR3Z6VnpRSlpxU1I3eGZGS21q?=
 =?utf-8?B?blBwek1abVFMWktnd1BjTVkrbGk4cE9GaUpKdWs1MTd6eTA4QjJpOGRlWjFP?=
 =?utf-8?B?UGVrQ2ZCUUMwdFV5eWc5dTJ1Zm9URU0vTmxJcjR3OVJVa3BXOXJLMXU4emxG?=
 =?utf-8?B?NTJUcTV3WE8wY2pBRjE4UUhxMmdoTmo2MWcyWGNmRWFKc2hhMkV0L21vVWdP?=
 =?utf-8?B?ZGhJc2FmbGYrOENqTUlTSnRTVklzN1I3T3QwZk1EVFU2akJIdHhZUThuMy91?=
 =?utf-8?Q?PNyprb?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eEg0Y255OWk2Q2lmNjZuVnVHVHhReVo2ZmtEbmpQamRZdi9MN2JIVk5BNFVZ?=
 =?utf-8?B?cTBPRDlLbDlMMmQ4SUVxdjNsbjM4VndjRTFjY0cycnpTRGpOaDlTTTZudkVj?=
 =?utf-8?B?T1ozWWNueDJjellyVE9KNmFpbGQzRE00YjlQc0lEQUp0Ni9SdGxuMGR3NDVY?=
 =?utf-8?B?eDVUWGhyeURHWFVsU1g3bDZxWGJHU0tWcEFETkJaS2M3RWtic21YWXd3bWo4?=
 =?utf-8?B?ckRsalJ2blppZVQrTWM0VndMVUp2dWtmeUdIQ2VibmpsTWNiQ3FNVCtXMFZk?=
 =?utf-8?B?R21lbDh3UncvSjB1NzVWREJjcktieWtteDBJeFE2VEFnczM3d1lZYnpDMHNx?=
 =?utf-8?B?ZWJhb1JVeXRQSFJQSEdLNDU1U013Y0JVVTFDZlkzY2xrWWtoMGtVbnkvKzRt?=
 =?utf-8?B?cjc2TzkvUXB6Z0UzOXkrcGJDdThLR0tLOGFpd2NFMjVwOHkzN09IVzM5Z3Ev?=
 =?utf-8?B?YWNpZXlLdkpkNXpLUW5jRC9kSlR3bS9ha2diaXlhcVU4VEVPbW9xMXYveGNm?=
 =?utf-8?B?allxSDF5ZC9mdkJxd0R6a01pNFVaYVYxajhuSmNSM1NzOURKRVRaaDNmVUg1?=
 =?utf-8?B?NnBKcmdGeWo1QWxwcWZEenVsNlR0UXlwYXR4S2FSblA3NHlqQTVCTnIxeDkw?=
 =?utf-8?B?SXgwbXlMTDBMV3UzbUVpdFE3c2cxVVJJNG1od0dVSDEzQkN4ZkdwM0VxRFdE?=
 =?utf-8?B?S0NNVHZQNE9ZaHZySFlYOGRnVDdBR0orWVFUdm8xcFFJTmFUeHpncnlCTTli?=
 =?utf-8?B?K3JUTldXTGxwY2NzeXJnb2FaTHFpVXV5dk93d2p1L1AzWWN6by9ZQVdqRmdQ?=
 =?utf-8?B?c0pnWTlRWktVaWdHT1VQQ0VueWlCTTJsbHNZNnEzaWw2djZkSVBCOVlpTnB1?=
 =?utf-8?B?RGx2U3k0RGRJVE1uQm9WVEZvMkFIYjNlM1h3QXBTRkpnZlVuc21BN0ZlK1gv?=
 =?utf-8?B?TXpYVHd6WE9FNkhHenVjU3NPREJqTUFTRjBvZm9CRHN1K0Y5Z1dMdGovL2tU?=
 =?utf-8?B?QnorRStaOEZwMGRHaFMxN0FOU0JxY3Y4aGg0YXYxVXo1V1RlMTdhMEYxeGRP?=
 =?utf-8?B?MkxXS0k2dU1LcjgxeldCK1kzbzUybmNwSHJhV0M1UDNwTUpIQW1IQ0RPL0hk?=
 =?utf-8?B?TmNQSjVSREdtRTJpQytyQnRtZG5YaXlhUWFLcXEyRGkveHJkWEdPKzY4cVQw?=
 =?utf-8?B?SmdnZmluaVQwcEtFWGhzai9HSWdiYi91S1BwVTNicHl3SEErUDl4K0VDTUpH?=
 =?utf-8?B?MGpDNExYSFJ0MGI3bG9rUnBEVFFCcklvYWtxZUxxZWExT3lJZnlWUzk2U21k?=
 =?utf-8?B?Q0dMcHk1cFdRN00yeXlEOGt1L0xYUDQybVkxbnRHb1BrTzVmeWdXRVFIcThU?=
 =?utf-8?B?a1VHL3R6QVQyTVBMRUlORTVlaGVkRFhmUzhFa1hkUXJ5NHh4SEZPYTJ1ckQx?=
 =?utf-8?B?U0xreXlQVXJBUkR6cGV4N0YxUkNmQVowSXY2cEc0VlBrN1ZZakxzN3FpVm4v?=
 =?utf-8?B?L1ZvK2l3emFCbVA5VUQ2a3ZnNFN0VW54U3JkcXhJS0xZY05KYW1mNlRNNUI0?=
 =?utf-8?B?NlIzY200Sytxa3AzMmNnVmJvVWJ4UFVxMXRZUVJHZm0yRW94c0lBY0hnVXY5?=
 =?utf-8?B?elRDQTZFdjdPbzJoYmoxR2FZKzA1L3JTVHJJamZGd0QzY0NkWForVVVjZmpi?=
 =?utf-8?B?aU9yT3FrNk9xcU9qbWcwcnN6azJpNURDN2FyWlQ2MzNIWjVzVi8vUjVETCtm?=
 =?utf-8?B?Vmw2QUhqd1RCTis3ekE3MU4wRmh3R1o0K3hLTDBnSm9kVnkyQ3JvV01hU1hF?=
 =?utf-8?B?bFFwdlJwSzVNYTdmNEx3U3RmM0Zmd3M2NmswRjdCRjdkWEx5b0x5NVViZGM4?=
 =?utf-8?B?bG0rL2ZkN2lzbVJzdFNIMWFCUjBKdmNFZXkxSFJGRWs4Zi8xcHdYa1Qvc0Jh?=
 =?utf-8?B?cTJBa2EwVWFNdnZONkdPUHE3cDVWVkF2azlMYWtvYzVpZzgyaUhrcFZJUjA1?=
 =?utf-8?B?ektaU3pXeTdyVXVCU00rTUIxbUR6ZEhVSDZ3ZXdkdVYrOG0zT1NLUGlISmtL?=
 =?utf-8?B?N1RRbEp6Q1hIWm55dUZDZTVtSVFtRFFkQnlpbVRtckw2eWdlS3ZGTWhvM01G?=
 =?utf-8?B?SnIyRVY4cVBDWFluOXZUcGNTRS83RVZwUVpPNERBeURPbnVmZ3JBeXZMSkQ2?=
 =?utf-8?B?S1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 404c6cdd-40e0-4fed-63be-08de1e117fb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2025 15:22:43.8431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E9AHwYg+kUKPXlQytThhnAnkSRphBd9g7M4OAQdelj5FkGDKLyA994DQfyZ/Yl/3WmJXlffric/JfgV65mdFQHdwTDqVy7goUPk4xwqw+Ao=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8842
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762528969; x=1794064969;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mS7H+At+AqLfmJu+gncNIod4uwpi1mGFiRkD57RiJHE=;
 b=Jc0nCSgRTSNYVxumufZSUFYDELFOe8RstOiuqVl3NT8S7/5e0SWv/oDs
 /HHOwukV65SSZd6l2ENvn3geesmQi23/SdcriS//DSQ3EWxBRnY6oOoMw
 +CLoHXNv7SVPCMiy0bi6VSXLAjJG7qSvXn8jB+QtHYq73OwKVfpRrpICd
 88Gb3n9JoWDC8M6szwxyXIcdFjtAszrVHeb49gvzXj1Gjy8ZNln+JZ3zU
 bIrZTqhP4zfcN4WR3MofLkSarSAHMQHfZbDwgTzvpGqEsdqRrHEFr0mxK
 lL201w66x2p29XmlnJTJRd5XMMYazSZi/gjBP6spP4g+RzEcB9A06xXrt
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Jc0nCSgR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: Restore default Qbv
 schedule when changing channels
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgS3Vy
dCBLYW56ZW5iYWNoDQo+IFNlbnQ6IEZyaWRheSwgTm92ZW1iZXIgNywgMjAyNSAyOjMyIFBNDQo+
IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRz
emVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiBDYzog
QW5kcmV3IEx1bm4gPGFuZHJldytuZXRkZXZAbHVubi5jaD47IERhdmlkIFMuIE1pbGxlcg0KPiA8
ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47
IEpha3ViDQo+IEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbyBBYmVuaSA8cGFiZW5p
QHJlZGhhdC5jb20+OyBTZWJhc3RpYW4NCj4gQW5kcnplaiBTaWV3aW9yIDxiaWdlYXN5QGxpbnV0
cm9uaXguZGU+OyBHb21lcywgVmluaWNpdXMNCj4gPHZpbmljaXVzLmdvbWVzQGludGVsLmNvbT47
IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOw0KPiBuZXRkZXZAdmdlci5rZXJuZWwu
b3JnOyBLdXJ0IEthbnplbmJhY2ggPGt1cnRAbGludXRyb25peC5kZT4NCj4gU3ViamVjdDogW0lu
dGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0XSBpZ2M6IFJlc3RvcmUgZGVmYXVsdCBRYnYN
Cj4gc2NoZWR1bGUgd2hlbiBjaGFuZ2luZyBjaGFubmVscw0KPiANCj4gVGhlIE1RUFJJTyAoYW5k
IEVURikgb2ZmbG9hZCB1dGlsaXplcyB0aGUgVFNOIFR4IG1vZGUuIFRoaXMgbW9kZSBpcw0KPiBh
bHdheXMgY291cGxlZCB0byBRYnYuIFRoZXJlZm9yZSwgdGhlIGRyaXZlciBzZXRzIGEgZGVmYXVs
dCBRYnYNCj4gc2NoZWR1bGUgb2YgYWxsIGdhdGVzIG9wZW5lZCBhbmQgYSBjeWNsZSB0aW1lIG9m
IDFzLiBUaGlzIHNjaGVkdWxlIGlzDQo+IHNldCBkdXJpbmcgcHJvYmUuDQo+IA0KSSdkIHJlY29t
bWVuZCB0byBleHBsYWluIGFiYnJldmlhdGlvbnMgaW4gdGhlIGNvbW1pdCBtZXNzYWdlOg0KICDi
gJxNdWx0aeKAkVF1ZXVlIFByaW9yaXR5IChNUVBSSU8p4oCdDQogIOKAnEVhcmxpZXN0IFR4VGlt
ZSBGaXJzdCAoRVRGKeKAnQ0KICDigJxUaW1l4oCRU2Vuc2l0aXZlIE5ldHdvcmtpbmcgKFRTTini
gJ0NCiAg4oCcUWJ24oCdIOKGkiDigJxJRUVFIDgwMi4xUWJ2IHRpbWXigJFhd2FyZSBzaGFwZXIg
KFFidinigJ0NCg0KPiBIb3dldmVyLCB0aGUgZm9sbG93aW5nIHNlcXVlbmNlIG9mIGV2ZW50cyBs
ZWFkIHRvIFR4IGlzc3VlczoNCj4gDQo+ICAtIEJvb3QgYSBkdWFsIGNvcmUgc3lzdGVtDQo+ICAg
IHByb2JlKCk6DQo+ICAgICAgaWdjX3Rzbl9jbGVhcl9zY2hlZHVsZSgpOg0KPiAgICAgICAgLT4g
RGVmYXVsdCBTY2hlZHVsZSBpcyBzZXQNCj4gICAgICAgIE5vdGU6IEF0IHRoaXMgcG9pbnQgdGhl
IGRyaXZlciBoYXMgYWxsb2NhdGVkIHR3byBUeC9SeCBxdWV1ZXMsDQo+IGJlY2F1c2UNCj4gICAg
ICAgIHRoZXJlIGFyZSBvbmx5IHR3byBDUFUocykuDQo+IA0KPiAgLSBldGh0b29sIC1MIGVucDNz
MCBjb21iaW5lZCA0DQo+ICAgIGlnY19ldGh0b29sX3NldF9jaGFubmVscygpOg0KPiAgICAgIGln
Y19yZWluaXRfcXVldWVzKCkNCj4gICAgICAgIC0+IERlZmF1bHQgc2NoZWR1bGUgaXMgZ29uZSwg
cGVyIFR4IHJpbmcgc3RhcnQgYW5kIGVuZCB0aW1lIGFyZQ0KPiB6ZXJvDQo+IA0KPiAgIC0gdGMg
cWRpc2MgcmVwbGFjZSBkZXYgZW5wM3MwIGhhbmRsZSAxMDAgcGFyZW50IHJvb3QgbXFwcmlvIFwN
Cj4gICAgICAgbnVtX3RjIDQgbWFwIDMgMyAyIDIgMCAxIDEgMSAzIDMgMyAzIDMgMyAzIDMgXA0K
PiAgICAgICBxdWV1ZXMgMUAwIDFAMSAxQDIgMUAzIGh3IDENCj4gICAgIGlnY190c25fb2ZmbG9h
ZF9hcHBseSgpOg0KPiAgICAgICBpZ2NfdHNuX2VuYWJsZV9vZmZsb2FkKCk6DQo+ICAgICAgICAg
LT4gV3JpdGVzIHplcm9zIHRvIElHQ19TVFFUKGkpIGFuZCBJR0NfRU5EUVQoaSkgLT4gQm9vbQ0K
PiANCj4gVGhlcmVmb3JlLCByZXN0b3JlIHRoZSBkZWZhdWx0IFFidiBzY2hlZHVsZSBhZnRlciBj
aGFuZ2luZyB0aGUgYW1vdW50DQo+IG9mIGNoYW5uZWxzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
S3VydCBLYW56ZW5iYWNoIDxrdXJ0QGxpbnV0cm9uaXguZGU+DQo+IC0tLQ0KPiAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMgfCAyICsrDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2MvaWdjX21haW4uYw0KPiBpbmRleA0KPiA3MjhkN2NhNTMzOGJmMjdjM2NlNTBhMmE0OTdiMjM4
YzM4Y2ZhMzM4Li5lNDIwMGZjYjI2ODJjY2Q1YjU3YWJiMGQyYjhlDQo+IDRlYjMwZGYxMTdkZiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMN
Cj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4gQEAg
LTc3NjEsNiArNzc2MSw4IEBAIGludCBpZ2NfcmVpbml0X3F1ZXVlcyhzdHJ1Y3QgaWdjX2FkYXB0
ZXINCj4gKmFkYXB0ZXIpDQo+ICAJaWYgKG5ldGlmX3J1bm5pbmcobmV0ZGV2KSkNCj4gIAkJZXJy
ID0gaWdjX29wZW4obmV0ZGV2KTsNCj4gDQo+ICsJaWdjX3Rzbl9jbGVhcl9zY2hlZHVsZShhZGFw
dGVyKTsNCj4gKw0KSSdtIGFmcmFpZCB5b3UgbmVlZCB0byBndWFyZCB0aGUgaGVscGVyIGNhbGwg
b24gc3VjY2VzcyAob3Igd2hlbiBvcGVuIHdhc27igJl0IGF0dGVtcHRlZCkNCkJlY2F1c2UgY2Fs
bCBtYWRlIGV2ZW4gd2hlbiBpZ2Nfb3BlbigpIGZhaWxzLg0KQXMgd3JpdHRlbiwgaWdjX3Rzbl9j
bGVhcl9zY2hlZHVsZShhZGFwdGVyKTsgZXhlY3V0ZXMgdW5jb25kaXRpb25hbGx5LCBldmVuIGlm
IGlnY19vcGVuKCkNCnJldHVybmVkIGFuIGVycm9yIChlLmcuLCByaW5ncyBub3QgZnVsbHkgc2V0
IHVwLCBkZXZpY2Ugbm90IHJlYWR5KS4NClRoYXQgY291bGQgcHJvZ3JhbSBUU04vUWJ2IHJlZ2lz
dGVycyB3aGlsZSB0aGUgZGV2aWNlIGlzIGluIGEgZmFpbGVkL3BhcnRpYWxseSBpbml0aWFsaXpl
ZCBzdGF0ZS4NCklzbid0IGl0Pw0KDQogICAgICAgaWYgKCFuZXRpZl9ydW5uaW5nKG5ldGRldikg
fHwgIWVycikgew0KICAgICAgICAgICAgICAgLyogUmVzdG9yZSBkZWZhdWx0IElFRUUgODAyLjFR
YnYgc2NoZWR1bGUgYWZ0ZXIgcXVldWUgcmVpbml0ICovDQogICAgICAgICAgICAgICBpZ2NfdHNu
X2NsZWFyX3NjaGVkdWxlKGFkYXB0ZXIpOw0KICAgICAgIH0NCg0KDQo+ICAJcmV0dXJuIGVycjsN
Cj4gIH0NCj4gDQo+IA0KPiAtLS0NCj4gYmFzZS1jb21taXQ6IDZmYzMzNzEwY2Q2YzU1Mzk3ZTYw
NmVlYjU0NGJkZjU2ZWU4N2FhZTUNCj4gY2hhbmdlLWlkOiAyMDI1MTEwNy1pZ2NfbXFwcmlvX2No
YW5uZWxzLTIzMjkxNjZlODk4Yg0KPiANCj4gQmVzdCByZWdhcmRzLA0KPiAtLQ0KPiBLdXJ0IEth
bnplbmJhY2ggPGt1cnRAbGludXRyb25peC5kZT4NCg0K
