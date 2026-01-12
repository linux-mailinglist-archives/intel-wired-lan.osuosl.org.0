Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D7259D11A89
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 10:58:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC78A61632;
	Mon, 12 Jan 2026 09:58:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hR4BHF4uACDr; Mon, 12 Jan 2026 09:58:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2D766162F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768211935;
	bh=prCgUXy8oInzOLCDe9Hu/x5ZaG0qHGtOtHs23UW4tXs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6pK5cSsCSCktUMzSRLZAhwS2uJCu8OzwQp6I/7YkV0xqLOwASXw6VzqR3JM7i94r8
	 7o2Q+dMv0RUqUgXMHYM+pIl6qgh6y+QDF7OVUZjfIbZPPrP0aSQjCcUQzq8DtYrqCJ
	 x1Ax31wtvNcVWA8NwVvCAzUhZyC0iBOSW9JZAWZYENBxQmG6NrJTzovjx5PLvSP4cf
	 W2HZ1sdx1Gz2ttcT+B1Koxpgdb48mXQ4YM48D4qB6/TkCzKmGDmJxN6l4Fmrp49CLQ
	 zIq3iTohW8AcSH8QocO2OtgASl3/ibTtdrz+s+fPehJDTSNczgLFx6nEooMp2k0rEi
	 H9V30oehYb9vg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2D766162F;
	Mon, 12 Jan 2026 09:58:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F70712E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 09:58:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 90CF18466C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 09:58:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EnslzZgeBcbH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 09:58:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8F40E8464E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F40E8464E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8F40E8464E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 09:58:52 +0000 (UTC)
