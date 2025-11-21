Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA8BC77F2D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Nov 2025 09:39:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0E7A60803;
	Fri, 21 Nov 2025 08:39:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JM4ZZAQsH7JO; Fri, 21 Nov 2025 08:39:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3039B60775
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763714383;
	bh=LdQMQLTUHN1tAsTRUxZJDe7saxb7GJaPohWuwy0lf94=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8lIYRsgSp5kw/V2NnJ/A9IBLmr5oUoTU3cIyFLUBK5UZIb7g8Hn9vNH3wji+ASHl2
	 4jveDrtxkI/dSBnGJgRDxA5oyhiagoP4daoZQwJ0dLQjXDNgwLGzNyuok3qeB3xECl
	 gK7WhwsdG9YRdS/YbhZpotviMAvu2RkrJcK+fmxIO3e7rtY5o6m35vwmPE2jPZVSRM
	 hwpNWoVCtYwjZries3grZrF/pGrdfIBIgckbVE5YzgJAqVgBDf6DIbLhE+IX0EAApX
	 KWDbTLdbc1vbWZNfCRntJubpV4p8Mba9oP+4WPWYUjkWTO/dLyVUTIdGl2W0jV6fMl
	 L43Iol4/E5S5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3039B60775;
	Fri, 21 Nov 2025 08:39:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D6AD122
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 08:39:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0FC0F60750
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 08:39:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2XkiHkdOLt19 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Nov 2025 08:39:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3950660745
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3950660745
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3950660745
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 08:39:40 +0000 (UTC)
X-CSE-ConnectionGUID: HMucagtxT5i9fgVxU6HXGg==
X-CSE-MsgGUID: HMUeeao1SC+WshmS4Qky/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65890558"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65890558"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 00:39:40 -0800
X-CSE-ConnectionGUID: hM1fSPZ7RCGGHvvhX20w9Q==
X-CSE-MsgGUID: xj8wkHhnTiq/qk6A93MEyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="196772677"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 00:39:40 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 00:39:39 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 00:39:39 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.43)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 00:39:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ztw2WF/8EUZSTDWF/RNz9jHFFRW7Ur69lYUkcjgXsiSuk6AffccgV7Gs7O78PmTloYwlEzFaH990Z5WyTEipmWzq7ENWcr4Nk7ErdrIEz6IIpgADtV7ejz2+QfuOdZEOCGAM/XMGhDS5kcKZJ3tSC+vzbGWbS+n5vWedW03UoaD1f5xFTZkUoZjCHmbX/XHaUtlRimBCqK89tQUEANbs5d3i7azboccgD2lyFzH1Y7Ujnxd+cn83J9YbcCKThPzlZUvPCPzzwdAGtLKJB7vr2HOdCzLAH4/k863Aerc9+I2DbSTPiyAZFIoZ9M86WowKtUwpvqlAzu//F41vFgKCXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LdQMQLTUHN1tAsTRUxZJDe7saxb7GJaPohWuwy0lf94=;
 b=gaM9J+O3drD3c06zDVrZmvr9mIq6vkwK9Q5ILuGn/OuRjZpq3Q6LjWC1hB/+DUALV8DBWu/V33c2C1zQpvruQm2UnoEpf8tTNCVuko8NfISRPOA/rRikRaz83emruMhPWRtwWSlXuqWEXwTqGlFzG9pGrRoVBPG3sOp3FFEQ7vYsvJ1JxckVGJbA79mDGkgl564yhKgDKjYUJOaO5glFvSRCiHoYgqrIiRYmxtVKK1jNv0kNNShBYK99/AzaD9BPdMVUV4aSJ8UvzCg1Fh/su2X+ahZwcWmHg3ZPE5WQu++kwqMRO+IxbYBrWRfamQX5URJN8QN1eO76eURAoHf+0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 21 Nov
 2025 08:39:32 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9343.009; Fri, 21 Nov 2025
 08:39:32 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, Marcin Szycik
 <marcin.szycik@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Avoid detrimental cleanup
 for bond during interface stop
