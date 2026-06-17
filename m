Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7DriMb5KMmrxyAUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 09:20:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9629369721C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 09:20:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=A1VnM4e4;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A506385D65;
	Wed, 17 Jun 2026 07:20:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YrhxfCQdtwIy; Wed, 17 Jun 2026 07:20:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCEBB85D5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781680825;
	bh=OLUDl3tNrMYNgExuQ97EWDu8Zk8XBMyb37uY9Crt7bM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=A1VnM4e4GvVwZToMpoH+Bvi93UvmyFrwzS8t5vveaT9GwzZGo8ZkJRuvWWzNDNt7Z
	 UgG/d4y+2WLLdEEHj6BmQAccL70f7nQmlMyG0oW1iybtRDyJeYsToJRkDyUUeHAeTv
	 PegrYS7Q1mKhYLghBJ1rXpC/MEQ3OZtqUGUxr/CGbSMK0n/xx1P5zbgxQ0tCw4WEQr
	 vqaU0t+JBGKGd1jRhMofJlwSmW2u7dnd5iXnbBJ9ADWuMrXwwvD2sNKn7hSazK+Ppj
	 oWTaKcUeZ4/mHXT207uk9XxFsqv3GGFSNa5DtTo1GIUW95+ap7ep9CnoovpN5pVjAK
	 v8f3LJlvQQ4uA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCEBB85D5D;
	Wed, 17 Jun 2026 07:20:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 63CC033C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 07:20:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5544442AC6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 07:20:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SPLmE70M9Z7g for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jun 2026 07:20:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3D6F94006B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D6F94006B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3D6F94006B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 07:20:22 +0000 (UTC)
X-CSE-ConnectionGUID: hJ9fccMoRySCmzImrTodUA==
X-CSE-MsgGUID: lF10UYHdSjqA33NwqTxNRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82475534"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="82475534"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 00:20:22 -0700
X-CSE-ConnectionGUID: XTLnvJMqQ0uaZ0ykiZOddw==
X-CSE-MsgGUID: fOKD1p/fTrCUwQ1eyza5mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="249896630"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 00:20:22 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 00:20:21 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 00:20:21 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.7) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 00:20:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JlIO7s1doZBUFnYZCZcZVrDZIZm8X0Mxnv/kpjDVuZC8f3o0Ako9IDvPYADAzLbsCuViiQoZT15waBngvATwailWgh9ZcqcscqlB5LbYnH9PBY622LT/lCZ5jyhDLAjSIW1Rh4wd9tH+wGnAm2kaBnwQraiRo66Mf9Mkpv+0CBVIGrJN+Oa/bS2ss81yAHNV8T8850LNWrO6fy5ceplOpMNOoLTLM+4HfxfwCvVqpNoV0sTE3CC3q2Em5Wrl1H6jG3w8BDuB/DOEUtuvM8v4D6tnbhNMJKSd09h/+E6RqNX3TMfzoAhNx4N9Bv7PiMH2vX4f+Ulbn3102ViMqHX2Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OLUDl3tNrMYNgExuQ97EWDu8Zk8XBMyb37uY9Crt7bM=;
 b=r1wbsYzcPoH6pzxbMrzvQ45kH63Q8f2fJc7ThbyRJ4ncePG+ONfEtSi8JTaxL6DNHCJ0SvusaUzoRJKLgQExC1ywWkSitqpdb9L4YZPx3OgvCrnxL/hbiUWhZUocdTDpMe+UrktattJdr2XEgFphzJSv3oZgxgvN96y+kVkVMoj+KP3YxJAhz/wRyUxbTWL7C9OdVyVPicrjjFKvIk3T5u+RmwoXkzSwl/vfTdOwYZ5WNYAQAX03eL7TDFOhX6MbVzpwtwIBuhUh7QOg3UeH9anIbvR5gg/0hm5d9KafF8g1MbUIol9UCXBY9G6GH/buR1smquQ0uDoZM7Tjk16uHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM3PPF8F79256C7.namprd11.prod.outlook.com (2603:10b6:f:fc00::f37)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Wed, 17 Jun
 2026 07:20:13 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 07:20:13 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: =?utf-8?B?RGF2ZSDwn6eU4oCNIEJ1dGxlcg==?= <croepha@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "david.butler@appgate.com" <david.butler@appgate.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] iavf: cap advertised max_pkt_size
 at the single-buffer HW limit
