Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4856DD07485
	for <lists+intel-wired-lan@lfdr.de>; Fri, 09 Jan 2026 06:59:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4131835EF;
	Fri,  9 Jan 2026 05:59:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SS4eM-RDPrki; Fri,  9 Jan 2026 05:59:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34F29835C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767938377;
	bh=vo8wbmtRHolDMw+ZG4U/NBPqKTS6/CzHdrXRRu6kXjA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NupGR+8tzB4Qoa1K1P57xhn0w4Iv8o7NcpGCacHlmZMKD9J1ZHz/tCNZChfV84XZp
	 lCgSVPKAlksSI4t7AvqtgASu0Mgcj48POYGPi2r2sMhPQAnwWsJwoHpipf1TUE14sX
	 wh4ieFmNeBRdXIneOxrTc+xMmA8YICuRiFaaSbmD8naC1SHlZKaJ8FrgeWH6EJl2Z2
	 yuQ3chirwBUahuID9RjB2ISYwuI/dToOSzti5HKtib9BPW+mse6IxW7J8I8ADiiqHk
	 yojYfyQJNzClKrMnKp5DudhNg0GhsUtvsw8GFdiyxHAWZKrHLM86Rcpkv68WIvCBCt
	 JNYi4dHdyiBeg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34F29835C4;
	Fri,  9 Jan 2026 05:59:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 780B0278
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 05:59:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E2D1835A6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 05:59:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HSiRySHK3v03 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 05:59:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A305783579
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A305783579
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A305783579
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 05:59:34 +0000 (UTC)
X-CSE-ConnectionGUID: 5OXRyBy6QEmn4elSbYLD8g==
X-CSE-MsgGUID: onSWDC66TE+ogq+YhlPmcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="94790273"
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="94790273"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 21:59:33 -0800
X-CSE-ConnectionGUID: KXzGAAE9T4aJF6gsC+Lazw==
X-CSE-MsgGUID: cwOk6V4SR/Wov78zSVXBig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="203670168"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 21:59:33 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 21:59:32 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 21:59:32 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.5) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 21:59:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GA7JppYZSRk0HFv0oOxFtmFT7pPksltSGpglgvPzHLo9IZPTZrgbY17UUOg2v/UeBS3AuTN5vL/sq4t77FGNYrglPcGD9LlA1VclmX+m/7Zp8sAPrqFyrdm/TR4zvIKn1YOf8q9P9wgiXMyAx8PQF8TyFMvB0JtNkgzDmEaEsWDKqAGVMXSve/Yrh1vl3puN2BN1HyEWJTsleJKFuXD/b+IWQRvDTip3+T8XGdqsG7EMJ1ENBNjE8shKyY/v2b9zYKyKVuMVGBHoZctSb1E8S5wO2lUeOs3oSnGtDhA0TLhyJO2bsFFF/qxPdtf9OxW+YZZfAwWzCv+z5u8kNUvWRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vo8wbmtRHolDMw+ZG4U/NBPqKTS6/CzHdrXRRu6kXjA=;
 b=taO0WDhRLYY+Qid7oPP+r+lyujlXGvo3TWlzEN+2mNTSdrwndZyVPLR9cQGZKfmYoXyHpEZU6TrpPnFlqHAh9VfYdQCAOgy6rktrXC/Er81Z7+GQy5o4/Hu9kJR767vv8PoxOGnn88lEiYNCypGcU4awXh3q8LpvdGZY5Y0oR+Z+OSvWZ50hpiKMT4Ld2loc3+dpipZX5SPneejbCuTacLNku8D6wuLuBFQowb3GB4tLLD3DshnD1OXOi9h7nERbXXPtCGN+1BByEyRD912aJkbWmHowRgHcMwmP7zTCQufcHNi9DCSA5VHBWqE87XibD2GDjUMZioZEcGpj0HZs0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB7902.namprd11.prod.outlook.com (2603:10b6:8:f6::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.2; Fri, 9 Jan 2026 05:59:24 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9499.002; Fri, 9 Jan 2026
 05:59:24 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Takashi Kozu <takkozu@amazon.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Kohei Enju
 <enjuk@amazon.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/3] igb: prepare for RSS
 key get/set support
