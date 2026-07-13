Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JVLcLZfyVGo1hwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 16:13:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0038974C373
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 16:13:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="ja/xaFqL";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A9A4280EAD;
	Mon, 13 Jul 2026 14:13:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CzidL1jLJoUZ; Mon, 13 Jul 2026 14:13:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2577B80EBB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783952021;
	bh=cqLgiwpuz+QAgDBf1eYV75iuxOMdvunMfMxPXXEMD4M=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ja/xaFqLkDtLVvo7Zrm7fptl7VaLPJofwOBA4UxL7rrh8SZdKrLAQq+wrskMlr7Y1
	 F7lNNnvm5SZqn8tofKHQ+xSm0KMynQ30xdPpXNNlYsTglGHTdbnrVU4K+Lr+Gyq/nm
	 uYpgpNbD1yr+lnTG2BYJ6j/xxPM93BzvvkjxKFShJDR7eBY5Qc0MLVyfACPNM8Y984
	 /VloGMMDWMkCgdp/stCsk/6wI4yvchbVuadvPH2zxrsK8Vn2NGzaE1hnWc1E+kWA7L
	 DzF2iKRlob3A/m5Quncpe6AZ1JNKL6+Fye5RrqWQpMc/9lPF/YiPrW5ULKCfoNNvew
	 a9RoQ/i4gBsfg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2577B80EBB;
	Mon, 13 Jul 2026 14:13:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A48BC128
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 14:13:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8ACAD60816
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 14:13:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g7eS0HlGUR7p for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2026 14:13:39 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E1DEC60807
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1DEC60807
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E1DEC60807
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 14:13:38 +0000 (UTC)
X-CSE-ConnectionGUID: XihYzoiZSIqOMloxqCsKxg==
X-CSE-MsgGUID: b2FBMJL/TgyIdF6hFUwZGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84439008"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="84439008"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 07:13:38 -0700
X-CSE-ConnectionGUID: mjUpQ4BJTPKyi1ObRLdYHA==
X-CSE-MsgGUID: SlK3YJuaSxa6tEqFcJPbDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="251131603"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 07:13:38 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 07:13:37 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 07:13:37 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.58) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 07:13:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=svQ0kiYRNJITkNTvXPyiaEcwThmXMD5EzISt3jjOb1/KS+INhIpJYXCruJLjPDDQGoKvXUB2SScsmj+zUa/8mjmMcJqhEQi48Z0HygFZ1uwjJAWOkJUKWPlmct1vk8G0ubDl7hwDKqfrEE79em+NxCsyAf6muXb6UD6euzRMaQk7GBVR5Xfg5xdzKD7faN+SoBvvtyc1q4an0UPej2ie2V7QNNO3FJ8f+B3QSsKiPsnHTLyVE0s1UQBwqUNDzW6/arv14nZKissKNCOn1AN4yjeYPBsbYf05WYbivt7LjSMONbjYuHrSxrpMIQbdd+Tz1hLyF01nETui1YDRhuxE/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cqLgiwpuz+QAgDBf1eYV75iuxOMdvunMfMxPXXEMD4M=;
 b=J9hbF7dUf+bq+PiKxZlw0vRRMPG9NO8398rTEiuq4DjMRd9R52kMzoyxXuhrolj/IHI0dYleO9rJJHaZmxNlkFkVaSVSRK1ngSThqVFY8n8UQ8EIe437T9DKIPeVRnXlLyCQUT/uR487XivndQtBPwls7bnTUF/C5vRhVPSd89i83ixKWu67uaihMuR/TWSSsVWwRE5dC1TnRJmRwG4jWzB6k467C/nrWENAnxmrxMtjUADezHyJeqYKPZ6/c63CO2Bm2xexHkLtvwsUFnNuh9UEwrpxfFRThAZV/lyNWTwu9T7o5TQuIb5Zbb9P+Y72mwibrMl64kFRusygQ4qyIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA3PR11MB7625.namprd11.prod.outlook.com (2603:10b6:806:305::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Mon, 13 Jul
 2026 14:13:34 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 14:13:34 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Schmidt, Michal" <mschmidt@redhat.com>, Jakub Kicinski <kuba@kernel.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Paolo
 Abeni" <pabeni@redhat.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, Marcin Szycik <marcin.szycik@linux.intel.com>
Thread-Topic: [PATCH iwl-net v2 1/2] ice: move ice_vsi_realloc_stat_arrays() up
Thread-Index: AQHdDZuatrSYQyGKCkaWFw+OvX5slbZriDRg
Date: Mon, 13 Jul 2026 14:13:34 +0000
Message-ID: <IA3PR11MB8986B2AD89D028979ECFBE42E5FA2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260706224346.22546-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20260706224346.22546-1-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA3PR11MB7625:EE_
x-ms-office365-filtering-correlation-id: d4a27317-22e8-4780-4a91-08dee0e8ed14
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|376014|1800799024|38070700021|22082099003|18002099003|56012099006|11063799006;
x-microsoft-antispam-message-info: 5nFdT9+vLaE5jIj4Jx2z64fUHIpXyY+e5C2XozuwTevK5wlofAHK2GznqskgK8V3ieDazJS8Zb5NgiEtGviMwwSScaHm4i/ix0VFMxFK0KnzXxKswR3YSyxW4RcX/LgfOCpPxEVTa2rXjCz41lLfbXvhalPAg8vtv7PxZrM499ItY/T2HILHT978iCmqdH00JKR0X+mE09WZHYWhIZT44gWoC2emSFRhtam2gOJ1EMOf09Ae1NasO2KjxBbOqJ/539az2bPBZiuw81BqTQ0cMQdWhWYpTC7QTFr8onE9UJinphcKAKFIVcpTeYGywlpwPSDqMuQx3N640ot0bVtFfgtO5A4eDeCzipA+SpQiKTJpCW6poggOZeB56jWu9T9sZLGQCsLTeZsDtZZrvXB8GIN6iVdcTQjuc/YOvREkcwTh999jeVY7U7am9pUER/9ZL1a2AKvrCN9aFg36NBt+SNDTDGGAyggJrkX/epc9MaLl1p6o35hbm1T56aVupgBCisRQ/7ECDrTmmURLCNp/oaqumo6b7bmh88uTqodOs1ntCaNmV2VQWzw5RTESpq/gWVJgA4dybfMn4dVK+h8R3DZKgoRD8EsktqmQJwrJjk1Ynml/PGnQ0xjd5ldlCDgQJsIk5+kP56X34GdFNiLDnJcgtl0yo5zQAI5zNpiblVeSAbrOMyDZelqV1fYk7k+1I3RBgm3O54So23f9p0TegA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(38070700021)(22082099003)(18002099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?G7KT81cOCFcu+UhSRgC98AmCujcvcQyWGBqgqpeAbnBnH1YEoH+cZcV3CEiQ?=
 =?us-ascii?Q?fV5eB8IrRoZ3tEjgGBN9aZUqSOZrlfzCW6Pgz39yW1z0jyVO2ryyeBB/ApAG?=
 =?us-ascii?Q?6sGBR+dfmqSD56l2HD049DtCY9ZR6/dK1EOzOZH/IfBedZT4vc9uzplSjYB9?=
 =?us-ascii?Q?DfamOMU6O86fv3U6iJVrLb9AOl9WuqbBTsnnIdrqGlfwlft01H7qSIBvL5cQ?=
 =?us-ascii?Q?a4Tw6CKaefHzTSVTsrebFjhwVYOpVZTqSZHwjOFj9EcV5sYLIX4E/TmIFiDu?=
 =?us-ascii?Q?I56ZzF2rGcDefFGrGSJxGC5yK9ZgZJdKaEWbN0Z/FYgYtgimWn3liCBOdk6O?=
 =?us-ascii?Q?8uxUPKxo5JrRPaVikpqAT+kye5rtYkqS/8WDdNuCct5IfPgOQ1/dKzseCO/m?=
 =?us-ascii?Q?PXrS1TtaeTUiAlfWDIBBxLC3KZSdvMZ1sGvdZnHA3JPuXOpbbgEWxyeaZhZJ?=
 =?us-ascii?Q?NALCU5k0q0jdZURJBe7+p1apfwRHLv9blTEuCm9D29Rl99utxq6XkQWIj4Q/?=
 =?us-ascii?Q?CIP9NMep5Fzbd9yqWpBqMbx5EJPFnZTO5+3fGOlszRv1xPwlJ4X5Xlar4iF/?=
 =?us-ascii?Q?WIH2G+H1u52cRhQY/R6kspsUIhe8JocjMXWKiVmudBxBmlqS/F2+7W88nr+L?=
 =?us-ascii?Q?QDf+Zm7/uoFfkYt4YM5hgfdZphS2d+UyBPIPAuUYsLFm6Dnw9UJ8xP2kJhWW?=
 =?us-ascii?Q?lvHpmbeqwOm7AIBwhvntuqJQGIvcOBQQD/v9KH4gHv63FxbtQ/2AqMP6Za2H?=
 =?us-ascii?Q?fFHY8xCfZYeeK88mj9R5Yvs7ehJ454kxgcZaYfslLqxH9D5IH16oZLyQnFyX?=
 =?us-ascii?Q?h2EemJUvpfBvZr5XE3xrCD0pzO6ZhqQGdROC8ZiiF8lGYEmSZkAw7fsdEFQ9?=
 =?us-ascii?Q?D/Nm9AYc/sdT6YK2xzpergsMEQoYeH3Pk7Yj+NnR0drqtQoIjzBIEHsbz5tZ?=
 =?us-ascii?Q?0TAOPUX4ybdcjJCSrVjoHwRM7zGF9RlE2N3DsQferko6CrZJtnEGJY+rIdMd?=
 =?us-ascii?Q?d/YyUgFLXgPXWQNmcfBrxelH+gu4qjy8uoJKgN7FIiHBUYL0NSN7Y5bvEHfL?=
 =?us-ascii?Q?pmy95OwTnXzXx+PSLJZzXSgt0+5U6sShJdFX6jm+v+sXRyDr+RDCFvxa11Q7?=
 =?us-ascii?Q?Gw3FNodhJ/Pv+o/yT2ajGPzX+iis9pn2wTDeHeLeJbHJvoZAARJz9q7Hym2t?=
 =?us-ascii?Q?qbwUs3z/kE6mP42q/nh98V/nATn7NauQaP8r5ZP3tdmyujK5g5w3C47DwM06?=
 =?us-ascii?Q?aATKYyIPhyQWsBfAREReJY7o2pVIacjatIJ/9cCF4/MuMVou01winq8D3ZcV?=
 =?us-ascii?Q?opsb5i0aBBXDTSnUFTrdmDOQvsgLm8cQfu22NEcINac3m80aDIQ6lxie9qRq?=
 =?us-ascii?Q?IHoPI7bmzbG97MQB3xGm/zGDalhIk21NrGXsEkUiRDbnnBuK+ppDp9iXTJc4?=
 =?us-ascii?Q?KjQT8c40swy7+wO2Xz3SaaREBVZIQO/BgDrDKGj4MnWwaBF13qtAa90LHjEn?=
 =?us-ascii?Q?Aa/sgToo63q0lkRZg80eX0CKsqCrZx2o01YaFqu8isjp1yP8wdWvQv9nE+TG?=
 =?us-ascii?Q?XMDUFRoJtZccwrTxLFsLRkektNe5qqGJ73eIJc2sqcigI5g5xY0UTX00Rbs6?=
 =?us-ascii?Q?Zseko/OUet/TG5zeyHmNlPBatUj/O1GrtFOe5eNxPI/0FVsuTg2kg1FnKK2p?=
 =?us-ascii?Q?ShbFaRo1mk3WA3oYmpf9C9dFvk2qDUPfL3XuJv/oHyObpoPLwesUEUKx+rRW?=
 =?us-ascii?Q?uwBNZeggIN0dgiqpBLdMsqHEl+9rxHg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Cjw6A709uqJHjeV82MTfTP+JO8P5T+ynLZlHN5KleTVoopaqaqRct3ZDdjleFNsgqMOpj2fPG9gu1VquAPmi5XDgjaskrt4Sm/75G2Xr2oL1QVtECrsng1WNSe7p36tsOYMiGCU4+UR6O9b+y++MSAKyhfNrNDRxmMDQ2nUihBMFrygKO8dho1MEzIxZFl/S1gJc2QK33P0P7z0xxUUDu576TWi7dw81YRMyDPckaY1/EprpQD131b7h1wRTJGWLqiY4qEr/PXB/McKkKT/XI64He6QUrXoMvK0sUaYFdTRBl8hx+eW5pTYsEkUWzVTHGAZkZgpx4F2AVS04MrQpLw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4a27317-22e8-4780-4a91-08dee0e8ed14
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2026 14:13:34.7310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fvAZBQrBvrM0cj36ZGwBDHNHHamU0IxoIXh5U+jSRPCqbAV75JJIoq9wNfa8LmTieWjyHzZhyOPO+rEEWxmNhdEkqhxqmWcROaRr06CMXqo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7625
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783952019; x=1815488019;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=inQHz+DZkZu+BDoT3O185p9MMGIkaS6EPe3T9d2HuzU=;
 b=cYQD2ysJmyY0QmAyWXac0C7cyxV25brNbATl7zhhSTs3SReGc7+XHeHn
 XT7Tv2fkFC+OKiFNb76JVEN+J4VZjmQfPp0QZQ6HYdWt34ac1PrGpxuWZ
 wOjGTQTeOaUjp6OOBS2FSOBJL+eNdSbpu3/mD3dprqY80sL0Kl8VrF7zg
 GFVdbE4KTYaGu/hx8/w/0YIDSQEjOY1gHVbMg0bfSVeOi5vBfIxTKNcti
 OqqAYtLGbQck08T1/7JQU5IC3g5QbL+vk75u4TsPEwJvPQvqH/ULapruF
 ZeB1Fb8Kcyi7o3ypPHe9jf6oniTOUsuPXmy42fOWV/V3tn82SJzu5ai59
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cYQD2ysJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ice: move
 ice_vsi_realloc_stat_arrays() up
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:mschmidt@redhat.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:jedrzej.jagielski@intel.com,m:piotr.kwapulinski@intel.com,m:marcin.szycik@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email,intel.com:from_mime,osuosl.org:from_smtp,osuosl.org:email,osuosl.org:dkim,davemloft.net:email,lunn.ch:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0038974C373



> -----Original Message-----
> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Sent: Tuesday, July 7, 2026 12:44 AM
> To: intel-wired-lan@lists.osuosl.org; Schmidt, Michal
> <mschmidt@redhat.com>; Jakub Kicinski <kuba@kernel.org>
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Paolo Abeni <pabeni@redhat.com>; Jagielski,
> Jedrzej <jedrzej.jagielski@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>
> Subject: [PATCH iwl-net v2 1/2] ice: move
> ice_vsi_realloc_stat_arrays() up
>=20
> Move ice_vsi_realloc_stat_arrays() up, to allow calling it from
> ice_vsi_cfg_def() by the next commit.
>=20
> Fix kdoc for touched code. One line break removed, "int i" scope
> minimized to the loop, no changes otherwise.
>=20
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> v2: no changes
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 119 +++++++++++-----------
> -
>  1 file changed, 59 insertions(+), 60 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 8cdc4fda89e9..e48ee5940f17 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -2303,6 +2303,65 @@ static int ice_vsi_cfg_tc_lan(struct ice_pf
> *pf, struct ice_vsi *vsi)
>  	return 0;
>  }
>=20

...

>  /**
>   * ice_vsi_rebuild - Rebuild VSI after reset
>   * @vsi: VSI to be rebuild
> --
> 2.54.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
