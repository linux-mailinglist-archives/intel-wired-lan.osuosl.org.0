Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KqSJbjpz2kG1wYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 18:24:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAC0396517
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 18:24:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE3188238A;
	Fri,  3 Apr 2026 16:24:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TRK926JHW7bo; Fri,  3 Apr 2026 16:24:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 187168237E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775233460;
	bh=8CHheavHKBECvItmAa2TuSDB4dpE8+jl38D3KX2/lJw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gbVTsWmUi9NrnEJzOuBikMgx8uWn3JC/3VONSahMQOjrErlIcTrYG08TBREd+gJWq
	 KBCCKAwk1uoBf/h9cHiNA1ceRn19xefHTF7l9JxaZbrqMgqIjhJjNMAkfnhvZUIEE9
	 6EyCJ8/+CxFXUX+5FKpAFPfIttzIJVGgeEFikc6qQD/UKxQtB/9JIFlEK6btDajeM5
	 gANUsrD6lx18uoUCrM54Mm25JH4R93cRS6YVVtcdRuPj2V0ZaIeosdZX1kLOaUKawQ
	 YfVLiiYUGcVUGr4GQSc4R7tWuPWg6Lm6R/yoXFpIi/uEUYlcjv5Ywt/eKUuh484OVz
	 C4xLbxG2jPCSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 187168237E;
	Fri,  3 Apr 2026 16:24:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B8C752CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 16:24:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E54340824
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 16:24:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kq0vn4XJNypb for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 16:24:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 821F340130
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 821F340130
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 821F340130
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 16:24:16 +0000 (UTC)
X-CSE-ConnectionGUID: fzBQhrRWQPCT43qwE7Cs1w==
X-CSE-MsgGUID: Fv0LCKxtQ52TS9oUfR/3UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11748"; a="87684734"
X-IronPort-AV: E=Sophos;i="6.23,158,1770624000"; d="scan'208";a="87684734"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 09:24:16 -0700
X-CSE-ConnectionGUID: 6pLKoYjRQJ+1pFKftSNTZw==
X-CSE-MsgGUID: b2IZ8ppLTeW9WUpm2EgowQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,158,1770624000"; d="scan'208";a="227231894"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 09:24:15 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 09:24:14 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 3 Apr 2026 09:24:14 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.49) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 09:24:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G4S6d47/dluXQDfXq4alJ1fGlEeRzBkPqVPnu1QsP/auXMSeWNhlyOmG1imf2fD00523i/rP/0InY+VyJ/9aoVGmSIePbB7sLxjrmlsAxDiNLlfqEb+pU3nXryWTjnl1ZFDI5ktJFwO9DoL+m8SYqH5daXxlo3NOc2AnYY+HeN/QQ9QMKU7kE/pOc37mbWHlNLVbihbfavh9ggWXZo1lytYC3BeI+4D5b5vCeJh1cvKpElqb+S+otfHg5gVgNW3VkgdMhXKVq1lAGtwPuVrrooIjnJidBAR3J8aYsp1Aq+GUwjDg+DIi30fWhOL6bbfS5a7RivN898tbGBfroN8ZWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8CHheavHKBECvItmAa2TuSDB4dpE8+jl38D3KX2/lJw=;
 b=cqpMawUfUni9jv53T/1vkRCMV++yyUpWMq4ntpqPbW8uvfyEWHtrjcNMZXXAuJEWjYidMJoxhejpnrLI8kYm6arlPXOH4fXryFUz/yaP8y7Bhuh5TYoUWLiYxAUMu2hHzGSEbQH1+vrZ5z0ZhFKPlI0+jfCwLRA3f/i3ixBdZQFr9qwVTrouMcYSBU9tYeZeooXZm5i7bQCFy/ydxn1E6oAXn2hpLKhNIwqlBTfLBY0SK05y878qCxLALtzeoYrC7f/wbyIix6ZR2z1Yq+50Q623w1MWhO+Dnctwb8m4w+QHn2YyCBm7z0uZkrsVGvjoUM2VspUyCoTfS3Eve5w9VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by PH8PR11MB6732.namprd11.prod.outlook.com (2603:10b6:510:1c8::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Fri, 3 Apr
 2026 16:24:12 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%5]) with mapi id 15.20.9769.018; Fri, 3 Apr 2026
 16:24:12 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "bigeasy@linutronix.de" <bigeasy@linutronix.de>, "clrkwllms@kernel.org"
 <clrkwllms@kernel.org>, "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "linux-rt-devel@lists.linux.dev" <linux-rt-devel@lists.linux.dev>,
 "sgzhang@google.com" <sgzhang@google.com>, "boolli@google.com"
 <boolli@google.com>, "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [PATCH iwl-net v2 1/3] idpf: fix PREEMPT_RT raw/bh spinlock
 nesting for async VC handling