Thread-Index: AQHcWke85ygr4ymlBEeFSMYRaXHAEbT8zvMw
Date: Fri, 21 Nov 2025 08:39:32 +0000
Message-ID: <IA3PR11MB89867D22A4EB7A1687DE9A88E5D5A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251120175826.53472-1-david.m.ertman@intel.com>
In-Reply-To: <20251120175826.53472-1-david.m.ertman@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB8280:EE_
x-ms-office365-filtering-correlation-id: 00ce176a-3cc8-42ee-edcc-08de28d97e3d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?1aC2SEWILTPvmC2fQ6bn9I+ckphUbhDbw7jf5ApENapng4yw+lpDzpIO0lZk?=
 =?us-ascii?Q?PFHNn/KL4CTNqGPdZKVUVwsUAZLyIpPbmBmtkPO+oz1zv6k51gnm2um0Yq6O?=
 =?us-ascii?Q?cjrFcfARRBuiXTuN/TWehHYyQfaGW1IPIuuUjoqf/FlLDHsDxUqyiLksYZgN?=
 =?us-ascii?Q?TVWPPT7pjWLLRA4JOJWFrRfm7IZpc7WGWCrxH9RE64h20FacS/rIaBV/2K78?=
 =?us-ascii?Q?E1gzss9XIFsG2l4aUgJq5dCfOHMMQO7bs81cwsSLSAngWFeKBQsoLWgXwitF?=
 =?us-ascii?Q?d3opScxsEtX91iA++WTPCXovnptnc2CS+NF5xDScSB4tceY7+uHR3jUR/ywe?=
 =?us-ascii?Q?TyP25x8q9yp/MC6yaolLESh2pnH7D9sAT4Ip7gFwDYkxettysFFprfKn2XLc?=
 =?us-ascii?Q?ybwVkESd8SZX45TJQR3jSzCSS74ZFxK7XDHZPRgeI4alnByrWRPfTG7LmGkT?=
 =?us-ascii?Q?Jeo6tkEQzCFvxnst3IzrF985UlWLpE59Unw6IsXHXXoMZnh+6rfufjNf9ruW?=
 =?us-ascii?Q?yINdi46e7ZX4sJaQhrAPuRZ4wyKhFgR87pHvhV8JcsEJ/caJjvhLGz0JIawd?=
 =?us-ascii?Q?FXIL1uJ5ExLOl7S9valtNm7v6lmpJlBk+FgVpf6FayCEQel4qZYg3JFlYVSh?=
 =?us-ascii?Q?Rf7OSlZLb4jnLMd/1BAZsS7lTZqVR2YxNRiSdE9/hnvM1IlpY02pUwisFF82?=
 =?us-ascii?Q?vrbJ3IcF6rlhEgbtWlBoEfLuz9sBR3rNENZTgJhnRhg0s4KQubvwruMUpLh7?=
 =?us-ascii?Q?L/AnyNX1AEY/CEhSrMhO36YBsllUd7R0UnivCrnnt7jkgSMcGDX4PpMCvW1i?=
 =?us-ascii?Q?YbBUdPRdNOV+LnQ7IOECqTaQZ0GLa2v2CT2mIGFUiYuIYhx2O0L4neHYpEOl?=
 =?us-ascii?Q?QorsGpD9Y1e+/i8V3l1XJcCMHmjwaOKuYVQN65VoMp9baMbMBR3IRB8ZQXv9?=
 =?us-ascii?Q?mU98oGeK0QzHigKtmOpku0JTsu4NhFIanxLZKlKWVNuFFbPv6E7N7IBJsnu3?=
 =?us-ascii?Q?3GyXW/CfQz3ICXBL5Bw6R1mSicmTK3FkIr0oQaOWqIJ9X7V3QNEDfMcSA8/V?=
 =?us-ascii?Q?TuImhijzHdXFT0abckvnfWT8f/2bBdp6GwJZN8Hil2fhN9Irh0zVJrDf86OJ?=
 =?us-ascii?Q?zgWcjXJ9T0igkRMiGarJC6u3CmvR+UlnUpqU7ngU/3I5vFXvycFXWEFZIqnI?=
 =?us-ascii?Q?7M8rwgZEnTO2gWQZfGxds1FdND5kqX8PWU0N43hget3b2bNKe0BCDMRLmMib?=
 =?us-ascii?Q?UEuMAOWjhWWr5cZfAdUbFej0JrwsrBIAM+Lh3JaSbfenz0WlsU7YjkqyIz1j?=
 =?us-ascii?Q?u8vJslYAuso39Ly+4g9bCsg9aQ4blEUyJUUHbymkUZbUqwSd7yy+/7fOacIO?=
 =?us-ascii?Q?kbnm+UsOm1yLyvVYxpl5eeUROqNTIB+Vc+pWNRrrez6uWpHqWJFnhvQzoiGf?=
 =?us-ascii?Q?vYRJo7NYM3dSxKXwq0NXgGgzpgpeMeZ59Oklgg3HDt1R38p0ujAiTSrSztY4?=
 =?us-ascii?Q?hhQ2GkrPYF5RDJCnPV5yXKzmewh//bSC26CL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BqS4PMCGySkWBkbJSrtgjsGqgcNsE/XCXsTYVVilFwRsa3anbgmwEFMF1U54?=
 =?us-ascii?Q?vhk9LpTywHKrqnhiH9e3UTjr7VLqIqYtmyBk8+yzLPrnBtm1zMHjRv/wqZ+s?=
 =?us-ascii?Q?SzSMCQKwFZ//zJ9x9nXKBafeJmVWhcZjWbuT99HV0HIr9Cd4jj9THIXGOjfN?=
 =?us-ascii?Q?odJBeHRNF3VoQGW485ArKg5MHvMRkEAIz28DeeeSsp+q7BmhjYwsz5Pcvejq?=
 =?us-ascii?Q?DqeO0Eee8UciqYmaH8u7UT2WCFVWCbua1IdDjRKMl3amd8+nSMnxxl4iTE7Z?=
 =?us-ascii?Q?2v33AuNzctHl21MIfln99BF504ises8HbG1t0Kw9QINYKl/s+7KT4i0LeOlk?=
 =?us-ascii?Q?3tco4LHoG3jGG7sKxUbItMRoXEnUQEukhLnYvJR0jl2qBAT0cYD140Qtr6su?=
 =?us-ascii?Q?XYGjHE+d/z/TDLFGuGsE7TlFVf3QpBAv719Jqd/GTUTMK2exIgH+Cjou+VTi?=
 =?us-ascii?Q?K3IVzEf9+B/ENRY92gBUXUano4WZkHe2Q/chUhpZTrgCCZIavKiA53GDKa9A?=
 =?us-ascii?Q?aUcpbYfjc7ZsMZYuKy1wCnIPSDU2fKyEANdgoag7mIaZG/9CrRma3oEvj6fk?=
 =?us-ascii?Q?8S7AmHMD9t7nmfa+XATLgSPqTCtuWg6vN/Prsg9RsIEsRhg8Og3oK2qaCn3o?=
 =?us-ascii?Q?mlZLFE6+IcTtSA2Bv7ScFxWh9CHMRNVfV8kHuyzmw4warLRz7GyoL634bJ69?=
 =?us-ascii?Q?aoyaGqX6rVQaNKHn9OqT8Ts40Cu2PCamGs/AuwZy1W2JaQtco4K5M/Whv40n?=
 =?us-ascii?Q?0a0ClgkJ2hjf+OZBW4JhjppNCyg0RGNMnMReanjZ2m2CIbJG4gAa1vQ+dcdO?=
 =?us-ascii?Q?zpUxMgdLlIEX7tFEpJLZccKVhR3rZP3wyN5NYCMdte600K2XBY7BnJRslES2?=
 =?us-ascii?Q?5Vvp/LXFVXY6ItC2A2xWVz2qC20OYm7YMk99Lnnlmi1lr5BN7myNgcm+TDSq?=
 =?us-ascii?Q?BHtF1IKfseUEEbA+7robmJpaDnff2K13aZXdRMInmHmoShgNctAvtT5FYsVQ?=
 =?us-ascii?Q?ma1SYopTYL1MgMu303WCP6XC8/c2K93DpGEd38U+1Vzaa9zmpKi5aLZlusxn?=
 =?us-ascii?Q?VMqvgLzumvkVLec8y4mhNhpsSr0xOntMTvcktRw6xBprBxyKnLv2oWo2Bupm?=
 =?us-ascii?Q?zYdwyqskYFX/mTn/U8i6Y3tBaBsb7WYWyM+sLqGamc9mDdFENJHWjfBNf6Xs?=
 =?us-ascii?Q?Fb6zKu5VAXIWsU3nbMY9lhjpSlCC+IL4ZYmnqRnlGLZPC7tVTcZki22brpyj?=
 =?us-ascii?Q?wDC2DKZcMZ3C71roxa0TQ3i99HgwDaVvysoLGCzSrceC3S9tzmTSXB1BMeYJ?=
 =?us-ascii?Q?t+DNwx2q27qc9jNjh5bBRZ+jIQJoAjIH2bRjEdEOR/55eDcURIHuloSrnMb8?=
 =?us-ascii?Q?b2UVzitvzX2FupH7M3TQ32Lv6c8ESa/RXCdQcPHIXMSXjhlKwKY9QYwHgcCy?=
 =?us-ascii?Q?40fC02bAYRGgmWipLWqHHahDPDhC/ab9rnFl018j2A7LHqeHd4VYAfjU1Zz8?=
 =?us-ascii?Q?tq+rV+1ihNqH4kOy5qi4mepOJ/3FJr2iLqUtbwydA+Olp7kBoYh/d9X98+Tc?=
 =?us-ascii?Q?uzIjwbxcw+ihfBv9Ou1kxpJOBS0sAfd8KRrR1crZufwTOI9UDzAMaWkkDP4c?=
 =?us-ascii?Q?qw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00ce176a-3cc8-42ee-edcc-08de28d97e3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2025 08:39:32.4029 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f/4xtjPNrp9oKt3nd6Zy02ZgDJbwE4Uu2AsiohqTugvEv44KcZF36rD7IS2/MPWZ3IpMvdmmJbz5X8Fjp8KGV/FoIw/l0u7Q2NSnbv2yK8o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8280
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763714381; x=1795250381;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mpaTIkow/48g9BqZKRJpoi6ab6uDazripsxN8T9PNOc=;
 b=Rw2FGBM8mscZWXfHP2Mu4fV3yHiU9mevDVg7Kxm8zATsNBe//xySluPH
 Kdf/2rSi0xgOprT1oOGiXbT2BAVo3a4owEE3jlS92EmyvIOEVNIyKeZU3
 C694rnuAmiCYS23TYNregF6J2NNCue7Mpxy3oKvYIzfReyJw3iVwAFhZ7
 K87COpwES94U6GYG9ruP4gjgfA9xf+yVwJxuNTr0/E40ReWI3VhOvgLyc
 4RgLaDj/F6JBljvX14cW2tR/v1JbKXM/HnMgqy1xDLgRzf/D5fNnPVB71
 Us4WDyX+S1/fAz+skq1yg42dMnb75eVUyFclPQQA7rspf08zX6+WIFCJ5
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Rw2FGBM8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Avoid detrimental
 cleanup for bond during interface stop
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
> Of Dave Ertman
> Sent: Thursday, November 20, 2025 6:58 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Avoid detrimental
> cleanup for bond during interface stop
>=20
> When the user issues an administrative down to an interface that is
> the primary for an aggregate bond, the prune lists are being purged.
> This breaks communication to the secondary interface, which shares a
> prune list on the main switch block while bonded together.
>=20
> For the primary interface of an aggregate, avoid deleting these
> prune lists during stop, and since they are hardcoded to specific
> values for the default vlan and QinQ vlans, the attempt to re-add
> them during the up phase will quietly fail without any additional
> problem.
>=20
> Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for
> SRIOV on bonded interface")
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 25 ++++++++++++++++-----
> ---
>  1 file changed, 17 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 15621707fbf8..b887c45c067c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3805,22 +3805,31 @@ int ice_vsi_add_vlan_zero(struct ice_vsi
> *vsi)  int ice_vsi_del_vlan_zero(struct ice_vsi *vsi)  {
>  	struct ice_vsi_vlan_ops *vlan_ops =3D
> ice_get_compat_vsi_vlan_ops(vsi);
> +	struct ice_pf *pf =3D vsi->back;
>  	struct ice_vlan vlan;
>  	int err;
>=20
> -	vlan =3D ICE_VLAN(0, 0, 0);
> -	err =3D vlan_ops->del_vlan(vsi, &vlan);
> -	if (err && err !=3D -EEXIST)
> -		return err;
> +	if (pf->lag && pf->lag->primary) {
> +		dev_dbg(ice_pf_to_dev(pf), "Interface is primary in
> aggregate - not deleting prune list\n");
> +	} else {
> +		vlan =3D ICE_VLAN(0, 0, 0);
> +		err =3D vlan_ops->del_vlan(vsi, &vlan);
> +		if (err && err !=3D -EEXIST)
> +			return err;
> +	}
>=20
>  	/* in SVM both VLAN 0 filters are identical */
>  	if (!ice_is_dvm_ena(&vsi->back->hw))
>  		return 0;
>=20
> -	vlan =3D ICE_VLAN(ETH_P_8021Q, 0, 0);
> -	err =3D vlan_ops->del_vlan(vsi, &vlan);
> -	if (err && err !=3D -EEXIST)
> -		return err;
> +	if (pf->lag && pf->lag->primary) {
> +		dev_dbg(ice_pf_to_dev(pf), "Interface is primary in
> aggregate - not deleting QinQ prune list\n");
> +	} else {
Two identical `pf->lag && pf->lag->primary` guards are duplicated.
Can you consider factor into a single guard (e.g., `bool primary =3D pf->la=
g && pf->lag->primary;`) to reduce churn and keep net/* code minimal?
Also, wording is slightly different "not deleting QinQ prune" / "not deleti=
ng prune"
Can you clarify the purpose in commit message or comment?

Thank you
Alex

> +		vlan =3D ICE_VLAN(ETH_P_8021Q, 0, 0);
> +		err =3D vlan_ops->del_vlan(vsi, &vlan);
> +		if (err && err !=3D -EEXIST)
> +			return err;
> +	}
>=20
>  	/* when deleting the last VLAN filter, make sure to disable
> the VLAN
>  	 * promisc mode so the filter isn't left by accident
> --
> 2.51.0

