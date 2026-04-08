Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNUdEiFF1mkFCwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 14:08:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 931053BBC56
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 14:08:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAD5140E14;
	Wed,  8 Apr 2026 12:07:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tlurb_h5bPah; Wed,  8 Apr 2026 12:07:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A64D40E21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775650078;
	bh=ft22wFgdXozzukdLeBOgnewc1wA+78TqYF8CTe3e7+k=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IjZFig3GfP0fhrXYrcHwhh62kMkL87nX+sCJEZGK2X0VNuNJrxccXUzN/L9LjEdId
	 ZU7PUg+xWORpAHw60cvIhsmkzhLqHFoQlAEEUl5W0k+ZRHUsbfrTpJhUiri2SuUE3a
	 WZONPBoX/gJXBmLiEleUM0H9pXrsR3FkB77KBXX+by/bLcSO+3LSgvf7Xwre+BCLX1
	 OhvmCE77vXwIbbncorDgAQFh3UXcWGzvlgGFaV0thLBC5XYksJpTvY6BDexSB+K9e1
	 7CagY0/qJZg58IRrEeRk4fLHV3XEbcl1fF29WE9qAriK4VMFOIKL+rbGXdyJu1+mZD
	 rIj7H+oEbgr6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A64D40E21;
	Wed,  8 Apr 2026 12:07:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C653A237
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 12:07:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B061940DBE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 12:07:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iaxtePbkynRn for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 12:07:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C844D40D83
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C844D40D83
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C844D40D83
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 12:07:55 +0000 (UTC)
X-CSE-ConnectionGUID: Npb4MCbZR9azKVq5O/UdXQ==
X-CSE-MsgGUID: 5G83ODF9Spu6x8t6gWMmAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="87706824"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="87706824"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:07:55 -0700
X-CSE-ConnectionGUID: 8W6T6wvER5ebUNN7br95Bw==
X-CSE-MsgGUID: J5zjhjiNTouBaUZfOkyMlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="223691179"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:07:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 05:07:53 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 05:07:53 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.0) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 05:07:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oMNl6K1eEs1l4oE89ZZkfDjrdZNEOGi5+17rb09sbYv09OJGhRhL5un/jJvqSmxqNxJQgSQGqbA3FbJ1tRn337d3u0kMjFtlrY05+UYe5ydHJAQDb7gU6rH8u79KiGCUxLxj55ImOSWywYQXVEV6y/jSdQcLAMG+dH4Bl1CkE+IEUNfGNldeYznFicdMNuUWTRWrZeRCeK8FiBTWGbBThGw+9pVE+FW+Yw4Qugpq7PYsKYuDa9SA3hoGECYBmuDTdzcQ2TiVKNHZpo4FCFGDos586MgGD2WghkLc2QrgHwUu8mO729kcLkcGmAeRyH1MIpmoHncrhlTs3gTualfgaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ft22wFgdXozzukdLeBOgnewc1wA+78TqYF8CTe3e7+k=;
 b=JgHBXjs12U6Esz2SbITejf7Xi91GmUQc52gPUlkX46enkil4+F0SJqML/JKUPSO9xpLxhw5xpp++BFHiIDUcWUxDNeWwlAyCW03tXWRWxM38P8rdZaL+vPcFcNn+HhwQSFGLaSulStC9zO0I2JLhJJqvjZQUPs5375cEnndbaW49s2LkiDSm1Tgb5FfZbx3eU8QsGAOxcfFCAHu+W7EwUnBHDscPS1g2+ToCFF6UlPixb8ka1tpKE6mDxJeXnlnx05kxu18AoxjPpyxPhvOeaubLq/75NpFORt+vGWdjJbuCjeJyzWKHUQ7L29U6j+eok+DzckDKLg/4oSa056rssA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY8PR11MB7780.namprd11.prod.outlook.com (2603:10b6:930:78::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Wed, 8 Apr
 2026 12:07:49 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Wed, 8 Apr 2026
 12:07:49 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Paolo Abeni <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Alexei Starovoitov <ast@kernel.org>, "Daniel
 Borkmann" <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev
 <sdf@fomichev.me>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 1/2] i40e: implement basic
 per-queue stats
