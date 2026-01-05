Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B1FCF22E5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 05 Jan 2026 08:19:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3DE1F60884;
	Mon,  5 Jan 2026 07:19:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kg6sqgRuvVAM; Mon,  5 Jan 2026 07:19:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BCD76087E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767597560;
	bh=ZimuaSP146eD39q6BxHv1MwtgU0M7MwmiXMn8PA/+ho=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bSzUn1tv9acS1lUi3xxVBp2ps/ykJLPsbR7augCLsEhTSr5fkpizTQeRCqwcYXSAC
	 ebPSoQd/NZdY7TId6i7kRmoYFCYu9exWLtxe97ig2PCDosdvPSx6ArlBlUe3gP88UG
	 EWef35gU1kC/aaj8KDlfmTRNkmMcMqt42WRDHaMU/ns4iizCruMq/hN4UPIEAw+92p
	 dQ00INnEy6EKeEltQP3N0ZKMm+nGrcJAb/TNT0dfZS930Ke8rPYXOhI9TlDTaaADnx
	 awgWtxwu5Op5NE8/iEk/GJFBgcnLlXSsDBP02QPPFQa3+7FXY/aXAqfkXIrKKx16ox
	 B9E14Bya0ihRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BCD76087E;
	Mon,  5 Jan 2026 07:19:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 759ED249
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 07:19:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 675E440142
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 07:19:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4uP6zgLBtFlx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jan 2026 07:19:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A458540022
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A458540022
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A458540022
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 07:19:17 +0000 (UTC)
X-CSE-ConnectionGUID: hZcTxNfnScKmU/0yp2YRgQ==
X-CSE-MsgGUID: AxZzRVvVRV6IEqFbpXZW0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="79683208"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="79683208"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2026 23:19:16 -0800
X-CSE-ConnectionGUID: DSFpVoNCT4i7wKJDgszShw==
X-CSE-MsgGUID: 3w5aR5wyRe+C6vhgccQJyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="201958295"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2026 23:19:17 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 4 Jan 2026 23:19:16 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 4 Jan 2026 23:19:16 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.0) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 4 Jan 2026 23:19:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wwMY8zq5KkpygQmQwv0IUDL7ip7nKkVeSkt9R3KB6Sip0+v6yZea1j1AO5URHs+SlRqnOM03kozH0TD6lOKfu+QtUGJaQnSwAM21x1TsIbUIuQ7lWN1ETVeo/CUBdZjv3hXy1SLnBKtBDgR0x7zGz1Avg+5ZAMRK+2lT2zgRpjxbQHdBBBxn7rrWzHgjXpT2v3+kBF4peswDEAct+HRSQ8uHkcRb31h1Ov3fTLOA8buIm8KOsWmccIPE5tfE7dM9VCGVLtr1Xwu8tggJnr6rCoAa/n6+XGxfic47hdae8BKonsn+z06JEZGY+ADgqdutMtujvZhr57haGZBr1yL6Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZimuaSP146eD39q6BxHv1MwtgU0M7MwmiXMn8PA/+ho=;
 b=HIcHTeV4gJR/ZORIIaLKFbf2SW3M/QzsAYCQGQUrAH9NdeSsUYFgGcsDPbeaO7WyT45jVhAD2Kgjy52Bg7tRJy6nYuDEI1GwpWmksc5t0TplYpUUGreXiJLCbVS1GBxIDwCMm0oamgTg/R48JbXwN879+jd6aucUpLmP8a7Wna3rOJ6OUVOess6A2VLb9XejH8Z9XPFwWtCrY91+zrRELmlgk1DwNWJ3gffuA4ctoUNWKGBF+uRW5CyWt9ewJVhAMwL2L+Kd//KtWkZCeHeoCRV8eyhDq0FE4zjzQ6nyUd6+GwUpGJ0/bZV2kJORpwVGZs8osz0nLpIwyvoZvZoyTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH3PPFB8E59DF50.namprd11.prod.outlook.com (2603:10b6:518:1::d44)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 07:19:14 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 07:19:14 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Li Li <boolli@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David
 Decotigny" <decot@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Brian Vazquez
 <brianvv@google.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2] idpf: increment completion queue
 next_to_clean in sw marker wait routine