Thread-Index: AQHc/ctFWf1ckAOYlU+L5KHl53PQ9LZCV7Yw
Date: Wed, 17 Jun 2026 07:20:13 +0000
Message-ID: <IA3PR11MB89860502552102C2D59916FAE5E42@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260616200152.1421033-1-david.butler@appgate.com>
In-Reply-To: <20260616200152.1421033-1-david.butler@appgate.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM3PPF8F79256C7:EE_
x-ms-office365-filtering-correlation-id: f3e1f81a-b7b9-42ef-f5b4-08decc40dfc2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|11063799006|56012099006|6133799003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: dwUoN/ogpQpscxEw5HJuYQlsdDMv8t0fHKM5vfAioBaQhxf6y24AUJ3LJLiu86RVdPtOVgp4CRuq4Tu5HkE9xu7XEJD3W1XVKfzAzsiQFSJVn3zn4UUgg7OyDtrK9nO4Al1+kFowGR8cTwo0NWRWI2jWqY0d3sHwnKxW0XAdV/bPhNWjnR9kwqWSX2HLhsb1pdUseN8iyIByzRs9BR/Y/xkdd/pZlRCnEyyhF5SJn9b0JrQcBZ8+uj8BAfPT5kd6CuwQb5bKHhqR0SbySgQEx0wEfds8sfrjkU8m12A+zwrwMtQDBGgMdUA5xBvt+lFQ9PMsQTCSaO2f0xej01Mf8VQuehZfoAfdhA8W65Rjp2HDZgChx9uEFcsuMOixbPqkERrxn5x8/PE0uH8bAEL/uKYLfq+s85YN54Pu3B1C3EAjQVFcQlVJo0c5lJb3AeXh6r1eXtxdviGzhPCmrFPhW9/f2SPoBZcBsn9XDykLVTz2hN7tRjtmuK2srhnN+/r+WIQ8G8Xx6RdnVzGc6+VxReeYKG1o4dslno3mggw9nA1qF6UXl3iANwrOCVDMQVsQ5tAWNggYOX5bqAUetKn2NfB1m1slhWFKoVOAwiFwRDSnNrnX1sgHrl8fS24NaG/irQcVnIZFPxm2typ7JQoDJQWDGpEPGni8gQ2fn9VE8MHLrBK9O3AjEY6ZP2C+bEAFiPTTmOtLQYT1NcaqUD8u22VPcvLToprMaHoRUgMEXjntBpuypt/lDQ6lz/x8VCI8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(11063799006)(56012099006)(6133799003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QzFJSGJ0czZlSkR1STRtSDQ5N3J6UEZBVjAvMXRtQ1luSnZ1eG9CN3daYVpq?=
 =?utf-8?B?eDlDM2I2TGxicGdWTWR4QTVsWktUR0lGTkFWTFhrV3pxaVVFOUIwd0RZK0dN?=
 =?utf-8?B?T3BhUW03NTV5alljY083VWJQMkQ1U2xVRkxyVmEzLzltbHBzQ1hRNmY5eXBR?=
 =?utf-8?B?c3RGYUhlUGw0NEVhMHl5MURmN1VBT0pPVllJSVBETWQwS2FySG1mQkRSN0Jp?=
 =?utf-8?B?SEp3NlRnY2Jiay8wQmY3L29sQnJibHp6QTkwMG9EclZkQ0Z1c09FUGxkMXRW?=
 =?utf-8?B?ZXRWc0FwS3YyMVVWTE4wMjROdjBHSlNUc2xKb3o0ZWJyYTJxRyttVU1SU3ND?=
 =?utf-8?B?VjhKT0pKQXcxejNrMTEzYStDVmlvdm90MTNWMHRWZWZaU05TdWNqNmlveEJQ?=
 =?utf-8?B?WWgyMkdPZCt3ekxSR3RsWGE2NFp0SENIUXcwVHdiVlN2RmEwR25GZDlocTNV?=
 =?utf-8?B?bjJWWEc0bFd2VFN0a3hzdlJRYXhCbmVhZ1dNZ09lNVBXZU9weGRsblIwYjVy?=
 =?utf-8?B?M2VNNzA0Unh4YUU0aEpXcTljRy8reVFZd1hTWWQ3cFNETWZrZDNBVFk2MkZ0?=
 =?utf-8?B?OW52d0NxaExiWlFTeS9SdGpqMXFnVGZaZmc4cFE1ZUVCTzVCNEs1dDRmMVAy?=
 =?utf-8?B?Q0dlOC9zMXVEZW1lV1hKWC9wdUd2b3FwdFRhUFgzWHJpY3IzeGsyVE1HQTlw?=
 =?utf-8?B?dXdmQURDM0U5VDhNWnBEU0tOZWs0RitqdjY3WGhJRlJSQXJOdUh5KytsNDFL?=
 =?utf-8?B?SGZ2WU1lMWtUSlJpbzVQbk9WUzdYeWdVWHdMaDZSdVFsSkR2Rk9uRlVjZ0t6?=
 =?utf-8?B?dm1STldSeGl0OG1RMWxMSTdTQ3JtTVBZbXZRTFZPenhtWHE2M3FybUIvWnp3?=
 =?utf-8?B?c2pCZ2RsYjNSR3JYVW0xeGx2OUZSM3NPVUhQMFh4bVZyY1IzeGNDQ3lkRmgx?=
 =?utf-8?B?QU16aTNJZHJrL3R1MTU2OHBjWmo5UFVDdHRBdzA4TlNzaWN2MzhOZjR2ZjhZ?=
 =?utf-8?B?SDBEcU5kNFRDdDhOTkxiSW5PeTFGeUVobHJrMGdUeFFTbGZsVXFxRnN4Y29N?=
 =?utf-8?B?c1NBS0I5enh0YU1EeEwrN3JpOXNraEVqV1k3eTE0RWpRM3lMdlFIQ1YzVkdN?=
 =?utf-8?B?b1pzczQwckhZbVVKYWFhdE03VXZYS3NuUmh6a0MrMkMzM0p4MGY4WG0yenVa?=
 =?utf-8?B?U3VVR2czQ05FM1pQeDZWZ1JTZVdVRlROL1h0UHhwSnJjT0FWMEo2MXhMcUo1?=
 =?utf-8?B?a21hQnhiUUgybktVazNDL21odVM0eEJhYnl6NURDdnZ6VTY2aW9KMHIxOGZN?=
 =?utf-8?B?N296a2VwUnhwSm9JWDBVNTlYTVRHRFRqbStRZjBYd0hTRWVyNkZJTVNUL0xD?=
 =?utf-8?B?KzZhOHh3bENTYm42ODRJUS9oYXBEakpVSVNxY2pQSDY3b3hjVnNEdjZGUXlU?=
 =?utf-8?B?REloZ05LTmd5bzJka0N5a1Z2c2hXT0xuNFpIREk0YnlxbmdwSDVMNWRJcGxJ?=
 =?utf-8?B?d2YrbFhnVS90dXIycmo3MHUvTFRKeDlOT0xrc0FLckVMK2R3VnMwaGlFK3hp?=
 =?utf-8?B?QWJBRlkyUzhDZ1VsU3dXbjFxK3NoT3drUVBzNjZ2dHUwWlV2RjdnL2Rkc003?=
 =?utf-8?B?cFN0SEVXNTcveHFuTld5OGRPUDBBL2VGNGZsVGxVVHdXakVhSm1hcnVkbzdE?=
 =?utf-8?B?elRjNHFleDBLcSt0MXRLcENGRWFaVVJZWVRMa2R3a0phWkdGaDdHd0p0OXcy?=
 =?utf-8?B?MlNhT1ZpNHd1Y2VRLzVnK1R4ckFLTGh4ZU8rNndXSmVBak5EVkUzZEY4dk1x?=
 =?utf-8?B?TU9KWE9KUVl5ZFFZUVJXcy9UKzVBWlVTR2ZSMU1vU1VsdDIzdy9zR0RURlAz?=
 =?utf-8?B?cVN6aTZIRjkvV0V0MmlEaVhsRGlxYjVPZTlsdWxaSURyRGNGY2tIZ3NZdVJG?=
 =?utf-8?B?WVBTaHF3NjBLTk9FT3pHbGhtT1VOSVRXYkNGT3pPT3d4VjF6Z0xLanYzbHJx?=
 =?utf-8?B?ZFh5N0YzOTRVSTE5UmJHTW1Tc2dkVjUvbDRITkkyaHIySkx1YjYvN0Fuamxl?=
 =?utf-8?B?dHJ0ZmU3RDdXQWtIZy9TU3U5ZGFKMSt3ZVdhYTZsbFlCcG5ReTNYSlJ4elox?=
 =?utf-8?B?THdHMEpYcU41SkNzRFVCdlZXTnFMVHFzUkJIL3lBeUdxcWluRFQ0RXNHUy96?=
 =?utf-8?B?cHNBUzY5aXBwVUllaXRDNkNsSVFkMFprNlN3QThWMzV1Zm9Qbko3NWVJREkx?=
 =?utf-8?B?cEQzYTBydm1wcm9yUTMxa2RSU3g3UGRXaGNvU0lWMW9wc1BIblR1RmVzOE1T?=
 =?utf-8?B?aERZNGZJS0JDa2ZVb2Jnb0RBSXhOQ2V6V3VqUFN0WmxvMTNmN2JnUHlQQ2Iw?=
 =?utf-8?Q?Xckrg2d5MsiYQmSA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KNHP5sYYWhDCGWIDTnCqmAN+fFEnJ0pWZl51MocA4Si0ckFENC/TnAcSNT9u1Ut1SjXeDT6mMMEhiOYw4E4lGmH0qqiYEFMqYjz59QPKDkevul/cV/gLjCkAidD88sIWNpKLKlz/6zjO0UOl2vIGhYdd218aUJcaD/XKBbU1z7M2Grl2qzk/L0c+pqx0z25xmwtEKNeZjyeQVSs9ePtt18HTjxncttaJqL5pBddj+QK7Mo/WSNWu7AG0I4euuhrVc/sY5aZqcBi3CkrqlHYKZkRUOEW49l1erRouTsT7l5+NeF/DvalGCibK5wRPMk7w5D41FFXuHMRT9evdB1YYng==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3e1f81a-b7b9-42ef-f5b4-08decc40dfc2
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 07:20:13.7010 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Cg88JGG2IHC7xrCTjml0GCza/1+B2G7aRs4WCjFZbh7PKx+BO09zooDiuLny7OBzPuRKlC2SfE4G1qTVTl110HYK/aUFjicSNfXLwCPMEgs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF8F79256C7
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781680823; x=1813216823;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OLUDl3tNrMYNgExuQ97EWDu8Zk8XBMyb37uY9Crt7bM=;
 b=CihUD8TmpPD6khbGcZXY7Yw5LbwzDVxR8wEGeLimLJaR1kEGa5R23ay2
 6cOX3r4RIAxC4OFCgYemkrFHOt4ZHYmhRVP9rKlDWkqFffvvVQ+cK0yDM
 O4A3m/XBUDRqCrkCd/PDpe+uElVTdznmdXwqiUtbYQin+nechPgWhzaFn
 ctqUA+3fZ+tiL72At3SMRc8WfUd5ViSRiwRg95K1VBefkmcazJ7SouTgd
 wCvYWwXQQGAAWGIXqL+WBB7KPi8BOshUdyoVEcamkzMHTEF5/O5FA8sYh
 4FagnelOO/t7kHGT0zX0claHcXjpVa0tXA2UzS8StPCYbNl7MNNmbaASB
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CihUD8Tm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: cap advertised max_pkt_size
 at the single-buffer HW limit
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
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:croepha@gmail.com,m:linux-kernel@vger.kernel.org,m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:david.butler@appgate.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.osuosl.org,vger.kernel.org,intel.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9629369721C

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgRGF2
ZSDwn6eU4oCNIEJ1dGxlcg0KPiBTZW50OiBUdWVzZGF5LCBKdW5lIDE2LCAyMDI2IDEwOjAyIFBN
DQo+IFRvOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgta2VybmVsQHZn
ZXIua2VybmVsLm9yZzsNCj4gTG9iYWtpbiwgQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jha2lu
QGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVs
LmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5j
b20+DQo+IENjOiBjcm9lcGhhQGdtYWlsLmNvbTsgZGF2aWQuYnV0bGVyQGFwcGdhdGUuY29tDQo+
IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBuZXRdIGlhdmY6IGNhcCBhZHZlcnRp
c2VkDQo+IG1heF9wa3Rfc2l6ZSBhdCB0aGUgc2luZ2xlLWJ1ZmZlciBIVyBsaW1pdA0KPiANCj4g
RnJvbTogRGF2ZSBCdXRsZXIgPGRhdmlkLmJ1dGxlckBhcHBnYXRlLmNvbT4NCj4gDQo+IFNpbmNl
IGNvbW1pdCA1ZmE0Y2FmZjU5ZjIgKCJpYXZmOiBzd2l0Y2ggdG8gUGFnZSBQb29sIikNCj4gaWF2
Zl9jb25maWd1cmVfcXVldWVzKCkgYWR2ZXJ0aXNlcyBtYXhfcGt0X3NpemUgdG8gdGhlIFBGIGFz
Og0KPiANCj4gCW1heF9mcmFtZSA9IExJQklFX01BWF9SWF9GUk1fTEVOKGFkYXB0ZXItPnJ4X3Jp
bmdzLT5wcC0NCj4gPnAub2Zmc2V0KTsNCj4gCW1heF9mcmFtZSA9IG1pbl9ub3RfemVybyhhZGFw
dGVyLT52Zl9yZXMtPm1heF9tdHUsIG1heF9mcmFtZSk7DQo+IA0KPiBMSUJJRV9NQVhfUlhfRlJN
X0xFTiAoMTYzODIpIGlzIHRoZSBtdWx0aS1kZXNjcmlwdG9yIHNjYXR0ZXIvZ2F0aGVyDQo+IGZy
YW1lIGNlaWxpbmcsIG5vdCBhIHNpbmdsZS1xdWV1ZSB2YWx1ZSwgYW5kIGl0IGV4Y2VlZHMgdGhl
IEU4MTAgTUFDDQo+IGZyYW1lIHNpemUgbWF4aW11bSBvZiA5NzI4LiBQZXIgdGhlIEU4MTAgZGF0
YXNoZWV0ICg2MTM4NzUtMDA5IHNlY3Rpb24NCj4gMTMuMi4yLjE3LjEpIHRoZSBUeCBmcmFtZS1z
aXplIHJlZ2lzdGVyIFBSVERDQl9URFBVQy5NQVhfVFhGUkFNRSBoYXMgYQ0KPiBtYXhpbXVtIG9m
DQo+IDB4MjYwMCAoOTcyOCk7IGxhcmdlciBmcmFtZXMgYXJlIGRpc2NhcmRlZC4gVGhlIGluLXRy
ZWUgaWNlIGRyaXZlcg0KPiBlbmNvZGVzIHRoZSBzYW1lIHZhbHVlIGFzIElDRV9BUV9TRVRfTUFD
X0ZSQU1FX1NJWkVfTUFYICg9PQ0KPiBMSUJJRV9NQVhfUlhfQlVGX0xFTiA9PSA5NzI4KSwgYW5k
IHRoZSBWRiBjbGFtcGVkIG1heF9mcmFtZSB0bw0KPiBJQVZGX01BWF9SWEJVRkZFUiAoOTcyOCkg
YmVmb3JlIHRoaXMgY29tbWl0Lg0KPiANCj4gV2hlbiB0aGUgUEYgYWR2ZXJ0aXNlcyB2Zl9yZXMt
Pm1heF9tdHUgYXMgMCwgbWluX25vdF96ZXJvKCkgbGVhdmVzDQo+IG1heF9mcmFtZSBhdCAxNjM4
Mi4gVGhlIExpbnV4IGljZSBQRiBhZHZlcnRpc2VzIG1heF9tdHUgPSBwb3J0IE1BQw0KPiBmcmFt
ZSBzaXplICg8PSA5NzI4KSwgc28gYSBWRiBiZWhpbmQgaWNlIG5ldmVyIHNlbmRzIG1vcmUgdGhh
biB0aGF0Lg0KPiBUaGUgRVNYaSAiaWNlbiIgUEYgb24gRTgxMCBhZHZlcnRpc2VzIG1heF9tdHUg
YXMgMCwgc28gdGhlIFZGIHNlbmRzDQo+IG1heF9wa3Rfc2l6ZSA9IDE2MzgyLCB3aGljaCBpY2Vu
IHJlamVjdHMgd2hpbGUgcHJvZ3JhbW1pbmcgdGhlIHF1ZXVlDQo+IGNvbnRleHQgZm9yIFZJUlRD
SE5MX09QX0NPTkZJR19WU0lfUVVFVUVTIChvcGNvZGUgNik6DQo+IA0KPiAJaWNlbl9Db25maWd1
cmVUeFF1ZXVlOiBWU0kgODogRmFpbGVkIHRvIHNldCBMQU4gVHggcXVldWUNCj4gY29udGV4dCBm
b3INCj4gCSAgICAgICAgICAgICAgICAgICAgICAgYWJzb2x1dGUgVHggcXVldWUgNjQsIEVycm9y
Og0KPiBJQ0VfRVJSX1BBUkFNDQo+IAlpbmRydl9TZW5kTXNnVG9WZjogVkYgMDogRmFpbGVkIG9w
Y29kZSA2LCBFcnJvciAtNQ0KPiANCj4gCWlhdmYgMDAwMDowMzowMC4wOiBQRiByZXR1cm5lZCBl
cnJvciAtNSAoSUFWRl9FUlJfUEFSQU0pIHRvIG91cg0KPiByZXF1ZXN0IDYNCj4gCWlhdmYgMDAw
MDowMzowMC4wIGV0aFg6IE5FVERFViBXQVRDSERPRzogdHJhbnNtaXQgcXVldWUgTiB0aW1lZA0K
PiBvdXQNCj4gDQo+IFRoZSBWRidzIHF1ZXVlcyBuZXZlciBjb21lIHVwOyB1bmRlciBTUi1JT1Yg
cGFzc3Rocm91Z2ggdGhlIG1pcy0NCj4gcHJvZ3JhbW1lZCBxdWV1ZSBjYW4gYWxzbyB0cmlnZ2Vy
IGEgZmF0YWwgSU9NTVUgZmF1bHQgaW4gdGhlIGd1ZXN0Lg0KPiBGb3JjaW5nIG9ubHkgbWF4X3Br
dF9zaXplIGJhY2sgdG8gOTcyOCAoYW5kIGxlYXZpbmcgdGhlIFBhZ2UgUG9vbA0KPiByeF9idWZf
bGVuLyBkYXRhYnVmZmVyX3NpemUgdW50b3VjaGVkKSBtYWtlcyB0aGUgVkYgY29tZSB1cDsNCj4g
ZGF0YWJ1ZmZlcl9zaXplIGlzIG5vdCBpbnZvbHZlZC4gVGhpcyB3YXMgY29uZmlybWVkIG9uIHR3
byBFODEwIE5WTQ0KPiByZXZpc2lvbnMgKDMuMDAgYW5kIDQuNTEpIGFuZCB0d28gaWNlbiB2ZXJz
aW9ucyAoMS4xNC4yLjAgYW5kIHRoZQ0KPiBsYXRlc3QgMi4zLjMuMCk6IGFsbCByZWplY3QgdGhl
IHVucGF0Y2hlZCBWRiBhbmQgYWNjZXB0IHRoZSBwYXRjaGVkDQo+IG9uZSwgc28gdGhlIHRyaWdn
ZXIgaXMgdGhlIGljZW4gUEYgYmVoYXZpb3VyLCBub3QgdGhlIGZpcm13YXJlIG9yIGljZW4NCj4g
cmV2aXNpb24uIFJlcG9ydGVkIGJ5IHNldmVyYWwgdXNlcnMgb24NCj4gRTgxMCArIEVTWGkgaWNl
biB3aXRoIHY2LjEwKyBndWVzdHM6DQo+IA0KPiBMaW5rOiBodHRwczovL2NvbW11bml0eS5pbnRl
bC5jb20vdDUvRXRoZXJuZXQtUHJvZHVjdHMvRTgxMC1DLWlhdmYtDQo+IGRyaXZlci1pc3N1ZS1v
bi1MaW51eC02LTEyL20tcC8xNzM3NDkwDQo+IExpbms6IGh0dHBzOi8vYWNjZXNzLnJlZGhhdC5j
b20vc29sdXRpb25zLzY5NzM3NjYNCj4gTGluazogaHR0cHM6Ly9rbm93bGVkZ2UuYnJvYWRjb20u
Y29tL2V4dGVybmFsL2FydGljbGUvNDA0MzE1L3NyaW92LQ0KPiBlbmFibGVkLXZtcy1uZXR3b3Jr
LWFkYXB0b3ItZ29lcy1kLmh0bWwNCj4gDQo+IENhcCBtYXhfZnJhbWUgYXQgdGhlIHNpbmdsZS1i
dWZmZXIgaGFyZHdhcmUgbGltaXQsIHJlc3RvcmluZyB0aGUgcHJlLQ0KPiBQYWdlLVBvb2wgYmVo
YXZpb3VyIHdoaWxlIGtlZXBpbmcgdGhlIFBhZ2UgUG9vbCByeF9idWZfbGVuIHVuY2hhbmdlZC4N
Cj4gDQo+IEZpeGVzOiA1ZmE0Y2FmZjU5ZjIgKCJpYXZmOiBzd2l0Y2ggdG8gUGFnZSBQb29sIikN
Cj4gU2lnbmVkLW9mZi1ieTogRGF2ZSBCdXRsZXIgPGRhdmlkLmJ1dGxlckBhcHBnYXRlLmNvbT4N
Cj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwu
YyB8IDggKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNo
bmwuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5j
DQo+IGluZGV4IDRmMmRlZmQyMzMxYi4uMjYzMmVlZWQ3NzZjIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYw0KPiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYw0KPiBAQCAtMzgyLDYg
KzM4MiwxNCBAQCB2b2lkIGlhdmZfY29uZmlndXJlX3F1ZXVlcyhzdHJ1Y3QgaWF2Zl9hZGFwdGVy
DQo+ICphZGFwdGVyKQ0KPiANCj4gIAltYXhfZnJhbWUgPSBMSUJJRV9NQVhfUlhfRlJNX0xFTihh
ZGFwdGVyLT5yeF9yaW5ncy0+cHAtDQo+ID5wLm9mZnNldCk7DQo+ICAJbWF4X2ZyYW1lID0gbWlu
X25vdF96ZXJvKGFkYXB0ZXItPnZmX3Jlcy0+bWF4X210dSwgbWF4X2ZyYW1lKTsNCj4gKwkvKiBU
aGUgUEYgcHJvZ3JhbXMgbWF4X3BrdF9zaXplIGludG8gdGhlIHBlci1xdWV1ZSBSeCBjb250ZXh0
DQo+ICJyeG1heCIuDQo+ICsJICogTElCSUVfTUFYX1JYX0ZSTV9MRU4gaXMgdGhlIG11bHRpLWRl
c2NyaXB0b3IgKFMvRykgZnJhbWUNCj4gY2VpbGluZw0KPiArCSAqICgxNjM4MiksIGJ1dCB0aGF0
IGV4Y2VlZHMgdGhlIEU4MTAgbWF4IE1BQyBmcmFtZSBzaXplDQo+ICg5NzI4KTsgc29tZQ0KPiAr
CSAqIFBGcyByZWplY3QgdGhlIG91dC1vZi1yYW5nZSB2YWx1ZSB3aXRoDQo+IFZJUlRDSE5MX1NU
QVRVU19FUlJfUEFSQU0uDQo+ICsJICogQ2FwIGl0IGF0IHRoZSBzaW5nbGUtYnVmZmVyIEhXIGxp
bWl0ICg9PSB0aGUgTUFDIGZyYW1lIG1heCksDQo+ICsJICogcmVzdG9yaW5nIHRoZSBwcmUtUGFn
ZS1Qb29sIGJlaGF2aW91ci4NCj4gKwkgKi8NCj4gKwltYXhfZnJhbWUgPSBtaW4obWF4X2ZyYW1l
LCBMSUJJRV9NQVhfUlhfQlVGX0xFTik7DQo+IA0KPiAgCWlmIChhZGFwdGVyLT5jdXJyZW50X29w
ICE9IFZJUlRDSE5MX09QX1VOS05PV04pIHsNCj4gIAkJLyogYmFpbCBiZWNhdXNlIHdlIGFscmVh
ZHkgaGF2ZSBhIGNvbW1hbmQgcGVuZGluZyAqLw0KPiANCj4gYmFzZS1jb21taXQ6IGZiYzZhODBj
YjVkM2ZkNGFjNGI1NmU4YzlkNzkxZGQxN2JlODkwYzQNCj4gLS0NCj4gMi40My4wDQoNClJldmll
d2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNv
bT4NCg==
