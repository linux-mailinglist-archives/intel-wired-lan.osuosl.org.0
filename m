Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08986D17091
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 08:35:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9203982353;
	Tue, 13 Jan 2026 07:35:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XAQ91B1qda0x; Tue, 13 Jan 2026 07:35:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D36B8822F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768289707;
	bh=ERO6e94Q5a1+B03/1eGaaYJLOAILEILiKW6otWjIxyw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wGg0QIU/V9a7Yu+O88eF/+giGKGSoOcYTvMafzQ3ar5Xpb8RvOdN/I7NyoQTHqjv/
	 tQfRVzUjRw/iJlbk0XK6gYY9oW65vYAqOPxwLm/BleHBKThM1eH7Tmv8bBLlez9FWG
	 JLwgy0eMHIGJnczwO4czHB2hQLN5snjaID1rsbdA9XFlCJBznXml/Uac5vIh3GVPiX
	 h2UVEOBXInFDYpUD2tDBD7/E20urnPCETI9CB+tH0uS/vx1ST6NuoqreicJ+G2225z
	 ZYsL7mogvWui1jWgU58M1H5ItnwczVAzUI91oWKkuFCJfvq33Uj/+0kGjc82M1YjN3
	 dNlRJQjsy+o6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D36B8822F7;
	Tue, 13 Jan 2026 07:35:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F1231231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 07:35:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E22C4403BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 07:35:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9nN8XjezN80V for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 07:35:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0B4A24009B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B4A24009B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B4A24009B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 07:35:05 +0000 (UTC)
X-CSE-ConnectionGUID: NfPTU1mbS+aCS3kUbQzhUg==
X-CSE-MsgGUID: PKHnJWDiRdCah4cENNRo+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="57125492"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="57125492"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 23:35:05 -0800
X-CSE-ConnectionGUID: mNZI7lpzTR6nm0+QEbz4+A==
X-CSE-MsgGUID: Tr6hBonOQE6eSIwjXd1LYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="204597648"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 23:35:05 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 23:35:04 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 12 Jan 2026 23:35:04 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.27) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 23:35:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JyLzUONkKToCEqGiDgASoGUNcXRrX+lSMhKGC/msVYHF4rY7MkynN2tZGRcfT8P1yyQ/so2vKObQqF/w5plW9iW7ND8hiB31lAmVNRpQQ9ABTuHnDSZfYVd6wkqnuAfkxC3/vGuuhxx08xblCeESxckmvKuJby29x3UvDEyIZAQoOo5PQQ+3nx79dF5SHUWr4WDHfYZrCkfj1WEugWSMgv3wmWMK3ov55kZU0jwKo/3zOjbzqBRJ6I4C1UUz2v6CFYSUKObpGf7C/F3YAZoJt8031H1b+u/MANXiMmBomx1OUOGDaAKTVt/17UuHdJdjsFH8Ps6puYdsp3U30F5dSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ERO6e94Q5a1+B03/1eGaaYJLOAILEILiKW6otWjIxyw=;
 b=MfBqJP/SnjVfyLueM98mXizJv/G1qwM5MXPQCCf7TLiiaybVxL2/ALID/X2RqCiJiMi3ZZ6noVs0J9TPkMmpsce4eSCBSRYsLS86+KxT5a0XpLDTNS+r7au4rHfvQc+C2yaoRnOZ6Omz1FWlIrxNYlGMUKPkFf4b4QIPu0Y1scCNLPtC7O5/m705r8N8ewSYXPVlosIv3ftfMDJe7WUYX7/azb7n1XyDytI/LXznK/63IhusRHyx+R32xn6zDFT6ceLAVeejD3gy+CSA8tGOqva/nI2TJdnVcSlsfILeGtySq7TkQatXWFEQ7U39/2Bp+8vcwkdlX3vi064eYSUCBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::31) by SA0PR11MB4654.namprd11.prod.outlook.com
 (2603:10b6:806:98::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 07:34:57 +0000
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876]) by DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876%6]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 07:34:57 +0000
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
Thread-Topic: [Intel-wired-lan] [PATCH 2/2] idpf: skip deallocating txq
 group's txqs if it is NULL.
