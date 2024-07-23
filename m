Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C356B939C38
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 10:05:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D8D38088A;
	Tue, 23 Jul 2024 08:05:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BL1agRcZ4X8J; Tue, 23 Jul 2024 08:05:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B50980838
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721721927;
	bh=eP6uDgELncQXJQTehI6W6hmGihOO1hIj+fJLpaq3u4E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rkZkxhRrr0Ea6aj8acWrWJGB9xVnDef0Jz+qK9SE2HOjdSirlHC7tbgwMfpotdT3e
	 TexR0kV5syZQYfzJj7Ix29ifp9VAELV27WbB0fStB5Nn3JCQ8k817MP0NCFm+93QhY
	 6m8LLVMhAcmxFaFxqPEdFm16tg6c0yhsCV886VGbcjYS7Pjx4rz7/p33L7o6uAzvk0
	 tReTqcGGEFro2lFFpXTY0oclj/YyaPJ5eIAie4Lz5oaVWWOgvCN+v86PA+erBBP2j3
	 aDOGNuMCmaS6yrHmBj5dZYrU+khVpqnXUKHYQsRGcWdNmbRKMy/JoI/uRtwffSWXtD
	 cY4VO63TOoysw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B50980838;
	Tue, 23 Jul 2024 08:05:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 677491BF29D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:05:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60D7D80594
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:05:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6_PaDxBd7t29 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 08:05:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5E6FF8058B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E6FF8058B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5E6FF8058B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:05:24 +0000 (UTC)
X-CSE-ConnectionGUID: E0INkhDwRQW9NalXBMmZVg==
X-CSE-MsgGUID: 6nl+7z9oSIC9wcgahBbjsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="29920224"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="29920224"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 01:05:24 -0700
X-CSE-ConnectionGUID: xSE92hh3TNOIgGLNoGm2UQ==
X-CSE-MsgGUID: 3ccg8ozhSIy/Y4PtH3pGtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="56309152"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 01:05:23 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 01:05:22 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 01:05:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 01:05:22 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 01:05:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m4UADenniW3xF5rwIUQcK+5NyLcXnnjk0YfQu1/P1L4GyXREyaK8mbwfZI0tTXNsTI+b/XiFmVS1eVGtV40CfN1Efb3vjFhkT8LEsexjcPCqnQmZDPx+PZt6jnb4aEbOOouWXa5ZBLxHl7aJwHQJPOlxfV1sT+9kZDk5rnwr6AO5Lt9lealCQjtgHr/NNaH8PJLLvhSx0pAbpbNUu6wo1s6YmLofP7OHMgO+r5gV9oLf9b2iHqi3ASByNqecZkJTA32S02mqHF56gz64oCoMwHZqU5r78PwkuPv5XFH7G4agJmvRgftAQUJMZdpHC83Di5x8pdeanLnwJ+SgR9rXiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eP6uDgELncQXJQTehI6W6hmGihOO1hIj+fJLpaq3u4E=;
 b=h4g75MZQeQoAniF/kyEhLDMKb5KXGkh0BEQYn7ivobEVe2egkPFkptsUqyv7wNEvYAzcB+4se6iu+0dagYfpzpdg02UVA7rXS1hKV3b6HiivOGk1qeRGox+CKH8urMhDZx9ciOdW66p1ACfg6WuV7E1qVFHdsWPleBIwCajd5tkPTT0uzuqNkmJFWq5fNLTnWFvwDKTkh0KfRaeB4tcY4XK4XYa6/q4nIzkYFOACBRTWK16sRsGFbz2EBzI11DzPhIpXhK+Up7KSErnVWgrSjt2CnO2tnou4duSrWQ28DxPJBJvOzEWa30xa+yiXEuH4rjDARpD0pnsl1rlhnEjnow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DS0PR11MB6471.namprd11.prod.outlook.com (2603:10b6:8:c1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Tue, 23 Jul
 2024 08:05:11 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 08:05:11 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Zaki, Ahmed" <ahmed.zaki@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 11/13] ice: enable FDIR
 filters from raw binary patterns for VFs
Thread-Index: AQHasGgcwIArFOS1oEGI53cgBe3EU7GxWR0AgAAp14CAAChKgIBSoeTQ
Date: Tue, 23 Jul 2024 08:05:11 +0000
Message-ID: <SJ0PR11MB5865CACBC2D09B4F34A581708FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
 <20240527185810.3077299-12-ahmed.zaki@intel.com>
 <20240531131802.GG123401@kernel.org>
 <f2cf6650-a164-4d3c-a3d9-cc57c66069a5@intel.com>
 <20240531181159.GD491852@kernel.org>
In-Reply-To: <20240531181159.GD491852@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DS0PR11MB6471:EE_
x-ms-office365-filtering-correlation-id: 8f947cde-69e7-4466-5e1d-08dcaaee2cea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?R4KAlHgoV9h2lYEGo80XXPXtEbB0SNNo+i2k9P8EIGyA2ZjAqf2zcL4nuGaI?=
 =?us-ascii?Q?IElWSaroLrJ1v5sSPlZ3GWEPrG6HHJXWSyCaVMXHPsiI6r0sprzVOmc26CZT?=
 =?us-ascii?Q?vZeM726Z7elDOZj79NV7t7BRxr0FjDMpI6RjHY076sT/Ak8p1qh0QOWELxa5?=
 =?us-ascii?Q?W9WgBBApEsnoXt0xdRbfCkA2LQMRA6Sv91yJi9dzZi6nIMA+13E83GIntDvm?=
 =?us-ascii?Q?Z+YrJPOt6TnmC7+TaMS0T/elZa4IXJDo/U+ScskM/PD203jmC5mQvLzdZ2DU?=
 =?us-ascii?Q?D85T//glrsvcZeX8bIlbIf2TxFTWwjAebS6BVVEGKucBVQ6oWTa5CliYM4PI?=
 =?us-ascii?Q?V+Wfh3p61Ko/b365sYrDfEuqxF8lW+VcCf/uYEYWhd8qqVWeht80bfxxTlBH?=
 =?us-ascii?Q?WJWpFGcc55so+chPF3fHrnRo/3xg+2ZcpvaObz661AMjg0wF7LljcSD/FQ1H?=
 =?us-ascii?Q?Pt75ptgESiCsL6KaMHnGu3DIq4TkB1EQ1u/FPaxoj/O0ARpIVZqch61uTba2?=
 =?us-ascii?Q?89p4RrZcowrEEJNRsMndET5i6WH3VcUObJ510AmOKNsECzgu0/r72WXx6mn7?=
 =?us-ascii?Q?tWY46v49p+xflILrxp2bhuDRec+XastJ9j2farpUgXlLISvRRs6PtTIfgN2k?=
 =?us-ascii?Q?WujVXFjul2levtHQmc6edsu3/Bt15zXZ/Xg2HflA5uy1yQqMlz5VRntIHRAf?=
 =?us-ascii?Q?2oJhd3gl9YwzVyBnNWJROylT7xoH55SKvqLSpeNh+cpu5YmOFEdKbgIpGbtc?=
 =?us-ascii?Q?p5HHFD924Ki0jSOE5iOS6Lc6NNZgMmDvRFU/pomsASPDHWRnWymxhEHUjdvk?=
 =?us-ascii?Q?A7IfN5n0Rx6lQBSSBRvGGPvubgUWNi+2BUNBdk7a4UNVCN+Al3AgDv+G5K+t?=
 =?us-ascii?Q?F7WHAxwWcTF0am+s7RBZoIKWWpJzum22Ffrf3fnoysRKczRq3dc9N2zAF4g1?=
 =?us-ascii?Q?XvtWjhdqFYa0uYsO4tzTGDV3BGfjqEzIYaUo1TpOBfvNJJtNSg6iP+0SeEN/?=
 =?us-ascii?Q?Ztu1+UrgXx5bsxf6lC0e6fSiACjrH/N6mcvOH6RIS7j3LTG00vuCBUdOBY7i?=
 =?us-ascii?Q?aRmZd8IZig4EBz4cinlldnT+3eH8hMx+1dUNIauSBOAcZ9PluW5jomG5Tk+t?=
 =?us-ascii?Q?ZXycfCQh6sUu4WhE5gBQFtAfzQhFpuzt1m4a4paproeBr6GDOcRnyt8x50he?=
 =?us-ascii?Q?QsRhshfDgsOyCBgljCatj/Pe0e6zwrf2/JeYbpyxRn6IiaE0gudp6Owp7oA0?=
 =?us-ascii?Q?3ipDZr6RYAUTCavb1wXajVfth4HYPhcuLiELuhN8GJNT80TGi8cdu73r9YD7?=
 =?us-ascii?Q?5VoNnIBwY31IrqPa60u4AW9PQeQvAZ4jb3sOoItYNtbC8/Ufmuy6KxFIHVBT?=
 =?us-ascii?Q?5nY6ZFgS5OeTzHTD3JH90FBsAhvb1pK5fbhDTqizQZ+M7XvlxA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XM6foCKyJPfYW/wQ7Q4exMGdA+heQtQRaoCREu4Vt0Yt7f2pW2JlEKFIlyBW?=
 =?us-ascii?Q?isEfvDCBczOE/LUxJulnmpNsqvtfIraHgeCZTwbUm+WaRlBTA/Y/T88nn+TK?=
 =?us-ascii?Q?+JLZYY29MDfhFwO4fPYtRgLrfogqAZBe2CxOsOW99JM4dAVIbASIZz41oxet?=
 =?us-ascii?Q?75b7lQEtZTknfHFo3/gl257g2bhZkxHVLuHaPvimeJ42czkaohCMjoOTShZy?=
 =?us-ascii?Q?gqtZqtG8lhgehsWP1I3jyfrHCVFh7+iROMwwiILf+G+gPZekGHz0j1Ydw8Np?=
 =?us-ascii?Q?kOqcgKRJMMSsThb0EBeP+aHcK0sqmXczSIMW2nqEwcWls3ojmecZvXmstY5T?=
 =?us-ascii?Q?e5N550r5Nd8/1i9hCzGuQJzv6LXHoaK11DrG0XPijy0UzukszLPflswOHHDl?=
 =?us-ascii?Q?x8Dp0BlezoT8metnS5yXrWIk7ht86QQ9M9N4OPKQQ0AkVCXlVLoxiM8LzthN?=
 =?us-ascii?Q?4FucvPjFWleljvbkhS2CQUSDf7xFu8fnacUpe9d5wMOKMY4XoeULzMQ8p5cZ?=
 =?us-ascii?Q?CAyzhs/T6ZqsgD9ncMAJAZY2pcgpfmrXqskR3RGzWjH2yg+ZDDH898Vx48z+?=
 =?us-ascii?Q?WgecsNtSWWej/xiZ+6TQEPSOfm0p/iRIDVqJyYmovJfKY3Tg+itcgmNsFKS/?=
 =?us-ascii?Q?HXSTlr9sPVQqQIZlM7MCfVgguS4DYZLu6zWS8wcNs1lM/dG35Cp8YaTbhjHJ?=
 =?us-ascii?Q?juEmAkyr08n7YuwCrBV/ZwkGt0v3HmjpVdQN365vgtyY/KP28Ktd9ji5PK66?=
 =?us-ascii?Q?YhD8Cua+6b+gr4PpW37PiLeprwKIprwCxLr0us7Kbm4aCQUuh8rPOdH4VSaV?=
 =?us-ascii?Q?1KXJq9geJ8DupeGD4tsAwrzJiMF2kcuA0CzxQ3yFqKE5ohzztJohVYydvqIr?=
 =?us-ascii?Q?GrgqNE3rg6RfHX38MeIamMdMZ4YtrUArpJ7NUsZROqBDp6fWAtNLgLIyF9yU?=
 =?us-ascii?Q?N5Elx2gPq8ZtFXz89OFb1ACpYRV5FOyd9Q6DZgC62+QmIUvnAdYnXC1AYo1n?=
 =?us-ascii?Q?JPA2xwQg8Y7x5sRqe7iP9SUTrLKa6fPMcyV3ytFltdviV6J/Em1hKh/vooQu?=
 =?us-ascii?Q?q58FXX91LQRFVa5Lhjg+TBidTZohq4z/svpAF/IihLQOA3dfkNIq27IM3w0b?=
 =?us-ascii?Q?yI7RqQqEzHgjijf3W6n8rLD6F+b75XtdZ0fg9CVAyzLkR+CzbRMczmg/zh8X?=
 =?us-ascii?Q?tFZweIfwNDJ31+HG+sk+TvnYHZEPeO6C9pb86NMQ8/rmtj+rtSsv5j18EHel?=
 =?us-ascii?Q?onLgY3CC5kjlW3/ZoLbKfdYpA+C5+hqaeiTDvERgRelnLCmBlcsx8jC7aeQ/?=
 =?us-ascii?Q?NVXb7pmNmgJd4AkmBT/PSJOowZ71z4kAVZmaHfi1sWDsYWUYrWei72rh/jdb?=
 =?us-ascii?Q?9TWmTD/iyR4XXrDQbWVbYHHGB7ApZq38m14dWsteMdY0Ed6gTqBGT3Kxi/ir?=
 =?us-ascii?Q?6DeK8D7h0bI2mvIqxKogx+IfL40mPqRRNgjVda4aF5pnmamU3gOtacNLP+97?=
 =?us-ascii?Q?YJ5w0UDMYf8IbCZUd1n3n9LyJQganDDh/2kL20MliOmuNxm+8WVy6WHHPfdd?=
 =?us-ascii?Q?R6ed9R5JO+qglD0Qo+/M79JLqCeBWpKxXUFnB7AjeJxV8PhjdBlv5scLW8ml?=
 =?us-ascii?Q?Cg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f947cde-69e7-4466-5e1d-08dcaaee2cea
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 08:05:11.1832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jz8x1y0fTRozt36PbU5lOaP5pumjLVatW+giXKsYbU9D1FNgLKiS1TLkVtftfWyMuu8aOZqqaFGj7luQDBPtY0DInrbbEhkZDXKgI1QscPM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6471
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721721924; x=1753257924;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+SC03a+g5HOCzXUQ3PCh0ZPGjZK8ZypPPH7WI6w6/NU=;
 b=OLebMHmeVhAerxnGsPGcycv25wImUwEszV6X+/t782PT+Kr2KVqvp9Qo
 OdYEzN0FNEoPxT+tUjE45XxTF+R4x3y9s4r4EnMNzF5oJBHGGCCpf6aWy
 LdOzfJYKySFU5taQAl21Jdf+QqQhTfs3QD2ZPBjdxGKO/ftYAA38T5Zzg
 jbyhlQID9682ITrvkKcCZMz/8H8mPICTAgQzX5/tkgsStzqFe34rRMSpi
 j2nj79NopvE4VFUA1ftTksJEWBsWNi5lQvjnJSpLTTGz0ezxvdofjat3q
 Mmni/zEUUBc8Pha5RK+CjycRdsnEwU2EFDQ1Mrt32cclKPjzeaH1lXUru
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OLebMHme
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 11/13] ice: enable FDIR
 filters from raw binary patterns for VFs
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Guo, Junfeng" <junfeng.guo@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Friday, May 31, 2024 8:12 PM
> To: Zaki, Ahmed <ahmed.zaki@intel.com>
> Cc: Guo, Junfeng <junfeng.guo@intel.com>; netdev@vger.kernel.org; Marcin
> Szycik <marcin.szycik@linux.intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;=
 intel-
> wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 11/13] ice: enable FDIR=
 filters
> from raw binary patterns for VFs
>=20
> On Fri, May 31, 2024 at 09:47:47AM -0600, Ahmed Zaki wrote:
> >
> >
> > On 2024-05-31 7:18 a.m., Simon Horman wrote:
> > > On Mon, May 27, 2024 at 12:58:08PM -0600, Ahmed Zaki wrote:
> > > > From: Junfeng Guo <junfeng.guo@intel.com>
> > > >
> > > > Enable VFs to create FDIR filters from raw binary patterns.
> > > > The corresponding processes for raw flow are added in the Parse /
> > > > Create / Destroy stages.
> > > >
> > > > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > > > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > > > Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
> > > > Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> > >
> > > ...
> > >
> > > > diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c
> > > > b/drivers/net/ethernet/intel/ice/ice_flow.c
> > >
> > > ...
> > >
> > > > +/**
> > > > + * ice_flow_set_parser_prof - Set flow profile based on the
> > > > +parsed profile info
> > > > + * @hw: pointer to the HW struct
> > > > + * @dest_vsi: dest VSI
> > > > + * @fdir_vsi: fdir programming VSI
> > > > + * @prof: stores parsed profile info from raw flow
> > > > + * @blk: classification blk
> > > > + */
> > > > +int
> > > > +ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir=
_vsi,
> > > > +			 struct ice_parser_profile *prof, enum ice_block blk) {
> > > > +	u64 id =3D find_first_bit(prof->ptypes, ICE_FLOW_PTYPE_MAX);
> > > > +	struct ice_flow_prof_params *params __free(kfree);
> > > > +	u8 fv_words =3D hw->blk[blk].es.fvw;
> > > > +	int status;
> > > > +	int i, idx;
> > > > +
> > > > +	params =3D kzalloc(sizeof(*params), GFP_KERNEL);
> > > > +	if (!params)
> > > > +		return -ENOMEM;
> > >
> > >
> > > params seems to be leaked when this function returns below, in both
> > > error and non-error cases.
> >
> > Shouldn't the __free guard take care of this?
>=20
> Yes, sorry for missing that.
>=20
> ...
>=20
> > > > diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> > > > b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> > > > index 5635e9da2212..9138f7783da0 100644
> > > > --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> > > > +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> > > > @@ -1,8 +1,8 @@
> > > >   // SPDX-License-Identifier: GPL-2.0
> > > >   /* Copyright (C) 2022, Intel Corporation. */ -#include
> > > > "ice_vf_lib_private.h"
> > > >   #include "ice.h"
> > > > +#include "ice_vf_lib_private.h"
> > > >   #include "ice_lib.h"
> > > >   #include "ice_fltr.h"
> > > >   #include "ice_virtchnl_allowlist.h"
> > >
> > > To me tweaking the order of includes seems to indicate that
> > > something isn't quite right. Is there some sort of dependency loop
> > > being juggled here?
> >
> > This was needed because of the changes in ice_flow.h, struct ice_vsi
> > is now used. I will check if there is a better fix.
>=20
> Thanks.
>=20
> ...
>=20
> > > > +static int
> > > > +ice_vc_fdir_parse_raw(struct ice_vf *vf,
> > > > +		      struct virtchnl_proto_hdrs *proto,
> > > > +		      struct virtchnl_fdir_fltr_conf *conf) {
> > > > +	u8 *pkt_buf, *msk_buf __free(kfree);
> > > > +	struct ice_parser_result rslt;
> > > > +	struct ice_pf *pf =3D vf->pf;
> > > > +	struct ice_parser *psr;
> > > > +	int status =3D -ENOMEM;
> > > > +	struct ice_hw *hw;
> > > > +	u16 udp_port =3D 0;
> > > > +
> > > > +	pkt_buf =3D kzalloc(proto->raw.pkt_len, GFP_KERNEL);
> > > > +	msk_buf =3D kzalloc(proto->raw.pkt_len, GFP_KERNEL);
> > >
> > > msk_buf appears to be leaked both in when this function returns for
> > > both error and non-error cases.
> >
> > Same, guarded by __free. I am new to these guards myself, pls let me
> > know if I am missing something.
>=20
> No, sorry. Somehow I missed the __free.
> I think we are good here.


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


