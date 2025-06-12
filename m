Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8832EAD66F0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 06:52:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7A7B407BD;
	Thu, 12 Jun 2025 04:52:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A7EByiXXb3Or; Thu, 12 Jun 2025 04:52:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27E1C407BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749703945;
	bh=i7o7nLZkB8xU3nJf3DUxyYfm8JN/nzSKQbprdXa6//A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0ucCfy1AgnmvGkCN9ZIttvTZWswzWwa325LPb35nhZrbjyIT1e0Gu3kzRZiFAaSCV
	 5mCC631hFXPJI7uvDH7uu7ZqTxaTHYlVIy12zfNmX0lJsOk494zH8IdMfONJhGLF5m
	 cLmp+3OaMnpkICemOPTVhu6jemkag1bD3C4WZQ1c1TWP7BRRz711Ejr03DxImE5Q+8
	 coJSnXOSGEd/HY6Ip6RN38Ku55SpyllRIFtdvJrGVwcqzd9TC3/j4dhfIBolxFdzPT
	 81sRvpBbNcmpC0Uhf4qYTaeAvNshU8We9pihjNCvCQcOyNjLiZHnDUmYLGxYQouC2L
	 uKFRw7EaAhk6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27E1C407BE;
	Thu, 12 Jun 2025 04:52:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DFDD2183
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 04:52:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C6E6F6079F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 04:52:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i11lufIRfII8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 04:52:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 04520606C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04520606C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 04520606C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 04:52:22 +0000 (UTC)
X-CSE-ConnectionGUID: 4m5douS6RtaP/Y/pU5p6NA==
X-CSE-MsgGUID: YLvl480SRzS40jYmUcyQvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="69436230"
X-IronPort-AV: E=Sophos;i="6.16,229,1744095600"; d="scan'208";a="69436230"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 21:52:18 -0700
X-CSE-ConnectionGUID: Qfm0rCw2Tm6yse2tvvje7g==
X-CSE-MsgGUID: aSJmpqB3SmO9mcrlmmeJSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,229,1744095600"; d="scan'208";a="147308395"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 21:52:19 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 21:52:17 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 11 Jun 2025 21:52:17 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.51)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 21:52:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w0/Ruyx8uapMXSg5IXUj857lSl90KJiMk91Xxk/yEZXi1DFxSfBE4cjZn5/WS4x4DRQMcApZO/N3D05quVyJcoU3f20ZW3yu5UquEREj4zKP0S9vW5PB3UELlIWX+nO+F21xHi728bayTy6f6uHVOAf5QvaLL85QhApFl59Vop9llcogFCfPWdMDr2aup+CyXvqCkANH8mzqhmFInaNe/4VQ2gPo41B8CiYas2Hm99V9R7921b8RxUWusrMTcyhcxaqcdumka9RWpf0qahhIj1jePzOil8jPjOuixn8edxTxMOsGXITkibu1+9AUafeOJnVUEn2IhH3WVp9wpTDtwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i7o7nLZkB8xU3nJf3DUxyYfm8JN/nzSKQbprdXa6//A=;
 b=bzY6cKetYoV6rFre3tbavvZ8jtkA7uHIMUipA/veR0F93iASOXijdmNi+ZIWbtM86270cpLpWijaMmfnR4gXDSBLnS+kpD0tLuQyvLSlSe1FNzSfBBVyfSEmcZOneY7jDawbvO4ZudGsymlPK77MkbkuupXwMD9iM6uPg6vgvaR53A1N5Cy5E8N+9ewzMrId1BDqh3MwgQN4f7WWwTjoPUjrtOw4XvVKtwMFw7MF2EKIDLM2JNjlg3pijQCy4CqgH+nnfZ4rf3kkSSgznlV4cnhR9ROq92fr8eycJmGo6IaICAsGvHHw9t/qxJyiUWcogq4PprewLQ9hjMcSPv2myg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH3PPF4E874A00C.namprd11.prod.outlook.com (2603:10b6:518:1::d1e)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.36; Thu, 12 Jun
 2025 04:52:10 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8813.024; Thu, 12 Jun 2025
 04:52:10 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix eswitch code
 memory leak in reset scenario
