Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNTrNnAqwWmbRAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 12:56:32 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B09092F17DF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 12:56:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1F6160737;
	Mon, 23 Mar 2026 11:56:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2lnRHSPmF9T9; Mon, 23 Mar 2026 11:56:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14F0660755
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774266988;
	bh=5Uz1VQRX7z8Z311vbk4bvUcBQuE2ilzktPkAViEMf0Y=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BYII5Hn029+DSUqBEKRIHyOF+zdHZx576bQYzcaQhi3a5QmsHISDeKpPOfrfnV94z
	 afcePeoRTi7yTke1YpJKN2DA0CcPIAFsv6OwWZbHuy87sBvCU6WmOFKAf+Kmyg/YRi
	 aoTnZUxACX//EpmeCoMQlZM7NWTw75EVwo9orTOOj1g6xc2ERkzlFfcWinBjZFOHwk
	 HUggO2zdwvK8jraKXIKN7PHorMYJAyXWru5uKLCGNXnpVllst5G89ieEapNc3H/94X
	 XpefgHM5Z2ohnuyws/3SX9PyggkLYU4UtxRshX5L8Rf8UpnnOhuvuWl0xmP2O5BMc/
	 trQLflf0fA4yQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14F0660755;
	Mon, 23 Mar 2026 11:56:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id AE472F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 11:56:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 92F9A400D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 11:56:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BV7XvRByWBBF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 11:56:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BDB4B400C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDB4B400C0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BDB4B400C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 11:56:25 +0000 (UTC)
X-CSE-ConnectionGUID: SJ4Dy3P0Si6kuAWqWPV/Pw==
X-CSE-MsgGUID: nvTrj/LdQlqQ0rmaqZT4bg==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="97881832"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="97881832"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 04:56:24 -0700
X-CSE-ConnectionGUID: nwqcOwMmRwGp134AsEryqQ==
X-CSE-MsgGUID: SVkI97MHQYqHLcc3wcKTPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="223077288"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 04:56:24 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 04:56:22 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 04:56:22 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.42) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 04:56:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CXL9aDZoSzgspiIhy7lEYFqQOTBZ5T1G3XfvJVzJ6V6rjzC0yMvt5uQQg3ZAdSxz6CBByzktyqJNZ70mey+oOGkWsterovwmnMrphuZEVZxw2lIT5SkPfazTAwGamOJQYdQT6fZRxmkHGddeT6tKQetU7rbpbfZCFmNc/0PuEM3q4eg4HnxFKYZIIHNAJ52d/MBe5A64A4rxu/7a9/+mDHgtC6d/bOVD9/KCkb7Hy5ffPnFKY2stpQmQksG4thczAYhVK16/LjhmPVfAqMDnDL0zPe8DHgEGPF3UHoakisu9PnvXLAuB3UUHD4vaBR+/WkSWIHwoJ1ovHtKnVNDNWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Uz1VQRX7z8Z311vbk4bvUcBQuE2ilzktPkAViEMf0Y=;
 b=SYVVT7QP2fabvdjPGIBv2QVXs6zEpDv6udE54/aBni4Vr1PskBULsejmctP9NeZvVvITFRPACs5VkL3hVLIPOZGkdfoKeSWCHjkga5RaD7d0mkPY0y6n66Ca8/v1s5u2bSHdrSRjcxE9aa42v/+Rpcd5AJyeNmX7dH0XlQ58F+mpqzVG2sPfPG+yw1JUeLXqti8qWzxCU5gan5F/AX5q1lKDAEsfg1nQxHKYEWixonEYidS6+Tj1TUWoT7pbcMUVgS1iSspp5NnHZEi1B9LOQrV/un+hWcdBeGBk+fS20U5q4G7pyh2c4ofmLKYjCR6hylNRx/Zu0N8GH+BZ8lRNFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV3PR11MB8530.namprd11.prod.outlook.com (2603:10b6:408:1b8::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Mon, 23 Mar
 2026 11:56:18 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Mon, 23 Mar 2026
 11:56:18 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: Paul Menzel <pmenzel@molgen.mpg.de>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] iavf: fix wrong VLAN mask
 for legacy Rx descriptors L2TAG2
