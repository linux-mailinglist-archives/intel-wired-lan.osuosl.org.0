Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qH5DNjix8GnVXQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 15:08:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A4348588F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 15:08:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D3A9414BE;
	Tue, 28 Apr 2026 13:08:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xms2CPZwR0MB; Tue, 28 Apr 2026 13:08:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F48A41E69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777381683;
	bh=gzQ2fTEJ9H6eszf8Xfv+/AY1lSkCZBtTF+ZTXVZFpbc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BcXTEr86xjDDCG2S/OvrZP7N/1/OIzLYPgTm+wqPjbbgNm62+tykGxxC5vtED0li/
	 NZU7jziemlSU1Gc8xI9lN5MHJD+N0308IXwB+m1Wkt5BHFL5QzqAhFhhndBG6CUeJn
	 povIEYG0nF1RLUNd3bXNLrg/OMnL9Or5BpDqwyIpyKI3KDWblRdkp5W+LMUb3JsHYv
	 DuYE9/D28OtJo3XYKyNxZfvQmBh9pceWnJLBmIohAMAdukqMqiHxeejYxYrdgKAupn
	 PWxQKVv+AiDcvlFcDyIojMUg6ZerCIDgz8bqPaADDj9ZMHJfUel25CESKxTlmPDWWe
	 TdaPXGoeRR7Zg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F48A41E69;
	Tue, 28 Apr 2026 13:08:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D4541B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 13:08:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4210183CC9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 13:08:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jrBczEALJF6f for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 13:07:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2560683C53
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2560683C53
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2560683C53
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 13:07:58 +0000 (UTC)
X-CSE-ConnectionGUID: Ea8qMbW9SkCbq29jSD6C4A==
X-CSE-MsgGUID: USsq/wo5T0KQ2OQQMmWtaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="88884967"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="88884967"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 06:07:57 -0700
X-CSE-ConnectionGUID: CmEZFXs+RRWz6JnRyHCLUA==
X-CSE-MsgGUID: HUlF8DUcQKWf4tniKR9hug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="272086284"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 06:07:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 06:07:56 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 06:07:56 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.65) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 06:07:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nC/J+hg7/43d/as6ftaSNWBAb8rEs8jlrgrcftDXgBTsDjeers/3ESOOORIhBP2PMd7h+6PqGC/IcJZt2tIB5cOWFYAzZ4U+Vi5Drr4zDCJa53PpmXHseN5AVjevYYVpOY6SjPatwPCiWMEPEPVNxXz+HTZo4gCZHSiwOtbapw7L8a+PJCO4hIDRAcBtJhVIZQ9y0tTADEm/VAO+cux8mYhOG2z60xphpUGyttKOMm8PnV/JWqyvgpaiRLjYKWgwmJkyhBg+Y3jVP3A5ItfKrZvzqeuLNxD5Te0OzwzHoTMggyNUqyfU5ukBSjE2nhAkSSMqwOIJwoQYuNo+JP9Bzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gzQ2fTEJ9H6eszf8Xfv+/AY1lSkCZBtTF+ZTXVZFpbc=;
 b=a/kxTlvD2t9fi2ghbbmwDiMJS9jb3ejMPRj9oYPZVAkDqPFDw3ftR3afjTDiFQEMF2vrVdeApFw3eAYGje/hBR+3eDvjnREBDogZkNnnQVu1crqjq0A3TdwF/UfZGyVRhi6keW29PoUKeBblbFQuttjzKq2yaCmHmgbyez65QcrlKG6eHS2ALkH5K4Lm7OhPz6Z8jsTdovwgjM3PdRNFd6iedxK4VWwG27dhEqZSzt02NZ57LoKxP609ZqTj1CuYBhOs6lY1qmOQeK/9cch9qoS9CtuIamSBJXbby9HIqTG2Gvh5nVRo22390h4nrHGUAgb+mB9VrzJtzmqJk+zxtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ2PR11MB7548.namprd11.prod.outlook.com (2603:10b6:a03:4cb::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 13:07:50 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 13:07:48 +0000
Message-ID: <9fd9877a-99d5-4710-a063-ca9a62d425c5@intel.com>
Date: Tue, 28 Apr 2026 15:07:45 +0200
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Aaron Ma <aaron.ma@canonical.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Akeem G Abodunrin
 <akeem.g.abodunrin@intel.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 <intel-wired-lan@lists.osuosl.org>, Kohei Enju <kohei@enjuk.jp>
References: <20260424030345.1140665-1-aaron.ma@canonical.com>
 <0d1ef57c-7ab6-4ed1-bc11-323aeeb12eac@molgen.mpg.de>
 <CAJ6xRxUEcbadApMg0i7ngcqYMUacrGNvCrUZ96sqkW22TsC7iA@mail.gmail.com>
 <091fa6fa-0f1d-40b3-9c32-8401306f0e66@molgen.mpg.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <091fa6fa-0f1d-40b3-9c32-8401306f0e66@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI4PEPF00000134.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:808:1::8a9) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ2PR11MB7548:EE_