Thread-Index: AQHcfg87lHKQI9fmUkicduzLEQbNH7VDKbRg
Date: Mon, 5 Jan 2026 07:19:13 +0000
Message-ID: <IA3PR11MB898683A1383A409E8C4B02F6E586A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260105064729.800308-1-boolli@google.com>
In-Reply-To: <20260105064729.800308-1-boolli@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH3PPFB8E59DF50:EE_
x-ms-office365-filtering-correlation-id: 06845f05-24b5-40ce-65dd-08de4c2abad8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?Q25pTEdHbVpESWtDVzI3dzJEejlhU2tLT3VPdm5QUkFEZGFiRFZCTlpKeVc1?=
 =?utf-8?B?TXUvck16eWVSZk9Xc2JKS3pJUkN3QWE0aGROWHJuUFBKakdTTmZ4bzkxaktZ?=
 =?utf-8?B?Y3lUMzVQWVQ0MFE1ZlVHMnJLbHVKZWpwa2tjWnBhem5NUTZLRGluY1VCZndT?=
 =?utf-8?B?YU9WT0dQKzB4QTN5cmRub2VLTjQyRmFzMHpkQWdnenErSHZpVEtFT1RBS1NJ?=
 =?utf-8?B?eW5hdUFmYjVvZ0JWeHNCeDBhNGZoRzRSa0l3NzFVeEt6RkFtUElnVDRrajA5?=
 =?utf-8?B?c09CR01zU1NqMDh1OHVMQkh0V21QeWxMaXlGaUhUNXJDQTFQbTVSM0podGZY?=
 =?utf-8?B?RUh1WlFiMktKdS9FMTA1akNUS2NoeUd6aWRsYnFyNWl3aytSOTFTNko3UnpS?=
 =?utf-8?B?OFVEK1RvYWlxRW1QZk40SnYzWnkybVBFK1VHdWUzZ0lqWWJzcDBISit1aUlW?=
 =?utf-8?B?d3AvNjgyT2l1dmJjblQ2RmtNUGUvbldJdEVnbjFHeHdDdXhURmVCSE5hdVg4?=
 =?utf-8?B?RWNEQUxNbzhpL0JqSHNLZEZ5TFRpWDVJZ2hPb0NaUUx3QkZ0TnEzR05heFhi?=
 =?utf-8?B?bjFSQnhoZ1NZZ05RMUNjeW82ODd3MmJQcHpaWDBaYW1Fc2Z3cnVxNDNVM09V?=
 =?utf-8?B?MlJkaHlOc08yVldueVRlMUhrdDRSWmZ1OVBhMjE0bVZSZUJHZmJZZzJlTnV0?=
 =?utf-8?B?N0ZRME02M0NsRnJJME1EbDgwRGw4cWpDWGh5b1UwWkl5MFptRE9EUTEycjF1?=
 =?utf-8?B?a0pqMjlzZC8valQ3c1RVcGVqcTJtMFhWQ2ovTHNjZW1NZUhnbFFscnQ4OFlp?=
 =?utf-8?B?U21lZFJQUzViWDZONVdRcVplSGhMT290SnJRZEppVlhmQkdwVEVIVFpnSmxr?=
 =?utf-8?B?QjRlVkZZeGdWQU0rM1dJaWZENlE4ck11cXdENVNUZmw4TWNHMllNblJ2N0ps?=
 =?utf-8?B?MUppZzl5ejkrS05DZmJWTk9lckFzeGVlcmF6N041cVF3R3FvaU80ZGNQVndP?=
 =?utf-8?B?Rm1FcTlCbjdueVhCd1pQblV5N0k2T0h3dkF1ZDJBV1ZZRUtZeUlUeVBSODEr?=
 =?utf-8?B?WDZaMGlZWVk4NVFSdnFVVDRrWkg2K1lGUnp2ZzRpVk53V0dMR1pPNDNqb2Uy?=
 =?utf-8?B?SE1nMHpqUlBmVSt5bFhqNVdKRFN5UndUOENRaENpWmx5ZjVDSGU2VHhqVi8v?=
 =?utf-8?B?OE0rYy9RcTN4OHU5b2krMEt6VHJRM2VsQjRnV05qanE2NTc2TldSY1dkL0ZJ?=
 =?utf-8?B?a0c5NzNRTFExc1N6UlNHNWdSYkpoTkhGOGhuZFlhZ0hoSDkzNS81ZmhFK1g0?=
 =?utf-8?B?YnErNC9mK3h3K1BNM2RJNUVBMmNkZGhsZndBZ1I1SHlXVkUwaUNtd2tSZHZi?=
 =?utf-8?B?MktnWkxnWDk2RXd5TjZyeStPY3UydGxZSDY0S2k3Nm9ITWl6aHlHdkJ2L1Fl?=
 =?utf-8?B?NHF0VGU5ME1Ydk1VanFnR21uZkowYXBEMSsvaVVidkExTFJnWXpMTmw1TWVV?=
 =?utf-8?B?Z3VkK21SdkZKMXAyVGFicEh2YmtiNDYrbnlJQnNCUzVveWZlT1B1SG5iNWxw?=
 =?utf-8?B?Tmw0cFp2SzBNeC9WdnRzeitPdWM3VzJTVTV1VVJxVUViZHZZNDFyMUpKUkgz?=
 =?utf-8?B?cHB3c1JteUlBMW83ZzJaUjRnZlp1dFJUc25zdXZ0Y0FZbVVjR0NIaGZ5SnNj?=
 =?utf-8?B?dEhhNDIwakhCRnpBbHg4RUZ4U3I0STFCeEQyTXNCcXA4TVBPNjFHTVRNWkU2?=
 =?utf-8?B?ekNEOFBpUVNFMzllOG1xS1lGUEJXK3UxdDJYVkl4c29RaUwrWFY5RkN0QVM0?=
 =?utf-8?B?blFQQUlicmFtU2txRUhkU20zRWM2UVRCeFZ6ZDZTMjcvU3ZSb0ZaQk55cGVr?=
 =?utf-8?B?MkxJVWs0SlJ5UXpQNzlqZ1lpQ2l0Qmg1ZmxWbHFIbWN2QWhmd3NmeDd5d0xW?=
 =?utf-8?B?WGp6WmFNNndMRVV1RE5MVElQc3ord0lTelU2YjRTZmwxMldXZzBWcE8yYjlM?=
 =?utf-8?B?elhwamJHeDM1bjBUdmY1M2xva3RDa09sblhrbEduQjVIdExtaEFWN0s0UlFh?=
 =?utf-8?Q?kNxzvT?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?djlESmM1ZHpqUzVNaC9YVFR3MnVUTWlocFdEN1REd1o0cE1wTW5zaHhZTGdm?=
 =?utf-8?B?OUQyclpxTkZ1Z21yZlNqSnNXbDBwR0xmMVFHdkQwcGFkRzFRQW9VWHpyVExP?=
 =?utf-8?B?NkNDQU5ScmZrSnFJam0vbE8rc0lnaVQza1NKTUh5b0xRRENHdW11bGViWTR2?=
 =?utf-8?B?aFMwTEIzL0x3cGZFWE8vR0ZtNVJkZWg1NkVCRjVsc2JTNDNrUGZEWWhhQWZP?=
 =?utf-8?B?R0pYR0RSUTBobm9yT3ArUlB2bmV1bDZLSkpldGxJVlRMRVhIRkxkUitsZEdT?=
 =?utf-8?B?bnkrSGsvMHB4VzYyanlYVEhyYStIRzFwNGxHRmZacEVWSU5rSDhjTndxTzVY?=
 =?utf-8?B?TUpacE1SMWUwdmdDcldlaVdFV0oyZEVCbGx1OVBvOXF2MXIyb2IwUE95WTU5?=
 =?utf-8?B?QmFSc1BYeWZjZU5wYldhenJJcm9DZCtVMTZFNVFoUzcvZFF4dUxpbTN3Kzdo?=
 =?utf-8?B?dlJWNTJHelVlbSt5a0xQWXZXQmxoMkdNd1pFT0ZtU3AyaTlSR1ZORmdIbDhk?=
 =?utf-8?B?RFVaL1NFZ0d4SEJvQnI2THJPend4NkplQlRJWE9ZNm9YVkp3RlpaTk9CVWVB?=
 =?utf-8?B?M0UyL3ViV0d5SDVueEVsK0wyaThoOHRrc1d4RFNpcFRPU1JUcTRaT21MNXZH?=
 =?utf-8?B?b1dZeE16d01oMUtFSGNYQWxnZjZPb2FLNy80R3FkVEFJUHcvek9jYkNJOWFV?=
 =?utf-8?B?YWZDb2VpT0N3UmFNU2ZYU0E0dzhmVDlFeDhkMXZ6WXJ4czVISkIvaXlDaU1k?=
 =?utf-8?B?SGpUdWtmbHJDeVdFbTJjR05FOXlCYlVDTUhONlZydEoxdDBUOHVLRFVZZHB2?=
 =?utf-8?B?dGwzVnBDUitxN09wb2hNalZGOVZtNHBJdkFrVnRsL3d2TUlYcXA0K0oreHVO?=
 =?utf-8?B?OU05N1hGazU5MFVJZFI1NDF1WTlpZzhiQ0RNZ0V0Zkw0bWhBdkRtRGxrS29W?=
 =?utf-8?B?SWxxd0RNQVpXaHNXVkZsVGJxSXpnZXNGRi9EVnJUcGRSU2UyRlVpMTJNYVJ1?=
 =?utf-8?B?OUpyMmg3OWV5R2Y4R0duNGlZTzdieTJ2L3hlckUyOUtDeklCeWFYeHpCblpl?=
 =?utf-8?B?MFJoTUlpdS93LzJsV0FzVTdiMCtmeTZUV0svU3JLRUFMZHI2MkFFZzB3aTRC?=
 =?utf-8?B?YmZDNEZnWjRKck93Y0RoSTIvZGllUm5penBhWTY4NTVzK0kzaXBvOFNCSFNP?=
 =?utf-8?B?QlRWaGVEQlVHNmJQSUg1ekhuU3pwZnhxMnY5L1BhRU9JVGdQMkRBNjF2R3BO?=
 =?utf-8?B?RzhhdFNjaTE3Q3JYMmFVS2ZIc25CeWlocHJWeHI4OXJmVWtReVpjOGR0dVFz?=
 =?utf-8?B?aUErYUowK0Q5VmI1Lzlvc2RTREc0VnVzSDhsV3pkS0Z0SXVrcWg1UnNWTjdE?=
 =?utf-8?B?T2ZtZmZvd0tNaVZBZ3FSaWhZZENPME12UzlSZjRTK2p2cEM3TDBWWnBEeVJm?=
 =?utf-8?B?WkRxNXhwUFc2MHZwTlcwY1N6TFJkOFpqcy83bjBxd3kxK1lvTU9PMUQvWm8y?=
 =?utf-8?B?QVB0ZWxieHJQMGpYcDBUY3F4RVRpb0xtTkowbFRCWmx6TzZ0TFREcmZmTmpM?=
 =?utf-8?B?ckhNVzRLcTFvV09VUmJ2ejdMdDlrT0tRVCtlczlubHZxUUU5RXpsSjI4dDZn?=
 =?utf-8?B?V2JTK2xpbDNOZC8xVGMwb3NrbTRUdEhDTkhiSnc1c1o1OGlaNEptUW9SeGJ6?=
 =?utf-8?B?cmhaUzVGUlR5c3RsOWVWbnBqUldoNStabzllZnJKWVIxanBpallTNU9uNy9R?=
 =?utf-8?B?OXdyUGRSOEF1ajhlZnhVRkhQanhsNE1sbS9oa2FWTXhWTjFYWlA4dFhFZ0d1?=
 =?utf-8?B?enFZRm9CcE0wdzlINmFucnlpVkd2WnlYekkzWjZtbXZnVFlITUVEZHFxR3oz?=
 =?utf-8?B?OGxFUmNSQS8yZjVzLzZXOXpmNTBFMUE4SnpIZTc4ZjhMRXNNanQ4NjIxWVJ5?=
 =?utf-8?B?czRZWWxGMlk0eHVYcGtKZTRFSmczaDBEblBKZFMwU1VaN1BtcW40enlsYS82?=
 =?utf-8?B?VWhLQ1hTQ0h3WW9WYW9HT2hENGJ4U2hpVWU1OXRoNE0wVENjcHRCWDUvUmRT?=
 =?utf-8?B?dGV2Y1d1NjFUWmE1d1J2c2hjeFRYMkxGbzA2cWZJbjZtWHRadC9ZY1NkTXhI?=
 =?utf-8?B?YlROOEZNbTZvRENabms0a3BoakF1RFhERDF3Qzl2RkJLME83V3U4U280MlI4?=
 =?utf-8?B?RS9ITXp5WnRBdlA2NHJwTnBmVDhhUFFSMkNqb1JDa3ZDK1R4aGxQemx6TUxv?=
 =?utf-8?B?ZXVHQmxQYW9FaHNEMWFDbjRqMUkwNDFVTzhvMjY2SlI5ZCtrT1pld2FmZWVn?=
 =?utf-8?B?SStxRWZzSzh5M0ppM3g1NDFQcGs0eGMxVUxxTitLdlBzWGg3ZGpIdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06845f05-24b5-40ce-65dd-08de4c2abad8
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2026 07:19:13.9962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N25+WrER/ly1AVIL2AF6AYdzyEf/oMUfdVkjwqSmJNR4TFfFqt9Gg2oGVT9I7of3pFFipI0AS0+KnDnc8Q9jlRa41pBTRzzDmnAvDvN7Wj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFB8E59DF50
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767597557; x=1799133557;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZimuaSP146eD39q6BxHv1MwtgU0M7MwmiXMn8PA/+ho=;
 b=PGnNM0KS6I5/8dGwyabBMHhnAClPROKYRcAPuwQIUEyBgSe/1CGm34kj
 oWr1jD7fjXXe7pRqwyQq/slJgiG48umVp1YfkTWC7G9mB0k8+sOJM3Oip
 3OYQ5lt2lUE1n3bYUYFmI+MguDUaOAh8GqhYvCB0OnB2VbBBDz+/1V2d9
 RW+nYHWzjnV2lWa1y/yllzj/yuD4BgCvQ9JvxJccRyGg+f1ISugALKPut
 /gvNfNBRWaAyQcna1Pm9BtVyORp8eXqXY5bSA+DyXNJfcAKuVLawvywkK
 0imumeosgatqPJCDTUTNk16XEhk0LUDyj8+Q7+9XIL0nOyXdJWqUL5QL3
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PGnNM0KS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] idpf: increment completion queue
 next_to_clean in sw marker wait routine
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTGkg
TGkgdmlhIEludGVsLXdpcmVkLWxhbg0KPiBTZW50OiBNb25kYXksIEphbnVhcnkgNSwgMjAyNiA3
OjQ3IEFNDQo+IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5j
b20+OyBLaXRzemVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29t
PjsgRGF2aWQgUy4gTWlsbGVyDQo+IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgSmFrdWIgS2ljaW5z
a2kgPGt1YmFAa2VybmVsLm9yZz47IEVyaWMgRHVtYXpldA0KPiA8ZWR1bWF6ZXRAZ29vZ2xlLmNv
bT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBuZXRkZXZAdmdlci5r
ZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBEYXZpZA0KPiBEZWNvdGln
bnkgPGRlY290QGdvb2dsZS5jb20+OyBTaW5naGFpLCBBbmphbGkNCj4gPGFuamFsaS5zaW5naGFp
QGludGVsLmNvbT47IFNhbXVkcmFsYSwgU3JpZGhhcg0KPiA8c3JpZGhhci5zYW11ZHJhbGFAaW50
ZWwuY29tPjsgQnJpYW4gVmF6cXVleiA8YnJpYW52dkBnb29nbGUuY29tPjsNCj4gVGFudGlsb3Ys
IEVtaWwgUyA8ZW1pbC5zLnRhbnRpbG92QGludGVsLmNvbT47IExpIExpDQo+IDxib29sbGlAZ29v
Z2xlLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHYyXSBpZHBmOiBp
bmNyZW1lbnQgY29tcGxldGlvbiBxdWV1ZQ0KPiBuZXh0X3RvX2NsZWFuIGluIHN3IG1hcmtlciB3
YWl0IHJvdXRpbmUNCj4gDQo+IEN1cnJlbnRseSwgaW4gaWRwZl93YWl0X2Zvcl9zd19tYXJrZXJf
Y29tcGxldGlvbigpLCB3aGVuIGFuDQo+IElEUEZfVFhEX0NPTVBMVF9TV19NQVJLRVIgcGFja2V0
IGlzIGZvdW5kLCB0aGUgcm91dGluZSBicmVha3Mgb3V0IG9mDQo+IHRoZSBmb3IgbG9vcCBhbmQg
ZG9lcyBub3QgaW5jcmVtZW50IHRoZSBuZXh0X3RvX2NsZWFuIGNvdW50ZXIuIFRoaXMNCj4gY2F1
c2VzIHRoZSBzdWJzZXF1ZW50IE5BUEkgcG9sbHMgdG8gcnVuIGludG8gdGhlIHNhbWUNCj4gSURQ
Rl9UWERfQ09NUExUX1NXX01BUktFUiBwYWNrZXQgYWdhaW4gYW5kIHByaW50IG91dCB0aGUgZm9s
bG93aW5nOg0KPiANCj4gICAgIFsgICAyMy4yNjEzNDFdIGlkcGYgMDAwMDowNTowMC4wIGV0aDE6
IFVua25vd24gVFggY29tcGxldGlvbiB0eXBlOg0KPiA1DQo+IA0KPiBJbnN0ZWFkLCB3ZSBzaG91
bGQgaW5jcmVtZW50IG5leHRfdG9fY2xlYW4gcmVnYXJkbGVzcyB3aGVuIGFuDQo+IElEUEZfVFhE
X0NPTVBMVF9TV19NQVJLRVIgcGFja2V0IGlzIGZvdW5kLg0KPiANCj4gVGVzdGVkOiB3aXRoIHRo
ZSBwYXRjaCBhcHBsaWVkLCB3ZSBkbyBub3Qgc2VlIHRoZSBlcnJvcnMgYWJvdmUgZnJvbQ0KPiBO
QVBJIHBvbGxzIGFueW1vcmUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBMaSBMaSA8Ym9vbGxpQGdv
b2dsZS5jb20+DQo+IC0tLQ0KPiBDaGFuZ2VzIGluIHYyOg0KPiAgLSBJbml0aWFsaXplIGlkcGZf
dHhfcXVldWUgKnRhcmdldCB0byBOVUxMIHRvIHN1cHByZXNzIHRoZSAiJ3RhcmdldCcNCj4gICAg
dW5pbml0aWFsaXplZCB3aGVuICdpZicgc3RhdGVtZW50IGlzIHRydWUgd2FybmluZyIuDQo+IA0K
PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3R4cnguYyB8IDYgKysrLS0t
DQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4
LmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdHhyeC5jDQo+IGlu
ZGV4IDY5YmFiNzE4N2U1NDEuLjQ1MmQwYTllODNhNGYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMNCj4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3R4cnguYw0KPiBAQCAtMjMyNiw3ICsyMzI2LDcgQEAg
dm9pZCBpZHBmX3dhaXRfZm9yX3N3X21hcmtlcl9jb21wbGV0aW9uKGNvbnN0DQo+IHN0cnVjdCBp
ZHBmX3R4X3F1ZXVlICp0eHEpDQo+IA0KPiAgCWRvIHsNCj4gIAkJc3RydWN0IGlkcGZfc3BsaXRx
XzRiX3R4X2NvbXBsX2Rlc2MgKnR4X2Rlc2M7DQo+IC0JCXN0cnVjdCBpZHBmX3R4X3F1ZXVlICp0
YXJnZXQ7DQo+ICsJCXN0cnVjdCBpZHBmX3R4X3F1ZXVlICp0YXJnZXQgPSBOVUxMOw0KTGludXgg
a2VybmVsIGlzIGFnYWluc3QgcHJlbWF0dXJlIGluaXRpYWxpemF0aW9uIGp1c3QgdG8gc2lsZW5j
ZSBhIGNvbXBpbGVyLg0KVGhlIHRhcmdldCB2YXJpYWJsZSBpcyBkZXJlZmVyZW5jZWQgYXQgaWRw
Zl9xdWV1ZV9jbGVhcihTV19NQVJLRVIsIHRhcmdldCkpDQpidXQgY2FuIHJlbWFpbiB1bmluaXRp
YWxpemVkIGlmIGV4ZWN1dGlvbiBqdW1wcyB0byB0aGUgbmV4dDogbGFiZWwgdmlhIGEgZ290bw0K
YmVmb3JlIHRhcmdldCBpcyBhc3NpZ25lZC4NCklzbid0IGl0Pw0KDQo+ICAJCXUzMiBjdHlwZV9n
ZW4sIGlkOw0KPiANCj4gIAkJdHhfZGVzYyA9IGZsb3cgPyAmY29tcGxxLT5jb21wW250Y10uY29t
bW9uIDoNCj4gQEAgLTIzNDYsMTQgKzIzNDYsMTQgQEAgdm9pZCBpZHBmX3dhaXRfZm9yX3N3X21h
cmtlcl9jb21wbGV0aW9uKGNvbnN0DQo+IHN0cnVjdCBpZHBmX3R4X3F1ZXVlICp0eHEpDQo+ICAJ
CXRhcmdldCA9IGNvbXBscS0+dHhxX2dycC0+dHhxc1tpZF07DQo+IA0KPiAgCQlpZHBmX3F1ZXVl
X2NsZWFyKFNXX01BUktFUiwgdGFyZ2V0KTsNCj4gLQkJaWYgKHRhcmdldCA9PSB0eHEpDQo+IC0J
CQlicmVhazsNCj4gDQo+ICBuZXh0Og0KPiAgCQlpZiAodW5saWtlbHkoKytudGMgPT0gY29tcGxx
LT5kZXNjX2NvdW50KSkgew0KPiAgCQkJbnRjID0gMDsNCj4gIAkJCWdlbl9mbGFnID0gIWdlbl9m
bGFnOw0KPiAgCQl9DQo+ICsJCWlmICh0YXJnZXQgPT0gdHhxKQ0KQXJlIHRvdSBzdXJlIHRoYXQg
aW5jcmVtZW50ZWQgbnRjIHZhbHVlIGlzIGV2ZXIgd3JpdHRlbiBiYWNrIHRvIGNvbXBscS0+bmV4
dF90b19jbGVhbj8NCg0KPiArCQkJYnJlYWs7DQo+ICAJfSB3aGlsZSAodGltZV9iZWZvcmUoamlm
ZmllcywgdGltZW91dCkpOw0KPiANCj4gIAlpZHBmX3F1ZXVlX2Fzc2lnbihHRU5fQ0hLLCBjb21w
bHEsIGdlbl9mbGFnKTsNCj4gLS0NCj4gMi41Mi4wLjM1MS5nYmU4NGVlZDc5ZS1nb29nDQoNCg==