Thread-Index: AQHcuq4mc5PAVG76qkic8lInrYAQXrW8ArFQ
Date: Mon, 23 Mar 2026 11:56:18 +0000
Message-ID: <IA3PR11MB8986767A1329ED35121D6E62E54BA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260323101558.1477593-1-poros@redhat.com>
In-Reply-To: <20260323101558.1477593-1-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV3PR11MB8530:EE_
x-ms-office365-filtering-correlation-id: 3a2db3ea-d992-48a7-b872-08de88d33175
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: vFnUcEfuIC55tdie4sg0b8iczJpbkRrb0TpSKMvKIL7mywaug93nbDLRM9+ApxxEHWkllY7b93H7q7UqPMX/korkjv2H+YjNfIx6pPnBRVc2EuKiNRyyyoNGXCzvh/s54rGkB7vd6KZqlM+gN+C2P3w0zMN3/0tWiqUKgXwrVGVh3PtbDoivpMjIrS/BuVYPcH4t/T4ZbMlVzrQsm/OyHb9BKka0b5gptAWC7X6mVcv7QAKCa+xDx7e94sX/MBoyHEJsd9Dxcvs2yfqvXhfUCAZwItiK8G/Q0FKbSRlxYj2yPgWIbbLvn0ygSLCYpCtzArFcybXMQFid+G9oidRREfygdg30rq95tpjGynktdDhTwYj3EVmp8tSoNTwLGjRu1ud3RBdwmfgUt8zuB177oJHbBmL3HMOQQ+lJrU0FR7cHxeadj61eGfoOBPteFOiKtQAqXYRcgUMJ7OScQlEtXZPs2G7G6MgMERlbBbbivu1gRAd9QQPysupUt2eGFoifi9iGBHteQwMZ8MCAbGHPuaK6XgLZcXp2NW1LmjnV7hnnsyRHtVgnm7C5V7Q8S6EYHCSFP9dvwRO329ppV/5YkP/LTe1quifhEWlFfhxcwpBv9zDpOm+weORgVpOV6tvXAkW7Uh2FPMrwccrGVUE743hS0LSDCvSARoQr1veKtTZXRmcyBj+dSNkvl3CfGjtowRSlQejUiIfPiQzPDdf3mslcoitYSnI2R3Pg8uehesx4uKmhQarGbkRfFZJoRvLEVD+H+JehLpdwWkeO038MtZhurfBoYZ1aFayTy3lhNfg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tQ2NF1hbljqUwvKv9L/nIxAQiio4opFE08kGPa4QtabniJd0o64S1HLKfBzn?=
 =?us-ascii?Q?Z0dfRKwDF21+nGIXCkEKDQ4QaCFQdfNwrvgKUUQkhu3n3ScYUexlgGuKKXUr?=
 =?us-ascii?Q?Ke2bEqwedf5XCG0akpeuNhfXwM2EgAi2WKqY9UfnmjRGJlwrlEBEBJdNDAJX?=
 =?us-ascii?Q?MlZaGJ+7lRKNClE+AaUqKaxCrihowU9gV2NmZnHPd91V88QXx+k8BzLz4rZ1?=
 =?us-ascii?Q?oHy9u6TMRkYi966LK6zlFmz1zGrcpMvnqMKAT8DnVoi6Gw22McR8+CXC+fhC?=
 =?us-ascii?Q?ud528ryMAtnlDHQto7bH/pWvfA6xLGY6cGuJxt5CWzVLJQThjIyJrx0mYa5v?=
 =?us-ascii?Q?njo99s/UdFAfm7SDNzfk3PSFuGEWm6kWD+mc7FKTSO9z8Fxr6jkN0ZH341UE?=
 =?us-ascii?Q?/hPf12zeS2ab1lpN1qB7am49smeZMYID0TfxHFoBmIwOmyI5dpW8ZTBp4zO+?=
 =?us-ascii?Q?qP9l+1jP8ulY9ejK4B08yp8i7Qc43Wq3ytjTjfA3wcwuShIc2oyVxfNOtNhC?=
 =?us-ascii?Q?dHkrIWqzd+tarX+iR7CodnwtF/uqUOZ8hcNIkdlWxXTtMNE1rifVuJPCxTcY?=
 =?us-ascii?Q?fnGngQB1MTUxlGHpcW8FPokKBP6Z1TrFHbwF2J6LPpAbf3LnqXSC9M3fubGR?=
 =?us-ascii?Q?mkCfFfXreJFKQcoF1Kjq7YTL7rjA59qtvbmYfjS5qqdA2MAxpAG7w8fI2A5b?=
 =?us-ascii?Q?BnNvJY2fAAgbfhupGx3lzRdm/N0PUZBBogq+xkjbfHziRrmBJK4h++jBkTjS?=
 =?us-ascii?Q?n3pZI3FafTp/8PxveUVrzc8sBXxnMq+uqbUyYu+71SHI0ru1Ja0OnazvknEA?=
 =?us-ascii?Q?en15Ybz4JhM1MlXwonOoe9K5zLDmvq/7PKB6LgzeYHUOcHzd+KDFSBEAlJ41?=
 =?us-ascii?Q?r5F8q7nx0K3YWs2y4X71B2bOHKbQ1qq30en1CcfS0dHvTNYWzgeao1A2TV18?=
 =?us-ascii?Q?FpflJ5vaBaw+HJhTBU+YZmfKg7M97h4BLJYu9Xj0cgDsNJ1BvkGytCY15zLN?=
 =?us-ascii?Q?6IsKGsaipBvrg5/fpbyw2+uIfM8C3fcXi3WoBiPCuseWVE6kGj7ArCV6ODyj?=
 =?us-ascii?Q?09UTbCyluiEkcLvymJdqw0uKYIuAa40t0MFUvpGsFBuwyO2PutOsllbJlcP0?=
 =?us-ascii?Q?AjHVCFdMrNeeikmUrBFKxjPurd+9CQrT0s4Tx4TCBhmq6l2lPQJN7pRwt8wv?=
 =?us-ascii?Q?y7fxhMfrn7RY7Gtsgc0/rpfv/LiGzBPyj0BBXDNOZ356zsmidXeMfqynXc2e?=
 =?us-ascii?Q?dEcJhEy9HEdYEDEkx7i6L2HD7bj5g11N+iQBOfKtL5QrJPUSbT4LPxy0AkoH?=
 =?us-ascii?Q?6jNSz86Bek5lpxiRbpU8DjskvSB48dMAieHIGTdcSHevj+TXapL9Ti3M0RYb?=
 =?us-ascii?Q?m+APc+QZ5ceHzzkL/KiBQMk7oI6TnovRPUbVw/W2y5CS/sGzmVROijS7LfRt?=
 =?us-ascii?Q?REd7EU6H3n/hdzfpWiGV35Psqu6Xj0qBS1ulFD6mB4ehDWI3bL0aNVnoR3Xv?=
 =?us-ascii?Q?k+Ynmxn43iWbHO4PZC6ZyBbnYGe+snxlpO+uI6/cA+OhOVWD9SEsWWbNlqW0?=
 =?us-ascii?Q?M8959sWOH28BvMuBsNQCesJj370qqPqcFnQVTXcLCctnm/Gt7x52DoBNeZWa?=
 =?us-ascii?Q?TYeaO8aJzcJIEl2i+Sth8oyZmF1m/lf1nGwmohl0cUfRvbsVwmdL8b6p17iH?=
 =?us-ascii?Q?fpHlh5YQzedEDRZs9Aybz2U+Q07nGuoaAlfjERaA/C4Y8EUS/SIo/Wn8eotp?=
 =?us-ascii?Q?xFltnW9nIhtrgrjZy7GOWMWB9Zv/N0E=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: GdolC37oO6GXMlA7qRQ2wGqY1q/ammYqfUIUWq+n3/9gdc+qUUt39HX1e8hqN0fDKjWCJJS6lRyynGWMh+XyrpFGrDH4Bg+w2aX+nSynlfAZViWeUJZzv2o1rp9EAFawi7CT5D83dqPKTkIuyIvrjsXdX59TLPLgG0otZHHT+Lkocwn/aDJrGAORXejDsUYNgh0yuiPnO8ghud5YrMLbj4kknwOUeKcuigFF/VemSAA/yRg01ttykie85FSvwaW4JGrtlSGdpHsu/XRKJpJJkoF5lK809PF/E/QlJYhgOkeK1JASoQR8GzNUl+mpyH4OX6HQq3lMj5Slx4dfx720DA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a2db3ea-d992-48a7-b872-08de88d33175
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2026 11:56:18.2375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 19gElGld+e7DoeQAa/nyDJJpNBzhn+9EvhZlTNvAC7x/kaTaNHc+M/d4AEOvluglku/1KsNHjcd9n1/gxNk+4NbWOya8HT77eBByVsHBFx4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8530
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774266986; x=1805802986;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uSrcjAAXNcoHk99wZU9+xmzf7YQ2j5rJCWbBqn3R2rM=;
 b=KYWOmPQiusTywbK6jl/tpzXdO3n8rgprzRAVHMK5qd593dVxNakQsG56
 ELnLiAIg0Akjp0fH3J/YIEkimExqrCDpP4S3ENKVzN9/Nk6y+tGvES1/A
 kjMjuFm1j1Pis9w225WY2yHTdmdgSAyNEFGo/FU39pdo2tKqFocuDX0GU
 m6EWX7V7NpW76OrqXIniH5wSYdLXAu9mjr5dXxYbdIAEBKphJFIIM3yVX
 SI7Ey/EDDa9wTJa67o5hdlSG6/3b7V5iPnmfeZThf5pBpvOj/0ccYI/1v
 LZ1mBeRM4aKZsYKSMGnFTSGrASFG60WQNG7Kbi1Yg6gUAcxOLGhlnyK5W
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KYWOmPQi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] iavf: fix wrong VLAN mask
 for legacy Rx descriptors L2TAG2
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:pmenzel@molgen.mpg.de,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:mateusz.polchlopek@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: B09092F17DF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Petr Oros
> Sent: Monday, March 23, 2026 11:16 AM
> To: netdev@vger.kernel.org
> Cc: Paul Menzel <pmenzel@molgen.mpg.de>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Eric Dumazet <edumazet@google.com>;
> linux-kernel@vger.kernel.org; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Mateusz Polchlopek
> <mateusz.polchlopek@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>;
> intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] iavf: fix wrong VLAN
> mask for legacy Rx descriptors L2TAG2
>=20
> The IAVF_RXD_LEGACY_L2TAG2_M mask was incorrectly defined as
> GENMASK_ULL(63, 32), extracting 32 bits from qw2 instead of the 16-bit
> VLAN tag. In the legacy Rx descriptor layout, the 2nd L2TAG2 (VLAN
> tag) occupies bits 63:48 of qw2, not 63:32.
>=20
> The oversized mask causes FIELD_GET to return a 32-bit value where the
> actual VLAN tag sits in bits 31:16. When this value is passed to
> iavf_receive_skb() as a u16 parameter, it gets truncated to the lower
> 16 bits (which contain the 1st L2TAG2, typically zero). As a result,
> __vlan_hwaccel_put_tag() is never called and software VLAN interfaces
> on VFs receive no traffic.
>=20
> This affects VFs behind ice PF (VIRTCHNL VLAN v2) when the PF
> advertises VLAN stripping into L2TAG2_2 and legacy descriptors are
> used.
>=20
> The flex descriptor path already uses the correct mask
> (IAVF_RXD_FLEX_L2TAG2_2_M =3D GENMASK_ULL(63, 48)).
>=20
> Reproducer:
>  1. Create 2 VFs on ice PF (echo 2 > sriov_numvfs)  2. Disable
> spoofchk on both VFs  3. Move each VF into a separate network
> namespace  4. On each VF: create VLAN interface (e.g. vlan 198),
> assign IP,
>     bring up
>  5. Set rx-vlan-offload OFF on both VFs
>  6. Ping between VLAN interfaces -> expect PASS
>     (VLAN tag stays in packet data, kernel matches in-band)  7. Set
> rx-vlan-offload ON on both VFs  8. Ping between VLAN interfaces ->
> expect FAIL if bug present
>     (HW strips VLAN tag into descriptor L2TAG2 field, wrong mask
>     extracts bits 47:32 instead of 63:48, truncated to u16 -> zero,
>     __vlan_hwaccel_put_tag() never called, packet delivered to parent
>     interface, not VLAN interface)
>=20
> The reproducer requires legacy Rx descriptors. On modern ice + iavf
> with full PTP support, flex descriptors are always negotiated and the
> buggy legacy path is never reached. Flex descriptors require all of:
>  - CONFIG_PTP_1588_CLOCK enabled
>  - VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC granted by PF
>  - PTP capabilities negotiated (VIRTCHNL_VF_CAP_PTP)
>  - VIRTCHNL_1588_PTP_CAP_RX_TSTAMP supported
>  - VIRTCHNL_RXDID_2_FLEX_SQ_NIC present in DDP profile
>=20
> If any condition is not met, iavf_select_rx_desc_format() falls back
> to legacy descriptors (RXDID=3D1) and the wrong L2TAG2 mask is hit.
>=20
> Fixes: 2dc8e7c36d80 ("iavf: refactor iavf_clean_rx_irq to support
> legacy and flex descriptors")
> Signed-off-by: Petr Oros <poros@redhat.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> ---
> v2: added reproducer steps and flex descriptor requirements to commit
>     message (Paul)
> ---
>  drivers/net/ethernet/intel/iavf/iavf_type.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h
> b/drivers/net/ethernet/intel/iavf/iavf_type.h
> index 1d8cf29cb65ac5..5bb1de1cfd33b1 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_type.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
> @@ -277,7 +277,7 @@ struct iavf_rx_desc {
>  /* L2 Tag 2 Presence */
>  #define IAVF_RXD_LEGACY_L2TAG2P_M		BIT(0)
>  /* Stripped S-TAG VLAN from the receive packet */
> -#define IAVF_RXD_LEGACY_L2TAG2_M		GENMASK_ULL(63, 32)
> +#define IAVF_RXD_LEGACY_L2TAG2_M		GENMASK_ULL(63, 48)
>  /* Stripped S-TAG VLAN from the receive packet */
>  #define IAVF_RXD_FLEX_L2TAG2_2_M		GENMASK_ULL(63, 48)
>  /* The packet is a UDP tunneled packet */
> --
> 2.52.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