X-MS-Office365-Filtering-Correlation-Id: 55f246c8-d8e6-4631-df27-08dea52725b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: 0wG32ZCowrDBlKwytFOpPTx2x3et+7DR285AngsntX0Ahpf03ztUpZkXyNmp8vu2J8ewtJVa2aYcBv7oeFhhadqdD/v6vTsnDeucqxXiKPsHqiQg/BICGnctgHRNZ5eMZQQneSkUZRwDYL710VapLdrckvd1M95kidxr1zNMPJRzYMMGs5UatS3fiKoOQyv76mcnlpV7WmPBQEWLe1weNYtKF+f0wAfoOGmHODSSxZJ444W29EnUCz4NJaafIIsoHV5qBjZgJTMlJqTz676FIXqXhJaodz9w4uoyjsqyw9oDQp0NGzF/Kldo0QeO+7+i+Wi4ofNYxnabVDmHo8TBCl4hTJQ3it9qDKwkKPdoolS1i0WNOuOt80nboIWFwMKc+NEEP9AdnrtDvO+UC6gbQ0LxTD6K56qCBcEm+6Wbl7KWMYgIPXlFQFv+Dc7S4arTPiPZkpkaTM2V0uPhWzi8uxg/s+nooMk4AV09583jCeANNSKSuqQD6AxAy0jYnjBqYXiJnexuLvmCb+LkBakfkBZU0ku0N7pKiX89n5eSZxkahoi25mSrPy77/VHkt9+MhRiS4gtMWVAU4eeAUGwbCObZeX5Qraykrp9vfAE7bwqFP8+OMb9lqx/HO7UiiS7R4a5AQ+ca9JGI17euV5ImORy34OssUXwyZOixxYpvnTSagK6GwZ0RIgTCiPtGH2wYGF50D4D4XPAjFY9auFL7adxk9+FAH/uYAcPrjrL2SKQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzhYRWI2bGYrWXlYdnJLK3FFb3J6WWNGOGtHVG9FMXJxaFFNbHZqRWlCZ3Ev?=
 =?utf-8?B?WkxHQUdWeXFveGdnendKcFN1VWQ1NlpvbU1TZU5nNThKWVlaNWZ4THNKOXdX?=
 =?utf-8?B?Z3ZtRkllZFNZcE44bDF1S25KNWVjTmFTcjlsQlpXUGJIY01yVExkVm1uRkNm?=
 =?utf-8?B?UnN0bWtlRW5QM1ZtSVhQQ1YwODJqSG9ESUJVWjU2aTdwa1BERWFNdWVJaS9G?=
 =?utf-8?B?T01CamJVemNWKzBlYjNkbWRheHFUS3JzMHRQREs3a2o3WkJwdlJVWWJLL21I?=
 =?utf-8?B?amZsVldQaUN1OGVxb3dWR0F2WDNUdTZZL1p5QzBCMzFuYkFaR2NYdytLeHo2?=
 =?utf-8?B?aFp0bjVUK2k3SDY0SnJSQms4R1ZEUmZvckg4Zk1YN3ZzaUhHUDRwWk9PM1pE?=
 =?utf-8?B?aVJyMkppc05rYzBpVmxuYkNqMTZQNDVUeXlvYzVRV2NhTEhwd1dIMXRMc25p?=
 =?utf-8?B?bG42QVJqTlFSMjZQcVpqbzJJMjRZcUdEaEQ2R3psNEhCeGtTSzIyeHpCL3Qw?=
 =?utf-8?B?UGM0TDJIdG16ZlN0VG56TlA5MFVzV0pnREllQW9XWkF0OW84ZlhnTkpUOG5v?=
 =?utf-8?B?aVM4YTYvclZ6SkpLSWUrRXI0NkpqQy9JeE1hYlBGQzArczdUZy9zeXZ4OG1i?=
 =?utf-8?B?OFRIeGwyRG1WdmtYaGpadWh0M0lyb2VENE5TUDlsNmp6RXZKZmo5YVlwN0xu?=
 =?utf-8?B?MUc2ZUVyTVdtcGVyMG1PM3BOeGJzd2QyTlRJRzR5N1ZWVmhka2UrNTA3MDFt?=
 =?utf-8?B?Z24zSmNCK2VxSy9kNEVlc0d3VUl0T0pNUG41S1A5YUtyYThwUFZ4ZzFvWE8w?=
 =?utf-8?B?N2VsWVM1cnBzeVFTYk92RFZ0bEVmMnk0TzRhVTlzSUZjWmpuSlVNZlBlS0R1?=
 =?utf-8?B?TjcyNjNpTEZaRWxkejdzZlA3RmNlWVplYkErY21OQTl1aDN5R0JMUkI2NHpu?=
 =?utf-8?B?YXA2blpOdEJkYUtnY3phK29TZHhkeGY5b0NOam8zTlBjeWljSmpOR1VkSGRC?=
 =?utf-8?B?Q1R0S2puaVhJaUxyM0Y0RENMaUVETWxKYm5kSWJBSWJoM1lhN293NjdVd1RB?=
 =?utf-8?B?aHBtbHEwN0I5OXFRaXZiVUQwU05wZS8wWjI3M3g0YTl1anZWZjZ1UDAveDlV?=
 =?utf-8?B?VUViUUlHNTZab3RnL25YbGVzV3JyZmpPbEwxUXdVVVV3VVFLTTU3UFBTNmZB?=
 =?utf-8?B?bE11ZVA1QzROZHRpUkJPL3E5Vk9XWEh4OFNWalhLZ3lnZGIwdVJhM3FUSEow?=
 =?utf-8?B?OXRmTCt1UFVkVG9XcC9MUGZJK0NOVFRtaUVTY3VYYXVTekNjU3FPV3pFeGha?=
 =?utf-8?B?MjlidHZQclgxQmZjSlR4bzdYb3NxeUlMaXdnc29NUjBWalNESnExWGZxU1lK?=
 =?utf-8?B?WUUrMDdkVHpXdW04cDdXYXppWFBlVSszTmsrM2Jrb2pYMW43S0xHVS9OT05r?=
 =?utf-8?B?VVkweWpqM3ZYTlVRYnJCaW53bnNHQ1pEUlRNUmVtbHdlNzFHRnNYZlE5UUtK?=
 =?utf-8?B?UVI1WThDTDBKS1IzWHJxWHFwdWR1aUtxTjFoWE5SQzE0WHhCRXg0ejA4d1NG?=
 =?utf-8?B?UzFUd0FLWGNkdW1PN2dCRml2b0U5UndKUGZxM1ZqOWpFUW8vZ1JYYnBicmFG?=
 =?utf-8?B?cDRPRzdvNkV4WUIxQmJPNTVOcmMzZDNMK0cxYkZDM2YwUEM4akYxcWVtYkZY?=
 =?utf-8?B?MDBwVFY5bGtockl4clZONWxvbDkyNjZlUVY4cnZXd29tQWplKzM1SGp4UGJ6?=
 =?utf-8?B?V3NMUHNYend5cXB0NDVualM1ZFI2clVVMkNiWDJ1MHpvMnRWSG1oaW9tYU1D?=
 =?utf-8?B?L2lXNWpoU1duZFo0YkpBZk5DNFJpOXNZNEFINE9KWVBjS1pGY0M5ZTlIMHg5?=
 =?utf-8?B?c2tUU3laK3dSTzVCWXVyVzgyTEpMM3FOemNnbUozcEhFL0lZd1dxbzZHYWh6?=
 =?utf-8?B?NFF0MWRja2FOUCtFcTdwQkhyQm1FWVZBcHNqU3lSOUtwcXBOZCs5Skk3OFJC?=
 =?utf-8?B?TlF3andZcHdQWER4UE15OERmNkhPY09wUm96NDhpcXN0OE52THdSc1o0UURG?=
 =?utf-8?B?cEZCa0NyZ1dhbTRWNmI3bHNRQkRwaDZZSTJUdTRJMEZ2NDZPejA0aktmVmwx?=
 =?utf-8?B?MHd2ZExVMFhwVndBL000Y3ZpUUU4Ui9VU0NaeExxSi9kdmpWZmN5VlBjdFl3?=
 =?utf-8?B?dXJpR0hiRWJLNkg3Q1AzTHVTUUZRNWxOTFpLZnhtS2FYV1JiYVlJQXNPZVd2?=
 =?utf-8?B?SU9SRmM0SWRtdmtwQk1nOFpTeDM1Tjg4cmtEMGIyT3BRd3h3Z2cxUm1RNGdm?=
 =?utf-8?B?MjU5a2syaDg5dDJRdFZnQzdoSGhyZm43aDc2UC8rYmozbnE5WVMzM1lPVjBI?=
 =?utf-8?Q?5ySGVk6KcPQU1f30=3D?=
