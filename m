Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEDNKMOHDGo1iwUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 17:54:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69803581CD0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 17:54:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A58A60AEA;
	Tue, 19 May 2026 15:54:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZEllS9fqwGzu; Tue, 19 May 2026 15:54:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EBA460AEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779206078;
	bh=9+35NCJZsa/XSInFwatwDNxThOaj34Hx+gXMVydtSa8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Tzj+8Y+d2DaJJajFeZCVWiIL9QQtEuShEA0Pmk07TZ0VXlwySM87W4oCD6mi/5UHl
	 spFJRJG6tomnXKNr6bqjf30L5aDkS48FNdJExTk+2tiqLlBAUMytaUcC5ZHhvUU8Yd
	 pM6aiodpDBvL5boWBPoOnxb3DZvLRs9t+EicjV4aKLMugTnByzOs+Aoo1Ca8i+0IUe
	 +s4PT4Sptw/k9S9cU6vhXVtOj9ohB/4NYUPJ7OOoXT7J81u4ePEr20EnePFzU96tx5
	 7Am51s0KIGNeeRm5NkL6ZQfFge/sIyhd4KtKVj/W+A6zFBjJuo4XzJPt2DQ78Gshk8
	 6u9A3kR+FPLmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EBA460AEC;
	Tue, 19 May 2026 15:54:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5E672282
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 15:54:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 53CA34042E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 15:54:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A8jELHPxrs9B for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2026 15:54:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 61C2940416
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61C2940416
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 61C2940416
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 15:54:34 +0000 (UTC)
X-CSE-ConnectionGUID: BsxvO2yUSNuXvjfEGIuY/w==
X-CSE-MsgGUID: xX4dNlFTQ+igp6ZH62WHgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="79111858"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="79111858"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 08:54:34 -0700
X-CSE-ConnectionGUID: JYvAIzCtRcC3hmxck4YVGw==
X-CSE-MsgGUID: 4sCXJxLrToeM9eTWQCllXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="244100699"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 08:54:34 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 08:54:33 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 19 May 2026 08:54:33 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.6) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 08:54:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oLXQOyTdKqihi34U9Fio5RY+Icuxycp4CeydDlc3tzzLe125mwfr2I50ebsxjUNzMXdjextgvNedePObre+xgDZvmFCLyImCrfv3DKVg8lrPdQ3HPrDaz0xvfw48e8ms1otqggxky5cAmTp80BNS7VJkqGrAEl6BqjXVcdCUq6WIrtMXdu7AeoHxbVJrclRbe0hAdyrvqQyv/A27EC3CRzW+/wd6r+Dzus9P4ECEQ/L9iwjz+qTjEdZGH/repeDCxerHzlaW4VdhiG1ywAow595v8TF9oiVYIHgv2D1NgcmEEUlyxT6VGWrF2DJ6AEOJPwhqmJapA7Yjv4C8sZwu5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9+35NCJZsa/XSInFwatwDNxThOaj34Hx+gXMVydtSa8=;
 b=mo9JsZu9CtbVXdg/Yuv9mI0MF6W+ma6vDKR+8VQ/Utu8Nz69RVduKwxvFep1N01GwpwQRAI1bHXsEbZ4BG0dtyGTsPupr8I4khn2SlCacx1n4CRvAitxNuUa6FZORBO9f78wIXkkAIohRmgwxCMieoOX3jyE3WYI27AwNHjEY6oV4o57B+4YnN5h1A15sVXuhIobdeZkeUdNR8wiUsdNR1vM4d3Bh4tyGxqEfSHfhoczGHBmpLLm/sYK7rOMEhaTv9zGB/vCthpM+0Lw823aRJuG801Ktac9LKkrtqBzPwBKy6VuUxAFypKJp8ax3eu1ToM8LHGqWRzvlDYKFdANqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by DM4PR11MB6264.namprd11.prod.outlook.com (2603:10b6:8:a5::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.48.14; Tue, 19 May 2026 15:54:29 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%5]) with mapi id 15.21.0025.020; Tue, 19 May 2026
 15:54:29 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Bhat, Jay" <jay.bhat@intel.com>, "Barrera,
 Ivan D" <ivan.d.barrera@intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "Chittim, Madhu"
 <madhu.chittim@intel.com>, "decot@google.com" <decot@google.com>,
 "willemb@google.com" <willemb@google.com>, "sheenamo@google.com"
 <sheenamo@google.com>, "lukas@wunner.de" <lukas@wunner.de>
