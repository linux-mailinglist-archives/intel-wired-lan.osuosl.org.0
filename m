Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Vmb6Ea6+K2rPEAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jun 2026 10:09:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5626677A7E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jun 2026 10:09:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=HgNH0uRB;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A77A9410F5;
	Fri, 12 Jun 2026 08:09:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G-k1rtnLhBJH; Fri, 12 Jun 2026 08:09:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D65E4410F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781251749;
	bh=quwMXEXFLjdjWGCnTfUfG0a39WhMZVIYi4O2tRcWm7Q=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HgNH0uRBjE8++GGfdYZDogNzLtBMxk8RN5Szx65Im9UD8HjwvhmgQL/eveZh/VZ0A
	 ES5sGQcOSFLpC1EgwFc0mrPTnlhD5JGHGlzfuXNo5vWlvV7YX2fZ8iWdNAU8uXsRkw
	 jaeD0b2mZfWvz9yXYktqnlIYcZVVQ2m8jv6GhuVBMOM+xdNDrgLgyDjZX//qiSuPu4
	 fmk4Rj97w2nZO3IsSo+EXxFazc701qYiQrdCcTVnyVDzQi7WzfeYCz3sFUii2UMy9F
	 2xTRAtfBDonphsK6oBuUTXpv6ZQC+8dupYhjXuJV3Ngs2JBFkyMKlApJr/KrIIDwQZ
	 4tVdLSDGa48MA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D65E4410F0;
	Fri, 12 Jun 2026 08:09:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7E1A7F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 08:09:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 63D4D403E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 08:09:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lWa7WYkAkqJz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jun 2026 08:09:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 730DE4063A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 730DE4063A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 730DE4063A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 08:09:07 +0000 (UTC)
X-CSE-ConnectionGUID: vgi6MWMRTQ+7uhlEzWP9aw==
X-CSE-MsgGUID: SHCye2h9T0GS7594O8kBwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="85710630"
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="85710630"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 01:09:07 -0700
X-CSE-ConnectionGUID: xO90VxySTWm7ql8tEsIEog==
X-CSE-MsgGUID: oBToszuvRXy2tSq26mJo+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="248640595"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 01:09:06 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 01:09:06 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 12 Jun 2026 01:09:06 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.30) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 01:09:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XjH6mwKkBHx17KLIOGg5iqDRB2ZyzsHbbiWZwGPJW8xc3yDhu31+1brH1yaXgJvyu19QxqTJf88oxtswqL26o8+jx23tBOUmarvernB5SMrUTIsuZ65IvYV49g1jtyAayfxjURtQkkQ2kckvp+0cRqd7BiZs4gbERUt/FyoXvUmuClFw0XOUGA4o8jqHjnxNZfwLReWvpl3V3iSebrvEpn3fciObT/aTCLC1tqu+YuhaitB3ylBwQVIlcbVOidEjwGLeEaaHuYYm0an1Dd8TxB50u8qjNYW4SobP9X1VWRUwMUymU13otJsgp9ZYjfCnfxffJIkT6WuSrrBU82Nr7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=quwMXEXFLjdjWGCnTfUfG0a39WhMZVIYi4O2tRcWm7Q=;
 b=x/I0m15a5g8niI4okQySSvYBPhSrTta9V/+ANMimxaNgHbmQQKNLbRJrnff+uEnfbEzhNa38Nt6NPBXVLd16TbC67hfP4WrVwhrQTpLh/axRAM+W4UmXsU2Yv4fL7yhy3yGEvAfEQXS2KagSz8OwrzcPjz7Q4j/8+JwSc0dwTPbnpCbiyq9TlZ3CnZqpeTInehXhHOzWirMcvVKnN2o1GFjfkkNz5YiVAD6BOdUj3YCMtYDEht+2QqHmnn1P8n+DyRNRnn7kJ1T9JGrfGYUtzTeQvpfDk9vbZFjgHMronoLmmUS501Tpn7w0WUWoo1xDiIoG1Epo/zQx7sQ5LuzVpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CH0PR11MB8165.namprd11.prod.outlook.com (2603:10b6:610:18e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Fri, 12 Jun
 2026 08:08:57 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.21.0113.013; Fri, 12 Jun 2026
 08:08:56 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3] ice: support SBQ posted
 writes with non-posted support for CGU