Thread-Index: AQHbxmP7LQEUMfeW5Eq3+DGKuPAr8bP/Hbmg
Date: Thu, 12 Jun 2025 04:52:09 +0000
Message-ID: <IA1PR11MB6241F0827F1A7D50469CC4068B74A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250516130907.3503623-1-grzegorz.nitka@intel.com>
In-Reply-To: <20250516130907.3503623-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH3PPF4E874A00C:EE_
x-ms-office365-filtering-correlation-id: 7c2e080e-f648-4fb9-93ce-08dda96ce3d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vpmZyDu77Obwu0sBNlurcQcHJrbFNFRVVG9UdiDBCxdRDi4dZ6it3nKcmBte?=
 =?us-ascii?Q?fqcEWnV9zE5XpS2qb1/XypWuvGX8ootG02m8pMQSaYlFXpwKy/pPKtXKqEBe?=
 =?us-ascii?Q?rxOrxEMizaF9sUgeG5IQE4gQFIBXKlJoeZI9kuzGmsRKzesfzxZjnGVI2h6i?=
 =?us-ascii?Q?mfPCaNM0GAeQ6Hr0zlbmmc9c3ErL1vTTSFrYEoqqU+OLT8HJp/J3DYREnG3c?=
 =?us-ascii?Q?5V9NIvZh+qIoMtxhHgXezivimkbYYVnveVdAGv5sSdtff4NLAsDNHj0DiKGi?=
 =?us-ascii?Q?UuV62y8GB55PSx4CmhvDFtTNC/zGdM0I6QFFz9afHflFCVc/gUWI1nTftsOE?=
 =?us-ascii?Q?hMw05uY6TpauSoHJ6uWyuBRfqQ5MOQeerx5M0xr4i0wccT+0b3P5AfokBQlO?=
 =?us-ascii?Q?fyG3Yj8rjEZzvEZoYnt5xjZ3gFsP2RxEXy2jLg6D4pi/3dMd9Vc2DvLLeW78?=
 =?us-ascii?Q?zCfbvNJS7hOdyjdCsw457yoc3mAOAJ+2Z1F3uH/m8CGc5PQDNVOItHNWekPW?=
 =?us-ascii?Q?siJlNtruKgGPoDeOfL6KXz51HFJsgd5ZPwKayMDTmLd7Lo5QUs8s7MrOvVK6?=
 =?us-ascii?Q?WjONcN7ONTj4chddgBDBN3X5xWn+hMNonUQYO8CSz8OBcivmszYyRz9poyUO?=
 =?us-ascii?Q?OLjVQwHcudLqi6oMiNI2/G21BUXIJNIrKJPiISVL02Ugqtslmh4EHEN/0r28?=
 =?us-ascii?Q?F3kt5TPfirozg6SKmK/J4vhqtxvkhdhVT0Qs9PUdXoxmRrX7gWH++karwUCU?=
 =?us-ascii?Q?/gVNGHT+SefecqEPTbVIBesPcdjuCFiemITPWECoPG24SDTbjk3nA6RIQH7V?=
 =?us-ascii?Q?gbOoteYUqM3zVnExU1AkVzKpjkPWL7FQYAqeF6YR4v3H2p+8+FkWBBFExJ2U?=
 =?us-ascii?Q?o080/c+wUUZrOmZL1U/A9DbrFjP2SUz8Uzqr7DL/GkcqVMEOpWnCqp/0NTkN?=
 =?us-ascii?Q?BW+DX6zEaXIrrBieQRyjyoKWGiZC2jAENVoFVnVx7g7Ij0v3PbAGlRZ1kR/8?=
 =?us-ascii?Q?/TYgMsEsXemphZGaJOc1kEIS+YlmXSMBPWOJ3nzeiSEGWtKlU3ou3eMYmHQq?=
 =?us-ascii?Q?XgxzZw2j1NKylHe1w3tnLB1/FZhYInj5eDNnEj3tbnvKB5DNxLvq6SVsPRgY?=
 =?us-ascii?Q?XlvrFUys9ViFLbmcm8HSf3EZZ0DHixE7rNTULjK2yRzcg8pkdEB6nZD2M40o?=
 =?us-ascii?Q?43ndTk/rcKtTbOp/zwYqFah24vuTlM3yZ1ncVFQM5+PAFuh/CJmWRyq15rhx?=
 =?us-ascii?Q?l67fmunCTZXEx6zb/0cZZDeo+5HCIa2fdTzbWEJKQyP31RsIy2kh0Pn4zBKY?=
 =?us-ascii?Q?O7XNJ0AxmfNHwEdPiMzHYDP+33agYOq31+cjruYRBcFWJAmsFjoSiCAZ7tXC?=
 =?us-ascii?Q?7qsiPuolkle9T+KJf2mA8hNo6SsT7+SqaghH8hIx3MgnJLE6sUNgGoOKrACj?=
 =?us-ascii?Q?MS2Z+J8TK5r/urQYQWmy3/o/4hg2qOvWPj8GSK0xRl9SygPV8ErDFCspKDPw?=
 =?us-ascii?Q?uwx5O/Uv5p5/p+c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1G0Wyrreh40K2rZcAT8bHTxXROnygj2HhkCcBID95DHSUrxkhkplGtX84CNt?=
 =?us-ascii?Q?24EWqjm27tj9Y9EdcWTh91ETnpW4rnm6AfEfnDf+RPnUFKk0oS8OZLy+u0hi?=
 =?us-ascii?Q?doL7WAeQzbO4FTY0jIVuyHygXhj3aGpnFgtql4nwN6W4bW+CP9Mf7m4TfTVj?=
 =?us-ascii?Q?WRMa3IBBZ/379OgN1WHtLDr90ggYXejAiVq437X4xvZyFjuHYJNFalmcHGA/?=
 =?us-ascii?Q?RDfo4zUqN0JQCh2SMjCsvVyfOPzjZbsr69zuLh1GTj9CcIVK1UkQHiBQCeOC?=
 =?us-ascii?Q?GxeLgdQCA3b8pSNEC2INqZokCQjDFZ10lHCOo7YvbuamPgUeOltKFwMplxBQ?=
 =?us-ascii?Q?ZHsjlir+no0T4xwhh8zUs6lU8hUJTQEX5yrqChzNHIZW+wmMfgXJUZoSd+Xf?=
 =?us-ascii?Q?f60RRyHhtVtfPCh+WC7OuSkeo/DpYlJmHuv09KDQPrVleEv4Wy/Mo5JBFpkK?=
 =?us-ascii?Q?PYtcW6cGDojzjh/9Y0BUqAX/XYj8v+tEcFqqp5otDSrtR8l7ZLar7A10k9jR?=
 =?us-ascii?Q?ygVh80Qq0nOvwtD0NJYev+TsbrWQ56tnToZuush5L/VufBIQLtQstsCJay8x?=
 =?us-ascii?Q?Lq4xlvRwAazdZjtU+WtQazkRjjc+DCAAzbgbLXJGsn0R9NlO6ZX4JTgUw9iD?=
 =?us-ascii?Q?ijV3SR+lml89kxBJgpl4vafAlbz5CDCFnEGPlwHXK12xibuELpZ49CmvizCa?=
 =?us-ascii?Q?8DB5bxk+9QeErOk6cgEiMukv6go33xd6sCrgoEOblxkn2DT4y5C9O/6r6szP?=
 =?us-ascii?Q?k7mygkqKScxr/+RdvLnGiyhg6upv8X6SC049yI2msbbSBbABqLSbQmeHrpRr?=
 =?us-ascii?Q?95fZ3vRqdp4B8cuZUb3OVWMenao8qK4E1RMj5MuCTbeIx2kRIVaKap0YMhZa?=
 =?us-ascii?Q?eTdEfxsIjlgRJQIP9gDTqMSvD48EJKcJu+o4HnL++6Yr5LRjbSFR8HLTeR/L?=
 =?us-ascii?Q?vptp6r2qyEe2cIPu5z3EU2QQPAeCekrKBStkamxmtqDO65gw3DN04MUryb7j?=
 =?us-ascii?Q?s6aix9oDL10uUKTjlb9OWBEDPi7B27p27YP8wTc28ojovpsw50TUbr6aB+rU?=
 =?us-ascii?Q?kkQaCTNiEjPONG/FhVdl3nW1mtn3O/MMGGj+OFikMO1/DjA5ueTPTqbTZvtt?=
 =?us-ascii?Q?1ax90hevfd1+BwFp5UfOnlt46n5SE9MVpoDeDzhBOu7ORRyoumWMvx9quDHn?=
 =?us-ascii?Q?hXEKlwRXaj+K8k8yfENiEkiygnkbEnaBf+muD+Kzzu5v0u0iyCGuiKVQuPMF?=
 =?us-ascii?Q?xKQKg5oy/UoaJrQMtD7HxOiwiKKs4sZlQ2Y7Nbrvnjm5Bj9apfg55M6lyfS5?=
 =?us-ascii?Q?EicV+BJoh929kjftnMxXNpYabZUtT2Oj21IJVOcurU+P3VNAX5UhriKZ0wEf?=
 =?us-ascii?Q?HwTSZy1JnL9D2zYKJyGjBnCdvs0TGNOKLBZW6PEmWxXvFOWcY6nwFdqypT28?=
 =?us-ascii?Q?pgJlgxtyiUkEPeJsb9up+2Z6Z6YHaLTrlRESl9iAKRP0eAHpD40Zpf3nhMVQ?=
 =?us-ascii?Q?ZIhiR2H9NHeGGuMNGLbQY8HkDmgzS9iVBHe2xXJ8TI8PWMp/Bk1YJOh14H1Z?=
 =?us-ascii?Q?QITatPpbnfgJ1NDSayNQ5KJNdAsDHPM8MWwHkBEO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c2e080e-f648-4fb9-93ce-08dda96ce3d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2025 04:52:10.0261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kdRtldNf8szzB5GAAEMp1JUjseOuFXPUF8x8gh47p1S/Dcc2SclkURKqb6oXoYNIGY1jnQq0aelZmJpcBwJBsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF4E874A00C
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749703943; x=1781239943;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FiRUdBYJqWX7VEH/KAuyqcyl8Z8GXECxpu9n8sLCShs=;
 b=LxWGAq4Iz6xwJUNy4NETyMrsJMyoGunpUelNJe2fYUAMnzx9YObT/Gfx
 K+5ZFw/Sl83rMtkGgs7VcGaDUp7AFYTMa1AZHqvdb8+JeMCv7sSNhhkqW
 BrWQcbL2wHF60rHkBqQYV6o4h6o8b/YlWykwnthgGA0ghfewuNh1jGqGR
 d9Fawi/zH4mlslKJSykqM3iNCOjKbSjg3Tmu4sJcfQDdCjLScWqo1LWMZ
 1gfMMrYUNKPhvTq31imkhS0MqYSEAXfcAzIvK8NRCopcXC5Ougofir5ml
 AMMcvuuEUj4KOarYIGT31VS87RpzsJNVs5sw5OIlIwXXjy35FtJAixkrd
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LxWGAq4I
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix eswitch code
 memory leak in reset scenario
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: 16 May 2025 18:39
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix eswitch code memor=
y leak in reset scenario
>
> Add simple eswitch mode checker in attaching VF procedure and allocate re=
quired port representor memory structures only in switchdev mode.
> The reset flows triggers VF (if present) detach/attach procedure.
> It might involve VF port representor(s) re-creation if the device is conf=
igured is switchdev mode (not legacy one).
> The memory was blindly allocated in current implementation, regardless of=
 the mode and not freed if in legacy mode.