Thread-Index: AQHchBito4glszyALE+/2kJ5dIevULVPte/w
Date: Tue, 13 Jan 2026 07:34:57 +0000
Message-ID: <DS4PPF7551E655297416F46D9B28A64BF2AE58EA@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <20260112230944.3085309-1-boolli@google.com>
 <20260112230944.3085309-3-boolli@google.com>
In-Reply-To: <20260112230944.3085309-3-boolli@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7551E6552:EE_|SA0PR11MB4654:EE_
x-ms-office365-filtering-correlation-id: 9734737b-4d81-471d-27e2-08de5276405b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?MzhzK01pL3NsZHBuQ2RjUmpTSVdUNGtERXZ2cDRudXNkNlZKSWErSDBQZVFP?=
 =?utf-8?B?YXpTdmZUbmMyVUxGZTFzSnJnSkZ3YnpJNHBvdklVUUVzQWtNVHBKYWlqUWd3?=
 =?utf-8?B?anI2U2svVlVqVjI3YXU4dStNY2JUZWJKTFRPZE9JeXpZZ1pPSVRQSGdQNmxX?=
 =?utf-8?B?M0p2UW9OaVpObklpcUpVRXVRRnd1dlA2MDU2eWpwRXhSUXlMYlRVdWNBRWxh?=
 =?utf-8?B?cG85US9haVYvd3FCaEhqdUNRLzJyd2pDT2ZCcDc0TUdMcVZaKzdIaWlGM04r?=
 =?utf-8?B?UTlzVUVtbUNJK0ZIajNTRmk0ZGpLVmZSU21XQzB2cEdtNXRCV2VwSml5eStI?=
 =?utf-8?B?Rk45enJNTFYzb0V6MU5SY3ZTT0txMi9hbmZZNSt2MzcvUVBOL2pOZk43Sk53?=
 =?utf-8?B?RnJ5bjNzZTh1ZTA4RkdFeXhOUFFTeHQwKytFeEZCblV1YlJ6aWNMd0pScmFX?=
 =?utf-8?B?TTVic1Q5cElaQVBPdUUxb25DSHpKa2k4UDJvZ1ZHNUIxY0h1eGRrOUx0eUk1?=
 =?utf-8?B?TC9PSjZSK2dnbE9aSmhIRFhhVUxUQXR3aFhrUDYxd05lc1IvQTFjdXVUS0tu?=
 =?utf-8?B?UkJ4SWlhdENpdFBmbGxDeTFhZ3EveVBkTHpqekphcVdsUFNLeURFMGxiOXgx?=
 =?utf-8?B?c3hFS0YyYlZJaEozSDh4RWpPd1d6VUFiQUI1MW1rWGpVZjM0dFBDSjVNc3hv?=
 =?utf-8?B?TTRrd0ZwSzM0NmxmSG1BMjc1K3RHb2xXcG4xcHRxcHcyTGFJNDBXK1daWXFi?=
 =?utf-8?B?LzNYajViOGZGazBrVzc5Sm5aZWtGZ1ZmWHZZNmtvVDZZMkxVWmFSTlNZcHU4?=
 =?utf-8?B?STdjNjFNaC9EcGlIT25WL1RkQXNpV1ZIM3dIektsS1RyclFQazVOOW9Lc2JJ?=
 =?utf-8?B?d1hJclhNd0lvQTVUU1cvZGRsTWU2c1htc09oQUlHVURObHM3MEVHaTMxOWd4?=
 =?utf-8?B?eU42TVAwandQK0dmbWZqSFZNVVp4MVNtL0o0cnJhclJjK0daS1A3MWJ4ZWNU?=
 =?utf-8?B?d3lud1hETXBGTWtjUjBkUUlOckc0bkRHeDM4K3NRTkErbXIyOFIwem9UeDF4?=
 =?utf-8?B?RG1KU0kxWW5Mc1pLSTc5Ni9IamNsd2RMYjN6L01wWkxqdzN5d2xIR05hdGR5?=
 =?utf-8?B?WFJiWWk1ZmM2Y3lxdFZ5M3JGWE5JMzNUTnlHdlBwamVtMVR5YllCMDdGY1Rt?=
 =?utf-8?B?cmpJYyt6NWtNbUJTQXJzZGMxbGoyb3hZcTczZFRmbVhLTHR5S2ZMQXNyN0xW?=
 =?utf-8?B?ZnlXNEtJcUZEcGlZclZiUSt5UElnMEFrOHNSRXlBaUFzS1QwM0ZtVWlQL3pM?=
 =?utf-8?B?R1NjZG5idzh1WC9ncmZCbSt0RGF5alg1bmk5WjF0VGZ1SjNnVHMvYllhK0NZ?=
 =?utf-8?B?MCtMQTVvYXRPbFZsM05KaDRCSUZqc05MUkxWVW5ycXZNQWQ5M0QzOExsMm8y?=
 =?utf-8?B?SHFhTjdCaEthNXlkbXJteFlWeU5BTjhUSGc1amd6blJySlZ2RjhTeTVjYzhz?=
 =?utf-8?B?M2hPcG1oSmphakVmbGFWWVZPYWxMM2kwdEZnR0U1VTZzNzVPSUx6aWQwZmx2?=
 =?utf-8?B?dVRwcTdsUjF4SzA0b05sWEJ2TlpzVURrdWJQTTUvd1dva2p6UHY1bkZEam42?=
 =?utf-8?B?U1F4aFRtZlNjMVpkMWozZ1BEeTlvdk53UGRLMjRmVXhHNlNKVHpTNU0waEdw?=
 =?utf-8?B?WUV3TWhZaVZTTmY1NFQ2L1JMNk1ZbXo2L1JENHVPSW1kMmlXYm4vTFdvQVFL?=
 =?utf-8?B?d0dTblZONENiVlZKWHkvSjdJcjdvVmM4MGZrYitLamZwVzZPcklhczR0Wlpy?=
 =?utf-8?B?YlJKdjhINEpLSjFsNjdPZkQvNWRzN0krTUJiL3lkL3RTT2xwT0VxS0RRbSth?=
 =?utf-8?B?M0s4TGl2YkoxbGx3T1UvY21iWDlSR3hZdWhXMFJjMisreEtmd0ZIbmpKc3JS?=
 =?utf-8?B?MENEZ1pZUy9jUFFVUHZDcCtwRS9id2lZL3dobzdaM1lxWG9aOXFaY1lINm9W?=
 =?utf-8?B?cEFhSXZhUnhJR2RMWm1Ua2Q2TEd4eUhPaWJ4TGdSQk1vVWxHdm9KMjZQYXls?=
 =?utf-8?Q?hleMCr?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7551E6552.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L05FcnNzcTAyZGFUaklPQ0E0Q05qc1kvOVZTSmJac2dNQ1ZyMUlZNjV2a0tT?=
 =?utf-8?B?NHVoQ3N4UWt6MmpPOFNUZDVxT090ekRsejM3MEhKUmFTOXBZYzVGd0dtM2hx?=
 =?utf-8?B?c2JwckFFcVRWT0htQUxkbVRjQVpWWTFOUVgvRjdLa1NTMDBDcGdmcjFHMlN2?=
 =?utf-8?B?ZVR1UC9PYnFWM2hYbHlzdEdQTXcvKzdFTWN3dXYwelo2bnFKSktvbnN5WjBV?=
 =?utf-8?B?WUlyaTVOTGppY1JXWjlXcWp5THIzUnJXWHgvZ1AyOVhVRXlQTXV6eWtVMlNM?=
 =?utf-8?B?Q2M4dUZITGFwd2E4WnJsYkRhQ2FNV3ZZT0hTdGRmSmwvQXI5TUc3NS8xMGwx?=
 =?utf-8?B?T1Z6NEZxK1g3YWNBdUt5TzIxOHE5aHhaMi9LZGlhVjBtbkRIcXVBM0JhZmsr?=
 =?utf-8?B?ZUs3cEl0V2pLQkZNZXpzdlJmNmVkdkhhV0xnNWdlVC85OXhKREw4V0NmNFp3?=
 =?utf-8?B?MHFUc21IbzlkMUszRVZqelk5a1kvQnN3TVZ6bFU5dnl0MUxkZ3N6dzNDb01p?=
 =?utf-8?B?bUpSVVo4MUVQeTdtdW9qQVNBOG8wWXBJWnVLYzJKc3g1dk5WUFE0Rk9LYXdG?=
 =?utf-8?B?dFpZd1RNK0pwWmkrZnFFSTFCWmlHNlkrbVJCQlBOdE0xZjI0ejBRMGlVeEVJ?=
 =?utf-8?B?bVl5WTJiVnMwMnBMcXVxSU9mdjRhZU5YQXBQZzJSRy9vWEpubWpDY05ua0pa?=
 =?utf-8?B?cUIzaE03K1JlREREekdXbTdtMWV5bVpPRjdMZnJQRGFFcDVjdHdjRXRENXNQ?=
 =?utf-8?B?U1V4MGhxTUs5UitXSGlHMmFiQUJvTnpwVlkyWFdYS0RuMkQrMm1CNWFHaE0w?=
 =?utf-8?B?L3dMaUdSZ2k0UzJwUUZhZHFKQmpSR0Y4bHRueVoybGF1bzVpY096UDJFZCs0?=
 =?utf-8?B?RTd5MXlLWjdiTDEzYkJ5WXRSUXJzSkxzc1Bra2hWRmRlbnR1dkh6RDNmMU5n?=
 =?utf-8?B?N2E3dlpDeVFLcS9HYU9Oa3pCazc1M2IwRzhNd1RiV01FeG5IbmtZNXdUS3h6?=
 =?utf-8?B?S09SSzhrUzBzMld0cmxQblZFTStxc3kyQjFYZ1hvNUEvQXFIc3UxdWJydzR5?=
 =?utf-8?B?ZmFBOEJBSmdLSHl2VEZ4Y3pSQnMyclk3Wkh0SDBvR2Z2a0lENTFROFNGSU5w?=
 =?utf-8?B?QVRiVlpWUHhCY1paNVluSlRQT1U1ZXdBUmJmYkFaUHhBVGlja3NBQmhCb2JF?=
 =?utf-8?B?eHVrVmlFbFdsZTNVLzQ3emI0THV4STNJY3FqTTd0bGdxSmhYMmM1N2ZRYjdV?=
 =?utf-8?B?RlM5UStMZnNxZm94V01CdnN0ZkpUVmppS2s2SGRQbFFQM3NoYzBTQ1BDVitQ?=
 =?utf-8?B?aXNjNEh4R3hMcXFxTkJoN291dnJ6Zi9tYldQSDJ2eTN2VUJuSDJIN0ZTZXA0?=
 =?utf-8?B?cG13TEFId3l5clVDK3JwcWV1eDdkRk9xY2xlTUw4c01IaWx6VmVaU0d0YytU?=
 =?utf-8?B?dGF4enAyM0VaMFA4N1kzM21WQnhsMXZQbkgvSmZ6aEVyZXAxR3NQVzlYTEV6?=
 =?utf-8?B?VVI5R0k0N1lKMzZQcjVJR3Z1NEVublZPODRFY21CNU9WM3c3RTB2cTZEUHBF?=
 =?utf-8?B?WHplUkJTN3B5OFZad2UyTjk2M1pLamFkdzZTVXZMckxxM0Yydi9seGd2Q1lE?=
 =?utf-8?B?NUIrd3BGWENET3Vwdi9MdXg0UFZoR1pOcEhNOEFyeHloaUF5YUZKcVNnM21Y?=
 =?utf-8?B?WERNdHpHZ2ZicUFyQllSNWE3cnREMFJIR2N2eXpnZnhOdVlVTEdoMmJXU2FS?=
 =?utf-8?B?anN3bjhRZHJpUWFCTmRPMDgxRHpKekUwQWpIdTBlYzRWUWFSSi9nUWFWZmRu?=
 =?utf-8?B?SnpRUldWM2dkTVFFMFcvK09Nam9UdXhVeTVtZWMyUVVWei9ySk1YelIvek1F?=
 =?utf-8?B?cUt6NU9JdEpuOHNMVFVic1BXbVRpM0Y1UmZRT2NjMlEzVHVRZDlSNGlQUFRN?=
 =?utf-8?B?ZU9YM1M2MEU0Vk4xc0JVMVptUFB4dnUwMFIrTnpoZldXaUtNSTQwbDhLVWkz?=
 =?utf-8?B?bk5admRZbW5mTEdDZCsxcjJ4R2t3UStoRXh2YVVFVWxZaFRNWnk4Y0NrVGFo?=
 =?utf-8?B?UDhXZGFkRHN4SnpxOElESzhINkxHZ3dtNTUxd1VkemZKM0JkRkhnYnczSXRs?=
 =?utf-8?B?NDB3cVQ4TTRtcEIxM3dRa3pTdGhOb3V3M3VER1FNWndCVy9BMjhodG51VWlW?=
 =?utf-8?B?TjZVcDRaVlpicjh2Ym5MUlZhMS9acmk1d1pucVVJd0RiQmV6YW1mN3V6bjdz?=
 =?utf-8?B?eWdDd1AwcVVUY0x5WTA4ajhOZ2c4Z21KcWFQWmVnUjJLWE5BZ2l1aWFhUThC?=
 =?utf-8?B?SzB5L2hZSXZvcWw4RkszRFhNNXpqd1QwVmtOd1d6cEVGeFQ2Z2dFRFI4QXBZ?=
 =?utf-8?Q?87eMwfLx1p3FSq5M=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7551E6552.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9734737b-4d81-471d-27e2-08de5276405b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2026 07:34:57.2165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FJOwGu3R+qPMYcCzKAYKuf+/pLkecDMKxvkLSEucbra47ozk3JtK8zAVGp95lj4zsHRvXM7mnTc2rZcl4h2hty2IOiy5XF4o7LA4/C/grfM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4654
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768289706; x=1799825706;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ERO6e94Q5a1+B03/1eGaaYJLOAILEILiKW6otWjIxyw=;
 b=QHZMDaOIwpfAYstFnzT9DIleIc8uP1xESE1/Hm+Wd0qSHV40qIT/2W6m
 ZUlLB9XdUe5NJxBJlr/dFAUAjI+uTtdvkVo5GOtJ/YFovhWmHLzLRC0J6
 lPgpuAvd/eYxHlVgC/p4n3pyB/PojQ8UfzeY01cwCqXAQQ3Zk9nn5zSko
 goGkQVBfzTUDyMxy8CeBLQcYBWjKz6vxvlVOwmY2qa3WFGhsza9tIcxG9
 sr/AaJTyRdv973LIWTXCUd1Q9MMI9LScY8iF7LCOczYjW2rwJ7W/JTejE
 WMnPZYmf6OKwG5c7jll1zVR5UERZb8u0ZtbyZjN6ju4Q0tW6JVv4qSj07
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QHZMDaOI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 2/2] idpf: skip deallocating txq
 group's txqs if it is NULL.
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
TGkNCj4gU2VudDogVHVlc2RheSwgSmFudWFyeSAxMywgMjAyNiAxMjoxMCBBTQ0KPiBUbzogTmd1
eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwNCj4g
UHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IERhdmlkIFMuIE1pbGxl
cg0KPiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5v
cmc+OyBFcmljIER1bWF6ZXQNCj4gPGVkdW1hemV0QGdvb2dsZS5jb20+OyBpbnRlbC13aXJlZC1s
YW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgbGludXgt
a2VybmVsQHZnZXIua2VybmVsLm9yZzsgRGF2aWQNCj4gRGVjb3RpZ255IDxkZWNvdEBnb29nbGUu
Y29tPjsgU2luZ2hhaSwgQW5qYWxpDQo+IDxhbmphbGkuc2luZ2hhaUBpbnRlbC5jb20+OyBTYW11
ZHJhbGEsIFNyaWRoYXINCj4gPHNyaWRoYXIuc2FtdWRyYWxhQGludGVsLmNvbT47IEJyaWFuIFZh
enF1ZXogPGJyaWFudnZAZ29vZ2xlLmNvbT47IExpDQo+IExpIDxib29sbGlAZ29vZ2xlLmNvbT47
IFRhbnRpbG92LCBFbWlsIFMgPGVtaWwucy50YW50aWxvdkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6
IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCAyLzJdIGlkcGY6IHNraXAgZGVhbGxvY2F0aW5nIHR4
cQ0KPiBncm91cCdzIHR4cXMgaWYgaXQgaXMgTlVMTC4NCj4gDQo+IEluIGlkcGZfdHhxX2dyb3Vw
X2FsbG9jKCksIGlmIGFueSB0eHEgZ3JvdXAncyB0eHFzIGZhaWxlZCB0byBhbGxvY2F0ZQ0KPiBt
ZW1vcnk6DQo+IA0KPiAJZm9yIChqID0gMDsgaiA8IHR4X3FncnAtPm51bV90eHE7IGorKykgew0K
PiAJCXR4X3FncnAtPnR4cXNbal0gPSBremFsbG9jKHNpemVvZigqdHhfcWdycC0+dHhxc1tqXSks
DQo+IAkJCQkJICAgR0ZQX0tFUk5FTCk7DQo+IAkJaWYgKCF0eF9xZ3JwLT50eHFzW2pdKQ0KPiAJ
CQlnb3RvIGVycl9hbGxvYzsNCj4gCX0NCj4gDQo+IEl0IHdvdWxkIGNhdXNlIGEgTlVMTCBwdHIg
a2VybmVsIHBhbmljIGluIGlkcGZfdHhxX2dyb3VwX3JlbCgpOg0KPiANCj4gCWZvciAoaiA9IDA7
IGogPCB0eHFfZ3JwLT5udW1fdHhxOyBqKyspIHsNCj4gCQlpZiAoZmxvd19zY2hfZW4pIHsNCj4g
CQkJa2ZyZWUodHhxX2dycC0+dHhxc1tqXS0+cmVmaWxscSk7DQo+IAkJCXR4cV9ncnAtPnR4cXNb
al0tPnJlZmlsbHEgPSBOVUxMOw0KPiAJCX0NCj4gDQo+IAkJa2ZyZWUodHhxX2dycC0+dHhxc1tq
XSk7DQo+IAkJdHhxX2dycC0+dHhxc1tqXSA9IE5VTEw7DQo+IAl9DQo+IA0KPiBbICAgIDYuNTMy
NDYxXSBCVUc6IGtlcm5lbCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UsIGFkZHJlc3M6DQo+IDAw
MDAwMDAwMDAwMDAwNTgNCj4gLi4uDQo+IFsgICAgNi41MzQ0MzNdIFJJUDogMDAxMDppZHBmX3R4
cV9ncm91cF9yZWwrMHhjOS8weDExMA0KPiAuLi4NCj4gWyAgICA2LjUzODUxM10gQ2FsbCBUcmFj
ZToNCj4gWyAgICA2LjUzODYzOV0gIDxUQVNLPg0KPiBbICAgIDYuNTM4NzYwXSAgaWRwZl92cG9y
dF9xdWV1ZXNfYWxsb2MrMHg3NS8weDU1MA0KPiBbICAgIDYuNTM4OTc4XSAgaWRwZl92cG9ydF9v
cGVuKzB4NGQvMHgzZjANCj4gWyAgICA2LjUzOTE2NF0gIGlkcGZfb3BlbisweDcxLzB4YjANCj4g
WyAgICA2LjUzOTMyNF0gIF9fZGV2X29wZW4rMHgxNDIvMHgyNjANCj4gWyAgICA2LjUzOTUwNl0g
IG5ldGlmX29wZW4rMHgyZi8weGUwDQo+IFsgICAgNi41Mzk2NzBdICBkZXZfb3BlbisweDNkLzB4
NzANCj4gWyAgICA2LjUzOTgyN10gIGJvbmRfZW5zbGF2ZSsweDVlZC8weGY1MA0KPiBbICAgIDYu
NTQwMDA1XSAgPyByY3V0cmVlX2VucXVldWUrMHgxZi8weGIwDQo+IFsgICAgNi41NDAxOTNdICA/
IGNhbGxfcmN1KzB4ZGUvMHgyYTANCj4gWyAgICA2LjU0MDM3NV0gID8gYmFybl9nZXRfZW1wdHlf
c2hlYWYrMHg1Yy8weDgwDQo+IFsgICAgNi41NDA1OTRdICA/IF9fa2ZyZWVfcmN1X3NoZWFmKzB4
YjYvMHgxYTANCj4gWyAgICA2LjU0MDc5M10gID8gbmxhX3B1dF9pZmFsaWFzKzB4M2QvMHg5MA0K
PiBbICAgIDYuNTQwOTgxXSAgPyBrdmZyZWVfY2FsbF9yY3UrMHhiNS8weDNiMA0KPiBbICAgIDYu
NTQxMTczXSAgPyBrdmZyZWVfY2FsbF9yY3UrMHhiNS8weDNiMA0KPiBbICAgIDYuNTQxMzY1XSAg
ZG9fc2V0X21hc3RlcisweDExNC8weDE2MA0KPiBbICAgIDYuNTQxNTQ3XSAgZG9fc2V0bGluaysw
eDQxMi8weGZiMA0KPiBbICAgIDYuNTQxNzE3XSAgPyBzZWN1cml0eV9zb2NrX3Jjdl9za2IrMHgy
YS8weDUwDQo+IFsgICAgNi41NDE5MzFdICA/IHNrX2ZpbHRlcl90cmltX2NhcCsweDdjLzB4MzIw
DQo+IFsgICAgNi41NDIxMzZdICA/IHNrYl9xdWV1ZV90YWlsKzB4MjAvMHg1MA0KPiBbICAgIDYu
NTQyMzIyXSAgPyBfX25sYV92YWxpZGF0ZV9wYXJzZSsweDkyLzB4ZTUwDQo+IHJvW28gdCAgIHQg
bzYgLmQ1ZTRmMmE1dTRsMHRdLSAgPyBzZWN1cml0eV9jYXBhYmxlKzB4MzUvMHg2MA0KPiBbICAg
IDYuNTQyNzkyXSAgcnRubF9uZXdsaW5rKzB4OTVjLzB4YTAwDQo+IFsgICAgNi41NDI5NzJdICA/
IF9fcnRubF91bmxvY2srMHgzNy8weDcwDQo+IFsgICAgNi41NDMxNTJdICA/IG5ldGRldl9ydW5f
dG9kbysweDYzLzB4NTMwDQo+IFsgICAgNi41NDMzNDNdICA/IGFsbG9jYXRlX3NsYWIrMHgyODAv
MHg4NzANCj4gWyAgICA2LjU0MzUzMV0gID8gc2VjdXJpdHlfY2FwYWJsZSsweDM1LzB4NjANCj4g
WyAgICA2LjU0MzcyMl0gIHJ0bmV0bGlua19yY3ZfbXNnKzB4MmU2LzB4MzQwDQo+IFsgICAgNi41
NDM5MThdICA/IF9fcGZ4X3J0bmV0bGlua19yY3ZfbXNnKzB4MTAvMHgxMA0KPiBbICAgIDYuNTQ0
MTM4XSAgbmV0bGlua19yY3Zfc2tiKzB4MTZhLzB4MWEwDQo+IFsgICAgNi41NDQzMjhdICBuZXRs
aW5rX3VuaWNhc3QrMHgyMGEvMHgzMjANCj4gWyAgICA2LjU0NDUxNl0gIG5ldGxpbmtfc2VuZG1z
ZysweDMwNC8weDNiMA0KPiBbICAgIDYuNTQ0NzQ4XSAgX19zb2NrX3NlbmRtc2crMHg4OS8weGIw
DQo+IFsgICAgNi41NDQ5MjhdICBfX19fc3lzX3NlbmRtc2crMHgxNjcvMHgxYzANCj4gWyAgICA2
LjU0NTExNl0gID8gX19fX3N5c19yZWN2bXNnKzB4ZWQvMHgxNTANCj4gWyAgICA2LjU0NTMwOF0g
IF9fX3N5c19zZW5kbXNnKzB4ZGQvMHgxMjANCj4gWyAgICA2LjU0NTQ4OV0gID8gX19fc3lzX3Jl
Y3Ztc2crMHgxMjQvMHgxZTANCj4gWyAgICA2LjU0NTY4MF0gID8gcmN1dHJlZV9lbnF1ZXVlKzB4
MWYvMHhiMA0KPiBbICAgIDYuNTQ1ODY3XSAgPyByY3V0cmVlX2VucXVldWUrMHgxZi8weGIwDQo+
IFsgICAgNi41NDYwNTVdICA/IGNhbGxfcmN1KzB4ZGUvMHgyYTANCj4gWyAgICA2LjU0NjIyMl0g
ID8gZXZpY3QrMHgyODYvMHgyZDANCj4gWyAgICA2LjU0NjM4OV0gID8gcmN1dHJlZV9lbnF1ZXVl
KzB4MWYvMHhiMA0KPiBbICAgIDYuNTQ2NTc3XSAgPyBrbWVtX2NhY2hlX2ZyZWUrMHgyYy8weDM1
MA0KPiBbICAgIDYuNTQ2Nzg0XSAgX194NjRfc3lzX3NlbmRtc2crMHg3Mi8weGMwDQo+IFsgICAg
Ni41NDY5NzJdICBkb19zeXNjYWxsXzY0KzB4NmYvMHg4OTANCj4gWyAgICA2LjU0NzE1MF0gIGVu
dHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDc2LzB4N2UNCj4gWyAgICA2LjU0NzM5M10g
UklQOiAwMDMzOjB4N2ZjMWEzMzQ3YmQwDQo+IC4uLg0KPiBbICAgIDYuNTUxMzc1XSBSSVA6IDAw
MTA6aWRwZl90eHFfZ3JvdXBfcmVsKzB4YzkvMHgxMTANCj4gLi4uDQo+IFsgICAgNi41Nzg4NTZd
IFJlYm9vdGluZyBpbiAxMCBzZWNvbmRzLi4NCj4gDQo+IFdlIHNob3VsZCBza2lwIGRlYWxsb2Nh
dGluZyB0eHFzW2pdIGlmIGl0IGlzIE5VTEwgaW4gdGhlIGZpcnN0IHBsYWNlLg0KPiANCj4gVGVz
dGVkOiB3aXRoIHRoaXMgcGF0Y2gsIHRoZSBrZXJuZWwgcGFuaWMgbm8gbG9uZ2VyIGFwcGVhcnMu
DQo+IEZpeGVzOiAxYzMyNWFhYzEwYTggKCJpZHBmOiBjb25maWd1cmUgcmVzb3VyY2VzIGZvciBU
WCBxdWV1ZXMiKQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogTGkgTGkgPGJvb2xsaUBnb29nbGUuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMg
fCAzICsrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMNCj4gYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdHhyeC5jDQo+IGluZGV4IGI0ZGFi
NGE4ZWUxMWIuLjI1MjA3ZGE2Yzk5NWQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWRwZi9pZHBmX3R4cnguYw0KPiBAQCAtMTMxMSw2ICsxMzExLDkgQEAgc3RhdGljIHZv
aWQgaWRwZl90eHFfZ3JvdXBfcmVsKHN0cnVjdCBpZHBmX3Zwb3J0DQo+ICp2cG9ydCkNCj4gIAkJ
c3RydWN0IGlkcGZfdHhxX2dyb3VwICp0eHFfZ3JwID0gJnZwb3J0LT50eHFfZ3Jwc1tpXTsNCj4g
DQo+ICAJCWZvciAoaiA9IDA7IGogPCB0eHFfZ3JwLT5udW1fdHhxOyBqKyspIHsNCj4gKwkJCWlm
ICghdHhxX2dycC0+dHhxc1tqXSkNCj4gKwkJCQljb250aW51ZTsNCj4gKw0KPiAgCQkJaWYgKGZs
b3dfc2NoX2VuKSB7DQo+ICAJCQkJa2ZyZWUodHhxX2dycC0+dHhxc1tqXS0+cmVmaWxscSk7DQo+
ICAJCQkJdHhxX2dycC0+dHhxc1tqXS0+cmVmaWxscSA9IE5VTEw7DQo+IC0tDQo+IDIuNTIuMC40
NTcuZzZiNTQ5MWRlNDMtZ29vZw0KDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8
YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo=