X-CSE-ConnectionGUID: 5RJjQujmSryY2Qvo0aByRw==
X-CSE-MsgGUID: f6ajESwKRNqRv2P9sqhjVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11668"; a="69535496"
X-IronPort-AV: E=Sophos;i="6.21,219,1763452800"; d="scan'208";a="69535496"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 01:58:52 -0800
X-CSE-ConnectionGUID: ulkxPY0hQXCbqeVDMgGGhg==
X-CSE-MsgGUID: iv4cf+hrT0uBGb/uPeiDxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,219,1763452800"; d="scan'208";a="241583757"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 01:58:51 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 01:58:51 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 12 Jan 2026 01:58:51 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.23) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 01:58:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iI3k7Qxn5d9o4l2najE4vIlTCfjbcMAcuFBEWALtKXFHCAx6J5t4rsAZRQCsI44iYvXNiIR9edDybfDJkco0C5Xe/KuB7prOSRLNx1o1EEF9BaSaNoKC7IJBZiVIfnsaINZwcXJllOJFqhWuSYrGxiathi6z6C+/EUuouRg+HEctpyikFMZuWZWR+GhCP02oLQG1xvme2AIyOt49loz+Kr8M3dMn5q9Xc1vdmMvB+IQgpdTrErN3GsgPebfOJlfxUG4nlv0viIgFC39A6ymCyCvKSgEcTrsssrH82/NEq8IzrOJZdsIsJW6uyNqSrnEsEEFtWShBCsxIoKMNxf0jWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=prCgUXy8oInzOLCDe9Hu/x5ZaG0qHGtOtHs23UW4tXs=;
 b=c8JWnMZGVGYEv6jvyJog3HGjJM/hZIVFM9eMhVBsgc6X4J4PKp9SGywQnu4+s8Gbq9FHIzxvCD8Rrh05VuY/3hTzXV0GJZI6A25+Pk0QpoY1DIZV3nFzfOmXMUkuS83TS+lzEI/e2gBri0ZaXs3+VVrozRcJqvhVdnXvpPeSSMHFORyguCCrlbI1f8ZS0eG6QJoWri57LGD/MC9Ti8yvUBgIr/TjRM3B8L6u+IEBs8uuG4JKR76YuZPFSuq4FZAg1QnT+kkv9vPzk1zA6VMcg+LS08IHFnELa5pPsWegpqzUTWGtIyQ4rnffa8LRZRKnl8Jh1r05jatemho22BfgOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH8PR11MB6949.namprd11.prod.outlook.com (2603:10b6:510:227::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 09:58:48 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9499.005; Mon, 12 Jan 2026
 09:58:48 +0000
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
Thread-Topic: [Intel-wired-lan] [PATCH 3/5] idpf: skip getting RX flow rules
 if vport is NULL during HW reset
Thread-Index: AQHcf3HBdZoJxqmntUi8+bcxGoqq6LVOVSLg
Date: Mon, 12 Jan 2026 09:58:48 +0000
Message-ID: <IA3PR11MB8986D980FA81E9920CC4CBD8E581A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260107010503.2242163-1-boolli@google.com>
 <20260107010503.2242163-3-boolli@google.com>
In-Reply-To: <20260107010503.2242163-3-boolli@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH8PR11MB6949:EE_
x-ms-office365-filtering-correlation-id: cd5342b3-513e-49ac-6193-08de51c12e60
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?YSt3MlkrMjNhTHJ5Nk4zeUtNWVdSY3ErQWFwNzRXSktMQWxWUUFvck1YbjYv?=
 =?utf-8?B?TWpIOFd1cmJHMDM0cW83Mnd0c3lTdXE5ejg2SG0vU2FrMFgzK200MWJmUWVC?=
 =?utf-8?B?cWY4Z28wc3Z6VVpyWk11M3BhWTJndjZ6SUR4V2pyKzZqbXNUM2tmY0MreEJa?=
 =?utf-8?B?NGM4cTk4OElDS2NDN1lRMksxNHp1ZG9FOXZtd3RrVUFEQ2pBQXh6Q1g0KzV2?=
 =?utf-8?B?ZktYeVVLMGVUcHE5V1ZrNHB0cGY2Z1pNbDFPcFJTMGxyUG54S2Fic3hnMUFl?=
 =?utf-8?B?Qy9FNE82dURkZWRFcFJtZFBtb09zOGk3TXIwKy9seENjQ2czWUVURGlrSVF2?=
 =?utf-8?B?ZERRV1JZRVlPY3QxdzFwSzlIVnlKcW9tZC8rSEhZanF6Sk5JOTRDc2FKM1BE?=
 =?utf-8?B?TnZobXdvR1hmbnJ1YmYyYnBVcXBvL2ZmNVd3T3oxbzAzbGtUcFRma2svQjRX?=
 =?utf-8?B?Z0VyUWxubXNScGpUMUFmN0hJaDcvUmgzNUNKQkNHNG5HckE0UHVLbFFpSXo1?=
 =?utf-8?B?T0tOY09SOUtpczh2dkw1VnJBZy85VjUyOWdyMld2bzk5V3dkVmVDVzhwV1Ux?=
 =?utf-8?B?cW1zamQ2OHkwakdwL2JOSHVaQTNIZit2ajJ5S2pVTXBsYmxFOE15Y3VPeWNz?=
 =?utf-8?B?VkxpNlJWa3c3T2pZUUVibHZ6QXZBRU9JUkV5UGhzQm56TTA4VWJoY05ZcHUy?=
 =?utf-8?B?cXZwWktrSlNKTGM0ZmkrOFRDeHNYR1RQTDlyMHcweHRmblRpT096T01LWGFG?=
 =?utf-8?B?R2ZGZkdsZGRmL2h2ZUJSbzIwSTQ2U3VLemJyOXNSeWcxbkhYcUsvbUE2NlQy?=
 =?utf-8?B?ZndTTW5OaEZnV00wcEsyUkZnZURTS0RBSzVXTXd4eEJIS244L1ZNcUhRWCtR?=
 =?utf-8?B?amljcmJqeFZ4aFZPZGV6WlR4V3M2WmViYWJyM0VSNXAxWFIxd0xWTmJYSzM5?=
 =?utf-8?B?Z28veDlkT1lDb2JEK1FMckdXT0l4UTRMQUVuVmpuMU5sVFhpNnBGak52dW4x?=
 =?utf-8?B?clMzMkJYd2VFcEZua1hlRWIrUzkvQjRRdGR3QW9Fb0VLQnRaSURkekErWmlP?=
 =?utf-8?B?S0Q1NGMwTXFOdTdkcHgva1hHZ2dxVEVtOFovQ2I1Q1VOVjdHWG9uWGtVK0N1?=
 =?utf-8?B?QzJPK2lnenVJZVZyQ2p4NUhUaElHQi8wN2I0UUtxSkZJczRXdUhrbUJnMEk0?=
 =?utf-8?B?RW0yN3F5UlZyeERqSkNWdGxSOE1TRkM2OGZWWFp1L244VVljeVJkMTJtSGpj?=
 =?utf-8?B?NlovSnRFOUtMTllGMHdIaU85ZEx4bmdDK1JDWGlCYVAvbnhRdk03aEVkdm83?=
 =?utf-8?B?WG4wKzdqZVNTdEtvQ2xpTmQ0S2ZWTWN1b01RdEpxcmUreWtKK2pHN2ljS2Q4?=
 =?utf-8?B?MVFRWFpGKzZnNldPV1RhMVJEYmJKNVBxczJyOXJmbHh0WXZ5bkMrcUhQT21m?=
 =?utf-8?B?bWc0V001Q2pIVDJCdUhkeUIzS3FPMGNjSEt3ZElIdHkwc2F0N0dzNXBRRFFn?=
 =?utf-8?B?Wk9YQWJwUVB6N3lQckJvOXlQODJaemtsbW9lV21uZDJncWlaYmxpbWk3VGdE?=
 =?utf-8?B?bERrd1lkZ1JQcDZuTjdXV0RDUFBHZnhzSENDZlpzRmNNMVFwTkM0bXBZY0cr?=
 =?utf-8?B?OWcwT2RHVWhvdTdMQ0xwQlRPdDRCS2dNZjhoNWVPRTJ6cWkrWXJ3YlNFUEts?=
 =?utf-8?B?SFV4a09uYTFYZklnaXJub1VZYit5cTNLWGRZSmwrVjFDWklPYW5EUWI2b2Zl?=
 =?utf-8?B?OHFNR056WDJjMzNSYW0wY1BNa3dSeEtzUlF3SEZqYUlUdUx5YXBpbmU1YjFl?=
 =?utf-8?B?UTBia0JZWG9IVGNxbTFBdGttMWgxWG5samJDT3dtMkpSWmpCSDhZZEdDQVcr?=
 =?utf-8?B?RXJMeUZ0b3lyNjFPUE9mUE5QcmVicjFucThRd05KWjg1M0U0b2Z4Um4zbGxp?=
 =?utf-8?B?Q1RuQjU0cU9GM0gxR2JvN2g4RGdSSHFsMEVJQ2NyUGtxOFRVaG5UL1Fmb0Nu?=
 =?utf-8?B?MXFVU05XdXJjME5lUjNuZ3pMYlZFbG1SOUV2aDJQUUo4emlYM09JNFNwM3g3?=
 =?utf-8?Q?rk2wG+?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TVJBSUxOR2JPVUhGcndFMHZGRldNam9GMm16b2tMNi9sQ3RrUjFCN2NRSW1E?=
 =?utf-8?B?eVdXak0yWkM3TnZOU3ZERXhSMmFGTUNReDlNVkd2b3drTUFOUXpsWkROemRk?=
 =?utf-8?B?ekF5T3YyRGwxbkZiY0dkdjRPUHVGZUNVSGlNdm9mQWp0d0txVjlSWk5RTXlk?=
 =?utf-8?B?ci9oRkpVMXlMczhJNnE5RjJnOWZJTXEwMXVVakFwMnYxOVVUbm1JKzYrMHhJ?=
 =?utf-8?B?dmMyN0NkNklhQmNjNlB5TTluT2xHd2k5L2ZUR2p0V1lHWXA1MWxsZlVBQXlP?=
 =?utf-8?B?NWpYeUhkMzArbm56Mkl4TVpheWh5SnVDQXRmNGw1MGdmTVBZb28wb0U2Ry8r?=
 =?utf-8?B?RGZEcDdzSExaZ1ROa1RWcEZBQTBkejlCSlROb0xtaVFKbXJKT01RM3pUN1F3?=
 =?utf-8?B?UkoyVDNiT0hCZWRrYzQ3QWJuWE1Db016ZTU3TEFjWFNCRzFEUDNNWlpYNUN1?=
 =?utf-8?B?RHBpeTQxWDVjUnVYckRKMzRaVDVRaFhHU0E1SnJLeTJ4eCtjK2Q2NGN4Q1g2?=
 =?utf-8?B?b3dybTBQMlpLUkdENUZGc05pWUswUS9meGJic0l5MlZRK2JnVVVTZmV2T3hk?=
 =?utf-8?B?QjFST29wQjQ0aE1hc1p0TmIwWDJ4dnk4T2FZSmR1SjNpdkhsc1o4OTZERyta?=
 =?utf-8?B?YWNkVXpKK1R1cVZ5ZTY5cGJaZ045Mk1WWkFvOFFtQk0ybzlhQllEbU5mS0lw?=
 =?utf-8?B?cWlwUGFSTnZrVWdmMGZtaHR6VGlOa01TUDBYNXM2cXJkOGtPWFVoZld1KzMv?=
 =?utf-8?B?eXFHbnp3UndReUJIZmx4ZGtWbnk1QkZPNnhqT3A1VTY1aEZVc2c3Y3lHM21l?=
 =?utf-8?B?TzRCWXd6UUh2d1FSUUZlUkllZEh0Q0lNS011alNvM050TWFWTkgxR2gycHJZ?=
 =?utf-8?B?WEttY09sRCthZjJwRkVmeGhpa1RCbThUdmdBS0Y5YS82TEFOZm85UEVXd3dy?=
 =?utf-8?B?RktoTjUxM2RyTlljMDhjaEx4aCt3WEVTM0xnZjdZOGRpcXhJejNWT0JkR3NL?=
 =?utf-8?B?TWx6cWN0cHIySmF0MktwcFFPNG9ZZ0VKbm5TTXVPdUNKOHM0b1RpZlowbEtC?=
 =?utf-8?B?V0RqR0ROZG0wTEw2S3BDVEhrYWRUeVBVMThPejU0OG4xNWI1UTNmRWtRUk9n?=
 =?utf-8?B?akRqTlZ5VUVSWUVBcCtaWllrMzRwV2ZLRzUwNm04U3g5SHhUK2VUYi9ycnp2?=
 =?utf-8?B?dlFhVDhCMXJFajFxZGhIWk5UR1FKZEp2UmdISnJ2bWI2L1VLVS9GTnJGOGU0?=
 =?utf-8?B?eXhwSVJodnlxRWVBSnZzQ1ZsZGYxMTV0bWdYK241cUs1ejIyYXUwOFBLYW1I?=
 =?utf-8?B?SUFHdVdjVDZhTEhEQmtZNURWMEI2dnBKbXhHMHg4T3lQRnpYazFRUUZlQ3hJ?=
 =?utf-8?B?a0RUSUxWVmVxOHZQUTJjTHBlTjBKOEFlYkh0WmRFVHBWVE9RMmV6UnpQWnBo?=
 =?utf-8?B?citUbzN4QXo0aUhtaEU2TGtndnBValpOa1B3NEd4bFVJQllmYzczTStDeVVV?=
 =?utf-8?B?NjM1bDFKU3J1Ni9rMWNUNmJxNHVBa2E1MkRtZ1RrUm4rWnF0NmY4Q090OXk2?=
 =?utf-8?B?bTRWUGxySWw0OC9NbnRJa2ttMnp6YXNJbkR6L2hLQTVubGEwTjhjYms1aFRs?=
 =?utf-8?B?UHl4TS84ZU02bGlyNlp1bGIvbVk1L2Y1aWxPdVFNMGFIeGlMbmZ2MnhaOXl3?=
 =?utf-8?B?SHN3TjZNZzRLck94VVN4L2l0bjNMbjMwSjF3WDdZTGdtUGRqa1VERlNKYm1o?=
 =?utf-8?B?aEc2NGJPNXcwODAzZ09DcXZDTHU0MDI4Q01HUTBhckpLdncyUU5abXR4UTJx?=
 =?utf-8?B?YnpZcy85Um1SU1pPcFhPK1BGSEVoVzZyOFkwRDg5cGZIOXZMTzJHYmFlYjlh?=
 =?utf-8?B?dVFReEhRbHBxN2tCVjVSVU14SnJzMUg5U1FKR0NuY2tuZTVSVEJWa3Q0OHhm?=
 =?utf-8?B?RkZzU3dZV2VmclpQKzh6a0tYTjBWTXpHa1RWemowRm9VOVhmRkxFS05IOHIy?=
 =?utf-8?B?N21KOHRCa1RKMVl0ZVBwWFRuQ1VCL3lTVXNOV3NRaGluNnhOMEMyUWhvTzBj?=
 =?utf-8?B?UERUQ1pYRFNwR2ZyZ091dTlWbTRPWVc3MHN3MGw3WW9XQUJJeGhqMDVqampE?=
 =?utf-8?B?SkppQk5rRENiNXJRcm96MHZDb3VwbHBnS2JEOXdOMldhVHNkekw3alF2UXlJ?=
 =?utf-8?B?RTlrdTM3YmxsK0lXSHMyOWZ0SEpUTU51anNtNy9NV1ZPOUNuVWdkTVk1dCty?=
 =?utf-8?B?WU93TisrK2pBSnloamg1cXFmUGNmV2dyOWFzVFdWUG5zSUVQcTNPelJ2a2RO?=
 =?utf-8?B?RmdDYTNBQ2tibWVvK05OemxqbU5SMmF3eHJnNllRRHhrRkZNSXc2QT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd5342b3-513e-49ac-6193-08de51c12e60
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2026 09:58:48.1625 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +oplzBy53Z/BwCvUM77OMGvcnz0/OKvit9zd4HNIvtSuM8+viM3awGCU29cQ02gFP8EJgRkhUpbn2Q04JEt8IkqDusdTbJ4SlgrOx1rLaK4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6949
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768211933; x=1799747933;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=prCgUXy8oInzOLCDe9Hu/x5ZaG0qHGtOtHs23UW4tXs=;
 b=SoALmgrqBGP1kpNlyQNLQUDDp9oOLenKur+Wpp1lQ9XMRMfCljr8Sdt6
 uw0LZH+Fhdui/nQbFoFba6qzCoVmX8ffSMJxhCsX/OOnHn34eqWDce8/9
 pewlJBjh+FJbUqg11qwV+8m+K6giBDuGmBXtPzAwzBkInZYqTQg4IuQCB
 sNLYLnvjWOQ/95tqh3NANOWk30AxSMfvuTCzKT4yVu7J1WLzGlm5R31Lv
 GNT/oKndLX5C10dJeWxDGCMe6RqV+ssu+Jj6ClWZ9LeDQBBtxq2XWX6kL
 nTeoAOdIwgK325LNct81efW6jajXHeFAFI0B327Vx9SwTcu17w/WW/F5I
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SoALmgrq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 3/5] idpf: skip getting RX flow rules
 if vport is NULL during HW reset
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
TGkgdmlhIEludGVsLXdpcmVkLWxhbg0KPiBTZW50OiBXZWRuZXNkYXksIEphbnVhcnkgNywgMjAy
NiAyOjA1IEFNDQo+IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRl
bC5jb20+OyBLaXRzemVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwu
Y29tPjsgRGF2aWQgUy4gTWlsbGVyDQo+IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgSmFrdWIgS2lj
aW5za2kgPGt1YmFAa2VybmVsLm9yZz47IEVyaWMgRHVtYXpldA0KPiA8ZWR1bWF6ZXRAZ29vZ2xl
LmNvbT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBuZXRkZXZAdmdl
ci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBEYXZpZA0KPiBEZWNv
dGlnbnkgPGRlY290QGdvb2dsZS5jb20+OyBTaW5naGFpLCBBbmphbGkNCj4gPGFuamFsaS5zaW5n
aGFpQGludGVsLmNvbT47IFNhbXVkcmFsYSwgU3JpZGhhcg0KPiA8c3JpZGhhci5zYW11ZHJhbGFA
aW50ZWwuY29tPjsgQnJpYW4gVmF6cXVleiA8YnJpYW52dkBnb29nbGUuY29tPjsgTGkNCj4gTGkg
PGJvb2xsaUBnb29nbGUuY29tPjsgVGFudGlsb3YsIEVtaWwgUyA8ZW1pbC5zLnRhbnRpbG92QGlu
dGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIDMvNV0gaWRwZjog
c2tpcCBnZXR0aW5nIFJYIGZsb3cNCj4gcnVsZXMgaWYgdnBvcnQgaXMgTlVMTCBkdXJpbmcgSFcg
cmVzZXQNCj4gDQo+IFdoZW4gYW4gaWRwZiBIVyByZXNldCBpcyB0cmlnZ2VyZWQsIGl0IGNsZWFy
cyB0aGUgdnBvcnQgYnV0IGRvZXMgbm90DQo+IGNsZWFyIHRoZSBuZXRkZXYgaGVsZCBieSB2cG9y
dDoNCj4gDQo+ICAgICAvLyBJbiBpZHBmX3Zwb3J0X2RlYWxsb2MoKSBjYWxsZWQgYnkgaWRwZl9p
bml0X2hhcmRfcmVzZXQoKSwNCj4gICAgIC8vIGlkcGZfaW5pdF9oYXJkX3Jlc2V0KCkgc2V0cyBJ
RFBGX0hSX1JFU0VUX0lOX1BST0csIHNvDQo+ICAgICAvLyBpZHBmX2RlY2ZnX25ldGRldigpIGRv
ZXNuJ3QgZ2V0IGNhbGxlZC4NCj4gICAgIGlmICghdGVzdF9iaXQoSURQRl9IUl9SRVNFVF9JTl9Q
Uk9HLCBhZGFwdGVyLT5mbGFncykpDQo+ICAgICAgICAgaWRwZl9kZWNmZ19uZXRkZXYodnBvcnQp
Ow0KPiAgICAgLy8gaWRwZl9kZWNmZ19uZXRkZXYoKSB3b3VsZCBjbGVhciBuZXRkZXYgYnV0IGl0
IGlzbid0IGNhbGxlZDoNCj4gICAgIHVucmVnaXN0ZXJfbmV0ZGV2KHZwb3J0LT5uZXRkZXYpOw0K
PiAgICAgZnJlZV9uZXRkZXYodnBvcnQtPm5ldGRldik7DQo+ICAgICB2cG9ydC0+bmV0ZGV2ID0g
TlVMTDsNCj4gICAgIC8vIExhdGVyIGluIGlkcGZfaW5pdF9oYXJkX3Jlc2V0KCksIHRoZSB2cG9y
dCBpcyBjbGVhcmVkOg0KPiAgICAga2ZyZWUoYWRhcHRlci0+dnBvcnRzKTsNCj4gICAgIGFkYXB0
ZXItPnZwb3J0cyA9IE5VTEw7DQo+IA0KPiBEdXJpbmcgYW4gaWRwZiBIVyByZXNldCwgd2hlbiB1
c2Vyc3BhY2UgZ2V0cyBSWCBmbG93IGNsYXNzaWZpY2F0aW9uDQo+IHJ1bGVzIG9mIHRoZSBuZXRk
ZXYsIHRoZSB2cG9ydCBhc3NvY2lhdGVkIHdpdGggdGhlIG5ldGRldiBpcyBOVUxMLCBhbmQNCj4g
c28gYSBrZXJuZWwgcGFuaWMgd291bGQgaGFwcGVuOg0KPiANCj4gWyAxNDY2LjMwODU5Ml0gQlVH
OiBrZXJuZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlLCBhZGRyZXNzOg0KPiAwMDAwMDAwMDAw
MDAwMDMyIC4uLg0KPiBbIDE0NjYuMzU2MjIyXSBSSVA6IDAwMTA6aWRwZl9nZXRfcnhuZmMrMHgz
Yi8weDcwDQo+IA0KPiBUaGlzIGNhbiBiZSByZXByb2R1Y2VkIHJlbGlhYmx5IGJ5IGluamVjdGlu
ZyBhIFRYIHRpbWVvdXQgdG8gY2F1c2UgYW4NCj4gaWRwZiBIVyByZXNldCwgYW5kIGluamVjdGlu
ZyBhIHZpcnRjaG5sIGVycm9yIHRvIGNhdXNlIHRoZSBIVyByZXNldCB0bw0KPiBmYWlsIGFuZCBy
ZXRyeSwgd2hpbGUgcnVubmluZyAiZXRodG9vbCAtbiIgaW4gdXNlcnNwYWNlLg0KPiANCj4gV2l0
aCB0aGlzIHBhdGNoIGFwcGxpZWQsIHdlIHNlZSB0aGUgZm9sbG93aW5nIGVycm9yIGJ1dCBubyBr
ZXJuZWwNCj4gcGFuaWNzIGFueW1vcmU6DQo+IA0KPiBbICAzMTIuNDc2NTc2XSBpZHBmIDAwMDA6
MDU6MDAuMCBldGgxOiBmYWlsZWQgdG8gZ2V0IHJ1bGVzIGR1ZSB0byBubw0KPiB2cG9ydCBpbiBu
ZXRkZXYgQ2Fubm90IGdldCBSWCByaW5nczogQmFkIGFkZHJlc3MNCj4gcnhjbGFzczogQ2Fubm90
IGdldCBSWCBjbGFzcyBydWxlIGNvdW50OiBCYWQgYWRkcmVzcyBSWCBjbGFzc2lmaWNhdGlvbg0K
PiBydWxlIHJldHJpZXZhbCBmYWlsZWQNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IExpIExpIDxib29s
bGlAZ29vZ2xlLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBm
L2lkcGZfZXRodG9vbC5jIHwgNyArKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRw
Zi9pZHBmX2V0aHRvb2wuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRw
Zl9ldGh0b29sLmMNCj4gaW5kZXggNmE0YjYzMGI3ODZjMi4uYzcxYWY4NTQwOGEyOSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2V0aHRvb2wuYw0K
PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfZXRodG9vbC5jDQo+
IEBAIC00NSw2ICs0NCwxMSBAQCBzdGF0aWMgaW50IGlkcGZfZ2V0X3J4bmZjKHN0cnVjdCBuZXRf
ZGV2aWNlDQo+ICpuZXRkZXYsIHN0cnVjdCBldGh0b29sX3J4bmZjICpjbWQsDQo+IA0KPiAgCWlk
cGZfdnBvcnRfY3RybF9sb2NrKG5ldGRldik7DQo+ICAJdnBvcnQgPSBpZHBmX25ldGRldl90b192
cG9ydChuZXRkZXYpOw0KPiArCWlmICghdnBvcnQpIHsNCj4gKwkJbmV0ZGV2X2VycihuZXRkZXYs
ICJmYWlsZWQgdG8gZ2V0IHJ1bGVzIGR1ZSB0byBubyB2cG9ydA0KPiBpbiBuZXRkZXZcbiIpOw0K
PiArCQllcnIgPSAtRUZBVUxUOw0KPiArCQlnb3RvIHVubG9jazsNCj4gKwl9DQo+ICAJdnBvcnRf
Y29uZmlnID0gbnAtPmFkYXB0ZXItPnZwb3J0X2NvbmZpZ1tucC0+dnBvcnRfaWR4XTsNCj4gIAl1
c2VyX2NvbmZpZyA9ICZ2cG9ydF9jb25maWctPnVzZXJfY29uZmlnOw0KPiANCj4gQEAgLTg1LDYg
KzkwLDcgQEAgc3RhdGljIGludCBpZHBmX2dldF9yeG5mYyhzdHJ1Y3QgbmV0X2RldmljZSAqbmV0
ZGV2LA0KPiBzdHJ1Y3QgZXRodG9vbF9yeG5mYyAqY21kLA0KPiAgCQlicmVhazsNCj4gIAl9DQo+
IA0KPiArdW5sb2NrOg0KPiAgCWlkcGZfdnBvcnRfY3RybF91bmxvY2sobmV0ZGV2KTsNCj4gDQo+
ICAJcmV0dXJuIGVycjsNCj4gLS0NCj4gMi41Mi4wLjM1MS5nYmU4NGVlZDc5ZS1nb29nDQoNClJl
dmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVs
LmNvbT4NCg==