Thread-Index: AQHcx00ah0K1XtZUDUCg0We5OxvIebXVEWSQ
Date: Wed, 8 Apr 2026 12:07:49 +0000
Message-ID: <IA3PR11MB89864FAAC7BCD8459A2BCD15E55BA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1775648513.git.pabeni@redhat.com>
 <0815f1eb4b60faa653ea703e420395b724d05216.1775648513.git.pabeni@redhat.com>
In-Reply-To: <0815f1eb4b60faa653ea703e420395b724d05216.1775648513.git.pabeni@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY8PR11MB7780:EE_
x-ms-office365-filtering-correlation-id: b00f205d-95bf-43ea-58a6-08de95677415
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: vrgfttaewACZc4YoWTbYNGO9XCfN3USrqewEm52NMbHVO9kjZe3bghvqEK8i5RRHY2uRBcwI8hOf23P7b7glJTyt/1UNndQP3Pm6BB6CMC3fMTtFwW+jPDjlUBrX1VEH+vWgfJM1LP+jcDxjgIYal0Mh3zhPjIW44x9oYMT1CP8zohKMeHzkY8+qd8gGXgnKTc+eKko5gMcHDwkIODc1ATwomuy+QeluPf+Vqx5dkJQBmhDeXClp0W5e+v/4VL5lHvq92RykAWdU3ayivyUAYn5DI2656k/UPCt+SoNhg64HV/7EyF/Z3kpFF6DGpvr3ug8RhW3NIJlVXcDbyq/0qAjOD+TgCTAaNklLpbcV+K/X/kRWglFe7I3luZQ+okiCJf0++aNfjHTdo9LM+mNmXskmOTaNidukLDpkuL6+ZNUqnI+4K4K93ifWwSO+P2zahTpT16dc53jjewWCd9nIikSSRNg74ifUXyo/87kCdNy4RBxaf92Tp8I0xJJwayvNWSuZYY7Yvuqcb/08MPhdVOFP12SjZXb3deIxytARUuSuW0XaDI9w8LwWEL3ghM4G8JHBtxVwomo8zwhzWWRNPysSTIFIDonzjpONJD/j8YuLi/2KOCCqQKnhnaVRwyVy/ZnMrxhp+7k1yTscBpGt4r3MhDB0w2Rqfwwp7LlNIu/BAobr4JRsqSeurrEtXq7hrKliuXpBiW7sAbH0uFxeIo6h4zwZtVboLJB1KsEAh5LAOrNTZr+OPNfMsXhrQeg/j73yVUq/YMskzUFzpkx4pcLcmi3WccVpQPWHAIaXROs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RLOaJT3LUdf3BuWuOyVogL62FDk46n9VYrcM84V4pXfkT6r6pf39X26sTQdW?=
 =?us-ascii?Q?pJmoU0dkSmaJR3NggpD2HThwL//EEo2NpQH9wyfPoBwzszt5r5lFUMVzWSo/?=
 =?us-ascii?Q?5Nmw+zIunjOtnpKY+iNakRLLJwb4k/Oj+Y33pwIQlTacvotoV80MbHxUCO6B?=
 =?us-ascii?Q?bprOYUhW3oedX8aL0zkIUZ+az4ptVczyn0Y1R+U7lJmO2w5Fv08dMfCRIBxY?=
 =?us-ascii?Q?B+zQtaGDPjFngVfqJkJkZGEOg8WBSdWHn2yfazDGWJj2h8u3OP4CIl+w2Vcy?=
 =?us-ascii?Q?YURr+erWxrkb33EGJ/Fw/qslO2AYHzs2pHd17ZelszuHpww90cIP8fPPlfNN?=
 =?us-ascii?Q?Ww0jnc/If3zsBcYPV71wycjVyQNpTCpbPR87QV3TlOzvSIX6rEkD1tFEyxF/?=
 =?us-ascii?Q?fpbEIfR0fFFxNyp3ZU+S1c1JTPmmMjuAh8OWNzWKX7GOTWXG7gwbrD1hD/9/?=
 =?us-ascii?Q?nKquHk1j+9f850bvGbT+ceG23P+St6AJEfpRQKolypKBkaVUTp+hKQ0aOsDk?=
 =?us-ascii?Q?3N8sepqr3osH0EMnfbDKgulsLAdn1kmihHRE0qYJSjPqPfyUsB5LUWmbXwOa?=
 =?us-ascii?Q?/idr7pALdnS9tjpv6fjPSpmujHON/L4QP43F6g5nHNG2uhgOLy5EdX4K0Fxc?=
 =?us-ascii?Q?yaIkuipmLHUSX1J6fGkHW5I/rCJhSp6wtXkuTwuqF76Y+8EBO84Vl0Dhu9EU?=
 =?us-ascii?Q?OZN1dJt2DlyR68K/UsC/efGQelQxOVsebRSkzS+TDqDHxyvJLTXwwbALVrlc?=
 =?us-ascii?Q?LELJHwTA1Z4KaSgfd4ZngxY7g7nURxXbyIN6p6hBcy4Uv34IyAbTzeeFd3Fn?=
 =?us-ascii?Q?7DGcVj+zZ8fQ32DKnU9keGPIfwZow307Tkng/338MX+4050wag6FS1EQLsd5?=
 =?us-ascii?Q?7sl+i547Qi1pUMbbtYY2s0Kc1B+SodJPWtOkO0gWUeGhXBkW5Xf1Mjm8Ii0E?=
 =?us-ascii?Q?/fiHbmG7UzXS2wcx/3hizyMZYBnbfpymtbDFyt3NwpIqTl58hldISF2+Q0Yz?=
 =?us-ascii?Q?IqRlTtdLIpvynq9J/X9v/Jr14+LiKzxHh8ZExH2Do3mmnFGHCHe3vNT/Aue+?=
 =?us-ascii?Q?g8aCpTO9VFhxQrWMjmtuZc/7warPj0x23P2WiV+vHoexAM3oclz4h5eY7P4e?=
 =?us-ascii?Q?/FTgBFTA9zE7esMPVHXSqQeRo7kUqOpw20xnGoWrFzDbH36Ic0cVpfzC1WoA?=
 =?us-ascii?Q?7b6V1PBYufc27O3FGEdGGLcMoBycPq5zOf2RnqrnNfJU6q4FsDD84bD682Xt?=
 =?us-ascii?Q?eoKsvZdhdGXZinD0Do/2HoX880eq6jlRNGPRflVDzfDGHHydJ1JLWCvPbt4K?=
 =?us-ascii?Q?cnSeAgFdzi8FVbrnhg0SKuPc+TzOstY8P0FEqgScLTeZDzdnsdA8CdsFXMcT?=
 =?us-ascii?Q?SesWHLJ9ZzKH0G8HHkrgojNUrQ5V09SP2ie4vGlO9ndcKKcnPsvvjlsMTIAL?=
 =?us-ascii?Q?oHbIFd3rKYUINtvFsy/vP/1zHCSM0fxu2Dq9h7f59bNtOr2W6wIl5lGesBHp?=
 =?us-ascii?Q?Cqetwe2KPhc+jwgMC5UJJ/tApGJyp1R1+VPbStQ0CXsnJldD5HHSn1JZmZUO?=
 =?us-ascii?Q?9/1ACPz9p4OETihoM0QbHNsYYrR7dpOwN26A+PpURKCcVhOEHx+QPKr1HRom?=
 =?us-ascii?Q?Bj8L8mtcWn+t43IYdrDsrNyZ5jZkG0/YpKyB9Til7kMhTQ/qnVXYJu1dpgBX?=
 =?us-ascii?Q?80kK94vLezJJcBXcpAHNtahLqSWZFMtfsiWGYaHIn6oyVkfENCmi2N/KcscU?=
 =?us-ascii?Q?DZwZosh+Mmk5P0CAGFnI6ZM58JhgSAI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: EYr66Z/S62GPL2WiX0Qw0IkVUM3cR2qlRIWNiCvXaRiLUcMjQJrCWgn+bX5DPbyOdnsDJfOtTcdYKJGSnmcmzpYBW1/pWlLrUXjTx+MARXP6Zd0Kkqush6CuSdcqOUj9iHFm59n1GuK/9dnJqcvGs7SK9r8J5fFjolO16xd8hSqA7TRUsN8nPJ+i0BiGAxZJYr1C9SRDV/JYsDkGpLA/n+PpdVRuuPH6cb4iRIY34dfrJ2TKtbTk1BXv1cPJBMZ1vnlQ/rRrVuQyl62KSm4SUDdbWjxQyFFZbr00lXAQKABVQTeHmMIQhNc6ARBjZMhChBQ2dmII4bRFvmfBTARTTA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b00f205d-95bf-43ea-58a6-08de95677415
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 12:07:49.4600 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: doBT9QPSY4IX0DLLfxUBAr/1AwFzjKxsi/Ud7J8YI/cz0B1BAMU9M3o7DMEJNHSXmLrWR+0hKMeOVglYBvQe/lnmm/27QdxyY4KgmuyBkJk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7780
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775650076; x=1807186076;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t6vfCbQ9SNJquZ82fhUpWQV8cAHSmxf9mjTqUU5TSRQ=;
 b=hY0EVLGSlbxig36SAQFsfMHI6eL1zB0JnbrkZOgYMhVnT0t/C8hou2DV
 M44x98+gxguKaLDWeyftmQO2oqSd4Qc4tiDlGVy1Ci0slUJswChMzL90A
 2/D14ayaF0n7HhMCYM/wBeLNGdw6R2q7b+8Lv4wOmvQACu1aUE/CcMnoh
 I4xWJztBZNraeDFFytjrrRcEucQUGcX1ceR9g3cOiAXjzWJgYxyKGb423
 N5HhcrPwZLj7zWk1EPCt+wk1A1gKWAlPTZervxgTPa5LTpprNgbsz6oXU
 X9J3USq8BDufNuV0f4ywBoQehd4yw+FLIeYm2xbwv11y+s2Mf/Ru9pIyt
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hY0EVLGS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] i40e: implement basic
 per-queue stats
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
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
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 931053BBC56
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Paolo Abeni
> Sent: Wednesday, April 8, 2026 1:44 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
> Alexei Starovoitov <ast@kernel.org>; Daniel Borkmann
> <daniel@iogearbox.net>; Jesper Dangaard Brouer <hawk@kernel.org>; John
> Fastabend <john.fastabend@gmail.com>; Stanislav Fomichev
> <sdf@fomichev.me>; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] i40e: implement basic
> per-queue stats
>=20
> Only expose the counters currently available (bytes, packets); add
> account for base stats to deal with ring clear.
>=20
> Signed-off-by: Paolo Abeni <pabeni@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h      |   7 ++
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 133
> ++++++++++++++++++++
>  2 files changed, 140 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> index dcb50c2e1aa2..fe642c464e9c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -836,16 +836,23 @@ struct i40e_vsi {
>  	struct i40e_eth_stats eth_stats;
>  	struct i40e_eth_stats eth_stats_offsets;
>  	u64 tx_restart;

...

> +static void i40e_zero_tx_ring_stats(struct netdev_queue_stats_tx *tx)
> {
> +	tx->bytes =3D 0;
> +	tx->packets =3D 0;
> +	tx->stop =3D 0;
> +	tx->wake =3D 0;
> +	tx->hw_drops =3D 0;
> +}
> +
> +static void i40e_add_tx_ring_stats(struct i40e_ring *tx_ring,
> +				   struct netdev_queue_stats_tx *tx) {
> +	u64 bytes, packets;
> +	unsigned int start;
> +
> +	do {
> +		start =3D u64_stats_fetch_begin(&tx_ring->syncp);
> +		bytes =3D tx_ring->stats.bytes;
> +		packets =3D tx_ring->stats.packets;
> +	} while (u64_stats_fetch_retry(&tx_ring->syncp, start));
> +
> +	tx->bytes +=3D bytes;
> +	tx->packets +=3D packets;
> +
> +	tx->stop +=3D tx_ring->tx_stats.tx_stopped;
> +	tx->wake +=3D tx_ring->tx_stats.restart_queue;
> +	tx->hw_drops +=3D tx_ring->tx_stats.tx_busy; }
Why the reads are outside the seqlock region?=20
On 32-bit kernels, unprotected u64 reads can tear IMHO

> +
> +static void i40e_get_queue_stats_tx(struct net_device *dev, int idx,
> +				    struct netdev_queue_stats_tx *tx) {

...

>  	netdev->netdev_ops =3D &i40e_netdev_ops;
>  	netdev->watchdog_timeo =3D 5 * HZ;
>  	i40e_set_ethtool_ops(netdev);
> --
> 2.53.0