>
> Kmemeleak trace:
>  unreferenced object (percpu) 0x7e3bce5b888458 (size 40):
>  comm "bash", pid 1784, jiffies 4295743894
>   hex dump (first 32 bytes on cpu 45):
>    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>  backtrace (crc 0):
>    pcpu_alloc_noprof+0x4c4/0x7c0
>    ice_repr_create+0x66/0x130 [ice]
>    ice_repr_create_vf+0x22/0x70 [ice]
>    ice_eswitch_attach_vf+0x1b/0xa0 [ice]
>    ice_reset_all_vfs+0x1dd/0x2f0 [ice]
>    ice_pci_err_resume+0x3b/0xb0 [ice]
>    pci_reset_function+0x8f/0x120
>    reset_store+0x56/0xa0
>    kernfs_fop_write_iter+0x120/0x1b0
>    vfs_write+0x31c/0x430
>    ksys_write+0x61/0xd0
>    do_syscall_64+0x5b/0x180
>    entry_SYSCALL_64_after_hwframe+0x76/0x7e
>
> Testing hints (ethX is PF netdev):
> - create at least one VF
>    echo 1 > /sys/class/net/ethX/device/sriov_numvfs
> - trigger the reset
>    echo 1 > /sys/class/net/ethX/device/reset
>
> Fixes: 415db8399d06 ("ice: make representor code generic")
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>
> v1->v2: rebase, adding netdev mailing list
>
> ---
> drivers/net/ethernet/intel/ice/ice_eswitch.c | 6 +++++-
> 1 file changed, 5 insertions(+), 1 deletion(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