Thread-Index: AQHcgF6yb0EHO1NQb02Q0teYE4oY3rVJWWXQ
Date: Fri, 9 Jan 2026 05:59:24 +0000
Message-ID: <IA3PR11MB8986E72CF8AB3E302D1296CAE582A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260108052020.84218-5-takkozu@amazon.com>
 <20260108052020.84218-6-takkozu@amazon.com>
In-Reply-To: <20260108052020.84218-6-takkozu@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB7902:EE_
x-ms-office365-filtering-correlation-id: 3cef7bad-230c-4c3b-fea9-08de4f443db0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?WEU5og1y5hWcmO725t8KzcXTwkKeYRURLs6zBgLMqGUxZehetuKRqv9Mopq7?=
 =?us-ascii?Q?04oC6tHPqnHKP/cCVbPYrmHmUurQcQ8YPzg71T+nllwIMt/4p0LkzZCbvCd1?=
 =?us-ascii?Q?8cUSi1ko4UaDTsp4kZAfnQ6lIykCw+GXoF9+f+tga6qfjo26dMl3AaKYM+D5?=
 =?us-ascii?Q?RslNq7Q1ehuNzgStD6QvlnZitOA6s/4ftUY7MYgZlp1z4RJIKQV9Qe7GKln3?=
 =?us-ascii?Q?dQX48FD8I+91ZNh30PNkeubd+vpDuVSx3kr5eOLyVHVqXFww/g5DnMhtge5p?=
 =?us-ascii?Q?45xy3z2IzOgmHIb4K+8cvxx3KeGfJEQ9gxrqsk0O0hbobuJ7Cm+ZSWtjd/n+?=
 =?us-ascii?Q?kZbwtz0jJvGVCXnkb/fuoAvnGyqNhcGXO6a39hQOK1Fk48uozRtDWoDhVXJw?=
 =?us-ascii?Q?V7qaC4kTsizjwxQ+CBSRECJtfoICs7SNmU/og2sEBU/23HZFAC8Zd7oHKq1O?=
 =?us-ascii?Q?mFx+ZhS++lU/WQwyNXcg7wB3RG1Ad7VU5C3apJSykiLwcjTctQeyFY+usAa3?=
 =?us-ascii?Q?4MCy2oNhrR9AjIr0OpD5PaHTcZBZBZC2CmJwzjSetfP0+OGQ+a0N8olcDv9u?=
 =?us-ascii?Q?44FDOi9Fzv9ao2SmEtXLOTcnG5E9nr7x+Vdw5SuX1VBqkoT3uYAUUo/ajbCI?=
 =?us-ascii?Q?niVBEH9VGAUAXTB0gGEYO5dkEnHz3xIrN0zeC8krBb8hy2xSGjKap4Z7P5uu?=
 =?us-ascii?Q?zNMT7xmAuEhqVKvbzJVmf1OnrCcQWubIKpA6A7kiV1eRPCnoLr1WGEKIEs00?=
 =?us-ascii?Q?Szo70895gmP5fQjHKK9KdzvT70Iau2SklZ81JXIovyJHvGKYefB74dW3bna8?=
 =?us-ascii?Q?dT5uyvLSJ0H79xyDGpuAxrP2NTpUyX4k8OFdJt3YBxGd7fcNYnTDdjqXRMLx?=
 =?us-ascii?Q?WNvY/Nt68Oho8YLDxqLhei2G/t61keTHVteZlx+IR9NmqwN3U0b/tkSvT3d1?=
 =?us-ascii?Q?TZFl7rf/7WyQZEou6TPnevJ+80hXNp2vnzhc0R4houpgSpvL9KfoFN+wYUAa?=
 =?us-ascii?Q?eu6gTIigrRqw/7gZs0hcWVdn17X84c4ENqfbVv/di+s6EB4XBdg1Js5aaoiX?=
 =?us-ascii?Q?VJwQekozOR6zB5iYhKb9MrKvFY3PjVMY2vPr6XRN4BjkYjazbcfAyu7whbD3?=
 =?us-ascii?Q?iXkbACWlAn+2ruQHmE89W0YQEoWB+7sZo7Zm5RCDXZJreFTz39en8LNxvuEj?=
 =?us-ascii?Q?Swf1V0Uwcxz3HGYENtc8+8/8hzxIj0Z/jqqTVLhLSW7tQoPx28/1o9w4uHRa?=
 =?us-ascii?Q?k0N0CLtaXFqnb63YYvBKvaGKjz7ZkESFBLInT2+/6EJ4g06Yn7M9aQlHiTsR?=
 =?us-ascii?Q?XgIRIsYKDDD1r6c/McbBAmWZVRXHI6fClpsxunwlAhOJFk7S9in7qjDlGhF5?=
 =?us-ascii?Q?6LXZr1UssqbH7iPgljiNBze89GVnia08KW9yu+3L9XyMpCPdbwsHktarzP7q?=
 =?us-ascii?Q?8lZGBrs1a5uVZETa3oiE6VCkv/zO4nh1AguEksDLPesayNDGQJQlZQvwj900?=
 =?us-ascii?Q?p459zIPDJ+mTTiw+yIoreUIUcZcGAVMX5wIL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?18YQ9AttvaatJIpzy6qybbo+vLHQ56YZuaV8Qqz969oYeE3W0q/PYw63V026?=
 =?us-ascii?Q?yIMUHLQP6pyLc9fR0XRuoTr9gzJFo2ATb190XOMMiqqRLchmBXEr0Etfikpw?=
 =?us-ascii?Q?h6mbNfhVttPCbHAEte+hoYQZ7Uv9R1EWS+9/f2Bup2NdTCLG/MZqGCNnCXa4?=
 =?us-ascii?Q?bUlXhP5nFrwL9oSi658zTZul2t+p1VMFmlEVHW1PkfHKcILzArO2ffIKdAFO?=
 =?us-ascii?Q?i6z7Tp0zaIvI4Zl+8zsIRJao5TtLWN/kOqC6aS2yN9BsY1P9UmzASZ/usSST?=
 =?us-ascii?Q?eFYGNVvxqIWdodhQxqiHBw3J+snynjxUBMjdsP1aSAJq4ni4OsTbYkf366VA?=
 =?us-ascii?Q?EB0rKsqTHm4/jzmwVPhyU0KfKitVAbN+PnfASFUwC0ZsIXoaVgjjRKWO+9JW?=
 =?us-ascii?Q?Si+3IGChHvqkbd0AUnrkXShDjtW9D7j+g4WObo/V62SttkW0j7XNqHI4zmig?=
 =?us-ascii?Q?6AymtamVa4SXaNo2pMJf/OBZtjdMz7iJzA9pGbCy6b/EzREVZ55U9xNh7dzk?=
 =?us-ascii?Q?giprWu9mnEYk8E4IQwGITCZyfdyM0K+6ZZXPt0AJFfIUpH11A1zRiApdF99U?=
 =?us-ascii?Q?QIc+WVSyTHgpruvJ8dz6loofE6xkMxzoA+eFDtYKI2yUs3trxKehlb+8w5rU?=
 =?us-ascii?Q?fRBf4nA+4NztrsVADT3HWe2Dz1pVrfsduBF96f0J8xQj/Fi5i3IIHrHTHAkT?=
 =?us-ascii?Q?swz6zXTP26dzn7IQs6SdeSzWDG3heGuh2E5k9o3/Xnl1hcMSVWIBnsH1Dl2w?=
 =?us-ascii?Q?KiSggtIiEB8NKKLrhFm3XJVBjZTwqjYUQggO0wojNnVCoIdv/dr/OYUEv4Hu?=
 =?us-ascii?Q?4tU8+yNdhDynXQ1ojj+7JJpRcRhj4pddm3G+NIjJBl0QP9lfd2RaRd1fymTp?=
 =?us-ascii?Q?mK2uWAUMSAYS6bObU5uUHrf2ervbCcH6O3EHnff48YsZ50jKrZBpKdRNXmaC?=
 =?us-ascii?Q?99P3rtHM3XLP1zh+qsj+jD/bhY2tKuQirIQOmc+QxtHswYeBaGV9BB/DcEBe?=
 =?us-ascii?Q?NVnBnGfa2JhbzOYHQlBegexZjtpkW9Epek1zyklBD4ft769f4qlrQXFP3xwr?=
 =?us-ascii?Q?Y6ehu8v47CKiZA8DcJTm88Ub74mZ6bf6zecqdWSq2vI+oEIBUUChL9detZHa?=
 =?us-ascii?Q?taw/uRadR/RWG81BUryMK24zhpaAs+43JLCd+kaiR02XG5PuYWHQV4iqEGk/?=
 =?us-ascii?Q?L2L8RgJ9aKJQWs2WaI1mAiwbNoRAZJjjO+dmduQmgb0Hzw0Z9R99NRIhRCCY?=
 =?us-ascii?Q?o4qskghOvmrCQQ7ncvSa5c9+CsktPumolTAm3dRF+qHFTm22DPWfLm3Rou2g?=
 =?us-ascii?Q?Ym3nvjAOcZzmCs96WBUz6+61k/0hHc1m6NwXuNMdUnAD1xfyXfsoqFb22Amb?=
 =?us-ascii?Q?L5msmYJVRb4TM4fTq/ksJnwn9g3l64pH198ZX6FCeCBrsG2GG+lV5PzzBV1j?=
 =?us-ascii?Q?jGcaL6zmzGviJ0Fjwpg/h9V1wpsBp3oNv3v0snOtzzmADPpwKqJBh2w3lIic?=
 =?us-ascii?Q?anTZhRTlQiFQcEtl5OH2Mxt03oOAQE9hYH5U1TD1/RrDNv44JBXOpv+OIWSu?=
 =?us-ascii?Q?a51LJ0VDTc/K0ieSIVnaHk65KnuMxqmyPPPn6HhUdNcU5O5qyO+FDT/+AjGQ?=
 =?us-ascii?Q?X4ng/j7rmUXg7sA27i56XBVh7PbWRglc7w0z1hJ09XTvxo9hyRwEVfHzvElL?=
 =?us-ascii?Q?uPf5Sf6CJCeLHI8/lXP2RCj7ZhwQdxiWwHWtESD5XZ3wHeu7V44wzUcut+Wg?=
 =?us-ascii?Q?3RnczPBVWA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cef7bad-230c-4c3b-fea9-08de4f443db0
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2026 05:59:24.4217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n97+7oq0C3ZviuMdEL6Ws8VyXFFNjJ8hARWM/5H3gOZN1pdQuN9JCOdSfRNaiUOM5w079OhB9uuN4AleRwfmzsqB02PeWMKFk+E/9hBfqEc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7902
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767938374; x=1799474374;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JYHBdh2JWeM7dAdRTkhBIMO+tapxLdvYZHr6ntkAjHs=;
 b=FxKk4QIA73iJov3rMgKXTaGnb6CVC8xKX1qEhk6PdbQ6+lCBqZWjQb9r
 P3nWEvWeq+xH07hqqW4e7K1ACcQiOIZ5dDDO0UqwkIXPj9UOw8s9adInU
 sDCRnPbrH1hsasqyJ5QpKjkb/VBXfx5QZzUUer0N9Y/hmG0uG+2L84BJR
 dVc/gsNICGp+uIs+qmRvFivHSbRxTKsbOZifYTlP/OX22v1t1vqoVGgrw
 zkdyp5sRUPLCQRriLwqFWnCDStOpgUo5r27wwEnztIvp4Xus02pUp/fY0
 xLWYVz5roGGa2nxarQ1SWVGh5nBCh7anyleuMZSfL5WJlLLoUHnXSNUvI
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FxKk4QIA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/3] igb: prepare for RSS
 key get/set support
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Takashi Kozu
> Sent: Thursday, January 8, 2026 6:20 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> andrew+netdev@lunn.ch; davem@davemloft.net; edumazet@google.com;
> kuba@kernel.org; pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; Takashi Kozu <takkozu@amazon.com>; Kohei Enju
> <enjuk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/3] igb: prepare for
> RSS key get/set support
>=20
> Store the RSS key inside struct igb_adapter and introduce the
> igb_write_rss_key() helper function. This allows the driver to program
> the E1000 registers using a persistent RSS key, instead of using a
> stack-local buffer in igb_setup_mrqc().
>=20
> Tested-by: Kohei Enju <enjuk@amazon.com>
> Signed-off-by: Takashi Kozu <takkozu@amazon.com>
> ---
>  drivers/net/ethernet/intel/igb/igb.h         |  3 +++
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 12 ++++++++++++
>  drivers/net/ethernet/intel/igb/igb_main.c    |  6 ++----
>  3 files changed, 17 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igb/igb.h
> b/drivers/net/ethernet/intel/igb/igb.h
> index 0fff1df81b7b..8c9b02058cec 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -495,6 +495,7 @@ struct hwmon_buff {
>  #define IGB_N_PEROUT	2
>  #define IGB_N_SDP	4
>  #define IGB_RETA_SIZE	128
> +#define IGB_RSS_KEY_SIZE	40
>=20
>  enum igb_filter_match_flags {
>  	IGB_FILTER_FLAG_ETHER_TYPE =3D 0x1,
> @@ -655,6 +656,7 @@ struct igb_adapter {
>  	struct i2c_client *i2c_client;
>  	u32 rss_indir_tbl_init;
>  	u8 rss_indir_tbl[IGB_RETA_SIZE];
> +	u8 rss_key[IGB_RSS_KEY_SIZE];
>=20
>  	unsigned long link_check_timeout;
>  	int copper_tries;
> @@ -735,6 +737,7 @@ void igb_down(struct igb_adapter *);  void
> igb_reinit_locked(struct igb_adapter *);  void igb_reset(struct
> igb_adapter *);  int igb_reinit_queues(struct igb_adapter *);
> +void igb_write_rss_key(struct igb_adapter *adapter);
>  void igb_write_rss_indir_tbl(struct igb_adapter *);  int
> igb_set_spd_dplx(struct igb_adapter *, u32, u8);  int
> igb_setup_tx_resources(struct igb_ring *); diff --git
> a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index 10e2445e0ded..8695ff28a7b8 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -3016,6 +3016,18 @@ static int igb_set_rxnfc(struct net_device
> *dev, struct ethtool_rxnfc *cmd)
>  	return ret;
>  }
>=20
> +void igb_write_rss_key(struct igb_adapter *adapter) {
> +	struct e1000_hw *hw =3D &adapter->hw;
> +	u32 val;
> +	int i;
> +
> +	for (i =3D 0; i < IGB_RSS_KEY_SIZE / 4; i++) {
> +		val =3D get_unaligned_le32(&adapter->rss_key[i * 4]);
> +		wr32(E1000_RSSRK(i), val);
> +	}
> +}
> +
>  static int igb_get_eee(struct net_device *netdev, struct ethtool_keee
> *edata)  {
>  	struct igb_adapter *adapter =3D netdev_priv(netdev); diff --git
> a/drivers/net/ethernet/intel/igb/igb_main.c
> b/drivers/net/ethernet/intel/igb/igb_main.c
> index 85f9589cc568..da0f550de605 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4525,11 +4525,9 @@ static void igb_setup_mrqc(struct igb_adapter
> *adapter)
>  	struct e1000_hw *hw =3D &adapter->hw;
>  	u32 mrqc, rxcsum;
>  	u32 j, num_rx_queues;
> -	u32 rss_key[10];
>=20
> -	netdev_rss_key_fill(rss_key, sizeof(rss_key));
> -	for (j =3D 0; j < 10; j++)
> -		wr32(E1000_RSSRK(j), rss_key[j]);
> +	netdev_rss_key_fill(adapter->rss_key, sizeof(adapter-
> >rss_key));
> +	igb_write_rss_key(adapter);
>=20
>  	num_rx_queues =3D adapter->rss_queues;
>=20
> --
> 2.52.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