Thread-Topic: [PATCH iwl-next v2 2/2] idpf: implement pci error handlers
Thread-Index: AQHczLVerem+08lbnUGONuiaFqgThbYVtdrA
Date: Tue, 19 May 2026 15:54:29 +0000
Message-ID: <SJ1PR11MB629733E4508CC0A4569A5C9B9B002@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20260414031631.2107-1-emil.s.tantilov@intel.com>
 <20260414031631.2107-3-emil.s.tantilov@intel.com>
 <IA3PR11MB8986C6EC840268F14C44B28CE5252@IA3PR11MB8986.namprd11.prod.outlook.com>
 <eb07b21f-0133-40c3-ae86-338572e2a64a@intel.com>
 <PH3PPF7A88A980AAF619A7C8EAC3550269BE5222@PH3PPF7A88A980A.namprd11.prod.outlook.com>
In-Reply-To: <PH3PPF7A88A980AAF619A7C8EAC3550269BE5222@PH3PPF7A88A980A.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|DM4PR11MB6264:EE_
x-ms-office365-filtering-correlation-id: 2482a325-dd16-47d4-2e97-08deb5bee95f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700021|4143699003|22082099003|18002099003|56012099003|11063799006;
x-microsoft-antispam-message-info: nxiJ2pwUqfNvLCUe+5dN+0g5nl868bcUwOsvri46b0J7rWyo5/lORwbfZpniQC9PrpL0ihtzi8JF8fuH1/xuxG3FVABGt3++HrXuaj039lsPCBP6ZZxoi2AgavC3rjnoq21aq+6N3LmEPByd738X7gYtCZqeAgIcbLvDe2zrMFNQGIs2Hilo/zwHVJXJK+KkKyedQa299RBwMxGqng7LaTdgoFEXf8HL35bNKcW9VV/j8QPDJSDrvpfD0H9PI+w2EC7KYAVztrprOfcxoq3JTrd+ub7rb3wUWk8Titl3soXcpURYkcJfbvi2xPa3NbaYRVcCxsZIJ2UC5usT/zTxCWxBNRgn2vR0xnPCt4T20TfBjQVPRhv91QxB1ME/s8oErE9V5cmOp266gHL1gzpnSS9y9pSioAOvkuHsNmadj12R28QRx2mJWvawl/st29SwslB1IGgDNDHKjBbFVkkGFoHrMBvYFBXFty0Kh3qC4UqDdtrlXyGD6AB9hzoTylaju+z0V2xe7dS1yeggaMya/jcnMNy75n91U3Dv1+fOOtZCX/XED4jjqIenmDVS2YDRCCxm2bn56VCE8MVPq3NuHfiqCsNx5TsRP3w1Dbzy5TPKBgWtO+2A+LFfvS2GqGWiSkmM8wb7K1IlpYZGbzFdnhlvtrhrZmq7mGKw/PHfD3EKc9kdXRmlCkaBh0YGV5XE90rOPi9Etov7g3qqDthR51A3eEta6eIiud0oioYPmuEgIgMRWko7x+1FJbC2NDXe
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700021)(4143699003)(22082099003)(18002099003)(56012099003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?LzZRaHJLS1N1M0N4WlM5S1paZkg5TkxRdjArWVI2bzBYU2dDY0lieWpzL1NU?=
 =?utf-8?B?WTVHWGliRGFrcUNvWC9OL0hYRWtUdlpZejRSalB2azlvbWhvUXI1THIwcTIr?=
 =?utf-8?B?THlpZ3ZSTnVQb3NvY0Y2WnVQcmNWZTBmSDdvc0ZlS1FocDFvaG10WGo0Lytl?=
 =?utf-8?B?NTcxVkFjc1VIRWNJcWpKT2dsL21JYURNY3VrbWx2cnNSa0xpb21jSytNUWE4?=
 =?utf-8?B?b1MrckZQNHYyL0dLU1ZPSWw5SllqVThndXg1RWpvZWxLOXdhbEFBVGY1ZEZm?=
 =?utf-8?B?MTNWQmtSUXM5RXQ4K0p4R05sRnlEd1RmbysxNHlES0lYWm9VN3d2TkJyS1Zl?=
 =?utf-8?B?d09RSCtDdDZvYXAwZGxidFlVNmd0UndWMTM0aEhERkJHODRpK3l0SjlkbjA3?=
 =?utf-8?B?WEZCNVMwdzhVdGgxOG9idFBNMjNiZ0xFaFFXRmVERFJMUGJtbFB0UXNFMmRU?=
 =?utf-8?B?WlJRVENDemlYWlQ5amtMUW92amlSNEV6eFBDVzJQc0lwSXphT0xQWWFBanQ2?=
 =?utf-8?B?RzYrcHF4bEpQRXJrbFJQeERXY1NocUtKOFhxc2RYcC8yK3RiQ2dNejZLQXdD?=
 =?utf-8?B?V1Rxamg3Q1U0SjhBT2d6QlQ0ZENhUWFGK0NobjJucVBlYVUzQVphbEgrUjVJ?=
 =?utf-8?B?bzkzSFZjdEptc25tSS9qNk4zUXpxT1YvUWppQmYrcGp3TGt3am5hR3hsT1pl?=
 =?utf-8?B?WUFUODVJSUVIcG1Ma3dva25zTWtyNk1hVEsrY1N6c2Z4aXpWdkFrVjE5RUgz?=
 =?utf-8?B?Qmp0b3hSWFVteVA1L0IxbytEVFQ0N1hNMEpHNmdhRHlCd3JTdzBzTUZkakxJ?=
 =?utf-8?B?ZlM2eHpJUFpwR21OZXJpSE0rRFNZbitUeGE4MVlxN2FSSjZvd01uajNkMjF4?=
 =?utf-8?B?MFJBNG9teVArNFhtVGFMR29oRTF3RVlDM0pzd1RES1NQdUsxa2FxdlRsdSty?=
 =?utf-8?B?SFpscjN3ZGEzdXFUbDBySmJ3eWgvVGl2RE41Q3MxUVlxVXBoMUV5Z1J3eDN6?=
 =?utf-8?B?NnJPY2wraHBOaUtOREl1ZnRYTmhTQlREZDl0QzEybEZVUUhxaXNrS010a1R5?=
 =?utf-8?B?VU1GZDBac1dkQ2pacnVBVEM3UEw4RkJhOFRiM1lzQWtzUytFcDRpOWNoMXdm?=
 =?utf-8?B?MXk4NDZ0bFVzVjFBcWx1UDhkdUc2bkszaENKZVNGUmRvRTljcHppR2swdHFm?=
 =?utf-8?B?N3UrU2lNdWcweVRCYmN3U2RsU2dSV3VnTnJSbXJKbXQrQ1dWeFJLdHpGQ0RF?=
 =?utf-8?B?VlBZSFlLelFBQmFUaVlyNktUbnlXUU50aFNVaDY1M2ZsQkRVdS94Sklma2hP?=
 =?utf-8?B?bjBvT2gyQmFyVTVxUTFHaWxaWHI5Skd3OVQ4QTZncG1TMnc4YlVzWWRSdDVI?=
 =?utf-8?B?RTVVZ3Z1UmxmQ0VZMzl1K0JicE9PVzRiYmFITWJpUFgrYWd6YnN4MWtKTkVy?=
 =?utf-8?B?QnFPQW5UV3NjaGcrbFhOQkNGSCtBVDZkSVRYU3VMMHBVVkFtaDFDL0JRL3hm?=
 =?utf-8?B?MGtBL3RBdW05Q25tRi91dFhnZCtKMWt0SklHVHg4ZXhHUVJHODJYcVg1Tm5P?=
 =?utf-8?B?TytzbXh6bEtkY0RTM2VNSFBaWTFHMGFPbUhpeFU4V2tZOGRIaDNMZnhDYkRw?=
 =?utf-8?B?WG5ZQjk0NTNNODZGbGR4T1k5TjNMM0FCYnlweGZGeFNGR0JNdWhVdVVscUN3?=
 =?utf-8?B?ZXRRVTEyNWpYTi91bm1qN09pMFhzc3pDd3NwWDFMc0FaVFF0WG5IS0VVNkJz?=
 =?utf-8?B?RVhnNFE5VTNrUXNjb3phNHVIM3MzcHBBRUE5YkUycERpOGg5KzJXeUE1VHRB?=
 =?utf-8?B?RXozM2JQV3VpbTNwNXJsOHF6K2xXV3VKZ05zdlYwOGVVUS9HMnVjRTBFNUpI?=
 =?utf-8?B?SHBsUzlxbkcxa0V0V2ZQcmJhSy9WckZ0a2dBYi9ncWliajZmL29RZlE2ZmN3?=
 =?utf-8?B?TUU5VXBBU3BrdkVNVGc1R3Y0b21sL3M1MGZzSWc2dFhoNTZ2YllHSEJINnZx?=
 =?utf-8?B?b0NqS1p6TjJlUmFIa1NWcnk3eklycU1tajdKaXNnMlNCWUtuV0JQNUNsZERT?=
 =?utf-8?B?T3pma3l2ZEJQSzdSbVZxbHM3eDdGbkJ2dlFadkM5YkhpYlA5anY2Z3lyRTRl?=
 =?utf-8?B?RFE4ZHMyN1JZRGtBTjdTdVIwMDNrTWNhRGhTcnhPOHd0N2xDMWp0NVlFY2hH?=
 =?utf-8?B?YnpIMkk0Y3JMMTNKV0J0emFSNlFTeHFQam1jSS9HZ284TXFGWitjRXNjQ2N5?=
 =?utf-8?B?MjJOZk9YUWtGTkFTWHVHTHBzUldUdDlUcnl4WWQ2d1ZiNHdtNnl6MnErTUEv?=
 =?utf-8?Q?ixLwNgckTQ9WVvL6R9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: GLa2S2O7e2CAe+vOPt4dliKS2fuynIWf86Nw+WlIHGt8W8p6+fpJbvGsHGlmQna+sLssoSpdUzSC/KyklmW5aRBWLZ5Y/UR6mGhfXd+OixWS/soRzWZyDkm/K8xemqri2zPjBASGteU3gKP7A01ki8hHV73CGybYQIC0YXAsm6kNnX84UN0Ea2fBM88qfJugPoyCC1Xloa7SOcXtJXq+6nrLS7wqbbiiuzOt5l9VAeychbuJOKJ8VHENAInu+i3SEbX0csdGSBCr7/5D1vfVBJe9fCWYh19J1ne2XxXvzTR+u+NKiAFk1flzsJxfiNILmI1Lrc61CrBqKjilWkFZZg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2482a325-dd16-47d4-2e97-08deb5bee95f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 15:54:29.6511 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QNjsulU63C/bqc2jqr8OoR4ZTA5V3EtsWyIUCxj/4PFs5a3WhtVc1oXGaL28tujnuJY1czKkHbQT+vdU8VWwQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6264
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779206075; x=1810742075;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9+35NCJZsa/XSInFwatwDNxThOaj34Hx+gXMVydtSa8=;
 b=HxhvpJvjfVyvoKbW5NaLdpsQBGjrjpeOh4NQagENxucBQLJPtklIEmgn
 VWNbicCY9gFSUvGOlZbO62VpPv7L3uRYYaerCQn7QR/eQfIcv71kLW6wt
 5zZtbhLpGl1v2IipCbsVUGS9c/ik7/uZRuHB8hDxKrYc1g8IKE3QqlZaR
 8A93SdClRtVF7gbUEOEBEecMLqJ0s6q7h/XE0m/qwpTok4fZhO0i0sZKu
 u1jyLGPH4B7wenZS2AyZOWSXDt7sT509szA+Gpecte8pXIP1cYUcc+wNF
 JO9uRNAj+VGTpOYs4+KkxHo89WW+ytAdCcKLOidMKFt9PnsyLK+T2dyHS
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HxhvpJvj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] idpf: implement pci
 error handlers
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
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:jay.bhat@intel.com,m:ivan.d.barrera@intel.com,m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:linux-pci@vger.kernel.org,m:madhu.chittim@intel.com,m:decot@google.com,m:willemb@google.com,m:sheenamo@google.com,m:lukas@wunner.de,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Queue-Id: 69803581CD0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gTG9r
dGlvbm92LCBBbGVrc2FuZHINCj4gU2VudDogV2VkbmVzZGF5LCBBcHJpbCAxNSwgMjAyNiAxOjUz
IEFNDQo+IFRvOiBUYW50aWxvdiwgRW1pbCBTIDxlbWlsLnMudGFudGlsb3ZAaW50ZWwuY29tPjsg
aW50ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBuZXRkZXZAdmdlci5r
ZXJuZWwub3JnOyBLaXRzemVsLCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50
ZWwuY29tPjsgQmhhdCwgSmF5IDxqYXkuYmhhdEBpbnRlbC5jb20+OyBCYXJyZXJhLA0KPiBJdmFu
IEQgPGl2YW4uZC5iYXJyZXJhQGludGVsLmNvbT47IFphcmVtYmEsIExhcnlzYQ0KPiA8bGFyeXNh
LnphcmVtYmFAaW50ZWwuY29tPjsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5
ZW5AaW50ZWwuY29tPjsgYW5kcmV3K25ldGRldkBsdW5uLmNoOw0KPiBkYXZlbUBkYXZlbWxvZnQu
bmV0OyBlZHVtYXpldEBnb29nbGUuY29tOyBrdWJhQGtlcm5lbC5vcmc7DQo+IHBhYmVuaUByZWRo
YXQuY29tOyBMb2Jha2luLCBBbGVrc2FuZGVyIDxhbGVrc2FuZGVyLmxvYmFraW5AaW50ZWwuY29t
PjsNCj4gbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsgQ2hpdHRpbSwgTWFkaHUgPG1hZGh1LmNo
aXR0aW1AaW50ZWwuY29tPjsNCj4gZGVjb3RAZ29vZ2xlLmNvbTsgd2lsbGVtYkBnb29nbGUuY29t
OyBzaGVlbmFtb0Bnb29nbGUuY29tOw0KPiBsdWthc0B3dW5uZXIuZGUNCj4gU3ViamVjdDogUmU6
IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2MiAyLzJdIGlkcGY6IGltcGxlbWVu
dCBwY2kNCj4gZXJyb3IgaGFuZGxlcnMNCj4gDQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KPiA+IEZyb206IFRhbnRpbG92LCBFbWlsIFMgPGVtaWwucy50YW50aWxvdkBp
bnRlbC5jb20+DQo+ID4gU2VudDogVHVlc2RheSwgQXByaWwgMTQsIDIwMjYgNTowMSBQTQ0KPiA+
IFRvOiBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+
OyBpbnRlbC13aXJlZC0NCj4gPiBsYW5AbGlzdHMub3N1b3NsLm9yZw0KPiA+IENjOiBuZXRkZXZA
dmdlci5rZXJuZWwub3JnOyBLaXRzemVsLCBQcnplbXlzbGF3DQo+ID4gPHByemVteXNsYXcua2l0
c3plbEBpbnRlbC5jb20+OyBCaGF0LCBKYXkgPGpheS5iaGF0QGludGVsLmNvbT47DQo+ID4gQmFy
cmVyYSwgSXZhbiBEIDxpdmFuLmQuYmFycmVyYUBpbnRlbC5jb20+OyBaYXJlbWJhLCBMYXJ5c2EN
Cj4gPiA8bGFyeXNhLnphcmVtYmFAaW50ZWwuY29tPjsgTmd1eWVuLCBBbnRob255IEwNCj4gPiA8
YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBhbmRyZXcrbmV0ZGV2QGx1bm4uY2g7DQo+ID4g
ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldDsgZWR1bWF6ZXRAZ29vZ2xlLmNvbTsga3ViYUBrZXJuZWwub3Jn
Ow0KPiA+IHBhYmVuaUByZWRoYXQuY29tOyBMb2Jha2luLCBBbGVrc2FuZGVyIDxhbGVrc2FuZGVy
LmxvYmFraW5AaW50ZWwuY29tPjsNCj4gPiBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnOyBDaGl0
dGltLCBNYWRodSA8bWFkaHUuY2hpdHRpbUBpbnRlbC5jb20+Ow0KPiA+IGRlY290QGdvb2dsZS5j
b207IHdpbGxlbWJAZ29vZ2xlLmNvbTsgc2hlZW5hbW9AZ29vZ2xlLmNvbTsNCj4gPiBsdWthc0B3
dW5uZXIuZGUNCj4gPiBTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXh0IHYyIDIvMl0gaWRwZjog
aW1wbGVtZW50IHBjaSBlcnJvcg0KPiA+IGhhbmRsZXJzDQo+ID4NCj4gPg0KPiA+DQo+ID4gT24g
NC8xNC8yMDI2IDQ6MDkgQU0sIExva3Rpb25vdiwgQWxla3NhbmRyIHdyb3RlOg0KPiA+ID4NCj4g
PiA+DQo+ID4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+PiBGcm9tOiBUYW50
aWxvdiwgRW1pbCBTIDxlbWlsLnMudGFudGlsb3ZAaW50ZWwuY29tPg0KPiA+ID4+IFNlbnQ6IFR1
ZXNkYXksIEFwcmlsIDE0LCAyMDI2IDU6MTcgQU0NCj4gPiA+PiBUbzogaW50ZWwtd2lyZWQtbGFu
QGxpc3RzLm9zdW9zbC5vcmcNCj4gPiA+PiBDYzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgS2l0
c3plbCwgUHJ6ZW15c2xhdw0KPiA+ID4+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsg
QmhhdCwgSmF5IDxqYXkuYmhhdEBpbnRlbC5jb20+Ow0KPiA+ID4+IEJhcnJlcmEsIEl2YW4gRCA8
aXZhbi5kLmJhcnJlcmFAaW50ZWwuY29tPjsgTG9rdGlvbm92LCBBbGVrc2FuZHINCj4gPiA+PiA8
YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+OyBaYXJlbWJhLCBMYXJ5c2ENCj4gPiA+PiA8
bGFyeXNhLnphcmVtYmFAaW50ZWwuY29tPjsgTmd1eWVuLCBBbnRob255IEwNCj4gPiA+PiA8YW50
aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBhbmRyZXcrbmV0ZGV2QGx1bm4uY2g7DQo+ID4gPj4g
ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldDsgZWR1bWF6ZXRAZ29vZ2xlLmNvbTsga3ViYUBrZXJuZWwub3Jn
Ow0KPiA+ID4+IHBhYmVuaUByZWRoYXQuY29tOyBMb2Jha2luLCBBbGVrc2FuZGVyDQo+ID4gPj4g
PGFsZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+OyBsaW51eC1wY2lAdmdlci5rZXJuZWwub3Jn
OyBDaGl0dGltLA0KPiA+ID4+IE1hZGh1IDxtYWRodS5jaGl0dGltQGludGVsLmNvbT47IGRlY290
QGdvb2dsZS5jb207DQo+ID4gPj4gd2lsbGVtYkBnb29nbGUuY29tOyBzaGVlbmFtb0Bnb29nbGUu
Y29tOyBsdWthc0B3dW5uZXIuZGUNCj4gPiA+PiBTdWJqZWN0OiBbUEFUQ0ggaXdsLW5leHQgdjIg
Mi8yXSBpZHBmOiBpbXBsZW1lbnQgcGNpIGVycm9yIGhhbmRsZXJzDQo+ID4gPj4NCj4gPiA+PiBB
ZGQgY2FsbGJhY2tzIHRvIGhhbmRsZSBQQ0kgZXJyb3JzIGFuZCBGTFIgcmVzZXQuIFdoZW4gcHJl
cGFyaW5nIHRvDQo+ID4gPj4gaGFuZGxlIHJlc2V0IG9uIHRoZSBidXMsIHRoZSBkcml2ZXIgbXVz
dCBzdG9wIGFsbCBvcGVyYXRpb25zIHRoYXQNCj4gPiBjYW4NCj4gPiA+PiBsZWFkIHRvIE1NSU8g
YWNjZXNzIGluIG9yZGVyIHRvIHByZXZlbnQgSFcgZXJyb3JzLiBUbyBhY2NvbXBsaXNoDQo+ID4g
dGhpcw0KPiA+ID4+IGludHJvZHVjZSBoZWxwZXINCj4gPiA+PiBpZHBmX3Jlc2V0X3ByZXBhcmUo
KSB0aGF0IGdldHMgY2FsbGVkIHByaW9yIHRvIEZMUiBvciB3aGVuIFBDSQ0KPiA+IGVycm9yDQo+
ID4gPj4gaXMgZGV0ZWN0ZWQuIFVwb24gcmVzdW1lIHRoZSByZWNvdmVyeSBpcyBkb25lIHRocm91
Z2ggdGhlIGV4aXN0aW5nDQo+ID4gPj4gcmVzZXQgcGF0aCBieSBzdGFydGluZyB0aGUgZXZlbnQg
dGFzay4NCj4gPiA+Pg0KPiA+ID4+IFRoZSBmb2xsb3dpbmcgY2FsbGJhY2tzIGFyZSBpbXBsZW1l
bnRlZDoNCj4gPiA+PiAucmVzZXRfcHJlcGFyZSBydW5zIHRoZSBmaXJzdCBwb3J0aW9uIG9mIHRo
ZSBnZW5lcmljIHJlc2V0IHBhdGgNCj4gPiA+PiBsZWFkaW5nIHVwIHRvIHRoZSBwYXJ0IHdoZXJl
IHdlIHdhaXQgZm9yIHRoZSByZXNldCB0byBjb21wbGV0ZS4NCj4gPiA+PiAucmVzZXRfZG9uZS9y
ZXN1bWUgcnVucyB0aGUgcmVjb3ZlcnkgcGFydCBvZiB0aGUgcmVzZXQgaGFuZGxpbmcuDQo+ID4g
Pj4gLmVycm9yX2RldGVjdGVkIGlzIHRoZSBjYWxsYmFjayBkZWFsaW5nIHdpdGggUENJIGVycm9y
cywgc2ltaWxhciB0bw0KPiA+ID4+IHRoZSBwcmVwYXJlIGNhbGwsIHdlIHN0b3AgYWxsIG9wZXJh
dGlvbnMsIHByaW9yIHRvIGF0dGVtcHRpbmcgYQ0KPiA+ID4+IHJlY292ZXJ5Lg0KPiA+ID4+IC5z
bG90X3Jlc2V0IGlzIHRoZSBjYWxsYmFjayBhdHRlbXB0aW5nIHRvIHJlc3RvcmUgdGhlIGRldmlj
ZSwNCj4gPiA+PiBwcm92aWRlZCBhIFBDSSByZXNldCB3YXMgaW5pdGlhdGVkIGJ5IHRoZSBBRVIg
ZHJpdmVyLg0KPiA+ID4+DQo+ID4gPj4gV2hlcmVhcyBwcmV2aW91c2x5IHRoZSBpbml0IGxvZ2lj
IGd1YXJhbnRlZWQgbmV0ZGV2cyBkdXJpbmcgcmVzZXQsDQo+ID4gPj4gdGhlIGFkZGl0aW9uIG9m
IGlkcGZfZGV0YWNoX2FuZF9jbG9zZSgpIHRvIHRoZSBQQ0kgY2FsbGJhY2tzIGZsb3cNCj4gPiA+
PiBtYWtlcyBpdCBwb3NzaWJsZSBmb3IgdGhlIGZ1bmN0aW9uIHRvIGJlIGNhbGxlZCB3aXRob3V0
IG5ldGRldnMuDQo+ID4gQWRkDQo+ID4gPj4gY2hlY2sgdG8gYXZvaWQgTlVMTCBwb2ludGVyIGRl
cmVmZXJlbmNlIGluIHRoYXQgY2FzZS4NCj4gPiA+Pg0KPiA+ID4+IENvLWRldmVsb3BlZC1ieTog
QWxhbiBCcmFkeSA8YWxhbi5icmFkeUBpbnRlbC5jb20+DQo+ID4gPj4gU2lnbmVkLW9mZi1ieTog
QWxhbiBCcmFkeSA8YWxhbi5icmFkeUBpbnRlbC5jb20+DQo+ID4gPj4gU2lnbmVkLW9mZi1ieTog
RW1pbCBUYW50aWxvdiA8ZW1pbC5zLnRhbnRpbG92QGludGVsLmNvbT4NCj4gPiA+PiBSZXZpZXdl
ZC1ieTogSmF5IEJoYXQgPGpheS5iaGF0QGludGVsLmNvbT4NCj4gPiA+PiBSZXZpZXdlZC1ieTog
TWFkaHUgQ2hpdHRpbSA8bWFkaHUuY2hpdHRpbUBpbnRlbC5jb20+DQo+ID4gPj4gLS0tDQo+ID4g
Pj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGYuaCAgICAgIHwgICAzICsN
Cj4gPiA+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl9saWIuYyAgfCAg
MTMgKystDQo+ID4gPj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX21haW4u
YyB8IDExMg0KPiA+ICsrKysrKysrKysrKysrKysrKysrDQo+ID4gPj4gICAzIGZpbGVzIGNoYW5n
ZWQsIDEyNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+ID4+DQo+ID4gPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZi5oDQo+ID4gPj4g
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGYuaA0KPiA+ID4+IGluZGV4IDFk
MGUzMmU0N2U4Ny4uMTY0ZDJmM2UyMzNhIDEwMDY0NA0KPiA+ID4+IC0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZi5oDQo+ID4gPj4gKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWRwZi9pZHBmLmgNCj4gPiA+PiBAQCAtODgsNiArODgsNyBAQCBlbnVtIGlk
cGZfc3RhdGUgew0KPiA+ID4+ICAgICogQElEUEZfUkVNT1ZFX0lOX1BST0c6IERyaXZlciByZW1v
dmUgaW4gcHJvZ3Jlc3MNCj4gPiA+PiAgICAqIEBJRFBGX01CX0lOVFJfTU9ERTogTWFpbGJveCBp
biBpbnRlcnJ1cHQgbW9kZQ0KPiA+ID4+ICAgICogQElEUEZfVkNfQ09SRV9JTklUOiB2aXJ0Y2hu
bCBjb3JlIGhhcyBiZWVuIGluaXQNCj4gPiA+PiArICogQElEUEZfUENJX0NCX1JFU0VUOiBSZXNl
dCB2aWEgdGhlIFBDSSBjYWxsYmFja3MNCj4gPiA+PiAgICAqIEBJRFBGX0ZMQUdTX05CSVRTOiBN
dXN0IGJlIGxhc3QNCj4gPiA+PiAgICAqLw0KPiA+ID4+ICAgZW51bSBpZHBmX2ZsYWdzIHsNCj4g
PiA+PiBAQCAtOTcsNiArOTgsNyBAQCBlbnVtIGlkcGZfZmxhZ3Mgew0KPiA+ID4+ICAgCUlEUEZf
UkVNT1ZFX0lOX1BST0csDQo+ID4gPj4gICAJSURQRl9NQl9JTlRSX01PREUsDQo+ID4gPj4gICAJ
SURQRl9WQ19DT1JFX0lOSVQsDQo+ID4gPg0KPiA+ID4gLi4uDQo+ID4gPg0KPiA+ID4+ICsvKioN
Cj4gPiA+PiArICogaWRwZl9wY2lfZXJyX3Jlc3VtZSAtIFJlc3VtZSBvcGVyYXRpb25zIGFmdGVy
IFBDSSBlcnJvcg0KPiA+IHJlY292ZXJ5DQo+ID4gPj4gKyAqIEBwZGV2OiBQQ0kgZGV2aWNlIHN0
cnVjdA0KPiA+ID4+ICsgKi8NCj4gPiA+PiArc3RhdGljIHZvaWQgaWRwZl9wY2lfZXJyX3Jlc3Vt
ZShzdHJ1Y3QgcGNpX2RldiAqcGRldikgew0KPiA+ID4+ICsJc3RydWN0IGlkcGZfYWRhcHRlciAq
YWRhcHRlciA9IHBjaV9nZXRfZHJ2ZGF0YShwZGV2KTsNCj4gPiA+PiArDQo+ID4gPj4gKwkvKiBG
b3JjZSBhIFBGUiB3aGVuIHJlc3VtaW5nIGZyb20gUENJIGVycm9yLiAqLw0KPiA+ID4+ICsJaWYg
KHRlc3RfYW5kX3NldF9iaXQoSURQRl9QQ0lfQ0JfUkVTRVQsIGFkYXB0ZXItPmZsYWdzKSkNCj4g
PiA+PiArCQlhZGFwdGVyLT5kZXZfb3BzLnJlZ19vcHMudHJpZ2dlcl9yZXNldChhZGFwdGVyLA0K
PiA+ID4+IElEUEZfSFJfRlVOQ19SRVNFVCk7DQo+ID4gPiBZb3Ugc2F5ICJGb3JjZSBhIFBGUiIs
IGJ1dCBQRlIgaXMgb25seSB0cmlnZ2VyZWQgb24gdGhlIEFFUiBwYXRoLA0KPiA+IG5vdCBvbiB0
aGUgRkxSIHBhdGguDQo+ID4NCj4gPiBIZW5jZSB0aGUgImZvcmNlIiAtIHRoZSBjYWxsIHRvIGB0
cmlnZ2VyX3Jlc2V0YCByZXN1bHRzIGluIGEgUEZSIGFuZA0KPiA+IGlzIG9ubHkgbmVlZGVkIGlu
IHRoZSBjYXNlIG9mIGEgUENJIGVycm9yLiBJZiB0aGlzIGZ1bmN0aW9uIHdhcyBjYWxsZWQNCj4g
PiBiZWNhdXNlIGEgdXNlciBpc3N1ZWQgYW4gRkxSLCB0aGUga2VybmVsIHdpbGwgdHJpZ2dlciBp
dCBmb3IgdXMuIFRoaXMNCj4gPiB3YXkgd2UgY2FuIHJldXNlIHRoZSByZXNldCBoYW5kbGluZyBw
YXRoIHRvIHJlc3RvcmUgdGhlIG9wZXJhdGlvbiBvZg0KPiA+IHRoZSBuZXRkZXZzLg0KPiA+DQo+
ID4gVGhvdWdoIEkgbWF5IGJlIG1pc3VuZGVyc3RhbmRpbmcgLSBhcmUgeW91IHJlZmVycmluZyB0
byB0aGUgd29yZGluZyBvcg0KPiA+IHRoZSBsb2dpYz8NCj4gRnJvbSB0aGUgZmlyc3QgZ2xhbmNl
IHRoZSBjb21tZW50IGxvb2tzIG1pc2xlYWRpbmcgZnJvbSBteSBwb2ludCBvZiB2aWV3Lg0KPiBQ
bGVhc2UgY29uc2lkZXIgcmV3b3JkaW5nLg0KPiANCj4gPg0KPiA+IFRoYW5rcywNCj4gPiBFbWls
DQo+ID4NCj4gPiA+DQo+ID4gPiBFdmVyeXRoaW5nIGVsc2UgbG9va3MgZmluZQ0KPiA+ID4gUmV2
aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwu
Y29tPg0KPiA+ID4NCj4gPiA+PiArDQo+ID4gPj4gKwlxdWV1ZV9kZWxheWVkX3dvcmsoYWRhcHRl
ci0+dmNfZXZlbnRfd3EsDQo+ID4gPj4gKwkJCSAgICZhZGFwdGVyLT52Y19ldmVudF90YXNrLA0K
PiA+ID4+ICsJCQkgICBtc2Vjc190b19qaWZmaWVzKDMwMCkpOw0KPiA+ID4+ICt9DQo+ID4gPg0K
PiA+ID4gLi4uDQo+ID4gPg0KPiA+ID4+ICAgfTsNCj4gPiA+PiAgIG1vZHVsZV9wY2lfZHJpdmVy
KGlkcGZfZHJpdmVyKTsNCj4gPiA+PiAtLQ0KPiA+ID4+IDIuMzcuMw0KPiA+ID4NCg0KVGVzdGVk
LWJ5OiBTYW11ZWwgU2FsaW4gPFNhbXVlbC5zYWxpbkBpbnRlbC5jb20+DQo=