Thread-Index: AQHcuDpw2pStxnV7KkqaHI9lfE5HHbXNm0/Q
Date: Fri, 3 Apr 2026 16:24:11 +0000
Message-ID: <SJ1PR11MB6297E334735B0897444C35E59B5EA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20260319211335.23236-1-emil.s.tantilov@intel.com>
 <20260319211335.23236-2-emil.s.tantilov@intel.com>
 <IA3PR11MB8986B4C8A0E0BB5A14BD0400E54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986B4C8A0E0BB5A14BD0400E54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|PH8PR11MB6732:EE_
x-ms-office365-filtering-correlation-id: 64cff7ad-8ee9-4796-7f68-08de919d70b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: kErNS02BzEnbDKPV1SHbB2vAXs5vce97zxc9wBAGs4haK66RQe6PBznGR+yGhPA7o+UfSeYl+aRiHuprZtd6BLFSnzj1RImxlpwcU8c2rgmq3QOzHeJzTTPg8JqX4qBD7DjfaMf6U7q4hVHXRwgErWSe/PwZE801pLAkj6rLz6UUeUNehawWgppv784M5gpIHCVC4ArGCDbchVHr1CRxEvgkf8MXwUd5CBbNfwcVdU+ctAiOQyX7PS8KuwPyww34YXr/pEt8xgPyJ84Fw0L+DJsFovwI7hIHvza3eVtvVoJ9nT7HfimsA6Cxn84R5K2LMfa6DGVg/7GDS5o4EHMPwR+9lpHJ4vNldf5n/PpQVpnO+wZ6wCkfxWXPmUbnbHaTZ0eFdVbtLH5Dx58tHKrkv2yqkPnAtpPIQCiijCGeu8i6zDplHQKaNworqOnpcwYB3oEp4fdBKW+/r6RNItqvFdl/B6EQcoUAMMGfRwybfIj6NsMAKN5rg/HeVm/2DVNjNwh8JmxkCzUmYoNPhhSBnkarzctAjLSNENsFxGwrzb6gTia2+soFBD6gdye9XlENJQG76s9e5D+B8NU9wKnw+DAWAQAa04bxk/NUqW2VjoaG1LREiiOQaqqcEK8ep16CiiAeA++RXSQitkMPn8+/tjFF2c1obhQxvzwrlZ1wzKB2/jdahHlC4IZFWwq3GfP3PZZKgzqQVYk76hzGR2Sj7ToXU2S2/iDztbRdU+Jc7esAk+ct6MfcFTW6jPAgJNkacS9UMt0N67nwQHR7dEoAU/0ea+l/mQBNePpgkHDvOaM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7fiUKzplIyHVgMPZTiYS0MMKSTBXNlxZ61q8cimSRy0KV9HfvwW1p/p3lW8n?=
 =?us-ascii?Q?WFUFm8vjVnvZGQij3dFzUgFq3UFJiWqKTaI5g3rC/Fxftw0QXGPJ2+EMN1gq?=
 =?us-ascii?Q?M3dksQ/7Oy078xVWIA8C8Py6GYbGbd/a6tLaQ/48n5e4uqVpURmKD5C0+NPF?=
 =?us-ascii?Q?S5W5j8NC5sA+caPgjawQiPgstFL2UAlzRejnk7nOcpD9mTrYUphWnedVpsx2?=
 =?us-ascii?Q?QI/phwlsCjV6B6Zoa1B6H9j44C/yrb1iJasu3fbNOixJX+JO5dLm/5waAhSf?=
 =?us-ascii?Q?oIZq210+Usz8YlWKaI+65Qp6dRBfVtfbs9fZphjieSipHQVmnUc5a61+VNoL?=
 =?us-ascii?Q?07HkGUBRJ3oDdTAnk4eP8Eryh1ITi6pcg3EAbZTBhHWzg/LDKv9m0F4SD0co?=
 =?us-ascii?Q?6kepTBZXsBNqhL1iQxcn3jJbNLkMRz9NZOfP3qFUm5DcHUwD+Pqpdsuugd+A?=
 =?us-ascii?Q?z5v5v9CALKawmRcQU6QadotZgZiJ+zmDJM7nwsO1MBJNhgby0ZZ1SKRd7j4i?=
 =?us-ascii?Q?jvUzfUG5WIbYRKNirCEMBlyt/t+1tUlFyoVqrQHgXhH5xi0VOlEgCt+iG0Or?=
 =?us-ascii?Q?OCz9Ut4LHWYXAjMxBZRqzPI7rGOi9MHIzkL9tIzKvjIQMciNbiNJ/orjlgjF?=
 =?us-ascii?Q?qQN85rUKmWWd6OZcjYDdGXmRvultqhaFUwObMQprbs3+N3NdChAMg2VHoU5Y?=
 =?us-ascii?Q?1c0Bpxoi3BqCuMwDsZPkOo7c2yJQIMkojIJB3pkPzAPWCSjlHmGFzsNT5SuW?=
 =?us-ascii?Q?+5I+PoUKW4Z1eZQGnQXUTOw5j6iYtLqmwzozSy/uidEQ4LfNQrsWCvfh/B+6?=
 =?us-ascii?Q?8RFzdDxtkkTJig6jwEmrcpoMSZ42YrAmfzspbEJZ8laYyf5rGoDUI9gKNCHt?=
 =?us-ascii?Q?CwrNwiQvFzRx0M2T59+nhspoc5tHv0rgg082rTJB28+bht5lgSiNTtAXKbMp?=
 =?us-ascii?Q?g84qb6ARQ80YKxgOCocqeYTsdEdhyi7XEZ2aYY3xGYBKPcNy4U7lyHlBIDQC?=
 =?us-ascii?Q?iJ3c8Cy+WfveULmjItfkwyowxYmCy1i938wzdDMHnrweTmCtGBQvDoKvqGGV?=
 =?us-ascii?Q?Hfe8/hCdTv+XCEJOeR8Oq9xipqN59lbKVZOMiiTGUTZLZt8nf/meExogTO4/?=
 =?us-ascii?Q?AP7btUP2Q9F47zAdDiSrPPVcifY8zdyjhslVV39ferSXhexB8Csifr5EoWgH?=
 =?us-ascii?Q?Y4VKZzPeTPejkRz7PVa4yMMZf6l18ogLoBpWg6RvIDp+vB/JXXVt/GP+r2gz?=
 =?us-ascii?Q?n6w1dq4JVkBl03xsSMbe6m3aO87lh01WBeR09HzTeq+X+zkaqraIR0K9tbCQ?=
 =?us-ascii?Q?KmVNnb0DNjcnE6vHMQTr5W6u/gNdvgv0TspXN5luaI3WS4pM3NJUZbOJArA3?=
 =?us-ascii?Q?W2iOaTmEE/T5xazGHyXRZHhvrIckwvRsmVmA8sulqyZNHHk6cpNLU7gkHC+2?=
 =?us-ascii?Q?mLi+5hTuxXMIT8QZIXIfTW9VppXig1SBo0gmILc636PiYorlGw3W9bOCNQiP?=
 =?us-ascii?Q?9pnnx0TSZ7vB3U3SEucRwv+eQpMeL9vFeBeh4+ueHHXIjcsYIJ0S3ExqypS0?=
 =?us-ascii?Q?6Is+D6vEPYFpwOHm4G5ov7wxNXw53GwHSS9W4cethBlhpBuBMCn2t8l0yOvj?=
 =?us-ascii?Q?oa35aw18JttUEGy41vtn0AouVI/pS5SW536Xl9RucmoA/jHSZxyvDmOLE2GR?=
 =?us-ascii?Q?LAkG+LRtB+pFOqZ0xvSzgK4IO2DRjgJ662s0+C+loXT9nMtykkhSZzF2dixb?=
 =?us-ascii?Q?0X6okntWtA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Di8StQoBv7Qxt73y+aS1o8soMwGInPuxRAh24xHISkwFThEdw8CzpkTw1UFJSLpQt/p4pfRXYpbeUBmXxcafu1bAivsXKMe6KOmQqq13c2AZA6Lq4/2Ocdx0bQU0bYd8jOqPBZ4nLaZzbfmcxatXavOjTqo0JtqYnZCi6xi1osQQnDjYBAbxNils7tznmhYv4IXuAjj6+4S4gfJWl2rOZiP/xUXA7ihMlRLwmh9OQpVPMG2r5y+LkZMd3DbrlgMznl/6/o9REgy2mRxRoV8lbYPsKxTDQFg62xKhkaQ1Zurp8SE/vG5Q73CwDCr+yDzbipZDyHshZ/z6tb269HF39g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64cff7ad-8ee9-4796-7f68-08de919d70b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2026 16:24:12.0128 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rFAvgH0E92dxVi5H1itNai5VZUvbxIsg1SpPs4AcN005YF/2soiLxkgjJRLWtA0/urbCV2Zn5fnmyLo5i9h87Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6732
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775233456; x=1806769456;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nBqcDVJ5Pq8urMbx8xntjnJzVSFVdU+I5ycrJIKuVT4=;
 b=k/Ta62LtTG2k1EjiSDKMC1AaW/SwHcn/nTziObmRNbVGtN/pnX/R3cyW
 zllH3Q+o5r+8JGHFTXdyvU9IsFOdAtIdD2zxLIAS+aqZx4aTNqzwZxCHx
 Pt+fTZhIsOjaUviiIOQf5YQEOoWyE2T48FYjsluYS4WHskJEg0uX3G3K4
 vgdL1Pe9soU223rGxrhP2Fi2oj4p32H4LJHjcD+El6zt6bUCbE7GqHR+r
 pv+RmAVu1ZBlVQC0hMF9fAc/U+ndUfJjtO4FIoCnPtzPwOposbUzOkhpy
 HNIXdWvgZ59pWUo+09eJHMaBwQwn/zuDb2cTPjTmi17QLPtzFPLm0lxd0
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k/Ta62Lt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/3] idpf: fix PREEMPT_RT
 raw/bh spinlock nesting for async VC handling
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:bigeasy@linutronix.de,m:clrkwllms@kernel.org,m:rostedt@goodmis.org,m:linux-rt-devel@lists.linux.dev,m:sgzhang@google.com,m:boolli@google.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: DDAC0396517
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Loktionov, Aleksandr
> Sent: Friday, March 20, 2026 12:23 AM
> To: Tantilov, Emil S <emil.s.tantilov@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; bigeasy@linutronix.de; clrkwllms@kernel.org;
> rostedt@goodmis.org; linux-rt-devel@lists.linux.dev; sgzhang@google.com;
> boolli@google.com; stable@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/3] idpf: fix PREEMPT_R=
T
> raw/bh spinlock nesting for async VC handling
>=20
>=20
>=20
> > -----Original Message-----
> > From: Tantilov, Emil S <emil.s.tantilov@intel.com>
> > Sent: Thursday, March 19, 2026 10:14 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> > <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> > davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> > pabeni@redhat.com; bigeasy@linutronix.de; clrkwllms@kernel.org;
> > rostedt@goodmis.org; linux-rt-devel@lists.linux.dev;
> > sgzhang@google.com; boolli@google.com; Tantilov, Emil S
> > <emil.s.tantilov@intel.com>; stable@vger.kernel.org
> > Subject: [PATCH iwl-net v2 1/3] idpf: fix PREEMPT_RT raw/bh spinlock
> > nesting for async VC handling
> >
> > Switch from using the completion's raw spinlock to a local lock in the
> > idpf_vc_xn struct. The conversion is safe because complete/_all() are
> > called outside the lock and there is no reason to share the completion
> > lock in the current logic. This avoids invalid wait context reported
> > by the kernel due to the async handler taking BH spinlock:
> >
> > [  805.726977] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D [  805.726991] [ BUG:
> > Invalid wait context ]
> > [  805.727006] 7.0.0-rc2-net-devq-031026+ #28 Tainted: G S         OE
> > [  805.727026] ----------------------------- [  805.727038]
> > kworker/u261:0/572 is trying to lock:
> > [  805.727051] ff190da6a8dbb6a0 (&vport_config-
> > >mac_filter_list_lock){+...}-{3:3}, at:
> > idpf_mac_filter_async_handler+0xe9/0x260 [idpf] [  805.727099] other
> > info that might help us debug this:
> > [  805.727111] context-{5:5}
> > [  805.727119] 3 locks held by kworker/u261:0/572:
> > [  805.727132]  #0: ff190da6db3e6148 ((wq_completion)idpf-
> > 0000:83:00.0-mbx){+.+.}-{0:0}, at: process_one_work+0x4b5/0x730 [
> > 805.727163]  #1: ff3c6f0a6131fe50 ((work_completion)(&(&adapter-
> > >mbx_task)->work)){+.+.}-{0:0}, at: process_one_work+0x1e5/0x730 [
> > 805.727191]  #2: ff190da765190020 (&x->wait#34){+.+.}-{2:2}, at:
> > idpf_recv_mb_msg+0xc8/0x710 [idpf] [  805.727218] stack backtrace:
> > ...
> > [  805.727238] Workqueue: idpf-0000:83:00.0-mbx idpf_mbx_task [idpf] [
> > 805.727247] Call Trace:
> > [  805.727249]  <TASK>
> > [  805.727251]  dump_stack_lvl+0x77/0xb0 [  805.727259]
> > __lock_acquire+0xb3b/0x2290 [  805.727268]  ?
> > __irq_work_queue_local+0x59/0x130 [  805.727275]
> > lock_acquire+0xc6/0x2f0 [  805.727277]  ?
> > idpf_mac_filter_async_handler+0xe9/0x260 [idpf] [  805.727284]  ?
> > _printk+0x5b/0x80 [  805.727290]  _raw_spin_lock_bh+0x38/0x50 [
> > 805.727298]  ? idpf_mac_filter_async_handler+0xe9/0x260 [idpf] [
> > 805.727303]  idpf_mac_filter_async_handler+0xe9/0x260 [idpf] [
> > 805.727310]  idpf_recv_mb_msg+0x1c8/0x710 [idpf] [  805.727317]
> > process_one_work+0x226/0x730 [  805.727322]
> worker_thread+0x19e/0x340
> > [  805.727325]  ? __pfx_worker_thread+0x10/0x10 [  805.727328]
> > kthread+0xf4/0x130 [  805.727333]  ? __pfx_kthread+0x10/0x10 [
> > 805.727336]  ret_from_fork+0x32c/0x410 [  805.727345]  ?
> > __pfx_kthread+0x10/0x10 [  805.727347]  ret_from_fork_asm+0x1a/0x30 [
> > 805.727354]  </TASK>
> >
> > Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
> > Cc: stable@vger.kernel.org
> > Suggested-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> > Reported-by: Ray Zhang <sgzhang@google.com>
> > Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> > ---
> >  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 14 +++++---------
> > drivers/net/ethernet/intel/idpf/idpf_virtchnl.h |  5 +++--
> >  2 files changed, 8 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > index 113ecfc16dd7..582e0c8e9dc0 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > @@ -287,26 +287,21 @@ int idpf_send_mb_msg(struct idpf_adapter
> > *adapter, struct idpf_ctlq_info *asq,
> >  	return err;
> >  }
> >
> > -/* API for virtchnl "transaction" support ("xn" for short).
> > - *
> > - * We are reusing the completion lock to serialize the accesses to
> > the
> > - * transaction state for simplicity, but it could be its own separate
> > synchro
> > - * as well. For now, this API is only used from within a workqueue
> > context;
> > - * raw_spin_lock() is enough.
> > - */
> > +/* API for virtchnl "transaction" support ("xn" for short). */
> > +
> >  /**
> >   * idpf_vc_xn_lock - Request exclusive access to vc transaction
> >   * @xn: struct idpf_vc_xn* to access
> >   */
> >  #define idpf_vc_xn_lock(xn)			\
> > -	raw_spin_lock(&(xn)->completed.wait.lock)
> > +	spin_lock(&(xn)->lock)
> >
> >  /**
> >   * idpf_vc_xn_unlock - Release exclusive access to vc transaction
> >   * @xn: struct idpf_vc_xn* to access
> >   */
> >  #define idpf_vc_xn_unlock(xn)		\
> > -	raw_spin_unlock(&(xn)->completed.wait.lock)
> > +	spin_unlock(&(xn)->lock)
> >
> >  /**
> >   * idpf_vc_xn_release_bufs - Release reference to reply buffer(s) and
> > @@ -338,6 +333,7 @@ static void idpf_vc_xn_init(struct
> > idpf_vc_xn_manager *vcxn_mngr)
> >  		xn->state =3D IDPF_VC_XN_IDLE;
> >  		xn->idx =3D i;
> >  		idpf_vc_xn_release_bufs(xn);
> > +		spin_lock_init(&xn->lock);
> >  		init_completion(&xn->completed);
> >  	}
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
> > b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
> > index fe065911ad5a..6876e3ed9d1b 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
> > @@ -42,8 +42,8 @@ typedef int (*async_vc_cb) (struct idpf_adapter *,
> > struct idpf_vc_xn *,
> >   * struct idpf_vc_xn - Data structure representing virtchnl
> > transactions
> >   * @completed: virtchnl event loop uses that to signal when a reply
> > is
> >   *	       available, uses kernel completion API
> > - * @state: virtchnl event loop stores the data below, protected by
> > the
> > - *	   completion's lock.
> > + * @lock: protects the transaction state fields below
> > + * @state: virtchnl event loop stores the data below, protected by
> > + @lock
> >   * @reply_sz: Original size of reply, may be > reply_buf.iov_len; it
> > will be
> >   *	      truncated on its way to the receiver thread according to
> >   *	      reply_buf.iov_len.
> > @@ -58,6 +58,7 @@ typedef int (*async_vc_cb) (struct idpf_adapter *,
> > struct idpf_vc_xn *,
> >   */
> >  struct idpf_vc_xn {
> >  	struct completion completed;
> > +	spinlock_t lock;
> >  	enum idpf_vc_xn_state state;
> >  	size_t reply_sz;
> >  	struct kvec reply;
> > --
> > 2.37.3
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Tested-by: Samuel Salin <Samuel.salin@intel.com>

