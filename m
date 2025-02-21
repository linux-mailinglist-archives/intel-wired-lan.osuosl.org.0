Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 442F4A3F4B0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 13:46:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3F4F40E22;
	Fri, 21 Feb 2025 12:46:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ipXfz-EVESuf; Fri, 21 Feb 2025 12:46:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8C7540E3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740141969;
	bh=/Tfv0EEdVme0KWaGdEUmMpR5m/lbxMFtPG9JPvEQOQE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7EzwrX6X3kBsdbVcg9R+Gc20eBYzqslUVyD6Epqanny8MfNpjcX5TyJHj0QHbLW+E
	 hZJiV/eMj1ETAJFUWsmUGP2nDmGfGH6QzGHNf7Iz/oLCjEDh+BPOvU2ALDvPzACWf3
	 Q385CC4gpYWDqsPUZ4vl0DBI6Ee5n+Zuv/WDZl9l3BHunHwr4MWxJyCwF5ioa+ccUq
	 D4GMnFr1ZcProgP49NtajnXN9KclF2MMh2p/Artu6/IXTfqrmgszmGk1yttDK7GqfO
	 Ruhb4QjbIakpe4o5yY2ooQC233diZS6svJBrdgpl21nA9wnoJURnZwjTSsjaQTJouM
	 I/BstyhVbA4lQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8C7540E3D;
	Fri, 21 Feb 2025 12:46:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CDC76B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:46:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1A1CE6077F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:46:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3a_V2XExiww0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 12:46:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0DA4560773
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DA4560773
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0DA4560773
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:46:01 +0000 (UTC)
X-CSE-ConnectionGUID: JGiDwu12Rs2Y4/Y6VQhEEQ==
X-CSE-MsgGUID: 1PVulXLlS4+JllSwHe0ZMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="58367338"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="58367338"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 04:46:01 -0800
X-CSE-ConnectionGUID: 9rF1wbh3RS+67fPkjgKOXg==
X-CSE-MsgGUID: msUoGyq4Ssa+a5C+OiCx5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="138577297"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Feb 2025 04:46:00 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 21 Feb 2025 04:45:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 21 Feb 2025 04:45:59 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Feb 2025 04:45:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GJdMYBKV0eLLozPX1t6t3F2c8qy5f+2W7Zv0t7F4HpntBiJu3aX9epHkeEgIaBEeBomzZ/EO2lrj1F9ANxSIB060kJz2txbGXhcJyT/E/zZ8p3ljQfNmN6vjqMocYikyw+9EjfpCLHnOfyXefgQ/ubpBdwUmnrEMn+g42WyS+QQMvZilQeWGK5CHKDQW+S4oftFI/AGLU4dnTUbmEIQcVJRgLL79/WOeXEGs0VhS3ObZz0WolNnaFYLBvk7aNs+moLHeSNMvsxj4tsW+S5mSwf8QmjqODi06hF8iznhRy7DBLaRcNhnXBR9EsP9Hi4hgXGc8U/xRr5QkixzrVILRQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Tfv0EEdVme0KWaGdEUmMpR5m/lbxMFtPG9JPvEQOQE=;
 b=Pc05SNNrNXmVMnc/xz3Ph3NIbIGotkuCmQRozrn9EI2ASSu41vubdIkI463WBLI2ZoXDo9tLKSvdyUMBeKZBFs2KYSbb8rUdND7WdgYyaeH7THq+6HYpr+UBdBGNg73LhIOJCqwk0tbzMqgdXOM985I5VZvy8VWLXXIx4DHPDe0ZXclPoWf3bEut2DVc0BHhJiGSJrIRJByV5HjjOai4bl2T/V9uRP+OxTvSwH7PYJveLgm99eSiFwC6KPEQQCX14OUTzs0iB2qvdzktM2KMnovp/DjxDwoV83Cio671TNJzp91ZwPt55sL9xYeksOAhTzb+cTlEGQazuukReKdRTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.17; Fri, 21 Feb
 2025 12:44:52 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.8466.015; Fri, 21 Feb 2025
 12:44:51 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, "Damato, Joe" <jdamato@fastly.com>, Gerhard Engleder
 <gerhard@engleder-embedded.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 4/4] igb: Get rid of
 spurious interrupts