Thread-Index: AQHc6EaQMNQD/+6CZ0Gyp113VKIr/LY6sNZw
Date: Fri, 12 Jun 2026 08:08:56 +0000
Message-ID: <IA1PR11MB624133B5D16B7CE9979CE69A8B182@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260520105311.5336-1-przemyslaw.korba@intel.com>
In-Reply-To: <20260520105311.5336-1-przemyslaw.korba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CH0PR11MB8165:EE_
x-ms-office365-filtering-correlation-id: 8102defd-f8eb-4aed-7180-08dec859da0d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|11063799006|56012099006|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: zEhGL8/oA99EDnpQR4WXa7KV3VTfAbXr/pH7NPcdTejjs2OwW6TwG+IkElZDB33RcLrp5/ePh9JLh/287Utvu/fOxqeDDdb/vbYP+YpoIYBvR33uygdzsGbgd978j+i3GL8uhm270aXRprOQowh4mW0ywFk1Td9q8BAfW8Mf60UiurdJjC26vi6GoeqihD6+/KEl5tFHzZOfhZetGMJZdiYENiceMtY/Joaof4QpXFu07YoitVMT5YsN+ON0X91xbHXYAD5MUQgWgTA3ckTaagF7Vypnr0tfFBn75kvFI0yk/uXno0JP95UIKr9mgeZ189c9FUoZ5dMhTGxGSKVOX5CjECm0dWyOdG+qbcm7N3abU1ZfvEUh8LUnZm7+4ny2YJSAzHzQKLP+2T5vzY5bgpMH46948PPeGMRYHoGXBN2c9UzHv/K+VFdGwyDv0ysPq7rfiHEN7op3aYC8SmBzTVNZD2+L9x2bpAgcWkmiCuokNcmRA3wYFfs+aF8SwOhCn4398tVJ9+DBbcPCJLHHnYSbJhMGDUMAQ4VIxQ065zI4am49J3WUHUxt4mlEVXHA43GjaVPl6SHTZyRcQJi6UtoSAMn1F6UWvq+N/F7BuG/FxxhwHtKoiFbLz+WHy4Se5TjvoLnH3mQr1go2iKJNZBslrv8e2051a/zpzxegNvdqkmHVz+MiwJybkLmQD6AEijmzrq9sEmJ1O8Ol3+/uDXrtuGuqe2u5szxsmAJBfJ+cbjo3SM//8KOioHizTxBN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(11063799006)(56012099006)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?emlIQlRDNHJZRlBTZ2txUlZRR2pKK2E3VFVUSWlzY2NsWGlaZksrR1lzd0t5?=
 =?utf-8?B?YXgvTnhqelkvOGR0bmJLQ0Y2VFlJUFJzTEdtUk5iWTFhelFEQlNGTVJjVWNN?=
 =?utf-8?B?bytMZFZPVXorMzJRMUNaQnNoa1VPOHFrVGRobkJZWTRWNWVtenJvQUdvRUZI?=
 =?utf-8?B?WU44R25CQmlHS00vZ1FWdklIZENxd2tlbktHKzZLWktiWXVkVWx3RHhDUlRx?=
 =?utf-8?B?bjMzSFd3d1I3UTVoRGZnUTQxdlQ4OUpBdHJRMzFPdjMvb21ITnEzZTMyVlMy?=
 =?utf-8?B?cWYyUDBxOW9WM2Ruc29nSENYNktpNlh1Sk5naFF4eExDOU0vMlFRMCtuTk4x?=
 =?utf-8?B?dEt3cGRBc0kvQkRscndtdE1zQ3JzOHBhNEd4Qkp3SmdNMzJvQkJmL1V3bDVR?=
 =?utf-8?B?bHhxWDRNb1ltVFVOYWROenV2RHpxbVJmck5Kc251ZmQwMUp1WSt5cWpOWXAy?=
 =?utf-8?B?aTJ2VkJNTm10dGZiTStmT2EvdEVBTjlJS0c2Y1hjMHF1OExBaUZGK1hiQzJX?=
 =?utf-8?B?NzY2N3diejk4bHBrRlJGUzJrZkZ2YUVRYWtlcnE2Rlh2S3JEZDloVm5UeDJB?=
 =?utf-8?B?Qkh3V0pMMGlXdlhvY1pUMElueWZaN003NWxVV3BEblNUQ0RlWDJITlBwWjBv?=
 =?utf-8?B?Z1lINURlV3orSURsUnhjS0dDckE2QUZtUTVkM3RNRWVleEVNeU9GMEhxak02?=
 =?utf-8?B?M1dnZkxGYTlxeklTZkxidnI3bVpzcEtJc0RiUm5BVlIwVmg4YndqQ1dneHJt?=
 =?utf-8?B?TUJDcnJpZWpvR2Z5elYvRkxadHlGN1ByMC9uM3pCWUxiVDNJdnBwcmdzRkk4?=
 =?utf-8?B?NkI4NWJiZ0V6K0pCL1pMc3RUOGFSaFRuQ0FSSjh6WEJlekpoOXpUYVhaZmZY?=
 =?utf-8?B?S3JvSWRPY002T3BPeG81VTJMWGVMMFprKzVVRi82ZEg4Z01xbzkwVTU1YVE2?=
 =?utf-8?B?akJrelZTRzhMN3ZOY2RuaVNVaW9yeWpiMEZIUHVZWE9iSVBITnJiekVKb1RF?=
 =?utf-8?B?b29XTDJGRUNiY2ZFQVpnUHc3OCtoenFyUGxPalRWUG5nRDRSUzZJeG1NNmUy?=
 =?utf-8?B?b2g1QlNqOHp4SXc3b29YSVVXWWMzK1pXT0EzdWZONUlybnZ6enJVYlVKVHR1?=
 =?utf-8?B?bWU5RXVsUlFwc2FWci9mVHpQZ0syeTZadyt0a0UwMzIrd0pJOEVpNTNtUEN2?=
 =?utf-8?B?RUIvQnZUWnhqaktEU2VSRGVJOU4yOWk2Tk9TWkd2MzFnWERZNE5GL3Q5MEdM?=
 =?utf-8?B?YXkwTjRMb1dTZHdBemZLTmRSeUtuNkhFbTRYeTFDN01XWEF5R09zNWc5ZXpK?=
 =?utf-8?B?bEkwaHJaQmZQblIvL2Y2M051VFVHSGQwWmRkNUhyd2tVemxVMnZiTytuRkgr?=
 =?utf-8?B?cG9CaUhleVJZNzUyWVBXTEUrMjM2Q2VoL1gzQ2VuRnkxK0JhM3AzSkxuYzFv?=
 =?utf-8?B?MzlvL09FL1ZoczhvbTZkZ1VBTGhXZ0NlWXZmbDR1NUNLRXdROGJuai9IZGY4?=
 =?utf-8?B?NW5hcWtiMnl4MXNKQmR0UU9kaWsrQVllMW9JSmFoYndPR2MvUTA5bk9reXFY?=
 =?utf-8?B?a0pBeDA1RXdESHc4aGJaWDhlbUhVN1BGUzZaUjVCWE1TamtQaGlxWEdwR3R2?=
 =?utf-8?B?ZCsrZkl6T1JZV0JnSVpjdmlMUmdLYk1vZmYrdEZlU2RRNTl3T2cyeEszTWpB?=
 =?utf-8?B?K09SVUZKRUp5Zytrd055cURGaHFRbEN5cFFxTDM0RDAybUZQM1RXRXEybldW?=
 =?utf-8?B?VWR6d1BjNTFQMDFtQXhsV1BGN3Nva2N0Q0J0bHhmeVhTQ3hVYlc4OUFPQmlm?=
 =?utf-8?B?RHNJcTNpMm1acnBYYWJ2TFJuZUZHZWVHSDhPSXBmTnVNUFJlVHZIeXlVUFIx?=
 =?utf-8?B?aDFzaEREbTVFYnl2YTBFYmtyYThzR1ZzU2FxYm43VkJkdFNiQWJSSlhiaGk3?=
 =?utf-8?B?WFBJb1A3cWRpYXRWN014MVNWUW9ScytlY01wdzBkN05tOEtla1FDMkUvUEFN?=
 =?utf-8?B?WmExeWg0ZDI2VmpLUmJPYkpmU1NtSWlQZk5UYUFWMXBPZ3JreVd3MUVkT1E5?=
 =?utf-8?B?TVFUUzdIVUFOeWNpNDFnSzhDcVlYVFkvUkxweGM1R05UTVc5QlNFMkx0ZHp2?=
 =?utf-8?B?S0xxY3hwbmNKa3Qva0F2S3ltS0d3S1dKa1B1dzN0K2lSUkhleUhqdTFIQWlS?=
 =?utf-8?B?SE9hQnVML3h5cys1SG5EU1dsVWJBNVJ3SnR3enNmMDlHK2FWdGN1SWQ4ZkFM?=
 =?utf-8?B?ZEhidE5RSndTUDBFeHZaS0N0cXQwVmhxVC9DNVhDVDBNb01tUHFjcjNmYjl1?=
 =?utf-8?Q?h/PELHEJ4558zeEFfp?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XNGZgeG9FflFpV5p3S6LDV51y92xZxAuanReTHGJ6cWuyAPYx8uAch2jJxBu634hH2CX1nKiIBQoE3JFN8w95rsHqqJoysFIUblfW2+YIYTdmS5tTSmh/L3Qt+pY9oP8oI4ccFvoQfJCSvGz34LWBUiQJbaJcc3AFqZgIECBZryyNMQReF2xZqNUV7X9sWJPTcvMD8045qbT47k7DmmOn1lejZF2pIhvpXS/37jSXGeuqEWND5CgR/v2T20ko5O09cSihmFDSKvDW+wVRY55FViM/lppBTJpWAB1Hyt6wlhQ5ZiXHCJUvzJJsodQepiKFxAY07N2yO/T7Mb/YxNidw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8102defd-f8eb-4aed-7180-08dec859da0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2026 08:08:56.8683 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UcsUmbqd4AHog4wvWHydnsMaIUkFzZ8qxkUrMw69mKzUHBCF7Oejk3Iosed7YcAs9EUOfy7WOA4K06pHitedJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8165
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781251748; x=1812787748;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=quwMXEXFLjdjWGCnTfUfG0a39WhMZVIYi4O2tRcWm7Q=;
 b=PspePYk7ZHPJahrFH6kazH7VQ7SbzgeQtA8maN7F9vT2JvZtAkdr+ZKr
 CeYw3L9K8woonUhVfZ87vTVYEelrQR1Azynpr74B5zdC67uXBUpzjLpUg
 zWRG0KOHfqJGdoWzaF3GZ+3JYKHyWpaVIeG+oD31OZ/INfq/YFxF5y10Y
 EiX3a/J7fuPOdWqbqwOGuzmMEPRg0QvUWq3oj5F+Ojf3HXkytak3nGcRh
 6RpYSGMkXD2TvFPgLGp3cJksryrFl4PIuaNa85ifIvoAPnGA+qc9SnKaP
 PPdSQgrx4kFL9XDe3Lvl8xMBzREy1WJU1dwuWxqcXaXLq2iLBZZhS0ALd
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PspePYk7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: support SBQ posted
 writes with non-posted support for CGU
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:arkadiusz.kubalewski@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[8];
	RWL_MAILSPIKE_POSSIBLE(0.00)[140.211.166.137:from];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C5626677A7E

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBQcnplbXlzbGF3
IEtvcmJhDQo+IFNlbnQ6IDIwIE1heSAyMDI2IDE2OjIyDQo+IFRvOiBpbnRlbC13aXJlZC1sYW5A
bGlzdHMub3N1b3NsLm9yZw0KPiBDYzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTmd1eWVuLCBB
bnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xh
dyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyIDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEt1YmFsZXdza2ksIEFya2FkaXVzeiA8YXJr
YWRpdXN6Lmt1YmFsZXdza2lAaW50ZWwuY29tPjsgS29yYmEsIFByemVteXNsYXcgPHByemVteXNs
YXcua29yYmFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0gg
aXdsLW5ldCB2M10gaWNlOiBzdXBwb3J0IFNCUSBwb3N0ZWQgd3JpdGVzIHdpdGggbm9uLXBvc3Rl
ZCBzdXBwb3J0IGZvciBDR1UNCj4NCj4gRnJvbTogS2Fyb2wgS29sYWNpbnNraSA8a2Fyb2wua29s
YWNpbnNraUBpbnRlbC5jb20+DQo+DQo+IFNpZGViYW5kIHF1ZXVlIChTQlEpIGlzIGEgSFcgcXVl
dWUgd2l0aCB2ZXJ5IHNob3J0IGNvbXBsZXRpb24gdGltZS4gQWxsIFNCUSB3cml0ZXMgd2VyZSBw
b3N0ZWQgYnkgZGVmYXVsdCwgd2hpY2ggbWVhbnMgdGhhdCB0aGUgZHJpdmVyIGRpZCBub3QgaGF2
ZSB0byB3YWl0IGZvciBjb21wbGV0aW9uIGZyb20gdGhlIG5laWdoYm9yIGRldmljZSwgYmVjYXVz
ZSB0aGVyZSB3YXMgbm9uZS4gVGhpcyBpbnRyb2R1Y2VkIHVubmVjZXNzYXJ5IGRlbGF5cywgd2hl
cmUgb25seSB0aG9zZSBkZWxheXMgd2VyZSAiZW5zdXJpbmciIHRoYXQgdGhlIGNvbW1hbmQgaXMg
ImNvbXBsZXRlZCIgYW5kIHRoaXMgd2FzIGEgcG90ZW50aWFsIHJhY2UgY29uZGl0aW9uLg0KPg0K
PiBBZGQgdGhlIHBvc3NpYmlsaXR5IHRvIHBlcmZvcm0gbm9uLXBvc3RlZCB3cml0ZXMgd2hlcmUg
aXQncyBuZWNlc3NhcnkgdG8gd2FpdCBmb3IgY29tcGxldGlvbiwgaW5zdGVhZCBvZiByZWx5aW5n
IG9uIGZha2UgY29tcGxldGlvbiBmcm9tIHRoZSBGVywgd2hlcmUgb25seSB0aGUgZGVsYXlzIGFy
ZSBndWFyZGluZyB0aGUgd3JpdGVzLg0KPg0KPiBGbHVzaCB0aGUgU0JRIGJ5IHJlYWRpbmcgYWRk
cmVzcyAwIGZyb20gdGhlIFBIWSAwIGJlZm9yZSBpc3N1aW5nIFNZTkMgY29tbWFuZCB0byBlbnN1
cmUgdGhhdCB3cml0ZXMgdG8gYWxsIFBIWXMgd2VyZSBjb21wbGV0ZWQgYW5kIHNraXAgU0JRIG1l
c3NhZ2UgY29tcGxldGlvbiBpZiBpdCdzIHBvc3RlZC4NCj4NCj4gRTgxMCBvbmx5IHN1cHBvcnRz
IG9wY29kZSAweDAxLCBidXQgaXRzIEZXIGFsd2F5cyBzZW5kcyBjb21wbGV0aW9uIHJlc3BvbnNl
cyBmb3IgdGhpcyBvcGNvZGUsIHNvIHRoZSBkcml2ZXIgd2FpdHMgZm9yIGVhY2ggd3JpdGUgdG8g
Y29tcGxldGUuDQo+IFRoaXMgbWFrZXMgRTgxMCB3cml0ZXMgc3luY2hyb25vdXMgYW5kIGVsaW1p
bmF0ZXMgdGhlIG5lZWQgZm9yIFNCUSBmbHVzaC4NCj4NCj4gVG8gYW5hbHl6ZSBpZiBkZWxheXMg
YXJlIGdvbmUsIGxvb2sgZm9yIGFuZCBjb21wYXJlIHRpbWUgc3BlbnQgaW4gaWNlX3NxX3NlbmRf
Y21kIOKAlCBwb3N0ZWQgd3JpdGVzIHNob3VsZCByZXR1cm4gaW1tZWRpYXRlbHkgYWZ0ZXIgdGhl
IHdyMzIuDQo+IFRoYXQgY2FuIGJlIGRvbmUgZm9yIGV4YW1wbGUgYnkgYWRqdXN0aW5nIHBoYyB0
aW1lIHdpdGggcGhjX2N0bCBvbiBFODMwIGRldmljZSwgZm9yIGxlc3MgdGhhbiAyIHNlY29uZHMg
dG8gdXNlIHRoaXMgbmV3IG1lY2hhbmlzbS4gV2l0aG91dCBpdCwgY29tbWFuZCBiZWxvdyB3aWxs
IGZhaWwuDQo+DQo+IFJlcHJvZHVjdGlvbiBzdGVwczoNCj4gcGhjX2N0bCBldGgxMyBhZGogMQ0K
PiBwaGNfY3RsWzQ0NzgxNzAuOTk0XTogYWRqdXN0ZWQgY2xvY2sgYnkgMS4wMDAwMDAgc2Vjb25k
cw0KPg0KPiBDaGVjayB0cmFjZSBmb3IgdGltaW5nIGZvciBjb21wYXJpc2lvbnM6DQo+IGVjaG8g
aWNlX3NicV9zZW5kX2NtZCA+IC9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvc2V0X2Z0cmFjZV9m
aWx0ZXINCj4gZWNobyBmdW5jdGlvbl9ncmFwaCA+IC9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcv
Y3VycmVudF90cmFjZXINCj4gY2F0IC9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvdHJhY2UNCj4N
Cj4gVGVzdGVkIG9uOg0KPiAtIEludGVsIEU4MzAgTklDIChGVyB2ZXJzaW9uIDEuMDApDQo+ICAg
LSBLZXJuZWwgNi4xOS4wKw0KPg0KPiBGaXhlczogOGY1ZWUzYzQ3N2E4ICgiaWNlOiBhZGQgc3Vw
cG9ydCBmb3Igc2lkZWJhbmQgbWVzc2FnZXMiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBLYXJvbCBLb2xh
Y2luc2tpIDxrYXJvbC5rb2xhY2luc2tpQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogUHJ6
ZW15c2xhdyBLb3JiYSA8cHJ6ZW15c2xhdy5rb3JiYUBpbnRlbC5jb20+DQo+IFJldmlld2VkLWJ5
OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4g
UmV2aWV3ZWQtYnk6IEFya2FkaXVzeiBLdWJhbGV3c2tpIDxhcmthZGl1c3oua3ViYWxld3NraUBp
bnRlbC5jb20+DQo+IC0tLQ0KPiB2MzoNCj4gLSBpbmNsdWRlIGluZm9ybWF0aW9uIGluIGNvbW1l
bnRzIGFuZCBjb21taXQgbWVzc2FnZSBhYm91dCBkaWZmZXJlbnQNCj4gRTgxMCBiZWhhdmlvcg0K
PiB2MjoNCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvaW50ZWwtd2lyZWQtbGFuLzIwMjYwNTA4
MTAyMjQ3LjgyNjM3NS0xLXByemVteXNsYXcua29yYmFAaW50ZWwuY29tLw0KPiAtIGZpeCBtaW5v
ciBpc3N1ZXMgZm9yIEU4MTAgZGV2aWNlcw0KPiB2MToNCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvaW50ZWwtd2lyZWQtbGFuLzIwMjYwNTA3MTM1MTEwLjgwOTM2Ny0xLXByemVteXNsYXcua29y
YmFAaW50ZWwuY29tLw0KPiAtLS0NCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9jb21tb24uYyAgIHwgMjYgKysrKystLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX2NvbnRyb2xxLmMgfCAgNCArKyAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9jb250cm9scS5oIHwgIDEgKw0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3B0cF9ody5jICAgfCA3MCArKysrKysrKysrKystLS0tLS0tDQo+IGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2Vfc2JxX2NtZC5oICB8ICA1ICstDQo+IDUgZmlsZXMgY2hhbmdl
ZCwgNzMgaW5zZXJ0aW9ucygrKSwgMzMgZGVsZXRpb25zKC0pDQo+DQoNClRlc3RlZC1ieTogUmlu
aXRoYSBTIDxzeC5yaW5pdGhhQGludGVsLmNvbT4gKEEgQ29udGluZ2VudCB3b3JrZXIgYXQgSW50
ZWwpDQo=