X-Exchange-RoutingPolicyChecked: Umz/pb8mRQhtHlUtE5GaGxRkSXHhtwi7Fzk5/7Wrk5eOWENI25VYGIOEculugKwec6lfFoJcqKdKqAOrI/SZGYiejWhMQ30NhawyyoRPHSOdcNKBNsRQL7+M1xkNZUhS60vTfDT6X/Gkur+8xo8xCVqc6VEMPYZJiLsfaSe6VXXYTuBxBA7ZNiwDEczqVhZJ0l4NCgkwaPBOAUtpTH7AKiPVvNGksqbDrJwEmTuzWD9Poh8tSWrwPfPlYgtQoHuc3L5lzJMM5w+rX6ElwKF2osSDPjTFGapzirq7S06taQT0S3oVy1BUThhHCTqWeaaJxqMdwYZLRtw1pfPx/D48tw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 55f246c8-d8e6-4631-df27-08dea52725b1
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 13:07:48.9350 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KQd0okPC0uG0Dk+uL7KI6ctMPvS4Nx1Jb8s4riRu23Cs1fZU8sGNoTZoLl+ig/UEAlJ77jxULWtvxlfJEkJe3B+G2c0KYATh0hA9yq1KKU4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7548
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777381678; x=1808917678;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/2lxsKFcsNNogub/GPl2HViuxYKd6b19VH7JzRuX51I=;
 b=OYVt4KEXhSbrNCuhwJBlin0vH1qYqj1N5cSwyeon68C+T8QP9OKGh11v
 5cwMdXHL6khuHZFHwnhzXxNfMfrh1yWxjqQVi9SdeXk2LxTgGXJoCp0ng
 /jI7AI2IdUnX5PXvUVHqHEvh9rwhyjjIoLmugu5xkH5lU4piG/KmcH+Wv
 Xq9z9BqjdOlE2UpQaJfvuvypxKc5VQSjTT+7pNhhDHjCaZJv1bZTKo/ck
 TjKPjG7uDjLO43os8sqOSH8pqs2NUYSAH3Y7TFUsLvvdoEjO1Pb3D+mvu
 TZnNT1fE0GiNnCXTXmRQz/VowsGCAJjunq5JnwcR+RsuMmze4QPqhvttU
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OYVt4KEX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: wait for reset completion in
 ice_resume()
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
X-Rspamd-Queue-Id: C7A4348588F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:aaron.ma@canonical.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:akeem.g.abodunrin@intel.com,m:jesse.brandeburg@intel.com,m:kohei@enjuk.jp,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.976];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid]


>>>> +     ret = ice_wait_for_reset(pf, 10 * HZ);
>>>
>>> Why not pass a delay in micro/milliseconds?
>>
>> ice_wait_for_reset() takes jiffies — that's the existing API.
> 
> It’s recommended to use `msecs_to_jiffies()` to make it HZ invariant.

there is also secs_to_jiffies()

> 
>>>> +     if (ret)
>>>> +             dev_err(dev, "Wait for reset failed during resume: 
>>>> %d\n", ret);
>>>
>>> Mention the delay?
>>
>> Good point. I'll include the timeout in the error message in v3.
> 
> Awesome.
> 
> […]
> 
> 
> Thanks,
> 
> Paul