Thread-Index: AQHbgS+NepeuL7al1kiBwNFik3CprLNRujkg
Date: Fri, 21 Feb 2025 12:44:51 +0000
Message-ID: <SJ0PR11MB5866814B050BD326B60B660EE5C72@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
 <20250217-igb_irq-v2-4-4cb502049ac2@linutronix.de>
In-Reply-To: <20250217-igb_irq-v2-4-4cb502049ac2@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|PH0PR11MB5013:EE_
x-ms-office365-filtering-correlation-id: e28d79a4-5798-4131-3b5e-08dd527588f9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?N2FMVHVzems2bmFJZldLU2lRcEJ4MU56bURSQXhML0dJNjl5UTRzVkZ5Y3ZH?=
 =?utf-8?B?d3Npa0FTVzcxeG9KZWRnUjdOYnRCSU5SQ21TRWVuekV3Umpua3lhN1M5ZzBm?=
 =?utf-8?B?NFRzaTdGQlFDcFh6WFdubFZDNVBLT3NBN2tmZjk1bjhjbXVyZHMwTkQ3QUE0?=
 =?utf-8?B?VnZaaE83T0RwSkNrSk9QczFtc1lGZ3VwVjhxenJFV1FHUjZ2dDJNOGFVT3hi?=
 =?utf-8?B?aGpjaDE0UzBRcDdMa05KQ2wrVE40bzRPeVEyOHYyZUFKNVNLdmxrQ3ZUaG5n?=
 =?utf-8?B?SUZRVHZtRXlDOUE3WjNhK2VZM1JDVEUzcGtSdnhMNzdnQjJZaWEvc3RVVXd3?=
 =?utf-8?B?aS9IU3loclFqalVSanJ4b3QvTjF3MTJiY1NheUZYTkF1MUhLWmJhc2E0ZGox?=
 =?utf-8?B?YnNmeWlzMUs3MFo0RmdEWDFsS1ZoelRPWXh0bllNL1F2UHVsMEU0a255amk3?=
 =?utf-8?B?Y1VEaWk2V1lWMldIM3UyajhkcFJRQ2Qwbm1jbmV0dE9LU2gwM3BlTzJVbWUr?=
 =?utf-8?B?cnk2L2hGc0F6a1VZQVdzUUFDaHFCbUNzVHJyM2RRWXVsbWkwa0ZSY3B2dzhK?=
 =?utf-8?B?ekk2OEw5SFpyTEUyY1FYU3k5ZkJJT2REYWxDOVU3Z1dLWkM4c0p2WEtPZmhF?=
 =?utf-8?B?QmF5aityNXdtWlhmR2xkemFsb0htZnJyMlgybHdBcWRzelRtTkVyM1I1S01t?=
 =?utf-8?B?QkxJdnpPU3VxTjdVOUxKR1FiT1FoTVEvcVRiSmNQNjJCQmg5L3R2V3piTndz?=
 =?utf-8?B?amRaWXAwRXl6by9WSjc5Nko1SDF2QVRiZy94RjFCT2V5R0VWeDVYbHZXWVRn?=
 =?utf-8?B?LzhEN0pIdnNCamNTSVoyTFFFelFzU28xNDlPVWxWUndSeUpCMldxWExodFpl?=
 =?utf-8?B?K3lib0lIM0x4bFJ2YTF3ZzYvbkIyWFgrRzQ3WFhnYTRjbllLZFpjbklYU1Bo?=
 =?utf-8?B?Wlc2amI1UTNHR1dCengrMVJXMnJWc2lsTXU0dzZVVHhsZTA5M3VOb052RFk1?=
 =?utf-8?B?YW0vOUUvWXVxQWw3WEV5VTdjR0grU3FCQ2pXTkdZZHgzNGJ3MGszSlRsSjkz?=
 =?utf-8?B?VU5Dd2RTZUExWkZDLzRsV1lEQ2dOZkdrWmRYTDdHZkdsM3BTNU5ZNit3WThM?=
 =?utf-8?B?SHNSMTJENzZnYW5Va2xNeGFFNFArcS9FTThtSDMrbGwvUmE1Uno4MHM4Vzlr?=
 =?utf-8?B?Z1cwWUF2YnFmTkxXQmNtdk5DaEVRdFhJaVQ4YTB6V0tnemZDMlBEVm41SzNa?=
 =?utf-8?B?OVNaRUgySFJuMVk4Q1grellCaE4rSjRXZlljNkFJeUVOTkRGQUEva0R4bWN1?=
 =?utf-8?B?MzV6NC9ERVBidUk5Rll2VDNpbjREV1ZIL1NyQnB3Y1QzQzlRWWVrdTJBMVdG?=
 =?utf-8?B?OG5USkh6NzE1T21tbUxicHFTYU0xSW1VRUFJNS9RMVRPZEVLRkdtVjJlMTBs?=
 =?utf-8?B?cjdZUDY2WFZmcFc5NU5ES21LY05USzdpTENwMG8rc0NBTlBRbW5MMm5COWVL?=
 =?utf-8?B?bU1IVFBIZm81N0ozSUJoakhLN0F5VWZ6SHRuZVJ4cU5EekREMXV5b0dJdU8z?=
 =?utf-8?B?eFNUMFZCMnlORUYrMVRFVWxZK1JMdWtEWThWTjN1Mm96dHRCOTE2cjhzRXRx?=
 =?utf-8?B?UGhqZWtpZjhWaklUSUtFNjZzUmxlM0pEcWlyeHlCTW9NT3ZYbEszY3lua3ls?=
 =?utf-8?B?YTYyVXg2SWM5S2E3MzZFZGhUN2M1bEU4MUo1NHRFdWI5b1FqVVBCKy9mbEpz?=
 =?utf-8?B?WGpxMS9EdzZOTkFMeVdhVWFCWUZ1S1k3eXFNUUg5azVMb1V3T3dyWFRYVVlo?=
 =?utf-8?B?N2Nja1lUUGNuTllzRkZNTlNZeDVYM09rRVhXUFNma0FpZDVXZ0R0bmVsQkxO?=
 =?utf-8?B?Q0QycmFURWNKM3JnZ2JLQUduYkNoSWhkQzB6clphZVdwcTFLUE9HVEFaVS9p?=
 =?utf-8?Q?8uh9ykreGRrH371HV3XJiRmRLmBQqaoc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OUJlSjBrZktSK3M5NysvRlFMMkh5RFliR2lRNGd5R3htWnF0TjlHcHpSWE5G?=
 =?utf-8?B?SERDcGNiSkpqbStuZUNocm5MSGFvWVFVb0RHc2thaEViWWlrb2JUWW9QWWxG?=
 =?utf-8?B?Yk5naENiNW9MbGtIM1hwTm1TVnlUN0FrUzc2NmJ4MFN4Z2dtOXBCNFF2Q2tD?=
 =?utf-8?B?eVRSUlhLMDliSUVKUGJ1bVNrYjNIU3Y2bXZsYTYyVXRWVUcvQ0NqT0tXOHNq?=
 =?utf-8?B?cnpnSzg5THpzUG00SUt6Mk9hcEx2dHB4STZObkVHVmhjWFFIWHpPOTZsZmda?=
 =?utf-8?B?WXFiSDBuYWFYQXNJK05NbGFaUEVQcmpMYzdCclFFei9DTEVKakYyRnFRSFR5?=
 =?utf-8?B?cTBvNFQ4blNIbUl0eVVGL1hDT24wV3NkaTczNVUrWkRIK29FdFVwdEYwWk9R?=
 =?utf-8?B?Q3NLWVJ6anFPc2EveWZQYXVtdzJJZHNDQmZjQkM2Ulk3eGNaM3l3ZzFoa2lk?=
 =?utf-8?B?aTRQS2F1ay9xWHF4RUZRODFjSVN2ZVNjWHJTN3o2MmZpVVlFWHpHN3hGYVJO?=
 =?utf-8?B?ZEVrRWVrZnZmdnhnRmhJWG1tcjhxbkJ6cm1QM2VCU09NcEZ4NldpRDFLRlRh?=
 =?utf-8?B?bEgxLzRROWxqd2U1Yy9SU1BMeUFIRTdYbEJxbDhTNldCbFhPNXd5cmo3RHpB?=
 =?utf-8?B?MWpLaGhpR24weHFwekFMcUgvejVSQXBWR0FiSUJuSStvOHZWaW9RZnphemVS?=
 =?utf-8?B?S1FaNnRWVEJoZGFQYkExRU9uZHZpRitPWkQ1bXFMdjRlbWt1L3FCZ0tMeGJ2?=
 =?utf-8?B?VWk3a1NmUG5IN3UwbmxORTNtZEo5VFBxZXRyTmozMmt1b2p1QWFrN2pxOVF6?=
 =?utf-8?B?dDhEWEpnQ050VG5hN3VxSzk2cmVyTmhmdkpybmdLaEtZdDJ4OTBuNlBZN2Zy?=
 =?utf-8?B?Qkp4NmN2TG94TDZlT29DSUxWdnZBWFUzTjF4eWh3ejhuZUhnYStZODdFbHhI?=
 =?utf-8?B?dVgxbzR1Y1ZFYU9qMHc3RWZlOGQrWjBnMXRkSnUwSEgvOVRKanBoUDUrNXdi?=
 =?utf-8?B?VjVrQUcwUjdSWVZVelpmSVF3NVVuMlMrMmNDUmpqK0hKakxlVjRWUkQrQ241?=
 =?utf-8?B?QVp5czdWQmVXYUlzRzNwODdTek5ic21YazlMeHhBY09Mc29odHhLaFQveXU2?=
 =?utf-8?B?Q3VwK01QSEhHcU5paGRsZUdOWDJVTSs2NEk4YXNPLzhaMFo5Z0FIcld2QXl4?=
 =?utf-8?B?RmRlRDNIVCszcjNWeG03T0w0SzZTZ0cwMXM4eVBZZFc0QmNzTjdTQUF5K21v?=
 =?utf-8?B?d2J4QkVHVmY1SnVMNzRYN2Qva3IvRldNYTNXdzcyTjJBekJLejZ4UWk0NGNR?=
 =?utf-8?B?cXRLdHYyclhidXJDUEdkWUgzd0lKWkR3WU5ISkVoUVN1dXZXNUNqdW9GN25Z?=
 =?utf-8?B?YnRoV3NKUi9ESWprQ0M2N1ZpelBzQTRETXdvSlNFdG5aMnNOWHRXNHA0M0la?=
 =?utf-8?B?a0drL0ZLcXZ4OXNXUjBYS3BHYXpVQlBFdnRHQjBucndLYXA4TEJVMmtqSE5O?=
 =?utf-8?B?a2tIaGlrVDgwcHhrUVRGenl0N1BJaUJmQTZ3SVJsLzJKbHdYUG9xV01TT1Jt?=
 =?utf-8?B?S1BPeS96RmdZakRPRGJsRVBVU2IvRlZmVnlPU3MrSjNHUW9lNXptdTBWVEVE?=
 =?utf-8?B?cFhIUlFKSzVaUFBDbmJkK2grenZYT0xhYjVYaHV4WnJON2RsMmttM3d0ejZw?=
 =?utf-8?B?elVRdkVNOWFZcjc2dXpnMXhYN2VEQzVwWHlrRTdOdXQ1dXoyM3krMGlXc1JN?=
 =?utf-8?B?TU9EaUlnTHpYNkorZEhRVkxrSnpLYVMxREhLQUE4d1RGditSSHlwdXZJZElC?=
 =?utf-8?B?OXlHR0g5N01OTnB2YThOTUVrSDk2dVNzV1VIN0JDQUZzRy9CZEVvYk8vNTFk?=
 =?utf-8?B?cnI4ZFB1Ty90NDJnNGY4elptM3pKUUY3Tm1rdUFXVW1CcTVwMVBNak9uU1dl?=
 =?utf-8?B?SEtnT0tTazh3UnVmRzRpMng5aVcyWk05SUJmU3dNWlNLYWh4YURrTGUzT0wz?=
 =?utf-8?B?WDBVYVZUYVdqK2dWQ1IxZWR3Nm5SNzZnV2E2bUEySGF5VTFaVitEbXdJNnN6?=
 =?utf-8?B?b0ZpMmlpbC9yT3NINW41UG9DTUF6anBoV1ZpQ2lyRllPV1grS3BiempDSHFs?=
 =?utf-8?B?THNXZVc3eWlwZGNyV0lWYjJLaG56b212Mll4SlptdERobUNEWlhKTXpLR3Uw?=
 =?utf-8?B?dEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e28d79a4-5798-4131-3b5e-08dd527588f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2025 12:44:51.8743 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hFOW/uau739gUqDC7Wi2kpcmJDlFrRKk1TYTBrubv+TqGMgRbZx2jNT8/BG81weSli2h353TBD/6DLi8GFfd451It0MWSh3mukqD6vrvYmw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5013
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740141963; x=1771677963;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/Tfv0EEdVme0KWaGdEUmMpR5m/lbxMFtPG9JPvEQOQE=;
 b=ZWnSVBnX1XUCbHhw0dERANQFktHG2xypsIm14SeFyW7NiM0HxOAllgtk
 MuVmglvirf7UZwxY285v0fqsVs6Uqw40fPTsNucOlGJ5rLEPIIREwtleh
 l8wtxtZq41wQhbmZe1Zb5jjD2DGZT94vyrKh3IfTlUoa/7nDU/hJhl9n1
 DlrMRm7/HgbkGLNyXJ4OGKYPMOK/R/M8cMmn1aA4WnOLKQy0RK/CpjSSu
 gcUoh8VTRIFzPd7lbQPbRvidHB78iAjROo9EnqSdOSLJ4msLZ3ocRT4c7
 CK3ApGl6+ElTiVKw6kOTVvXz5JIzqNBNtY7iyFW5SvkqWjM6BKOlT4ktG
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZWnSVBnX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/4] igb: Get rid of
 spurious interrupts
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gS3Vy
dCBLYW56ZW5iYWNoDQo+IFNlbnQ6IE1vbmRheSwgRmVicnVhcnkgMTcsIDIwMjUgMTI6MzEgUE0N
Cj4gVG86IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtp
dHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+IENj
OiBBbmRyZXcgTHVubiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsgRGF2aWQgUy4gTWlsbGVyDQo+
IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29t
PjsgSmFrdWINCj4gS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pIDxwYWJl
bmlAcmVkaGF0LmNvbT47IFNlYmFzdGlhbg0KPiBBbmRyemVqIFNpZXdpb3IgPGJpZ2Vhc3lAbGlu
dXRyb25peC5kZT47IERhbWF0bywgSm9lDQo+IDxqZGFtYXRvQGZhc3RseS5jb20+OyBHZXJoYXJk
IEVuZ2xlZGVyIDxnZXJoYXJkQGVuZ2xlZGVyLQ0KPiBlbWJlZGRlZC5jb20+OyBpbnRlbC13aXJl
ZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsNCj4gS3VydCBL
YW56ZW5iYWNoIDxrdXJ0QGxpbnV0cm9uaXguZGU+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1s
YW5dIFtQQVRDSCBpd2wtbmV4dCB2MiA0LzRdIGlnYjogR2V0IHJpZCBvZiBzcHVyaW91cw0KPiBp
bnRlcnJ1cHRzDQo+IA0KPiBXaGVuIHJ1bm5pbmcgdGhlIGlnYyB3aXRoIFhEUC9aQyBpbiBidXN5
IHBvbGxpbmcgbW9kZSB3aXRoIGRlZmVycmFsIG9mIGhhcmQNCj4gaW50ZXJydXB0cywgaW50ZXJy
dXB0cyBzdGlsbCBoYXBwZW4gZnJvbSB0aW1lIHRvIHRpbWUuIFRoYXQgaXMgY2F1c2VkIGJ5IHRo
ZSBpZ2INCj4gdGFzayB3YXRjaGRvZyB3aGljaCB0cmlnZ2VycyBSeCBpbnRlcnJ1cHRzIHBlcmlv
ZGljYWxseS4NCj4gDQo+IFRoYXQgbWVjaGFuaXNtIGhhcyBiZWVuIGludHJvZHVjZWQgdG8gb3Zl
cmNvbWUgc2tiL21lbW9yeSBhbGxvY2F0aW9uDQo+IGZhaWx1cmVzIFsxXS4gU28gdGhlIFJ4IGNs
ZWFuIGZ1bmN0aW9ucyBzdG9wIHByb2Nlc3NpbmcgdGhlIFJ4IHJpbmcgaW4gY2FzZSBvZg0KPiBz
dWNoIGZhaWx1cmUuIFRoZSB0YXNrIHdhdGNoZG9nIHRyaWdnZXJzIFJ4IGludGVycnVwdHMgcGVy
aW9kaWNhbGx5IGluIHRoZSBob3BlDQo+IHRoYXQgbWVtb3J5IGJlY2FtZSBhdmFpbGFibGUgaW4g
dGhlIG1lYW4gdGltZS4NCj4gDQo+IFRoZSBjdXJyZW50IGJlaGF2aW9yIGlzIHVuZGVzaXJhYmxl
IGZvciByZWFsIHRpbWUgYXBwbGljYXRpb25zLCBiZWNhdXNlIHRoZQ0KPiBkcml2ZXIgaW5kdWNl
ZCBSeCBpbnRlcnJ1cHRzIHRyaWdnZXIgYWxzbyB0aGUgc29mdGlycSBwcm9jZXNzaW5nLiBIb3dl
dmVyLCBhbGwNCj4gcmVhbCB0aW1lIHBhY2tldHMgc2hvdWxkIGJlIHByb2Nlc3NlZCBieSB0aGUg
YXBwbGljYXRpb24gd2hpY2ggdXNlcyB0aGUgYnVzeQ0KPiBwb2xsaW5nIG1ldGhvZC4NCj4gDQo+
IFRoZXJlZm9yZSwgb25seSB0cmlnZ2VyIHRoZSBSeCBpbnRlcnJ1cHRzIGluIGNhc2Ugb2YgcmVh
bCBhbGxvY2F0aW9uIGZhaWx1cmVzLg0KPiBJbnRyb2R1Y2UgYSBuZXcgZmxhZyBmb3Igc2lnbmFs
aW5nIHRoYXQgY29uZGl0aW9uLg0KPiANCj4gRm9sbG93IHRoZSBzYW1lIGxvZ2ljIGFzIGluIGNv
bW1pdCA4ZGNmMmMyMTIwNzggKCJpZ2M6IEdldCByaWQgb2Ygc3B1cmlvdXMNCj4gaW50ZXJydXB0
cyIpLg0KPiANCj4gWzFdIC0NCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvdGdseC9oaXN0b3J5LmdpdC9jb21taXQvP2lkPTMNCj4gYmU1MDc1NDdlNjE3
N2U1YzgwODU0NGJkNmEyZWZhMmM3ZjFkNDM2DQo+IA0KPiBSZXZpZXdlZC1ieTogSm9lIERhbWF0
byA8amRhbWF0b0BmYXN0bHkuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBLdXJ0IEthbnplbmJhY2gg
PGt1cnRAbGludXRyb25peC5kZT4NClJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYi9pZ2IuaCAgICAgIHwgIDMgKystDQo+ICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYyB8IDI5DQo+ICsrKysrKysrKysrKysrKysrKysrKysr
KystLS0tICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX3hzay5jDQo+IHwgIDEg
Kw0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2IuaA0K
PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2IuaA0KPiBpbmRleA0KPiA3OWVj
YTM4NWE3NTFiZmRhZmRmMzg0OTI4YjZjYzFiMzUwYjIyNTYwLi5mMzRlYWQ4MjQzZTlmMDE3NmEw
NjgNCj4gMjk5MTM4YzVjMTZmN2ZhYWIyZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWdiL2lnYi5oDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYi9pZ2IuaA0KPiBAQCAtMzkxLDcgKzM5MSw4IEBAIGVudW0gZTEwMDBfcmluZ19mbGFnc190
IHsNCj4gIAlJR0JfUklOR19GTEFHX1JYX0xCX1ZMQU5fQlNXQVAsDQo+ICAJSUdCX1JJTkdfRkxB
R19UWF9DVFhfSURYLA0KPiAgCUlHQl9SSU5HX0ZMQUdfVFhfREVURUNUX0hBTkcsDQo+IC0JSUdC
X1JJTkdfRkxBR19UWF9ESVNBQkxFRA0KPiArCUlHQl9SSU5HX0ZMQUdfVFhfRElTQUJMRUQsDQo+
ICsJSUdCX1JJTkdfRkxBR19SWF9BTExPQ19GQUlMRUQsDQo+ICB9Ow0KPiANCj4gICNkZWZpbmUg
cmluZ191c2VzX2xhcmdlX2J1ZmZlcihyaW5nKSBcDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lnYi9pZ2JfbWFpbi5jDQo+IGluZGV4DQo+IDA1NDM3NmQ2NDhkYTg4M2YzNWQxZGVl
NWY4Nzk0ODdiOGFkZmQ1NDAuLjI1YWJlN2Q4YWI0MDBmNjNjYTliDQo+IDRlODdjOWI1ZjJjMTUz
MTY0ODVhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdi
X21haW4uYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4u
Yw0KPiBAQCAtNTc1NSwxMSArNTc1NSwyOSBAQCBzdGF0aWMgdm9pZCBpZ2Jfd2F0Y2hkb2dfdGFz
ayhzdHJ1Y3QNCj4gd29ya19zdHJ1Y3QgKndvcmspDQo+ICAJaWYgKGFkYXB0ZXItPmZsYWdzICYg
SUdCX0ZMQUdfSEFTX01TSVgpIHsNCj4gIAkJdTMyIGVpY3MgPSAwOw0KPiANCj4gLQkJZm9yIChp
ID0gMDsgaSA8IGFkYXB0ZXItPm51bV9xX3ZlY3RvcnM7IGkrKykNCj4gLQkJCWVpY3MgfD0gYWRh
cHRlci0+cV92ZWN0b3JbaV0tPmVpbXNfdmFsdWU7DQo+IC0JCXdyMzIoRTEwMDBfRUlDUywgZWlj
cyk7DQo+ICsJCWZvciAoaSA9IDA7IGkgPCBhZGFwdGVyLT5udW1fcV92ZWN0b3JzOyBpKyspIHsN
Cj4gKwkJCXN0cnVjdCBpZ2JfcV92ZWN0b3IgKnFfdmVjdG9yID0gYWRhcHRlci0+cV92ZWN0b3Jb
aV07DQo+ICsJCQlzdHJ1Y3QgaWdiX3JpbmcgKnJ4X3Jpbmc7DQo+ICsNCj4gKwkJCWlmICghcV92
ZWN0b3ItPnJ4LnJpbmcpDQo+ICsJCQkJY29udGludWU7DQo+ICsNCj4gKwkJCXJ4X3JpbmcgPSBh
ZGFwdGVyLT5yeF9yaW5nW3FfdmVjdG9yLT5yeC5yaW5nLQ0KPiA+cXVldWVfaW5kZXhdOw0KPiAr
DQo+ICsJCQlpZiAodGVzdF9iaXQoSUdCX1JJTkdfRkxBR19SWF9BTExPQ19GQUlMRUQsDQo+ICZy
eF9yaW5nLT5mbGFncykpIHsNCj4gKwkJCQllaWNzIHw9IHFfdmVjdG9yLT5laW1zX3ZhbHVlOw0K
PiArCQkJCWNsZWFyX2JpdChJR0JfUklOR19GTEFHX1JYX0FMTE9DX0ZBSUxFRCwNCj4gJnJ4X3Jp
bmctPmZsYWdzKTsNCj4gKwkJCX0NCj4gKwkJfQ0KPiArCQlpZiAoZWljcykNCj4gKwkJCXdyMzIo
RTEwMDBfRUlDUywgZWljcyk7DQo+ICAJfSBlbHNlIHsNCj4gLQkJd3IzMihFMTAwMF9JQ1MsIEUx
MDAwX0lDU19SWERNVDApOw0KPiArCQlzdHJ1Y3QgaWdiX3JpbmcgKnJ4X3JpbmcgPSBhZGFwdGVy
LT5yeF9yaW5nWzBdOw0KPiArDQo+ICsJCWlmICh0ZXN0X2JpdChJR0JfUklOR19GTEFHX1JYX0FM
TE9DX0ZBSUxFRCwgJnJ4X3JpbmctDQo+ID5mbGFncykpIHsNCj4gKwkJCWNsZWFyX2JpdChJR0Jf
UklOR19GTEFHX1JYX0FMTE9DX0ZBSUxFRCwNCj4gJnJ4X3JpbmctPmZsYWdzKTsNCj4gKwkJCXdy
MzIoRTEwMDBfSUNTLCBFMTAwMF9JQ1NfUlhETVQwKTsNCj4gKwkJfQ0KPiAgCX0NCj4gDQo+ICAJ
aWdiX3Nwb29mX2NoZWNrKGFkYXB0ZXIpOw0KPiBAQCAtOTA5MCw2ICs5MTA4LDcgQEAgc3RhdGlj
IGludCBpZ2JfY2xlYW5fcnhfaXJxKHN0cnVjdCBpZ2JfcV92ZWN0b3INCj4gKnFfdmVjdG9yLCBj
b25zdCBpbnQgYnVkZ2V0KQ0KPiAgCQlpZiAoIXhkcF9yZXMgJiYgIXNrYikgew0KPiAgCQkJcnhf
cmluZy0+cnhfc3RhdHMuYWxsb2NfZmFpbGVkKys7DQo+ICAJCQlyeF9idWZmZXItPnBhZ2VjbnRf
YmlhcysrOw0KPiArCQkJc2V0X2JpdChJR0JfUklOR19GTEFHX1JYX0FMTE9DX0ZBSUxFRCwgJnJ4
X3JpbmctDQo+ID5mbGFncyk7DQo+ICAJCQlicmVhazsNCj4gIAkJfQ0KPiANCj4gQEAgLTkxNDks
NiArOTE2OCw3IEBAIHN0YXRpYyBib29sIGlnYl9hbGxvY19tYXBwZWRfcGFnZShzdHJ1Y3QgaWdi
X3JpbmcNCj4gKnJ4X3JpbmcsDQo+ICAJcGFnZSA9IGRldl9hbGxvY19wYWdlcyhpZ2JfcnhfcGdf
b3JkZXIocnhfcmluZykpOw0KPiAgCWlmICh1bmxpa2VseSghcGFnZSkpIHsNCj4gIAkJcnhfcmlu
Zy0+cnhfc3RhdHMuYWxsb2NfZmFpbGVkKys7DQo+ICsJCXNldF9iaXQoSUdCX1JJTkdfRkxBR19S
WF9BTExPQ19GQUlMRUQsICZyeF9yaW5nLT5mbGFncyk7DQo+ICAJCXJldHVybiBmYWxzZTsNCj4g
IAl9DQo+IA0KPiBAQCAtOTE2NSw2ICs5MTg1LDcgQEAgc3RhdGljIGJvb2wgaWdiX2FsbG9jX21h
cHBlZF9wYWdlKHN0cnVjdCBpZ2JfcmluZw0KPiAqcnhfcmluZywNCj4gIAkJX19mcmVlX3BhZ2Vz
KHBhZ2UsIGlnYl9yeF9wZ19vcmRlcihyeF9yaW5nKSk7DQo+IA0KPiAgCQlyeF9yaW5nLT5yeF9z
dGF0cy5hbGxvY19mYWlsZWQrKzsNCj4gKwkJc2V0X2JpdChJR0JfUklOR19GTEFHX1JYX0FMTE9D
X0ZBSUxFRCwgJnJ4X3JpbmctPmZsYWdzKTsNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiAgCX0NCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX3hzay5j
DQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl94c2suYw0KPiBpbmRleA0K
PiBhNWFkMDkwZGZlOTRiNmFmYzgxOTRmZTM5ZDI4Y2RkNTFjNzA2N2IwLi40NzM0NGVlMWVkN2Yy
OWJkNjgwNTUNCj4gNDg1NzAyYTg3ZGYzYjg5MjJlOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl94c2suYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2IvaWdiX3hzay5jDQo+IEBAIC00MTcsNiArNDE3LDcgQEAgaW50IGlnYl9j
bGVhbl9yeF9pcnFfemMoc3RydWN0IGlnYl9xX3ZlY3RvciAqcV92ZWN0b3IsDQo+ICAJCS8qIGV4
aXQgaWYgd2UgZmFpbGVkIHRvIHJldHJpZXZlIGEgYnVmZmVyICovDQo+ICAJCWlmICghc2tiKSB7
DQo+ICAJCQlyeF9yaW5nLT5yeF9zdGF0cy5hbGxvY19mYWlsZWQrKzsNCj4gKwkJCXNldF9iaXQo
SUdCX1JJTkdfRkxBR19SWF9BTExPQ19GQUlMRUQsICZyeF9yaW5nLQ0KPiA+ZmxhZ3MpOw0KPiAg
CQkJYnJlYWs7DQo+ICAJCX0NCj4gDQo+IA0KPiAtLQ0KPiAyLjM5LjUNCg0K
